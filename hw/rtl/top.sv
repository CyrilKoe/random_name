import types_pkg::*;

module top
    #(
        parameter DATA_WIDTH = 8,
        parameter DEPTH      = 4,
        parameter PARITY_MODE = EVEN,
        parameter PARITY_BIT_CHOICE = MSB
    )
    (
        input   wire                     clk,
        input   wire                     reset_n,
        /** Push interface **/
        input   wire                     push_valid_i,      // 1 when the FIFO can puss
        input   wire   [DATA_WIDTH-1:0]  push_data_i,       // Data to push
        output  wire                     push_grant_o,      // 1 when the FIFO accepts the push
    
        /** Pop interface **/
        output  wire                     valid_o,       // 1 when the FIFO can pop
        output  wire   [DATA_WIDTH-1:0]  data_o,        // Data to pop
        input   wire                     grant_i        // 1 when the FIFO accepts the pop
    );

        logic                  fifo_pop_valid_o;
        logic [DATA_WIDTH-1:0] fifo_pop_data_o;
        logic                  fifo_pop_grant_i;
       
        /* Instanciate FIFO */
        fifo #(
            .DATA_WIDTH(DATA_WIDTH),
            .DEPTH(DEPTH)
        ) fifo_mem (
            .clk(clk),
            .reset_n(reset_n),
            .push_valid_i(push_valid_i),
            .push_data_i(push_data_i),
            .push_grant_o(push_grant_o),
            .pop_valid_o(fifo_pop_valid_o),
            .pop_data_o(fifo_pop_data_o),
            .pop_grant_i(fifo_pop_grant_i)
        );

        /* Instanciate parity checker */
        parity_checker #(
            .DATA_WIDTH(DATA_WIDTH),
            .PARITY_MODE(PARITY_MODE),
            .PARITY_BIT_CHOICE(PARITY_BIT_CHOICE)
        ) parity_checker_inst (
            .pop_valid_i(fifo_pop_valid_o),
            .pop_data_i(fifo_pop_data_o),
            .pop_grant_o(fifo_pop_grant_i),
            .valid_o(valid_o),
            .grant_i(grant_i)
        );

        assign data_o = fifo_pop_data_o;
    
    endmodule