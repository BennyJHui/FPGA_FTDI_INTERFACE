`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2025 05:48:28 PM
// Design Name: 
// Module Name: top
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


module top(
    //++++++ system clock +++++++++
    input sys_clk_p,
    input sys_clk_n,

    //++++++ global +++++++++
    input reset_n_i,

    //+++++++++ FT601Q-B Bus Signals(synchron mode) +++++++++++
    input usb_clock_i,
    inout [31:0] usb_data_io,
    output usb_rd_n_o,
    output usb_wr_n_o,
    output usb_oe_n_o,
    input usb_rxf_n_i,
    input usb_txe_n_i,
    output usb_siwu_o,

    //++++++ BUTTONs +++++++++
    input KEY1,
    input KEY2,

    //++++++ LEDs +++++++++
    output reg LED1,
    output reg LED2    
);

    wire [63:0] FTDI_TO_FPGA;

    //++++++ FTDI Data Interface +++++++++
    wire wr_data_i;
    wire wr_en_i;
    wire rd_en_i;
    wire rd_data_o;
    wire rd_fifo_empty_o;
    wire rd_fifo_cnt_o;
    wire wr_fifo_full_o;
    wire wr_fifo_afull_o;
    wire wr_fifo_wr_ack_o;
    wire rd_fifo_data_valid_o;

    //++++++ Test Clock +++++++++
    wire clk_in_raw;

    IBUFDS #(
        .DIFF_TERM("TRUE"),   // enable on-chip termination if needed
        .IBUF_LOW_PWR("FALSE")
    ) IBUFDS_inst (
        .I (sys_clk_p),       // + pin
        .IB(sys_clk_n),       // - pin
        .O (clk_in_raw)       // single-ended
    );

    // differential to single edge clock
    always @(posedge clk_in_raw) begin
        if (KEY1) begin
            LED1 <= 0;
        end else begin
            LED1 <= 1;
        end
    end

    // FTDI clock
    always @(posedge usb_clock_i) begin
        if (KEY2) begin
            LED2 <= 0;
        end else begin
            LED2 <= 1;
        end
    end


endmodule
