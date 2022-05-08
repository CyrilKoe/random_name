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
    reg [ADDRESS_WIDTH-1:0] read_ctr, write_ctr;
    reg is_empty;
    wire is_full;

    assign is_full = (read_ctr == write_ctr) & ~is_empty;
    assign push_grant_o = ~is_full;
    assign pop_valid_o  = ~is_empty;

    always_ff @(posedge clk, negedge reset_n) begin
        if (!reset_n) begin
            read_ctr  <= 'b0;
            write_ctr <= 'b0;
            is_empty   <= 'b1;
        end
        else begin
            // Update write counter at the beginning of a write cycle
            if (push_valid_i & push_grant_o)
            begin
                write_ctr <= (write_ctr == DEPTH-1) ? 'b0 : write_ctr + 1;
                if (is_empty) begin
                    is_empty <= 'b0;
                end
            end
            // Update read counter at the beginning of a read cycle
            if (pop_grant_i & pop_valid_o)
            begin
                read_ctr <= (read_ctr == DEPTH-1) ? 'b0 : read_ctr + 1;
                if (write_ctr == read_ctr) begin
                    is_empty <= 'b1;
                end
            end
        end
    end

    sr_sw_beh_ram #(
        .DATA_WIDTH(DATA_WIDTH),
        .DEPTH(DEPTH),
        .ADDRESS_WIDTH(ADDRESS_WIDTH)
    ) RAM (
        .clk(clk),
        .write_addr(write_ctr),
        .write_data(push_data_i),
        .write_enable(push_grant_o & push_valid_i),
        .read_addr(read_ctr),
        .read_data(pop_data_o),
        .read_enable(pop_grant_i),
        .chip_select(1'b1)
    );

endmodule