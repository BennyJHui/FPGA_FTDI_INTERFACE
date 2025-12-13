`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Benny J Hui
// 
// Create Date: 12/11/2025 05:51:07 PM
// Design Name: 
// Module Name: ftdi_synchronous_245
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
// restart; current_wave_config {Untitled 4}; add_wave {{/TB_ftdi_synchronous_245/U_ftdi_synchronous_245}}; run all;
//////////////////////////////////////////////////////////////////////////////////


module ftdi_synchronous_245(
    //++++++ Test Clock +++++++++
    input clk_in_200, // 200

    //++++++ global +++++++++
    input reset_n_i,

    //+++++++++ FT601Q-B Bus Signals(synchron mode) +++++++++++
    input usb_clock_i, // 100
    input [31:0] usb_data_io,
    output reg usb_rd_n_o,
    output reg usb_wr_n_o,
    output reg usb_oe_n_o,
    input usb_rxf_n_i,
    input usb_txe_n_i,
    output usb_siwu_o,


    //++++++ FTDI Data Interface +++++++++
    input wr_data_i,
    input wr_en_i,
    input rd_en_i,
    output rd_data_o,
    output rd_fifo_empty_o,
    output rd_fifo_cnt_o,
    output wr_fifo_full_o,
    output wr_fifo_afull_o,
    output wr_fifo_wr_ack_o,
    output rd_fifo_data_valid_o,

    //++++++ FTDI Data Interface +++++++++
    output reg [63:0] ftdi_to_fpga
);

wire [31:0] receive_data;
reg [31:0] transmit_data;

// RX signals
reg [31:0] RX_din;
reg RX_wr_en;
reg RX_rd_en;
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
reg TX_wr_en;
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
  .din(RX_din),                      // input wire [31 : 0] din
  .wr_en(RX_wr_en),                  // input wire wr_en
  .rd_en(RX_rd_en),                  // input wire rd_en----------------
  .dout(RX_dout),                    // output wire [63 : 0] dout
  .full(RX_full),                    // output wire full
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
  .din(TX_din),                  // input wire [63 : 0] din
  .wr_en(TX_wr_en),              // input wire wr_en
  .rd_en(TX_rd_en),              // input wire rd_en-----------
  .dout(TX_dout),                // output wire [31 : 0] dout
  .full(TX_full),                // output wire full
  .wr_ack(TX_wr_ack),            // output wire wr_ack
  .overflow(),        // output wire overflow
  .empty(TX_empty),              // output wire empty
  .valid(TX_valid),              // output wire valid
  .underflow(),      // output wire underflow
  .wr_rst_busy(),  // output wire wr_rst_busy
  .rd_rst_busy()  // output wire rd_rst_busy
);

reg [2:0] waiter = 0;
reg [6:0] count = 0;
reg [3:0] state = IDLE;

reg cnt = 0;
reg [1:0] cnt_latency = 0;

localparam IDLE = 4'b0000;
localparam TX_ROUTE = 4'b0001;
localparam RX_ROUTE = 4'b0010;
localparam RX_OE_S1 = 4'b0011;
localparam RX_DATA_S2 = 4'b0100;
localparam RX_RST_S3 = 4'b0101;
localparam RX_REC_S4 = 4'b0110;
localparam RX_DATA_S5 = 4'b0111;
localparam RX_S6 = 4'b1000;
localparam FINAL = 4'b1111;

assign receive_data = usb_data_io;
assign usb_siwu_o = 1;

always @(posedge usb_clock_i) begin
    if (~reset_n_i) begin
        state <= IDLE;
            // resets
    end else begin
        case(state)
            // states
            IDLE: begin //0
                TX_rd_en <= 0;
                RX_rd_en <= 0;
                TX_wr_en <= 0;
                RX_wr_en <= 0;
                usb_oe_n_o <= 1;
                usb_rd_n_o <= 1;

                if (!usb_rxf_n_i) begin
                    state <= RX_ROUTE;
                end else if (!usb_txe_n_i) begin
                    state <= TX_ROUTE;
                end else begin
                    state <= IDLE;
                end
            end

            TX_ROUTE: begin //1
                state <= TX_ROUTE;
            end 

            RX_ROUTE: begin //2
                if (waiter < 3'b001) begin
                    waiter <= waiter + 1;
                    state <= RX_ROUTE;
                end else begin
                    waiter <= 0;
                    state <= RX_OE_S1;
                end
            end

            RX_OE_S1: begin //3
                usb_oe_n_o <= 0;
                state <= RX_DATA_S2;
            end

            RX_DATA_S2: begin //4 ------------- FIX THIS -------------
                usb_rd_n_o <= 0;
                RX_din <= receive_data;

                if (cnt) begin
                    RX_wr_en <= 1;
                end else begin
                    cnt <= 1;
                end

                if (usb_rxf_n_i) begin
                    cnt <= 0;
                    state <= RX_RST_S3;
                end else begin
                    state <= RX_DATA_S2;
                end
            end

            // Done with writing into fifo rx here
            RX_RST_S3: begin //5
                RX_wr_en <= 0;
                usb_oe_n_o <= 1;
                usb_rd_n_o <= 1;
                state <= RX_DATA_S5;
            end

            // RX_REC_S4: begin //6
            //     RX_wr_en <= 1;
            //     state <= RX_DATA_S5;
            // end


// ------------------- FIX READ STATE (this part is receiving data to fifo)
            RX_DATA_S5: begin //7
                if (!RX_empty) begin
                    RX_rd_en <= 1;
                    state <= RX_S6;
                end
            end

            RX_S6: begin //8
                RX_rd_en <= 0;
                // if (RX_valid) begin
                //     ftdi_to_fpga <= RX_dout;
                // end

                if (cnt_latency == 2'b10) begin
                    state <= IDLE;
                    cnt_latency <= 0;
                end
                cnt_latency <= cnt_latency + 1;
            end

            default: state <= IDLE;
        endcase
    end
end

always @(posedge clk_in_200) begin
    if (RX_valid) begin
        ftdi_to_fpga <= RX_dout;
    end    
end

assign rd_data_o = 0;
assign rd_fifo_empty_o = 0;
assign rd_fifo_cnt_o = 0;
assign wr_fifo_full_o = 0;
assign wr_fifo_afull_o = 0;
assign wr_fifo_wr_ack_o = 0;
assign rd_fifo_data_valid_o = 0;

endmodule
