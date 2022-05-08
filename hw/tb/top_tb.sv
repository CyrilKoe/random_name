
import types_pkg::*;

module top_tb
();

    `define TRANSACTIONS_INPUT_PATH  "../tb/test_01/transactions_inputs.txt"
    `define TRANSACTIONS_OUTPUT_PATH "../tb/test_01/transactions_outputs.txt"

    /* Define params for modules */
    localparam DATA_WIDTH = 8;
    localparam DEPTH = 4;
    localparam PARITY_MODE = EVEN;
    localparam PARITY_BIT_CHOICE = MSB;
    localparam period = 10ns;
    localparam half_period = 5ns;
    `timescale 10ns/1ns;

    /* Define testbench variables */
    integer cycle_ctr;
    integer expected_grant_cycle;

    /* Define a full push to pop transaction */
    typedef struct {
        integer push_data_cycle;
        integer push_valid_cycle;
        integer push_grant_cycle;
        logic   [DATA_WIDTH-1:0] data;
        integer pop_valid_cycle;
        integer pop_grant_cycle;
    } push_pop_transaction;

    push_pop_transaction transactions[];


    /** Define DUT's top signals **/
    reg                     clk;
    reg                     reset_n;
    reg                     push_valid_i;
    reg   [DATA_WIDTH-1:0]  push_data_i;
    wire                    push_grant_o;
    wire                    pop_valid_o;
    wire  [DATA_WIDTH-1:0]  pop_data_o;
    reg                     pop_grant_i;


    /* Instanciate DUT */
    top #(
        .DATA_WIDTH(DATA_WIDTH),
        .DEPTH(DEPTH),
        .PARITY_MODE(PARITY_MODE),
        .PARITY_BIT_CHOICE(PARITY_BIT_CHOICE)
    ) DUT (
        .clk(clk),
        .reset_n(reset_n),
        .push_valid_i(push_valid_i),
        .push_data_i(push_data_i),
        .push_grant_o(push_grant_o),
        .valid_o(pop_valid_o),
        .data_o(pop_data_o),
        .grant_i(pop_grant_i)
    );


    /* Manage clk and reset */
    always 
    begin
        clk = 1'b1; 
        #half_period;
        clk = 1'b0;
        #half_period;
    end

    initial
    begin
        reset_n = 'b0;
        #half_period;
        reset_n = 'b1;
    end


    /* Read input transactions files */
    initial 
    begin
        int file_inputs;
        int tmp_push_data_cycle, tmp_push_valid_cycle, tmp_push_grant_cycle, tmp_data, tmp_pop_valid_cycle, tmp_pop_grant_cycle;
        string tmp;
        // Initialize a dynamic array for transactions
        transactions = new [0];
        // Open file
        file_inputs = $fopen(`TRANSACTIONS_INPUT_PATH, "r");
        if (!file_inputs) $fatal("File input %s couldn't be opened.\n", `TRANSACTIONS_INPUT_PATH);
        // Remove first comments
        while ($fscanf (file_inputs, "#%s", tmp) == 1) begin end
        // Scan following lines
        while ($fscanf (file_inputs, "%d : %d : %d : %b : %d : %d", tmp_push_data_cycle, tmp_push_valid_cycle, tmp_push_grant_cycle, tmp_data, tmp_pop_valid_cycle, tmp_pop_grant_cycle) == 6) begin
            // Add new transaction to the array
            transactions = new [transactions.size()+1] (transactions);
            transactions[transactions.size()-1] = '{tmp_push_data_cycle, tmp_push_valid_cycle, tmp_push_grant_cycle, tmp_data, tmp_pop_valid_cycle, tmp_pop_grant_cycle};
        end
        $fclose(file_inputs);
    end


    /* Update testbench cycle counter */
    always @(negedge clk, negedge reset_n)
    begin
        if (!reset_n)
            cycle_ctr = 0;
        else
        begin
            cycle_ctr = cycle_ctr+1;
        end
    end


    /* Present push transactions */
    always @(cycle_ctr) begin
        if (cycle_ctr == 0)
            push_data_i = 0;
    
        push_valid_i = 1'b0;

        foreach(transactions[i])
        begin
            // Present data on a push data cycle
            if(transactions[i].push_data_cycle == cycle_ctr)
                push_data_i = transactions[i].data;
            // Valid data on a push valid cycle
            if(transactions[i].push_valid_cycle == cycle_ctr)
            begin
                push_valid_i = 1'b1;
                expected_grant_cycle = transactions[i].push_grant_cycle;
            end
            if(expected_grant_cycle == cycle_ctr)
                if(~push_grant_o)
                    $error("[Cycle %0d] Expected (push_grant_o) = (%u) but got (%u)", cycle_ctr, 1, push_grant_o);
        end
    end


    /* Request and verify pop transactions */
    always @(cycle_ctr) begin
        pop_grant_i = 1'b0;

        foreach(transactions[i])
        begin
            if(transactions[i].pop_valid_cycle == cycle_ctr)
                if(~pop_valid_o || (pop_data_o != transactions[i].data))
                    $error("[Cycle %0d] Expected (pop_valid_o, pop_data_o) = (%u, %0b) but got (%u, %0b)", cycle_ctr, 1, transactions[i].data, pop_valid_o, pop_data_o);
            if(transactions[i].pop_grant_cycle == cycle_ctr)
            begin
                pop_grant_i = 1'b1;
                if(~pop_valid_o || pop_data_o != transactions[i].data)
                    $error("[Cycle %0d] Expected (pop_valid_o, pop_data_o) = (%u, %0b) but got (%u, %0b)", cycle_ctr, 1, transactions[i].data, pop_valid_o, pop_data_o);
        
            end
        end
    end

  
endmodule