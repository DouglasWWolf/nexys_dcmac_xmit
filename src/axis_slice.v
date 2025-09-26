//====================================================================================
//                        ------->  Revision History  <------
//====================================================================================
//
//   Date     Who   Ver  Changes
//====================================================================================
// 25-Aug-25  DWW     1  Initial creation
//====================================================================================

/*
    This is a register slice for an AXI stream
*/

module axis_slice #
(
    parameter DW=512,
    parameter KW=64,
    parameter UW=1    
)
(
    input   clk,
    input   resetn,

    // Input stream
    input [DW-1:0]   axis_in_tdata,
    input [KW-1:0]   axis_in_tkeep,
    input [UW-1:0]   axis_in_tuser,
    input            axis_in_tlast,
    input            axis_in_tvalid,
    output           axis_in_tready,

    // Output stream
    output [DW-1:0]  axis_out_tdata,
    output [KW-1:0]  axis_out_tkeep,
    output [UW-1:0]  axis_out_tuser,
    output           axis_out_tlast,
    output           axis_out_tvalid,
    input            axis_out_tready
);

// A slice is just a FIFO that is two entries deep
localparam DEPTH = 2;

// This will track how many items are in the FIFO
reg[1:0] fifo_count;

// These are the input and output pointers in the FIFO
reg next_in, next_out;

// The data that is stored in the FIFO
reg[DW-1:0] fifo_tdata  [0:DEPTH-1];
reg[KW-1:0] fifo_tkeep  [0:DEPTH-1];
reg[UW-1:0] fifo_tuser  [0:DEPTH-1];
reg         fifo_tlast  [0:DEPTH-1];

// This is asserted when data enters the FIFO
wire data_in  = axis_in_tvalid & axis_in_tready;

// This is asserted when data is extracted from the FIFO
wire data_out = axis_out_tvalid & axis_out_tready;

always @(posedge clk) begin

    if (resetn == 0) begin
        next_in       <= 0;
        next_out      <= 0;
        fifo_count    <= 0;
        fifo_tdata[0] <= 0;
        fifo_tkeep[0] <= 0;
        fifo_tuser[0] <= 0;
        fifo_tlast[0] <= 0;
    end
    
    else begin
        if (data_in) begin
            fifo_tdata[next_in] <= axis_in_tdata;
            fifo_tkeep[next_in] <= axis_in_tkeep;
            fifo_tuser[next_in] <= axis_in_tuser;
            fifo_tlast[next_in] <= axis_in_tlast;
            next_in             <= next_in + 1;
            if (!data_out) fifo_count <= fifo_count + 1;

        end

        if (data_out) begin
            next_out <= next_out + 1;
            if (!data_in) fifo_count <= fifo_count - 1;
        end
    end

end

assign axis_out_tdata  = fifo_tdata[next_out];
assign axis_out_tkeep  = fifo_tkeep[next_out];
assign axis_out_tuser  = fifo_tuser[next_out];
assign axis_out_tlast  = fifo_tlast[next_out];
assign axis_out_tvalid = (fifo_count != 0);
assign axis_in_tready  = (fifo_count != DEPTH);

endmodule
