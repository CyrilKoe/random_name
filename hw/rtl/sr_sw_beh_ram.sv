module sr_sw_beh_ram
#(
    parameter DATA_WIDTH    = 8,
    parameter DEPTH         = 4,
    parameter ADDRESS_WIDTH = $clog2(DEPTH)
) (
    input   wire   clk,
    input   wire   [ADDRESS_WIDTH-1 : 0] write_addr,
    input   wire   [DATA_WIDTH-1 : 0] write_data,
    input   wire   write_enable,
    input   wire   [ADDRESS_WIDTH-1 : 0] read_addr,
    output  wire   [DATA_WIDTH-1 : 0] read_data,
    input   wire   read_enable,
    input   wire   chip_select
);

    reg [DEPTH-1:0][DATA_WIDTH-1:0] words;
    reg tmp_read_data;

    always_ff @(posedge clk) begin
        if (chip_select & write_enable)
            words[write_addr] <= write_data;
    end

    always_ff @(posedge clk) begin
        if (chip_select & read_enable)
            tmp_read_data <= words[read_addr];
    end

    // Synchronous read
    // assign read_data = tmp_read_data;
    // Asynchronous read
    assign read_data = words[read_addr];

endmodule