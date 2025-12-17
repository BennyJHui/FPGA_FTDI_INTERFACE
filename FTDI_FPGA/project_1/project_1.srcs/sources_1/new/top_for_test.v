`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Benny J Hui
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


module top_for_test(
    //++++++ system clock +++++++++
    input sys_clk_p,
    input sys_clk_n,

    //++++++ global +++++++++
    input reset_n_i,

    //++++++ DDR4 Physical Interface +++++++++
    output [16:0] c0_ddr4_adr,
    output [1:0] c0_ddr4_ba,
    output c0_ddr4_cke,
    output c0_ddr4_cs_n,
    inout [1:0] c0_ddr4_dm_dbi_n,
    inout [15:0] c0_ddr4_dq,
    inout [1:0] c0_ddr4_dqs_c,
    inout [1:0] c0_ddr4_dqs_t,
    output c0_ddr4_bg,
    output c0_ddr4_act_n,
    output c0_ddr4_ck_c,
    output c0_ddr4_ck_t,
    output c0_ddr4_odt,
    output c0_ddr4_reset_n,

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

    //++++++ DDR4 User Interface +++++++++
    wire c0_ddr4_ui_clk; // 200 MHz
    wire c0_ddr4_ui_clk_sync_rst;
    wire c0_init_calib_complete;
    wire [28:0] c0_ddr4_app_addr;
    wire [2:0] c0_ddr4_app_cmd;
    wire c0_ddr4_app_en;
    wire [127:0] c0_ddr4_app_wdf_data;
    wire c0_ddr4_app_wdf_end;
    wire [15:0] c0_ddr4_app_wdf_mask = 0;
    wire c0_ddr4_app_wdf_wren;
    wire c0_ddr4_app_rdy;
    wire [127:0] c0_ddr4_app_rd_data;
    wire c0_ddr4_app_rd_data_end;
    wire c0_ddr4_app_rd_data_valid;
    wire c0_ddr4_app_wdf_rdy;
    wire c0_ddr4_app_hi_pri = 0;

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

// MIG DDR4
ddr4_0 U_ddr4_0 (
  .c0_init_calib_complete(c0_init_calib_com4plete),        // output wire c0_init_calib_complete
  .dbg_clk(),                                             // output wire dbg_clk
  .c0_sys_clk_p(sys_clk_p),                               // input wire c0_sys_clk_p
  .c0_sys_clk_n(sys_clk_n),                               // input wire c0_sys_clk_n
  .dbg_bus(),                                             // output wire [511 : 0] dbg_bus
  .c0_ddr4_adr(c0_ddr4_adr),                              // output wire [16 : 0] c0_ddr4_adr
  .c0_ddr4_ba(c0_ddr4_ba),                                // output wire [1 : 0] c0_ddr4_ba
  .c0_ddr4_cke(c0_ddr4_cke),                              // output wire [0 : 0] c0_ddr4_cke
  .c0_ddr4_cs_n(c0_ddr4_cs_n),                            // output wire [0 : 0] c0_ddr4_cs_n
  .c0_ddr4_dm_dbi_n(c0_ddr4_dm_dbi_n),                    // inout wire [1 : 0] c0_ddr4_dm_dbi_n
  .c0_ddr4_dq(c0_ddr4_dq),                                // inout wire [15 : 0] c0_ddr4_dq
  .c0_ddr4_dqs_c(c0_ddr4_dqs_c),                          // inout wire [1 : 0] c0_ddr4_dqs_c
  .c0_ddr4_dqs_t(c0_ddr4_dqs_t),                          // inout wire [1 : 0] c0_ddr4_dqs_t
  .c0_ddr4_odt(c0_ddr4_odt),                              // output wire [0 : 0] c0_ddr4_odt
  .c0_ddr4_bg(c0_ddr4_bg),                                // output wire [0 : 0] c0_ddr4_bg
  .c0_ddr4_reset_n(c0_ddr4_reset_n),                      // output wire c0_ddr4_reset_n
  .c0_ddr4_act_n(c0_ddr4_act_n),                          // output wire c0_ddr4_act_n
  .c0_ddr4_ck_c(c0_ddr4_ck_c),                            // output wire [0 : 0] c0_ddr4_ck_c
  .c0_ddr4_ck_t(c0_ddr4_ck_t),                            // output wire [0 : 0] c0_ddr4_ck_t
  .c0_ddr4_ui_clk(c0_ddr4_ui_clk),                        // output wire c0_ddr4_ui_clk
  .c0_ddr4_ui_clk_sync_rst(c0_ddr4_ui_clk_sync_rst),      // output wire c0_ddr4_ui_clk_sync_rst
  .c0_ddr4_app_en(c0_ddr4_app_en),                        // input wire c0_ddr4_app_en
  .c0_ddr4_app_hi_pri(c0_ddr4_app_hi_pri),                // input wire c0_ddr4_app_hi_pri
  .c0_ddr4_app_wdf_end(c0_ddr4_app_wdf_end),              // input wire c0_ddr4_app_wdf_end
  .c0_ddr4_app_wdf_wren(c0_ddr4_app_wdf_wren),            // input wire c0_ddr4_app_wdf_wren
  .c0_ddr4_app_rd_data_end(c0_ddr4_app_rd_data_end),      // output wire c0_ddr4_app_rd_data_end
  .c0_ddr4_app_rd_data_valid(c0_ddr4_app_rd_data_valid),  // output wire c0_ddr4_app_rd_data_valid
  .c0_ddr4_app_rdy(c0_ddr4_app_rdy),                      // output wire c0_ddr4_app_rdy
  .c0_ddr4_app_wdf_rdy(c0_ddr4_app_wdf_rdy),              // output wire c0_ddr4_app_wdf_rdy
  .c0_ddr4_app_addr(c0_ddr4_app_addr),                    // input wire [28 : 0] c0_ddr4_app_addr
  .c0_ddr4_app_cmd(c0_ddr4_app_cmd),                      // input wire [2 : 0] c0_ddr4_app_cmd
  .c0_ddr4_app_wdf_data(c0_ddr4_app_wdf_data),            // input wire [127 : 0] c0_ddr4_app_wdf_data
  .c0_ddr4_app_wdf_mask(c0_ddr4_app_wdf_mask),            // input wire [15 : 0] c0_ddr4_app_wdf_mask
  .c0_ddr4_app_rd_data(c0_ddr4_app_rd_data),              // output wire [127 : 0] c0_ddr4_app_rd_data
  .sys_rst(~reset_n_i)                                     // input wire sys_rst
);

endmodule
