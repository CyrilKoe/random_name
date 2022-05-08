
import all_types_pkg::*;

module parity_checker_tb
();

    localparam DATA_WIDTH = 8;
    localparam period = 5ns;

    /** **/
    reg                     clk;

    /** Interface with the FIFO **/
    reg                     pop_valid_i;   // 1 when the FIFO presents a data
    reg   [DATA_WIDTH-1:0]  pop_data_i;    // Data presented by the FIFO 
    wire                    pop_grant_o;   // Request FIFO to pop it

    /** Interface with the top level **/
    reg                     grant_i;       // Top level requests a pop
    wire                    valid_o;       // 1 when the FIFO present a parity correct data

    parity_checker #(
        .DATA_WIDTH(DATA_WIDTH),
        .PARITY_MODE(ODD),
        .PARITY_BIT_CHOICE(MSB)
    ) DUT (
        // Interface with the FIFO
        .pop_valid_i(pop_valid_i),
        .pop_data_i(pop_data_i),
        .pop_grant_o(pop_grant_o),
        // Interface with the top level
        .valid_o(valid_o),
        .grant_i(grant_i)
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
        pop_valid_i = 'b0;
        pop_data_i  = 'b0;
        grant_i     = 'b0;

        #period;

        pop_valid_i = 'b1;
        pop_data_i = 'b1;

        #period;

        pop_valid_i = 'b01;
        pop_data_i = 'b11;

        #period

        grant_i     = 'b1;
        pop_valid_i = 'b1;
        pop_data_i = 'b1;

        #period

        pop_valid_i = 'b01;
        pop_data_i = 'b11;

    end
  
endmodule