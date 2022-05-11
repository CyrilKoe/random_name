module fifo
#(
    parameter DATA_WIDTH = 8,
    parameter DEPTH      = 4        // EVEN = 0 , ODD = 1
)
(
    input   wire                     clk,
    input   wire                     reset_n,
    /** Push interface **/
    input   wire                     push_valid_i,      // 1 when the FIFO can puss
    input   wire   [DATA_WIDTH-1:0]  push_data_i,       // Data to push
    output  wire                     push_grant_o,      // 1 when the FIFO accepts the push

    /** Pop interface **/
    output  wire                     pop_valid_o,       // 1 when the FIFO can pop
    output  wire   [DATA_WIDTH-1:0]  pop_data_o,        // Data to pop
    input   wire                     pop_grant_i        // 1 when the FIFO accepts the pop
);
    localparam ADDRESS_WIDTH = $clog2(DEPTH);

    // Registers for counters
    logic [ADDRESS_WIDTH-1:0] read_ctr, write_ctr;
    // Signals for next counters values
    logic [ADDRESS_WIDTH-1:0] next_read_ctr, next_write_ctr;
    // Signals for temporary outputs
    logic push_grant_o_tmp, pop_valid_o_tmp;
    // State of the FIFO
    enum logic[1:0] {EMPTY, NORMAL, FULL} current_state, next_state;


    /* Update state and counters with pre-computed values */
    always_ff @(posedge clk, negedge reset_n) begin
        if (!reset_n) begin
            read_ctr  <= 'b0;
            write_ctr <= 'b0;
            current_state <= EMPTY;
        end
        else begin
            read_ctr <= next_read_ctr;
            write_ctr <= next_write_ctr;
            current_state <= next_state;
        end
    end

    /* Compute next read_ctr value */
    always @(*)
    begin    
        if(pop_valid_o_tmp & pop_grant_i)
            next_read_ctr = (read_ctr == DEPTH-1) ? 'b0 : read_ctr + 1;
        else
            next_read_ctr = read_ctr;
    end

    /* Compute next write_ctr value */
    always @(*)
    begin    
        if(push_grant_o_tmp & push_valid_i)
            next_write_ctr = (write_ctr == DEPTH-1) ? 'b0 : write_ctr + 1;
        else
            next_write_ctr = write_ctr;
    end

    /* Compute output signals */
    always @(*)
    begin
        case(current_state)
            FULL:
            begin
                push_grant_o_tmp = 1'b0;
                pop_valid_o_tmp = 1'b1;
            end
            EMPTY:
            begin
                push_grant_o_tmp = 1'b1;
                pop_valid_o_tmp = 1'b0;
            end
            NORMAL:
            begin
                push_grant_o_tmp = 1'b1;
                pop_valid_o_tmp = 1'b1;
            end
        
        endcase
    end

    /* Compute next state */
    always @(*)
    begin
        next_state = current_state;
        case(current_state)
            FULL:
            begin
                if(pop_valid_o_tmp & pop_grant_i)
                    next_state = NORMAL;
            end
            EMPTY:
            begin
                if(push_grant_o_tmp & push_valid_i)
                    next_state = NORMAL;
            end
            NORMAL:
            begin
                if(next_read_ctr == next_write_ctr)
                begin
                    if(pop_grant_i & pop_valid_o_tmp)
                        next_state = EMPTY;
                    if(push_valid_i & push_grant_o_tmp)
                        next_state = FULL;
                end
            end
        endcase
    end

    /* Output signals */
    assign push_grant_o = push_grant_o_tmp;
    assign pop_valid_o = pop_valid_o_tmp;

    /* Instanciate RAM */
    sr_sw_beh_ram #(
        .DATA_WIDTH(DATA_WIDTH),
        .DEPTH(DEPTH),
        .ADDRESS_WIDTH(ADDRESS_WIDTH)
    ) RAM (
        .clk(clk),
        .write_addr(write_ctr),
        .write_data(push_data_i),
        .write_enable(push_valid_i & push_grant_o_tmp),
        .read_addr(read_ctr),
        .read_data(pop_data_o),
        .read_enable(1'b1),
        .chip_select(1'b1)
    );

endmodule