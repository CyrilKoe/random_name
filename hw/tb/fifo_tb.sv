
import all_types_pkg::*;

module fifo_tb
();

    localparam DATA_WIDTH = 8;
    localparam DEPTH = 4;
    localparam period = 5ns;
    localparam half_period = 2.5ns;

    /** **/
    reg                     clk;
    reg                     reset_n;

    /** Push interface **/
    reg                     push_valid_i;   // 1 when the FIFO presents a data
    reg   [DATA_WIDTH-1:0]  push_data_i;    // Data presented by the FIFO 
    wire                    push_grant_o;   // Request FIFO to pop it;

    /** Pop interface **/
    wire                    pop_valid_o;    // Top level requests a pop
    wire  [DATA_WIDTH-1:0]  pop_data_o;     // 1 when the FIFO present a parity correct data
    reg                     pop_grant_i;

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

    always 
    begin
        clk = 1'b1; 
        #period;
        clk = 1'b0;
        #period;
    end

    initial
    begin
        reset_n = 'b0;
        push_valid_i = 'b0;
        push_data_i = 'b0;
        pop_grant_i = 'b0;

        #half_period;
        reset_n = 'b1;

        #period
        push_valid_i = 'b1;
        push_data_i = 'd3;
        pop_grant_i = 'b1;
    end
  
endmodule