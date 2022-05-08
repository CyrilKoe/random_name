
import types_pkg::*;

module top_tb
();

    `define TRANSACTIONS_INPUT_PATH  "../tb/test_01/transactions_inputs.txt"
    `define TRANSACTIONS_OUTPUT_PATH "../tb/test_01/transactions_outputs.txt"

    /* Define params for modules */
    localparam DATA_WIDTH = 8;
    localparam DEPTH = 4;
    localparam period = 10ns;
    localparam half_period = 5ns;
    `timescale 10ns/1ns;

    /* Define testbench variables */
    integer cycle_ctr;

    /* Define push transaction */
    typedef struct {
        logic [DATA_WIDTH-1:0] data;
        integer data_cycle;
        integer valid_cycle;
    } push_transaction;

    /* Define pop transaction */
    typedef struct {
        logic [DATA_WIDTH-1:0] data;
        integer valid_cycle;
        integer grant_cycle;
    } pop_transaction;

    push_transaction push_transactions[];
    pop_transaction  pop_transactions[];

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
    fifo #(
        .DATA_WIDTH(DATA_WIDTH),
        .DEPTH(DEPTH)
    ) DUT (
        .clk(clk),
        .reset_n(reset_n),
        // Push interface
        .push_valid_i(push_valid_i),
        .push_data_i(push_data_i),
        .push_grant_o(push_grant_o),
        // Pop interface
        .pop_valid_o(pop_valid_o),
        .pop_data_o(pop_data_o),
        .pop_grant_i(pop_grant_i)
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
        int tmp_data_cycle;
        int tmp_valid_cycle;
        int tmp_data;
        push_transactions = new [0];
        file_inputs = $fopen(`TRANSACTIONS_INPUT_PATH, "r");
        if (!file_inputs) $fatal("File input %s couldn't be opened.\n", `TRANSACTIONS_INPUT_PATH);
        while ($fscanf (file_inputs, "%d : %d : %b", tmp_data_cycle, tmp_valid_cycle, tmp_data) == 3) begin
            push_transactions = new [push_transactions.size()+1] (push_transactions);
            push_transactions[push_transactions.size()-1] = '{tmp_data, tmp_data_cycle, tmp_valid_cycle};
        end
        $fclose(file_inputs);
    end

    /* Read output transactions files */
    initial 
    begin
        int file_outputs;
        int tmp_valid_cycle;
        int tmp_grant_cycle;
        int tmp_data;
        pop_transactions = new [0];
        file_outputs = $fopen(`TRANSACTIONS_OUTPUT_PATH, "r");
        if (!file_outputs) $fatal("File output %s couldn't be opened.\n", `TRANSACTIONS_OUTPUT_PATH);
        while ($fscanf (file_outputs, "%d : %d : %b", tmp_valid_cycle, tmp_grant_cycle, tmp_data) == 3) begin
            pop_transactions = new [pop_transactions.size()+1] (pop_transactions);
            pop_transactions[pop_transactions.size()-1] = '{tmp_data, tmp_valid_cycle, tmp_grant_cycle};
        end
        $fclose(file_outputs);
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

        foreach(push_transactions[i])
        begin
            if(push_transactions[i].data_cycle == cycle_ctr)
                push_data_i = push_transactions[i].data;
            if(push_transactions[i].valid_cycle == cycle_ctr)
                push_valid_i = 1'b1;
        end
    end


    /* Request and verify outupt transactions */
    always @(cycle_ctr) begin
        pop_grant_i = 1'b0;

        foreach(pop_transactions[i])
        begin
            if(pop_transactions[i].valid_cycle == cycle_ctr)
                if(~pop_valid_o || (pop_data_o != pop_transactions[i].data))
                    $error("[Cycle %0d] Expected (pop_valid_o, pop_data_o) = (%u, %0b) but got (%u, %0b)", cycle_ctr, 1, pop_transactions[i].data, pop_valid_o, pop_data_o);
            if(pop_transactions[i].grant_cycle == cycle_ctr)
            begin
                pop_grant_i = 1'b1;
                if(~pop_valid_o || pop_data_o != pop_transactions[i].data)
                    $error("[Cycle %0d] Expected (pop_valid_o, pop_data_o) = (%u, %0b) but got (%u, %0b)", cycle_ctr, 1, pop_transactions[i].data, pop_valid_o, pop_data_o);
        
            end
        end
    end


  
endmodule