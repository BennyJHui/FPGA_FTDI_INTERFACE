`timescale 1ns/1ps

module TB_ftdi_synchronous_245;

    // 200-MHz fabric clock
    reg  TB_clk_in_200;
    // 100-MHz FTDI clock
    reg  TB_usb_clock_i;

    // global reset
    reg  TB_reset_n_i;

    // FTDI bus signals
    reg  [31:0] TB_usb_data_io;   // we drive this as the “FTDI chip”
    wire        TB_usb_rd_n_o;
    wire        TB_usb_wr_n_o;
    wire        TB_usb_oe_n_o;
    reg         TB_usb_rxf_n_i;   // RXF_N from FTDI (0 = data available)
    reg         TB_usb_txe_n_i;   // TXE_N from FTDI (1 = not used yet)
    wire        TB_usb_siwu_o;

    // (not used in this test, tie to zeros)
    wire [63:0]  TB_wr_data_i;
    wire         TB_wr_en_i;
    wire         TB_rd_en_i;
    wire [63:0] TB_rd_data_o;
    wire        TB_rd_fifo_empty_o;
    wire        TB_rd_fifo_cnt_o;
    wire        TB_wr_fifo_full_o;
    wire        TB_wr_fifo_afull_o;
    wire        TB_wr_fifo_wr_ack_o;
    wire        TB_rd_fifo_data_valid_o;

    // MIG
    wire TB_c0_ddr4_app_rdy;
    wire TB_c0_ddr4_app_wdf_rdy;
    wire TB_c0_ddr4_app_rd_data_valid;
    wire TB_c0_init_calib_complete;
    wire [255:0] TB_c0_ddr4_app_rd_data;
    wire TB_c0_ddr4_app_en;
    wire TB_c0_ddr4_app_wdf_wren;
    wire [2:0] TB_c0_ddr4_app_cmd;
    wire [28:0] TB_c0_ddr4_app_addr;
    wire [255:0] TB_c0_ddr4_app_wdf_data;

    //REST OF MIG DDR4
    reg TB_sys_clk_p;
    reg TB_sys_clk_n;
    wire [16:0] TB_c0_ddr4_adr;
    wire [1:0] TB_c0_ddr4_ba;
    wire TB_c0_ddr4_cke;
    wire TB_c0_ddr4_cs_n;
    wire [1:0] TB_c0_ddr4_dm_dbi_n;
    wire [15:0] TB_c0_ddr4_dq;
    wire [1:0] TB_c0_ddr4_dqs_c;
    wire [1:0] TB_c0_ddr4_dqs_t;
    wire TB_c0_ddr4_bg;
    wire TB_c0_ddr4_act_n;
    wire TB_c0_ddr4_ck_c;
    wire TB_c0_ddr4_ck_t;
    wire TB_c0_ddr4_odt;
    wire TB_c0_ddr4_reset_n;
    wire TB_c0_ddr4_ui_clk;
    wire TB_c0_ddr4_ui_clk_sync_rst;
    wire TB_c0_ddr4_app_wdf_end;
    wire TB_c0_ddr4_app_rd_data_end;

    // output from DUT (what we want to watch)
    wire [63:0] TB_ftdi_to_fpga;
    wire [31:0] TB_fpga_to_ftdi;

    // ----------------------------------------------------------------
    // Clock generation
    // ----------------------------------------------------------------
    initial TB_clk_in_200 = 1;
    always #2.5 TB_clk_in_200 = ~TB_clk_in_200;   // 200 MHz

    initial TB_usb_clock_i = 1;
    always #5   TB_usb_clock_i = ~TB_usb_clock_i; // 100 MHz

    initial begin
        TB_sys_clk_n = 0;
        TB_sys_clk_p = 1;
    end

    always #2.5 begin   // 5 ns period → 200 MHz
        TB_sys_clk_p = ~TB_sys_clk_p;
        TB_sys_clk_n = ~TB_sys_clk_n;
    end

    // ----------------------------------------------------------------
    // DUT instance
    // ----------------------------------------------------------------
    ftdi_synchronous_245 U_ftdi_synchronous_245 (
        .clk_in_200          (TB_clk_in_200),
        .reset_n_i           (TB_reset_n_i),

        .usb_clock_i         (TB_usb_clock_i),
        .usb_data_io         (TB_usb_data_io),
        .usb_rd_n_o          (TB_usb_rd_n_o),
        .usb_wr_n_o          (TB_usb_wr_n_o),
        .usb_oe_n_o          (TB_usb_oe_n_o),
        .usb_rxf_n_i         (TB_usb_rxf_n_i),
        .usb_txe_n_i         (TB_usb_txe_n_i),
        .usb_siwu_o          (TB_usb_siwu_o),

        .wr_data_i           (TB_wr_data_i),
        .wr_en_i             (TB_wr_en_i),
        .rd_en_i             (TB_rd_en_i),
        .rd_data_o           (TB_rd_data_o),
        .rd_fifo_empty_o     (TB_rd_fifo_empty_o),
        .rd_fifo_cnt_o       (TB_rd_fifo_cnt_o),
        .wr_fifo_full_o      (TB_wr_fifo_full_o),
        .wr_fifo_afull_o     (TB_wr_fifo_afull_o),
        .wr_fifo_wr_ack_o    (TB_wr_fifo_wr_ack_o),
        .rd_fifo_data_valid_o(TB_rd_fifo_data_valid_o),

        .ftdi_to_fpga        (TB_ftdi_to_fpga),
        .fpga_to_ftdi        (TB_fpga_to_ftdi)
    );

fsmplease U_fsmplease(
    .c0_ddr4_ui_clk(TB_clk_in_200), // 200 MHz
    .reset_n_i(TB_reset_n_i),

    // MIG
    .c0_ddr4_app_rdy(TB_c0_ddr4_app_rdy),
    .c0_ddr4_app_wdf_rdy(TB_c0_ddr4_app_wdf_rdy),
    .c0_ddr4_app_rd_data_valid(TB_c0_ddr4_app_rd_data_valid),
    .c0_init_calib_complete(TB_c0_init_calib_complete),
    .c0_ddr4_app_rd_data(TB_c0_ddr4_app_rd_data),
    .c0_ddr4_app_en(TB_c0_ddr4_app_en),
    .c0_ddr4_app_wdf_wren(TB_c0_ddr4_app_wdf_wren),
    .c0_ddr4_app_cmd(TB_c0_ddr4_app_cmd),
    .c0_ddr4_app_addr(TB_c0_ddr4_app_addr),
    .c0_ddr4_app_wdf_data(TB_c0_ddr4_app_wdf_data),

    // ----- FTDI tx ----- //
    .wr_data_i           (TB_wr_data_i),
    .wr_en_i             (TB_wr_en_i),
    .wr_fifo_full_o(TB_wr_fifo_full_o),
    
    // ----- FTDI rx ----- //
    .rd_en_i(TB_rd_en_i),
    .rd_data_o(TB_ftdi_to_fpga),
    .rd_fifo_empty_o(TB_rd_fifo_empty_o),
    .rd_fifo_data_valid_o(TB_rd_fifo_data_valid_o)
);

// MIG DDR4
ddr4_0 U_ddr4_0 (
  .c0_init_calib_complete(TB_c0_init_calib_complete),        // output wire c0_init_calib_complete
  .dbg_clk(),                                             // output wire dbg_clk
  .c0_sys_clk_p(TB_sys_clk_p),                               // input wire c0_sys_clk_p
  .c0_sys_clk_n(TB_sys_clk_n),                               // input wire c0_sys_clk_n
  .dbg_bus(),                                             // output wire [511 : 0] dbg_bus
  .c0_ddr4_adr(TB_c0_ddr4_adr),                              // output wire [16 : 0] c0_ddr4_adr
  .c0_ddr4_ba(TB_c0_ddr4_ba),                                // output wire [1 : 0] c0_ddr4_ba
  .c0_ddr4_cke(TB_c0_ddr4_cke),                              // output wire [0 : 0] c0_ddr4_cke
  .c0_ddr4_cs_n(TB_c0_ddr4_cs_n),                            // output wire [0 : 0] c0_ddr4_cs_n
  .c0_ddr4_dm_dbi_n(TB_c0_ddr4_dm_dbi_n),                    // inout wire [1 : 0] c0_ddr4_dm_dbi_n
  .c0_ddr4_dq(TB_c0_ddr4_dq),                                // inout wire [15 : 0] c0_ddr4_dq
  .c0_ddr4_dqs_c(TB_c0_ddr4_dqs_c),                          // inout wire [1 : 0] c0_ddr4_dqs_c
  .c0_ddr4_dqs_t(TB_c0_ddr4_dqs_t),                          // inout wire [1 : 0] c0_ddr4_dqs_t
  .c0_ddr4_odt(TB_c0_ddr4_odt),                              // output wire [0 : 0] c0_ddr4_odt
  .c0_ddr4_bg(TB_c0_ddr4_bg),                                // output wire [0 : 0] c0_ddr4_bg
  .c0_ddr4_reset_n(TB_c0_ddr4_reset_n),                      // output wire c0_ddr4_reset_n
  .c0_ddr4_act_n(TB_c0_ddr4_act_n),                          // output wire c0_ddr4_act_n
  .c0_ddr4_ck_c(TB_c0_ddr4_ck_c),                            // output wire [0 : 0] c0_ddr4_ck_c
  .c0_ddr4_ck_t(TB_c0_ddr4_ck_t),                            // output wire [0 : 0] c0_ddr4_ck_t
  .c0_ddr4_ui_clk(TB_c0_ddr4_ui_clk),    //                    // output wire c0_ddr4_ui_clk
  .c0_ddr4_ui_clk_sync_rst(TB_c0_ddr4_ui_clk_sync_rst), //     // output wire c0_ddr4_ui_clk_sync_rst
  .c0_ddr4_app_en(TB_c0_ddr4_app_en),                        // input wire c0_ddr4_app_en
  .c0_ddr4_app_hi_pri(0), //               // input wire c0_ddr4_app_hi_pri
  .c0_ddr4_app_wdf_end(TB_c0_ddr4_app_wdf_end), //             // input wire c0_ddr4_app_wdf_end
  .c0_ddr4_app_wdf_wren(TB_c0_ddr4_app_wdf_wren),            // input wire c0_ddr4_app_wdf_wren
  .c0_ddr4_app_rd_data_end(TB_c0_ddr4_app_rd_data_end),  //    // output wire c0_ddr4_app_rd_data_end
  .c0_ddr4_app_rd_data_valid(TB_c0_ddr4_app_rd_data_valid),  // output wire c0_ddr4_app_rd_data_valid
  .c0_ddr4_app_rdy(TB_c0_ddr4_app_rdy),                      // output wire c0_ddr4_app_rdy
  .c0_ddr4_app_wdf_rdy(TB_c0_ddr4_app_wdf_rdy),              // output wire c0_ddr4_app_wdf_rdy
  .c0_ddr4_app_addr(TB_c0_ddr4_app_addr),                    // input wire [28 : 0] c0_ddr4_app_addr
  .c0_ddr4_app_cmd(TB_c0_ddr4_app_cmd),                      // input wire [2 : 0] c0_ddr4_app_cmd
  .c0_ddr4_app_wdf_data(TB_c0_ddr4_app_wdf_data),            // input wire [127 : 0] c0_ddr4_app_wdf_data
  .c0_ddr4_app_wdf_mask(0),   //         // input wire [15 : 0] c0_ddr4_app_wdf_mask
  .c0_ddr4_app_rd_data(TB_c0_ddr4_app_rd_data),              // output wire [127 : 0] c0_ddr4_app_rd_data
  .sys_rst(~TB_reset_n_i)                                     // input wire sys_rst
);

    // ----------------------------------------------------------------
    // Stimulus
    // ----------------------------------------------------------------
    initial begin
        // defaults
        TB_reset_n_i   = 0;
        TB_usb_data_io = 32'h00000000;
        TB_usb_rxf_n_i = 1;  // no data available
        TB_usb_txe_n_i = 1;  // ignore TX path for now

        // hold reset for a bit
        TB_reset_n_i = 1;
        #4000;

        // =============== FIRST WORD =================
        // put data on the bus BEFORE the DUT samples it
        @(posedge TB_usb_clock_i);
        TB_usb_rxf_n_i = 0;          // tell DUT that RX FIFO has data

        // give FSM time to go IDLE -> RX_ROUTE -> RX_OE_S1 -> RX_DATA_S2
        repeat (4) @(posedge TB_usb_clock_i);
        TB_usb_data_io = 32'h9001AAAA;

        // end of this RX burst, de-assert RXF_N
        @(posedge TB_usb_clock_i);
        TB_usb_data_io = 32'hBBBB0000;

        // @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hAAAAAAAA;

        // @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hBBBBBBBB;

        @(posedge TB_usb_clock_i);
        TB_usb_rxf_n_i = 1;

        #100;

        // =============== FIRST WORD =================
        // put data on the bus BEFORE the DUT samples it
        @(posedge TB_usb_clock_i);
        TB_usb_rxf_n_i = 0;          // tell DUT that RX FIFO has data

        // give FSM time to go IDLE -> RX_ROUTE -> RX_OE_S1 -> RX_DATA_S2
        repeat (4) @(posedge TB_usb_clock_i);
        TB_usb_data_io = 32'hA001AAAA;

        // end of this RX burst, de-assert RXF_N
        @(posedge TB_usb_clock_i);
        TB_usb_data_io = 32'hBBBB0000;

        // @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hAAAAAAAA;

        // @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hBBBBBBBB;

        @(posedge TB_usb_clock_i);
        TB_usb_rxf_n_i = 1;
        TB_usb_txe_n_i = 0;

        #100;

        // // =============== SECOND WORD =================
        // // put data on the bus BEFORE the DUT samples it
        // @(posedge TB_usb_clock_i);
        // TB_usb_rxf_n_i = 0;          // tell DUT that RX FIFO has data

        // // give FSM time to go IDLE -> RX_ROUTE -> RX_OE_S1 -> RX_DATA_S2
        // repeat (4) @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hBBBBBBBB;

        // // end of this RX burst, de-assert RXF_N
        // @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hAAAAAAAA;

        // // @(posedge TB_usb_clock_i);
        // // TB_usb_data_io = 32'hAAAAAAAA;

        // // @(posedge TB_usb_clock_i);
        // // TB_usb_data_io = 32'hBBBBBBBB;

        // @(posedge TB_usb_clock_i);
        // TB_usb_rxf_n_i = 1;

        // #100;
        // // =============== THIRD WORD =================
        // // put data on the bus BEFORE the DUT samples it
        // @(posedge TB_usb_clock_i);
        // TB_usb_rxf_n_i = 0;          // tell DUT that RX FIFO has data

        // // give FSM time to go IDLE -> RX_ROUTE -> RX_OE_S1 -> RX_DATA_S2
        // repeat (4) @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hDDDDDDDD;

        // // end of this RX burst, de-assert RXF_N
        // @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'h22222222;

        // // @(posedge TB_usb_clock_i);
        // // TB_usb_data_io = 32'hAAAAAAAA;

        // // @(posedge TB_usb_clock_i);
        // // TB_usb_data_io = 32'hBBBBBBBB;

        // @(posedge TB_usb_clock_i);
        // TB_usb_rxf_n_i = 1;

        // #100;
        // // =============== FOURTH WORD =================
        // // put data on the bus BEFORE the DUT samples it
        // @(posedge TB_usb_clock_i);
        // TB_usb_rxf_n_i = 0;          // tell DUT that RX FIFO has data

        // // give FSM time to go IDLE -> RX_ROUTE -> RX_OE_S1 -> RX_DATA_S2
        // repeat (4) @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hCCCC1111;

        // // end of this RX burst, de-assert RXF_N
        // @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hdabc1212;

        // // @(posedge TB_usb_clock_i);
        // // TB_usb_data_io = 32'hAAAAAAAA;

        // // @(posedge TB_usb_clock_i);
        // // TB_usb_data_io = 32'hBBBBBBBB;

        // @(posedge TB_usb_clock_i);
        // //TB_usb_data_io = 32'h00000000;
        // TB_usb_rxf_n_i = 1;

        // #100;
        
    end

endmodule
