`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2025 03:32:24 PM
// Design Name: 
// Module Name: ftdi_245
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ftdi_245(
    //++++++ Test Clock +++++++++
    input clk_in_200, // 200

    //++++++ global +++++++++
    input reset_n_i,

    //+++++++++ FT601Q-B Bus Signals(synchron mode) +++++++++++
    input usb_clock_i, // 100
    inout [31:0] usb_data_io, // this should be inout, should use tri-state buffer and have wire and reg to be either i or o
    output reg usb_rd_n_o,
    output reg usb_wr_n_o,
    output reg usb_oe_n_o,
    input usb_rxf_n_i,
    input usb_txe_n_i,
    output usb_siwu_o, // ignore


    //++++++ FTDI Data Interface +++++++++
    input [63:0] wr_data_i, //* fsmplease
    input wr_en_i, //* fsmplease
    input rd_en_i, //* fsmplease
    output [63:0] rd_data_o, //* fsmplease
    output rd_fifo_empty_o, //* fsmplease
    output rd_fifo_cnt_o,
    output wr_fifo_full_o, //* fsmplease
    output rd_fifo_data_valid_o //* fsmplease
);

// RX signals
reg [31:0] RX_din;
reg RX_wr_en;
wire RX_rd_en;
wire [63:0] RX_dout;
wire RX_full;
// wire RX_wr_ack;
// wire RX_overflow;
wire RX_empty;
wire RX_valid;
// wire RX_underflow;
wire [8:0] RX_rd_data_count;
// wire [9:0] RX_wr_data_count;
// wire RX_wr_rst_busy;
// wire RX_rd_rst_busy;

// TX signals
wire [63:0] TX_din;
wire TX_wr_en;
reg TX_rd_en;
wire [31:0] TX_dout;
wire TX_full;
wire TX_wr_ack;
// wire TX_overflow;
wire TX_empty;
wire TX_valid;
// wire TX_underflow;
// wire TX_wr_rst_busy;
// wire TX_rd_rst_busy;


// Receiving from FTDI to FPGA
rx_fifo U_rx_fifo (
  .rst(~reset_n_i),                      // input wire rst
  .wr_clk(usb_clock_i),                // input wire wr_clk
  .rd_clk(clk_in_200),                // input wire rd_clk
  .din(RX_din),          //*   7         // input wire [31 : 0] din
  .wr_en(RX_wr_en),     //*   7          // input wire wr_en
  .rd_en(RX_rd_en),                  // input wire rd_en----------------
  .dout(RX_dout),                    // output wire [63 : 0] dout
  .full(RX_full),       //*7             // output wire full
  .wr_ack(),                // output wire wr_ack
  .overflow(),            // output wire overflow
  .empty(RX_empty),                  // output wire empty
  .valid(RX_valid),                  // output wire valid
  .underflow(),          // output wire underflow
  .rd_data_count(RX_rd_data_count),  // output wire [8 : 0] rd_data_count
  .wr_data_count(),  // output wire [9 : 0] wr_data_count
  .wr_rst_busy(),      // output wire wr_rst_busy
  .rd_rst_busy()      // output wire rd_rst_busy
);

// Writing from FPGA to FTDI
tx_fifo U_tx_fifo (
  .rst(~reset_n_i),                  // input wire rst
  .wr_clk(clk_in_200),            // input wire wr_clk
  .rd_clk(usb_clock_i),            // input wire rd_clk
  .din(TX_din),                  // input wire [63 : 0] din // wr_data_i
  .wr_en(TX_wr_en),              // input wire wr_en // tx from fsm
  .rd_en(TX_rd_en),   //*   7        // input wire rd_en // from here
  .dout(TX_dout),      //*          // output wire [31 : 0] dout
  .full(TX_full),                // output wire full
  .wr_ack(TX_wr_ack),            // output wire wr_ack
  .overflow(),        // output wire overflow
  .empty(TX_empty),    //* 7         // output wire empty
  .valid(TX_valid), //*   7         // output wire valid
  .underflow(),      // output wire underflow
  .wr_rst_busy(),  // output wire wr_rst_busy
  .rd_rst_busy()  // output wire rd_rst_busy
);

localparam IDLE = 4'b0000;
localparam RX_ROUTE = 4'b0001;
localparam TX_ROUTE = 4'b0010;

reg [3:0] states = IDLE;
reg [2:0] cnt_RX = 0;
reg [2:0] cnt_TX = 0;
reg fin = 0;
reg fpga_route;

wire [31:0] usb_data_i;
reg [31:0] usb_data_o;

always @(posedge usb_clock_i) begin
    if (~reset_n_i) begin
        states <= IDLE;
        usb_oe_n_o <= 1;
        usb_rd_n_o <= 1;
        usb_wr_n_o <= 1;
        // flags
    end else begin
        case(states)
            IDLE: begin
                if ((!usb_rxf_n_i) & (!RX_full)) begin
                    usb_wr_n_o <= 1;
                    if (cnt_RX == 3'b010) begin
                        usb_oe_n_o <= 0;
                        fpga_route <= 0;
                    end else if (cnt_RX == 3'b11) begin
                        usb_rd_n_o <= 0;
                        cnt_RX <= 0;
                        RX_wr_en <= 1;
                        states <= RX_ROUTE;
                    end else begin
                        cnt_RX <= cnt_RX + 1;
                    end
                end
                
                else if ((!usb_txe_n_i) & (!TX_empty)) begin
                    usb_rd_n_o <= 1;
                    usb_oe_n_o <= 1;
                    fpga_route <= 1;
                    if (TX_valid) begin
                        if (cnt_TX == 3'b010) begin
                            states <= TX_ROUTE;
                            cnt_TX <= 0;
                            TX_rd_en <= 1;
                            usb_wr_n_o <= 0;
                        end else begin
                            cnt_TX <= cnt_TX + 1;
                        end
                    end
                end 

                else begin
                    usb_rd_n_o <= 1;
                    usb_wr_n_o <= 1;
                    usb_oe_n_o <= 1;
                    RX_wr_en <= 0;
                    TX_rd_en   <= 0;
                    fpga_route <= 0;
                end 
            end

            RX_ROUTE: begin
                RX_din <= usb_data_i;
                if (fin) begin
                    fin <= 0;
                    RX_wr_en <= 0; 
                    states <= IDLE;
                end else begin
                    fin <= 1;
                end
            end

            TX_ROUTE: begin
                usb_data_o <= TX_dout;
                if (fin) begin
                    fin <= 0;
                    TX_rd_en <= 0; 
                    states <= IDLE;
                end else begin
                    fin <= 1;
                end
            end
        endcase
    end
end

// Misc Signals
//assign rd_fifo_cnt_o 
assign usb_siwu_o = 1;

// RX signals
assign RX_rd_en = rd_en_i;
assign rd_data_o = RX_dout;
assign rd_fifo_empty_o = RX_empty;
assign rd_fifo_data_valid_o = RX_valid;

// TX signals
assign wr_fifo_full_o = TX_full;
assign TX_wr_en = wr_en_i;
assign TX_din = wr_data_i;

// data output from fpga to ftdi
assign usb_data_i = usb_data_io;
assign usb_data_io = fpga_route ? usb_data_o : 32'hZZZZZZZZ;

endmodule
