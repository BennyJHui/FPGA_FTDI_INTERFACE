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
    reg         TB_wr_data_i;
    reg         TB_wr_en_i;
    reg         TB_rd_en_i;
    wire        TB_rd_data_o;
    wire        TB_rd_fifo_empty_o;
    wire        TB_rd_fifo_cnt_o;
    wire        TB_wr_fifo_full_o;
    wire        TB_wr_fifo_afull_o;
    wire        TB_wr_fifo_wr_ack_o;
    wire        TB_rd_fifo_data_valid_o;

    // output from DUT (what we want to watch)
    wire [63:0] TB_FTDI_TO_FPGA;

    // ----------------------------------------------------------------
    // Clock generation
    // ----------------------------------------------------------------
    initial TB_clk_in_200 = 1;
    always #2.5 TB_clk_in_200 = ~TB_clk_in_200;   // 200 MHz

    initial TB_usb_clock_i = 1;
    always #5   TB_usb_clock_i = ~TB_usb_clock_i; // 100 MHz

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

        .FTDI_TO_FPGA        (TB_FTDI_TO_FPGA)
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

        TB_wr_data_i   = 0;
        TB_wr_en_i     = 0;
        TB_rd_en_i     = 0;

        // hold reset for a bit
        TB_reset_n_i = 1;
        #250;

        // =============== FIRST WORD =================
        // put data on the bus BEFORE the DUT samples it
        @(posedge TB_usb_clock_i);
        TB_usb_rxf_n_i = 0;          // tell DUT that RX FIFO has data

        // give FSM time to go IDLE -> RX_ROUTE -> RX_OE_S1 -> RX_DATA_S2
        repeat (4) @(posedge TB_usb_clock_i);
        TB_usb_data_io = 32'hABCDEF01;

        // end of this RX burst, de-assert RXF_N
        @(posedge TB_usb_clock_i);
        TB_usb_data_io = 32'h12345678;

        // @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hAAAAAAAA;

        // @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hBBBBBBBB;

        @(posedge TB_usb_clock_i);
        TB_usb_rxf_n_i = 1;

        #100;

        // =============== SECOND WORD =================
        // put data on the bus BEFORE the DUT samples it
        @(posedge TB_usb_clock_i);
        TB_usb_rxf_n_i = 0;          // tell DUT that RX FIFO has data

        // give FSM time to go IDLE -> RX_ROUTE -> RX_OE_S1 -> RX_DATA_S2
        repeat (4) @(posedge TB_usb_clock_i);
        TB_usb_data_io = 32'hBBBBBBBB;

        // end of this RX burst, de-assert RXF_N
        @(posedge TB_usb_clock_i);
        TB_usb_data_io = 32'hAAAAAAAA;

        // @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hAAAAAAAA;

        // @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hBBBBBBBB;

        @(posedge TB_usb_clock_i);
        TB_usb_rxf_n_i = 1;

        #100;
        // =============== THIRD WORD =================
        // put data on the bus BEFORE the DUT samples it
        @(posedge TB_usb_clock_i);
        TB_usb_rxf_n_i = 0;          // tell DUT that RX FIFO has data

        // give FSM time to go IDLE -> RX_ROUTE -> RX_OE_S1 -> RX_DATA_S2
        repeat (4) @(posedge TB_usb_clock_i);
        TB_usb_data_io = 32'hDDDDDDDD;

        // end of this RX burst, de-assert RXF_N
        @(posedge TB_usb_clock_i);
        TB_usb_data_io = 32'h22222222;

        // @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hAAAAAAAA;

        // @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hBBBBBBBB;

        @(posedge TB_usb_clock_i);
        TB_usb_rxf_n_i = 1;

        #100;
        // =============== FOURTH WORD =================
        // put data on the bus BEFORE the DUT samples it
        @(posedge TB_usb_clock_i);
        TB_usb_rxf_n_i = 0;          // tell DUT that RX FIFO has data

        // give FSM time to go IDLE -> RX_ROUTE -> RX_OE_S1 -> RX_DATA_S2
        repeat (4) @(posedge TB_usb_clock_i);
        TB_usb_data_io = 32'hCCCC1111;

        // end of this RX burst, de-assert RXF_N
        @(posedge TB_usb_clock_i);
        TB_usb_data_io = 32'hdabc1212;

        // @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hAAAAAAAA;

        // @(posedge TB_usb_clock_i);
        // TB_usb_data_io = 32'hBBBBBBBB;

        @(posedge TB_usb_clock_i);
        TB_usb_data_io = 32'h00000000;
        TB_usb_rxf_n_i = 1;

        #100;
        $stop;
    end

endmodule
