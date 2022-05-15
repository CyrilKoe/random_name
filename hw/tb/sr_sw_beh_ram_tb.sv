
import types_pkg::*;

module sr_sw_beh_ram_tb
();

    localparam DATA_WIDTH = 8;
    localparam DEPTH = 4;
    parameter ADDRESS_WIDTH = $clog2(DEPTH);
    localparam period = 5ns;
    localparam half_period = 2.5ns;

    /** **/
    reg                     clk;
    reg                     reset_n;

    reg   [ADDRESS_WIDTH-1:0]  write_addr;
    reg   [DATA_WIDTH-1:0]     write_data;
    reg                        write_enable;
    reg   [ADDRESS_WIDTH-1:0]  read_addr;
    wire  [DATA_WIDTH-1:0]     read_data;
    reg                        read_enable;

    sr_sw_beh_ram #(
        .DATA_WIDTH(DATA_WIDTH),
        .DEPTH(DEPTH),
        .ADDRESS_WIDTH(ADDRESS_WIDTH)
    ) RAM (
        .clk(clk),
        .write_addr(write_addr),
        .write_data(write_data),
        .write_enable(write_enable),
        .read_addr(read_addr),
        .read_data(read_data),
        .read_enable(read_enable),
        .chip_select(1'b1)
    );

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
        write_data = 'b0;
        write_addr = 'b0;
        write_enable = 'b0;
        read_addr = 'b0;
        read_enable = 'b0;

        #half_period;
        reset_n = 'b1;

        #period
        write_addr = 'b0;
        write_data = 'd3;
        write_enable = 'b1;
        read_addr = 'b0;
        read_enable = 'b1;
    end
  
endmodule