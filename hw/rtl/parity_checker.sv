import types_pkg::*;

module parity_checker
#(
    parameter DATA_WIDTH = 8,
    parameter PARITY_MODE = EVEN,        // EVEN = 0 , ODD = 1
    parameter PARITY_BIT_CHOICE = MSB
)
(
    /** Interface with the FIFO **/
    input   wire                     pop_valid_i,   // 1 when the FIFO presents a data
    input   wire   [DATA_WIDTH-1:0]  pop_data_i,    // Data presented by the FIFO 
    output  wire                     pop_grant_o,   // Request FIFO to pop it

    /** Interface with the top level **/
    input   wire                     grant_i,       // Top level requests a pop
    output  wire                     valid_o        // 1 when the FIFO present a parity correct data
);
    wire parity_bit;
    wire [DATA_WIDTH-2:0] data_bits;
    wire parity_success;

    // Extract parity bit and data bits
    generate
        if (PARITY_BIT_CHOICE == MSB) begin
            assign parity_bit = pop_data_i[DATA_WIDTH-1];
            assign data_bits  = pop_data_i[DATA_WIDTH-1:0];
        end
        else if (PARITY_BIT_CHOICE == LSB) begin
            assign parity_bit = pop_data_i[0];
            assign data_bits = pop_data_i[DATA_WIDTH-1:1];
        end
    endgenerate
    
    // Output logic
    assign parity_success = (^pop_data_i == PARITY_MODE);
    assign valid_o = pop_valid_i & parity_success;
    assign pop_grant_o = grant_i | (pop_valid_i & ~parity_success);
  
endmodule