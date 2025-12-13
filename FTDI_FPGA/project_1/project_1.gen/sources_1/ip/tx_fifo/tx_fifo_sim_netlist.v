// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Dec 11 18:11:07 2025
// Host        : RT-C-0095M running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/HUB4RT/Desktop/FTDI_FPGA/project_1/project_1.gen/sources_1/ip/tx_fifo/tx_fifo_sim_netlist.v
// Design      : tx_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcau15p-ffvb676-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tx_fifo,fifo_generator_v13_2_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_11,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module tx_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    wr_ack,
    overflow,
    empty,
    valid,
    underflow,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_mode = "slave write_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_mode = "slave read_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [63:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  output wr_ack;
  output overflow;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;
  output underflow;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [63:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire underflow;
  wire valid;
  wire wr_ack;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [8:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [8:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "9" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "64" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "kintexuplus" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "1" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "1" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "1" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "509" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "508" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "1" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "9" *) 
  (* C_WR_DEPTH = "512" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "9" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  tx_fifo_fifo_generator_v13_2_11 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[8:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(overflow),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(underflow),
        .valid(valid),
        .wr_ack(wr_ack),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module tx_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [8:0]src_in_bin;
  input dest_clk;
  output [8:0]dest_out_bin;

  wire [8:0]async_path;
  wire [7:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[1] ;
  wire [8:0]dest_out_bin;
  wire [7:0]gray_enc;
  wire src_clk;
  wire [8:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[3]),
        .O(binval[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .I5(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[8]),
        .Q(async_path[8]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module tx_fifo_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module tx_fifo_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module tx_fifo_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module tx_fifo_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module tx_fifo_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "3" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module tx_fifo_xpm_cdc_sync_rst__parameterized2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [2:0]syncstages_ff;

  assign dest_rst = syncstages_ff[2];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 123344)
`pragma protect data_block
vr600FrhANV9xlOeJ21A7UgdPf2+NuyfeEZDgssYHD/511vTYaHYFv2bRX4aXr4fld2t6EcwATi4
WDfLvMHKnvlSiW/sPi/hk3WMsQHaZYJ2OMS1JFnt7jpUWFNnAsf33qLDxazEJdQ0KzlVnlVpkq5Y
/Mj6fvt/U7Q84Gt0yPgMd/B+LzTahMz3vxGxhWQvWjDWSnC+S8c8yCUgNR24Bu8KeZY3k0VXnTsj
ENQvzUTk+b6fizkwQ53ZLqtBDQXtSjIzre1uNG2w+64VvwaADwzKnOYTafRusa4tYLsY0uRGqc82
X8pZ7+tM/aYGemW0dCwEIIUi0oTlszRlLKgLBxi+eRwGwV+isdhC/uaHSjY6PMV1s92As0wDc2qg
7uVXrP48m57BU91aLh4j92qNTBlYgZKAE744ikbGdxTozAplby/yGk3+jg2HLmrOsVNocWZWpht2
ONF1thwSXQaUeDy+Cw5dAab8f4Z9+Be3RHvToduOtYHrSXZALqnztiiiWXklWh4hwJReLnfzTW2Y
aeZiMf8zQ1O1Y6D2TK33ZyFPxTccZnoIr9d9MsI2Ks//CYzzVID29qejDTStKOxj6oCbUdnHNvto
UBlSarBv+c/AnBpUj+RpAJH7EnveeJC3fpRkZ/hhhNtcKs8BhE4qL6od1AFTbjQdo7I5f9NxOYbw
A6uc610ncC9HQT1mA3XEgLeVaJcLjbbtBJ3X5XesUReI4FXDl1d5LtqBNSYPi7Y5ZeZRzGbz8OsM
bqPldB95X98OMOa6D5ImDu96nipINIzBszV7iug8P1hTQ8XqjWC42/59anVekI/4nxMG09b8D4k8
h4S2QUdcGoC5lIzdKX56FeTLkZqoP3WmSyeNV9Pb68nLWSsd1fjNZnsuHJ5u032f3IIC+Frq32QZ
cO+y6itKsYu1ZGgcH+nhORlioBz9icZe2PgDIZrTrSiimjvskruKGizaJsPZ8L3UKtk758anpL+w
YFcM7M7bG6G1RdkZPvIrMdtaCdaY5livL7iSFat8NvM0elX7gWGKeL9MoupgOzDFIc/q89QJLzhz
k/4dnFovAIgMOFQIGnIIa+02dIAPvVNYniSX9gW3JPZ2ab0GakFTQ4aNna/brT0ucFNTQ5J5tKkT
4YpYLP9XNTNNWYXxIEegoFgkqqjZ4tLZDe+bcPopVGuB60xREpTF47Uc62YBFOY1Z/EUPR5s5As2
veE86dV0Wz3gAV63BvHcWdEXy9RJPAGZdNqFrrnoZJOgDrmcZLLroarQ4wnb8WhXVhy4j7cCxO9l
wPEbu4UzPEqvtIYlLxT7eoqQdRRlVFgRgXKuTHQGjBFLoQVhlfk1Ay6026XTzPQfCWgEuZ2EaMYQ
SWAauxj19Y+rhBMbAto4n8327sTgQDOqn18RvkOCyjVFnqBVD1WkEz3G6xBohOSblqsn3avbanYC
tCevsxk2p7y0iwgpvD4//tmf1wF+By9yV22bWvzTxdeWrEUiGXs+2tuTWrPoF4G7+lCsXMtx8RrB
XtiHyrKQhwPaml2FlUJHZ88Oq8xK6VqwDspoUzFffI5fOuDNFLA6Z+9zsdT+GlwVYJqfe3ks3The
est4W8SpIuysQZAOvJBcYV7GDXLnu1DT75FmSLJt945f4UWAUhpI1bELZq13IXF1ShJWnwkDIHiP
oRGlOYdnJeNcJuu+knOMQ5kl6H2bthfLOvVBHAFGAc9uKOSJDVORBDCnCTwlRQWAuM8hlyODOeDM
FR5n0CxoRRjSs0SdWcyz2dVq3EgDzOm+eflZaccHJYBNmJDx1172wZpAdlGiOkOOYvPbrepxMPih
ZHf2pitl7PN9oDyvjSjXDk+sXAazHoHN2wDvJBCRbG06RHi/l9lbJPTjnA0luSKRP7yIkf6US/12
UUwJIOAKTZy8CRx5bVItISIU8ZtJj+6KLmBrTWNP35nI2/h19iEPejaxiCJN4q+5Dpnu0VthvGzp
knuNmMZ/OhAFzT4PWzqbjhSSHJQ9L4x5Utb+b8/SmMaO2CeG3hekZtGbo6rjExqBZwT1LwjswfMF
fK+zFqT9iBR2bs9n34PsPlFeaOm9foGdnHnv3PUPbhDdwTK8xFhElS1G/xrP3XXpmm890eTTNg3z
8XcDmEW8AclFBhepofV+hpt98bNpT1uCI/4hrIV5uyp2pVjsOGVWjxobmdmuqOPUk7I+xHL2ZBGj
kQqZ9TCEbRL9eSUdyudrQiMNLUGEVFvuUJou3SDtOCeZB+9aiUp1tSNGON2ZRk5mFhX5EhVEVWqS
T44XzdEqX1H9POtPkJFAG4lb2hzD8ktcZF6uyrJCD1pH+OugskTHx/h6e3YCvFGpaK7Ddz5IeIOC
5O9f9ZH+75ZTsMhn55VRIUy9/3bnnItyj6iJQRfP+iH6tsYbd1FNt0bCaMoJm6HvHRpya5Zln5fx
IYGQZkQA25C9jIsbnXXjkj3PHpNfSORtUC4sj7FhdS+n6qGSY0ZnQQfb8hKjGxIAhmnB1K3s8lDp
Ni2JDF534nWHm7/LsgADkjJb+quVanZiKMbmgV1x5Wos+3pwE/bHFn9bpJCmNxxWwNSdM2K20cll
wP0py9t1lngnnWE7ItebtMEO45nGfpDVbgjCArfOh00RTPxk8+1w175MHECSPdaqDWn6RcD4k2Ja
iAHgU1InPS3ZJu5q4UCARlg55O5Qp0v/Jquwoq3kidyK23mb3oJyomcYl+1DXDMicsIVnAKKSTsd
UF4cdBTUF0WCO427BqxlmktnbTeyu6U699h3BI3k9ISPPPpxXcQ8joDMTkVPL/zq2Yt+WTgooJRi
aAER0FKxfhosy2YvmSf6690JcNDgLscx+TH24zD9ZWjBYRBvfxz9LKlseor8C7JJ6vaeSTpH9Qdk
mewSo1+h0gAaYT6JiiCs0p3oUFx87fkNjw9TqlFJrEHFvvrHArNiyypX2KQ/Xxhx28+CsEPxQ8QI
kB6ZH3baAw1ymyLSYmtoj2E3uVQqNVqeg8/QaCFXaESSCVUbptfQoEcqxeh6ygOWbApMVEG61FhQ
8ip7tG4FUnP/nLt6rClWB92a3LpfcYTtAQk/HE+Lz6WzW0cfls+1lvJ9pYtZ3xiFS28hilRBvBz3
i8vwjA30CwLEN/7sagzjF+8mRE7PRbKh6437065SpO6MkHG5V+DvSe3lS9oh7y5v9R9dTNdNQH62
17bkfx0TWca5aCqDMEW6nqxUlhaM9peWZ/l50lwxS2EypJ1LslwWGVR8TougIjDYkpp4vYEjwU3f
gRaSETpdRoRaBDdvxev/go7NlrV4v2KgUjCuc5ChyjL9jZmqLzTt7nRHoAoYWODS8tkcxdFs9tfr
MXY5ZGvynPvSW+VQz6uknk59SQ5LkJfo8l9/ddLnvE98KuzwvZwBa4psP+uP3pQ0lVUwNiNdaCuN
euf7xShH0LLNJVWW7ZCRbptem9iHRXyvitz8o+6hAtKO7NK5V3BHija/ckGh8dlgyNx+rzS2QaHd
CWQmWHbmZ524UT7MfyKlwE8bNDEEgSFzPuHopbbwAQmBP8JzqzrLTVe0+nsnF31JPOFgxqL3NNTv
p+DLL8GmJu+1cPmIvjrbDAheTed0wmCoOOp3M54f0wA3W0a8v7kglvxAx1A73pkGfNu1mNa79Zx8
VVxWZjgXLJeJf/ZttJtEfp4DM2KK7MMhlQDiGaWZ16AiKDhqJctZSDWtn5O8BHZbbXyhmKrbMsZI
FAH3iYpwOColAvl0DQRmo5id+g7NNnsunrewjmG+73Y2Qn7GKmpfqnuuwt0lga9zYqH7FKjywNGQ
KE3ias5xXS/prY+BjVTi4NxOUGuKERvJFZFLnYT0A3/pnIzEE22si77S0EB5i4R1OkhFlH9Vjps7
hGUdlGOYOXSgJ4LsQKk065b7/9XfcRwJO0D2JrCtDCQGNBQGGg5E1K7peXixOnCry/khubAsEJV5
pUBwthAuDlafqOKme7C6uBAw9gHf12LCTjdQvfYsfLlOBkxm8o6rJ6lw6fRwtfJlEWqniKHHgE+f
hytdSWZTVlmAlzCvZpE9prbAZJaD6pWcF5WowrXefTmswwjqnPGTnqsXjqE2UoKEW5g0sjxiDeEK
G6FKwo7PCm1FY4yHdUYBRW+GMMWCuLOwwqd9vCgBUFBjNc2kd6iNNSJ7ZdWOJbLFg/LtcTzukm8/
W/1FgEZrQGffulDBfcrcirXNqLyWxi6YS0OrGFa+AkVGXm8Rlc1eSiK7KUhMkXXNOh+fY3gRBOGw
yTYYJGXnGkx6aiYdlPkDt6ObJKBJIe8tVF2PaqDd+Rf/DkKfV5fgJwKB77KbI6TZ4hVI2qweLLIJ
h0oqYpb/lHYtYp1IEA9vTW6Ujw+2ZhATLtam8OcwYI4mvwCU0mxYCyUU8ykSpmBx65HqPsA5eGHk
TcJJFL5aY0afDL119tTgwKzwCrzpsRv3HuR9/+ly+aE9I3TllLXe5dQKjbnb1P5laDvvViuPJSmq
1wzoNqaXAKuKu+dWFFV8GnTnbbfeh5MjRjx8skpoDhcS3q6LIWEyVMYDyI25tSUFTedW7IrTt1iz
m4SezdMlzxNxlq+8DnuMt515lCWm7H5aOxt9saS17FpLk/vlBmAjMPpY44R/yqBRXl+K88Cs1nZe
qmVqrzQpgeNnYVGO45oz0DVWgsQX8ij1zhDay4hm+nn2Kaf1obHJ6ZqV8RpIeKa8JKxR6kYMaDVz
HpWZ0qKYjfAHJobSHu8aRx3wcHpQFy+xSCdz4bK7Inp78lOF2YV20LzZ7yFC09Ze580CqzON1Hli
nnYrqMzegUPKfSbtO6BA5Rh142G6xk4FdnQ1DRlJMWVxbmHgfDGENB7MAxkeiDf/OvMqiT32r8O9
YnNFpbCTzZZeGSXRr9uRUvGgVHxrl2ugvOtZBAzFodAKrgNPgGMri8zK6y+6f8PwKSqyrWOMACdW
EfD/CRveeETzg0sIvIuDY5tdRWVHOEQ3328iI4ZdJxYIbSkDBa3bNvufzSmJduf0FaugIksze0Rb
AibKf3sm17PQZPDwl7nejpHQx5y2edjcIinrUfrQ9cAoqA7yjMLullX++n6Knmy843BDz/daptgo
GpARRReyEJT17VgXu1c96p0VIPh9ZZZR3ZFStiuVNQLs5fwAPlUDshKl2Hp0Yd0NOc0oHAtbyC0I
HbZwoRUZKr2pWeFo2dL5S8/34JIDkuQR+s+MwT4cCu16cCvzjoVcdVyI5TCofaXHBOyvr1lRzQhc
FPuQM0wy82DeY/wWdH6vcl1z+5lfhKb7gOSLm6zuHFLOwkj95cb4gdzBAMHUqsMCNJu0ZtXrInPN
XbS+yPgBf9n6uOf1o32uk5oAgdhVGeWaMGYzyr15pNUxse8bSuwJEbJUhvOdiWVk8IrfB8Kp+h9H
cKLaalhsStMlx49Fo3P14RTxXxX3x9NMbisAra1Hwlv9nMC+Xs/hedTUAZc4Fi8zxXJSUyGlCn0E
IoR57dnblc4C3CdZPiq7jQn5L16HQQVwhjZxUkie/nX8RMe5HQzN0F+j7DqK72J80bQPCFc+Xrc0
Kgm4cvKn72yKyfxeGu7I1iif3cta8InIUOu42AB1ldq6CclAFyezcIFOsCNY46IpG6izfOL6UFi3
J7WtVUKgTb/dobU4L3LMbD0Sbaqp3mslxpsN18TEVTzTRiFUorKc4IPP0t/UTvIPhqnzx6LLqG0j
5TXfpden6Z9H7yEa25E/iRgcWQJsRxczcaMK5WPP+ZGChCNnz8z4kfDXz8tPP9D3eWj9IOw4L9Et
r1GSYWS/ipzT2qfyZ7EChz4aXwJh0nl2RGOxNBgFJKx/dwzbrjrFomYO7XEPsACOMU0r67hTaStK
cVL+ko2xBeLXA1MIU6JZGznDYV0zWFSRGIu5RalHQKFoS3e5CnDU9Crm7Ay4N2h6TYRg78LIZe6u
jnQ+GpSb+YOlEAo5pJW9u4YfY6lMZTRn5Hne4TRzr/D+l6NPlKw9doiqH4dOvEArTZGZqIUvGfcV
L8/h17MXoUs1kqtBsUou4HMjrYbIXUYx4wUFMC/RPV4OkPC56vFQ8PbPckeBJxwq0TOR0FR78nI4
0MqjFKFLMzpCC6Acme1DbFcftzSQ8fR7LO5rnX47W9db6YaAZdKcP4kg0lZVv40h7c6JtMvTSxF4
uVfBPn6GVN3FF0N2CpMyuO0JQtbu06DFElAvcqpE/iTjQcTJApyr8h8P8ROcbqy7r8O5u3QPO9QH
mfTquUvgUkzMIY04yUzDii6egPfllo50XkUf3ZYMov+792ijOdXQ5JZCKSl6tsl6rtiESalGalqU
QZmDZLWnML6sF56mMhvjVTBSJfuBm9CRN+E0LOeRFgpPgs9evujWzztHtDTate45NmzzhG13l0B8
ySZNRoTyAN5cYDB0rAMmIGBNme2WH12asaddqzQ9iTFbDQDd9q0u9Y4iEWMy7uokXAhS556LdJhA
82OClhWZChwJTNyKD6h1d2/zqttYEZrdXKoERot/V7JyeRpEgY+SI1ufHcMmEVmjciieSohgFfJw
n2p7pmS0yFIPbmp8TGbV1KPLW0S+dPbo4A5fsJn8NE9smWYKXcYgRbdyK1bkvFL3PG8p15/6UPj2
et3TGuksd6pSZE/tm2Kp4pkcFJSpVnSc7MfZrtcgR6r31JFRl/qI9puit8Dp/ZRlBiQNoJKAeDMm
mX1w0QaTogqKN/zNlP4tMyYztZvUHJatIuxDWeMTOuCPUKtB0b+BAOlansm1HDbFDsN0kjaO1OZ8
8H/VkKwQSBcAK5ZLCCYtmM/qGz9KHh1eUXooeGb1M6jiXozGklyDZHwADPfOwp/ev1dOh2lEjEKw
epIMuFTJ3ZMyI8y0zm020gNU9kN84s3HLGhTH6aGfsV9bcad2rqfZR5XIV0BxNKfTB9RNtSqCVYd
DQdfsEyT8/eNmLv9h+EwYn2Em9wMoDdVFBqo031mgfXsKjl4cUpIUh8LE1TZoDUO4zuTkLrfXVph
P31oKooXZBkJXlirK22rRVyDE2RpGFT3eUQ0eOBQnmOvTnHk3QlHqcodbPcGsNgvBrea9yISmUXR
s6eYrMpd/PJ3sswQsLajTSy1ocACHbKgWqG5H5Yoo1zVlAMiv5hbjZ+6btuI/dl28YZELbQCyI7V
FNHBWmeid+AajwhS3GIUhs55wMdtEIOhhECBFLUpFC4JJCHyKOvRax/HENIyOa1SkVz3wSnkA8g6
x2FZZjE8259Fgk/QzxMhJiEEEei79IL1LnJ4h1DczzqU5sJ9nWBw85c7/MrGcTZ8BkE5oEA1WX5P
8C2Bb7Ar92ezjtzUHHV9aJpcYIG/vZSutP+GW9h8IKcfn56AfWKmLVSQatKVNZZP7IvtJxC4/xFh
UVc0oLT3oFgutkXNeEdSRCoDaaKh7b7cwTE1+Y1QnTJHBfVA5q54Oht5XvMCmPZGQrw400E6kj6x
c1OUDMA4hyevozmIOu/NPJaRUUycaAVO7ZWwVVL0DGW8+I6sl10yALKm7ZLoqv5zHotO0wKBdpzw
Kl1357EXsTSVRnC5RlcwhNwQr8XEIxMlwhu2cdKGq0kfNafSJA7t87a8tkOJxp76okvQl87+gdXn
7BCIoG075wP1LoqOusZn7dlWeUyBHjIwzKCY0sBtKawJ4y2VGgsjIaiu7tYgClnGDFI8VGAOPbdO
qRsu5FgJlDrdjLoBewx2maNLoY7zhwoEHxgcozuX8cLxR/eRou96S1+ksEF0DtAjGaZeI/ICG+ur
6wuTX3967qDQnjyMyUpoHJXVYKbv8kuyqapgt9l4dfgaj7q0Bjs52ytBaXpM6Qwa6egmuPJSazhn
1wJrOc41onkzhKWhpVeQCP6Ja6SPyOcd+irbvwJkNfzQ5jO1CUQp8YUrjztbTp4zu/9h3Wglaeqq
5U++wyLnAdzYLYpLn08oOrqYfx/YsequwpojiHWcD6hS8+L8G2N2vUrs77ZPaaIgTyPThiA5CvFA
JOfQwEdLwksN6/xGOFgKz7LEuWGlNPK9F8DDfEgNbpezPvT86WILwEq/pVsgmGpruTQnc6+IT6y3
cx0oF4b46ra6HO0NilNzDjROzSSiyvFMeiDpCl+XjEw2rxeBVpbtTmrELMx6sRHpboQLQiOhY/IF
68iWYtOsuM2L9xzbKMEuurXFnnlNhHzp48131CdSx7mHhE9BR7ewyz5u90VmjLb8/DhbTCz3ce5K
34nZ0ATHVrzKh8HEMivmqIUCMeeoFgmBASBT/Rdz57l6yqc4IG1vMXyw+LnEo/aXUkX3dLbKWqbH
UzXoSX94J4iCRDDbr64FBbLj96ozlo4bgtIzHLBGRScD5rr8rUqBhkVW9vHAnOpOMRdySqfo2pM+
ZkcNorfkjx8PI33E57rDaP8jbd+l3FYepdlt/2yZ0fQNxRXSnpYOmi1KoaX1DrRnL/EQtdBPgDVv
SH0pFB/ELnrBTeh8NVPpybZsOXl432oA0DNmxboc7BV06NbCONj1plPUQ0qpEFRI3LTeLuBCk43O
GPWtQE2f9cGnvMYEY0XevVl+PmfP2KaevIDoaMVm6MeL6jti9jNKg6L02dKqWFC68g/EJPs99dP4
IlrqL4L+iszlbggmkmKylRJNK/nqg1bzKezfOGIl2txZwUzwWRptI/AqgnMeXbVqSc6usKnLNSQL
1MPNZ1ItWcv5mshsWcXedXxs3ntutizsWvZbTj8BnwSVS2jj8NtTMg6k8U4AM/ytDXZBerQy7ncz
p4Hd9PkDzBjvQSo8qlw+5Yxv3yDzt0wcYvDsl5OR18tzARHCJLTXFMa8M+Zl4/DMo6WTepFddazN
qJvasP3EoTbQYSu94DkQyoZMzDwqEDTV4BvIv3V87QF3WMoK4tK8WCnOLRGGjr32ENEY+0yvuNGp
TulnbtqeUG9bXCKZ4byuaHfOeAkeELHhRPbSoESU8/f/N4qtO0Zi+w0T09cVmjGZMxfMZ2tYxxlU
en0unMo46lpoauh7vte1iBTKyzPl47BlXZzFDTkIvwOfKmjgIiv4q35X94Hbb+T/NikE2Jau50Ms
JI0CoxCb1xs095k6sqNV4XBVQpC3s3Y6jNIdacP74TL1zKL5zbpfgFi9PHwWT5siFDEvlRpb+3Uc
HZJn40rHDUlsC3vq/0ktrz3zih2mmCuJHFUPlt/oh4dBaoLchNQQdpos4q0XL0+V8i/VnbJXXx9h
7H2LYK6MiijarZcR4JVNXDKjN7gWAMgddH7xJ29GWKehiTLGYGhAvWcw4VVnku7yQZHj2m3xgsyO
ydzvqOIuGnuTmbS0nJYQ+GMrM54tnM192mwKAA8KQz/aNK+N/PuqW5rfGMXXuBmpUO9XJ5zl5shL
mls0HqXQ/+k84xkjN8ZGhD6BaBz0OJcW8WuHJZcFPzVMvi25phqCgL/wtuhX4B/YVrEtInd/6hHf
YU6nmHwyKRsFWNDt6g/nWC/Z4pqRLrOIpPjDCE9GrDhdoEkQTsXQ7RZXfHapikP7vUbYSVN3IX6B
d+9UT30NxBnEEBfK68O3634e06QpwrSrbKcmLkuhHsdvU1aiXsoz1IiZNzb3EARc9/fTvzVcPOQn
23pVICpoXYn0hbBuCGpKIZk4A7GXQU0L4TwKRMnLXuMp7XzUEukPGU+KGZr7WpOC2lY0X4EX4qbr
2I0MRe4CKNmepDaBev9By+abioce9JV/lrz4MmaenhPf5ykqlY0eeCEBeQu4b7GYI7BsidDPnwiN
gMkmIR4/8fBqqfV2juj5BIohSPherfDjVDa/4RVjuVjhlFpOHsIjHiRbE230ei1lubkEpABTBeQ5
OZCZRwEU6j07tYEipM8HO54RIExpfY8dMpa3SCkIrH4qdJkuRGWGPgaNedM+8scrrOtDe9qOK/P/
371NNKiVLt1RYvGzdey+Bu/YYf8fWHF5hHXNAmHu8CfJ7BAQAz20uUTcjm4FFLtELeH9l+Ljhfnb
+vcfKuf2gkR74YIl6ueILkW6eNJsycXW/0TrcURdgyXJxVpqTxmA4ytO8GVmraY5xw5iDN08eI7s
XVNItLUHaCe2Iz5ynRQxaXS6+j1wIxDnEOz28z1KszyZAIsptvnwgJsm6OqsoWqznTJPfaBeuBkt
A/KLpe5s/rOkt0myz/pNslrf1L3gTCDk/yIA84J9tLfHnPHQo7912UEN1oOo/9QbYzYo1kyxlhU3
wsVuGN0hbzOAqy42pziHGbSab3ElOqSRlkyrT9BWzgAXQm/vhMEckXewEAFiqumqVEilncz1adSZ
MUPvJ6Rl9Z4G3SteqDeGoCl0vaANVk5bs81cQDhIFpnJ2eLC8OuIyminI5boKNmX4rRE9cRMJZrk
4lt7X6q/QBuu0m7ggFa/8i6KF0K5MJqqlGKEsmAiG4myozy6bFL1XCWYeYh7IcKG0Q7qg28PAsMv
+AT4oZIUFIWPraXLLMNk6Mc3shcEB9v2ZWBVgGk+NOvRpOoAYunaVlXqTGkjDTIMo7pnSD14tAZI
Av/aXM0gwi+54wIEPE5uxTCsZvBV6w8UiJn1QB+OsPQAzyPG8IKhR33/hYFWgDB87KqlVKx1K/Kb
b0c2V+JLdeHFK6fKJ4u7iDLeCHNNgdjaWGQ1zO6gcjjlIKCfHjjnL968PQstctEaKYs77s5fYZkG
cq5u/DEK/vzOO1/u0358xc9tF/pzOM7wqvgj9vlHFO2aa+RmscV2cVDhkZUvuqALDgDwhIGeJv0c
MlWEFK8nVSDXh/F6vXGHItMMqZ8n/a4LC3JsknE0qDdwhQVDZy0ZEE34+AZbxJLW67Qdzfv98XUQ
L28ypXhc3uTymEgWP0JPETugUugqvkMq/2PbC1jOwwLKTE801Q/juqeq9GV7eVducxpS2FLD/HAc
WJnryJtmGGkOd85Zx8GEDv56l0m2WriQ7HZnDZA7STxErTjYFwdQLlfKfcqbtRz7e/BhhuTwHdsS
izorIxXg9HLdOrKIL0yg0QhqFdL4CoKLZlbooqsNOKDhbMLRDS1VHuFy4DsWmACJdSOP68P1zrCg
g+F3IzNyPs3G9qDAkpTn4lfzB4anFpETkcFZv89ksff9I1MpJL+uZJ0sWheZNAiqaA2QsaoA11L3
9UO4Rj4HOXGEacvz+wD4V0iNlhDb6czxhVvXgUI7eFB8xok5AGbxp9iGTk453r5G+BeC566lKJVS
+XLVHRU5v0gFLldbCOx6WTY4KGVHn46xOFN4tPxiJDTZ1BBbANkqZUSC1b31eZIb0nYMgZxQPAmW
JjE74NIl2qG6DqqyQi9fWj5I9IcjoKjjwgfQlWxwLA9+tNcJDxv0qFhR20JPJ8anZeUnYDIa7iyS
PSaqJ9WV8S7oo8BUcUMW11WgKw2SnczMrywb704Q8t1cj6keCEdDJotQNjsNQt2Wu2vuiW655xe1
qy1oAYrbeq3gtiGuCv/0XjSSnGgWoG7PUzB7k3TV/UzX8/A3lbrXAAuNNq4Z4AHSTxyIqfbrJjsX
qB4B4LB/DGHQZAcSs1/g/M8TBda+jEsL2bJ9LdUGlck7VZs1pK+n69PzfMZBvEP5woyQEZsbAsnR
2LcRdFhm6C70g+k0uipbN1S2Kp0iMriI+y7KYge5FdYaxQb6daly2eEBgvTY2bQDuYHbXAJSyT90
huTzPPHg1KV6RC1eehzyfP1LAFaJVNbIOFjinLViZs48+IBvUCKjtf8tyjl4IpDg6dyEhtY9eZiJ
tZ/8WP3HVkuMvVVouVzyBlpQDcEFPcj+MVnpgYnQBVS1GC288uv8r4Pp3JXEFsb47UP4w/TrSYqm
WuNxAyfc/6M8QkkGIYqIibnNJW/r9N9w0ID8A8YylJ86831YJvzKU/KkvJS+TLZslCG3u/E8Cr+O
IDbRQm85P7S9aEw5e2fzJmrIXYy4pvo6/zGZNQHWHTw0kQ5vh3GKQbR/BRbx+rQydy8HVPzp5ngk
+JY6T/Kyy1KI4LskqVGi0En3qEUauAcWVU+KHUCiTAs0Pirw6SGP8d6KTMlazk56/mm0MoRI1N4F
R33uihURq2Z3awZnptN9nhfQLgHMfQ3P4GemrsbSqlblktFqYk+JGwiYJYMquYlVHtvzCbROqCln
W6fFNeOETpAaKW0OssKeizFccHs7tAx16T5rGVREztWdPxG8v6S3GuCTDQvm0nEi6ai6SUyPGvxb
XVWCTzTUa3LcnqYfFZJPNjShpx43biLmHzBhtbHhIWlMq8b35E+QY2n9onyN5Jg4Z/41ttNT683X
2x7ggx/InyNPKcB4o92j++sYwQ3gxpQL6etjaCEkb5d0lIka1YPMDA2TqmQIU+k4WLQokW36jWfI
vXptBigPhUyWxNKx1oA72/4IcBQh5DlOHGXI2n/vC3Bz1kJIl3720ssuxxWZ+LgNdHYkhTt/XEeT
q2MJ60tnyDxvlxSyVN2yfI8ymAaY8yglwE9o/SwCi2EbnUsdzS8Q5DUEQ2H4WfUWdIOP5TkAucJu
6B0Erw04T9bkHS3FJVvnMplvnggiuWuI1Aw7gkQfeaNDKEKw9Fgn0sujcy+CCgpVMAjEnhzra3E4
veomyhPZniDfwJUSIVgRvDFATsCu7AxpmWzMA0OSk7GkuzvXdwtM5tc2DIaMHyS9i5BA6fpCxKd6
Dyn//pyueg6HdVR7wF88UNpUvk9WdFsFbDRPHumm8l6dxKX3Ba7shmGeZjrMOx289RE5IuMXxIG/
pqAaYSJZuyD9Tdie626oVJ8EXAnkSc4h/I0BzkQjI2MTZ7JAo3mIFb1b/O5AvUkMyr64uNFsKoxc
yLXC1WKTJDDvHkCfghxpnq9KparogyPKiIaYnb+sVHBuz+lkUUMUE4HMLhq6jJxAAqTe/l2QwE8J
qYI5ZTkkaxdEuAut8gIHj5T9LmsjESRmjPM9OajsZToyvzjmFFyqVbvrMnmtbqdyxSGPkdLB1qvl
fHOCZci3MGpxMDGLYiSIDgQIQtYMbXkJc5BF5vyoRZTBalR9wcooFM2eymcBwJgu0Le4iwPfPdN6
oLLZtAiWdpIEW7o/SI49A4g3wQ4LN3SGXKMVsVqDXifTZu/pvNryB2u7jm2vMaPZwgH7ORUB/QdP
j/YTZEX55hqFkwNhSQjz2SKD2LEOqTm7ZoZtSUk7nsgVDdOEXNWLaCNTp8gwzA9uXrZ9aVXduk+G
Ds1r106zTO+m/sk6Aaek0DR5iWwZsi5IYmiknTsENjYHGqE/O9Vk4HGMM7hbMXa23vJ9y9VWj5+I
MNal4yJk5PXTvO2FCnwkbMXsQYx9t5JLwHoCgjHAKp0ijWr3i+FG2tVmi/Kr//w5LHZq3c7O5zl1
oLIr77vC4cbVy4R2yfo2Ej64KyMsbiyaYL+wyONbd+gYBUoS3tHGMUtGswE8/RKv9/ldc8R+QTe0
/A3xFh4J9mAq5bP4bet16Z2TUmoi09bzwln6eG4XV+uBhTMBTmmh/nNnaVZm8mbeVFAdS6VZY1eJ
XeLQPabJL2YUkBTamLx695+jSTunUpYap7idZsGElMVKkCaOFst9kVLO8RhuSzGSXBAmITAWxOyy
ocahexnTNr4CUH+yuWKgm+xiT60rlEr0A/mq4NoQV3VbasYQTQEhavE5y1DDhU34RbYddeBiwzO7
+piw2w8+mJmXYMbCjQZuFJdO9xIF0loCz8bHNzQOs1Mx9rDaUMjmmq3mVkwg3f84r30rUq7mUa5r
b1rXxlz9uYRNthepn/sUCwPZyViPyRIRwDwPGez1/UgenT5Vbq1PhNnBprct2wKcxP8kMGPua2j8
z9dV2q9gCdHE7hYEzVjXAvkxsRIQA6m2bzZ6bxBIXEPkB5JBc/GjT0gAbj+r7JCbvkj2qn1D4QPr
88mz3lhwxHEfVlwUn2KBnJb25/RYflj02mGh10hIdS9PJ+aKyRPyC+sPdvVPDIZNAtw219iGK5uK
XEWWzTpaKfb/at4ebq+kTiTaz1MzyYyY1cr5+IxhRbDd3CD/BCwU2b4peE88/f1uydZ/9QHCzftM
hoJfYg16qOlFRseOY2WHZkyNJwhCqT7VcnJrU0fwf4xkXdmefCJEiv+GFegVrCPkGv7dlYwjw/O7
CCLd5j8ztFQZPp6DkZwpD+wd8kT3tua7sTlGicC68AqRFYefJRjYVkwHrwJmmfTRmEVNcQV/7IRD
5gKKGL+5Y6XtQm8MogH1mxSCCtmRkYjbV+q8jOpJB3XYNok9QMnLCec0NKv9ZRarqGpto+MCmdzb
UAGdy0hJts+gOP97EOn5pabR/F09Umbdwjpa7/UuU0cnI7YjOL+LITNwhLoL4iP1uXDCb+g0Nrke
eW0Je/FfkUnSN6SH3PzbvYgEDwCKqS3G6E3sTP2fGr901nHWEJ7MMs/KfxRS7ybEgFaHCJen4tJ8
YwgfDp0J+lVx3xTPAhhak+EKt7mcmHLqkYI8iu1RGjCvMisVbqHsuET5gj6RTRBaZbCZ5odLLpdK
qXGMoIMX8DmtIs4c+RyQLF76ykVwt6wGaAPiRNlEiE6tStWnA7vDqapP/RogfP2mIdGdPJSDPjDe
d08+TGCCOZ7zroX9mAlGr5SBd9rn+lwnvOAlwQj/LmwT4JpZnkNMbc746vQ5FyvYkpclq0cL0BZu
aoaDSm16bYmWCxq7rdv0HC8sRCyAF8Eb5Khyrb+F88/vrikqvtkFpqOotv83o2Fkcd6/L3mUXtGw
E/9L9BQwIKTh6OrG3Gie9bEkAwzbSPIWVEFjVzfNXO1uBUv75GXkd91DcvRbsWgCFbeQ20P7z5yx
tBHNRHwD6FoUCZQDfmMOdk631V4XPBGWrcxpU+XUDq5Az9yt3UxheAHVupg+RMcbyPrL5mQZnLbN
M9AkzciAqucUmAf1DELMk/0j05WXi+LuuonZHnGrwdWxjKdOmHuEbH+RFwg2UCtaR8nTere1FQWp
ReP3HNlqJqYgwNvvSLRsV751h/ZLePwSCu1g125jWfs2s0gQoJG6fnIEVNmixpzYl5vXIzi1+TEI
5Jk2ohBE2XxLkxCC1+VmDQjMlSjx60cX3Hd1Z9Is2JaOe26WXS4GMAo2I1Hz6CCVlZanoTkA5TNO
oe8TlZPwnkjZevWtt5Ad2/Z2l8r8r4AUapYYGpLQmQ9PJb8iQdEC8csQGPyJdI608ezIFVeVvMJy
i/AhAm+NeFmipZbh4LuGwnBckoC8URBrwxNYnpV7HbWkvNaud34/DBo4Ee7pDbq5NBxmlyf4f+fR
lmde36EcIf6clctMmk2IKdyngjO3vFY9Dg7oQkU0xZpJxS//ycb5/SpPGZk74UF+tUamWW2Cu4rA
16Zel6CT1+k9bswIuotBzR/qum+pejLHvhOofXdVliZI1y+HHNenoqQuN/erU1r8AylwPi54nF4i
0dM5DN0npZX5Nfs9rhc5xMnSSxOVAEQBKV+mln3pl9CT0rdwKFegWYXhP36krnHM+LcxVfgqwcCf
Aa5ljBdrFOrjVUHXtmhErXh5TmU4InP9YKQONeo+JSSreBo5IF1yPGQJ5RCGkvucWdkNnCn14VP4
FweEIFVXwDNPha0br8XDbHoeJM4MQM2oY4zWEExscIbiQF5Q4qB5S1o2J2gZVafOUfEB9tBRXZEY
2rfx5hBJilisdHdmlome7grpvkdDnEjDcfyHV7wrniHpSdsOO3apziBjBNXFT2IDFB2qvjiltAtf
MLOADKM+4gC4LnpLu5Jbk4vMsGJMFUYaD628/a7LooRDo/NUXhSDdstgKYE+G4qyVh3NRyZ9qBHb
PksDMb//GWlIw5p/8RZVIcnk/LtnKZ1a8C1SIJIu8iD5j+czOZ0BQKa5V0yEvzZXter5vrqt6i1c
5SudYtn3I9MyLosXpkAO5g1mu6fOptwXgLfE6rcs8FL6JGh4Ac/rLel8y9e9sg/Oa60pLAUNbTx3
63GKVlinX2s6fJhVwYh0MvkmhdOvBxyvzTS2wLu8a45W3FLi/MF3uFPSDEzV4ypG7owugZR3OjWz
+Jto8EYh42uLdjPvt+sgkVqJ4aFEFvMk1X0HfUOEFLT4C7EL/R8zG0hhvmCWd4b64cDM/xjzN2iR
umliedoCDnntgYHB/GBVjjqnx2DMitC6+6alOP9jyTp/M44x3LDYXdzKxAb1Npc8ZzmwDBMSPdYY
sharskT/1gKmm3svJpqZfYgtlyPm0KOasqQ34xeoMct9vbMrByFb66HhRlJI3+9sNPKDOPtv0dKX
jwbbzLRqAiejsPMWSjfgBul45mKvOzPxU9eYXBp9TdvB6GhMZ85yVaxmHEAG3Kk2KzyEjfGKcniR
I9QlgYSTdY2ctIyqYF0gh88cNk2ZZpHMmbUB+KxsqMO7QjoJWVX093k2+a4nfqvRORSdhRXKT0AP
A3US7jg63yh83CWRmSRwYULbIc5zuYK/JN53nF0fAZhNgt0kRS3HY4LJ9sjY1oY18xzfbTe8Bd5a
/uECm518zaA8+tTNOF4P6VlODPWlsYqkJsKtUw263fSSdG5JM9u4Z+/DqBzIhsocxSSUA2544klP
bUVo6TTZ2Ejc2Z67FII778egHDcYIL8pNrggHPQBW8JzK5fermdn4lpaTVlU1Sac5saqlSX16EKE
eNj/sNEJHkTuNFftMLQ/OcEZckVtp7x+nUrZXATWYCHP89br3kSwXgdsqorbgzcqrDHPW6v9an1s
D/OA7gwkjPEIVpnCepECkSg5S2ksvTmDlHFPfi3li9nBJrz8PeE0mRi3Ng2gXySz0LxmGWjWqsyM
tTBlFyies6tnpHzPvjD8dlEbo+YF84l/J/0y60isQy7/YScjXASlFmIsH4nIuuZJsmsCcJtADIpd
WlcZjQTmTzjiDl58HB0phiMIz+3v+MuivJ4vstl1sV29DkKKao528mgtZ0dG3CSAeozQWiDJz1Ht
nczAQn5AIAYp4GC/HAFNS0N80HMmUrGEPalBTmTfASMdeh/htQgARvT3MIkdjxnOI0CncCj2/FDM
49Ypu9hvcLIJq7ttxZNohqSRAKT9OBg00TXM02dWo8Kern+jlOecUBiYM4qgMiSag5FBMl0Y2qEU
pGJhZsM89eMXkS2Ut/0I5mGta+cR6hiidJt4OuIEtwc5XvlXLQl4eue3vJH1Y8o7RSKLwsHUDz0R
3Wyhvti9WMRkU+b/z5VCRz8dettiGkWWPO8FDCj2fTE6utMIbGy4K4CVAziDwQKsO8L5EPnkyi4r
8XVO1IY/HLGDDY/kpm5TApHIeEuvp4SIpvxKTe4+KqoAyR7vzcfJsa24x5gDDIcasUHLisLk3LOk
2eOiiSMrlr3stqjdAGaWfbCz5+2SaYRCXgPKAAcniGHp01LpJJI+nH2I+wPb2u4Vu3bipa+1cdYP
zgZqheT2KkG7JAdEbY+Cm+TSftayDj6nhD+Jd/vefupZbx+g6ixJkgtw3SozWxjMNFkn+gePeOJn
tHQcD5kMR3gy3fjulRMSXzGpv0J+Td+UuLVMqYKBZJZiaWJCafdsmhtZkCNrWsXQ+0TpAdwz2rz2
0jkEAEf/CPJJah3QvNBpjBhFhUHugeI42u88QyCrMXQyQ7dBFs6AbhABBWezO8uJxfvF7komzFyy
Z/KFvR1YBsABppQZ6PfXf1s2rj8c2B/Bh6rAYbwGeuv9fLE2oQ+87pcliPYjv8iB/m2QY03pQeFQ
XL1v35YzCSJ0fA0Pw9LcyOfSOvnZZE3CrjcUj4e754ATqOBbhoOIzpq0dgGtXQBA3wYOhogpeI98
EKdKu/T7cNduBI+kZzk0E6QFJo0JwS/upMV4BExhoQJm80eHKi26nXI2jXJY3cnYvvAEGY1RJNnA
gXmjCo8v7MvnB9S2X8eKL7C+VEBP/RkVq2L6GoeSlJA8YcHLjutXFUH7TcEm0hd3QLwnMDlu3Ozv
1Hhgg22HFUoEW7jXZwMelJtL3ww8BHrfjlwgv5fTL52OEYo+wnZK2zVZZ6yHxJlM/iafiCmV5dok
JH219vxnRq4B72QE7isXujXu1mpw6MA4fO7023BFNCqjqzFZj6pdfpQmzE9+4eOC4birtH3hh459
U4mDblJUFPCEjvaQ9Zy8PybppCumW0Ci/Ucf1jnZaEewXJVdekyuW0JzEjdvCua04wLKm/BAF1gx
Q0Rl27OKQD1ohbkt9/fdnFEwKdoYUm1AJiBgS0/YoDFqerVhabFnUCRoEb19dgGk0Pscr2pJhG65
9B+oQgu7y5kMnB+DGyp7L3GCkixW+HR8lIBRbSgtYbXa0n7gdlYy5ueLzDWVPUQ8wh1MqXFPzFNq
YUd//jtgOaQ4SiYAJCOmlr0p7hlyJwKZ0x6JOycoDaYwpso1O8tJ2qaixO5dQQKA2xnCxB0mmg62
MvwW/Z2CMCnOUvyc4VvsQmemVi3O5fJQVQqsZZjSHJ4CM96R8/yoO8NZr7fspjfr7kuMoiT63/Ok
TFksUuVsHMfw4KRIMXKSGGqTnltnNpe5i/7X7+yx2mXxP+teNA4aF5qLsNMNWL8j09oxyCvi2wj9
d+GewhjD+lFVxz4Nz3C+oCamss2UWyxFj7AX+flDtvQApMLEQx5PCR/ZPSGXInfJgFD36YPzY3Kg
AYuddRGmjmvjtoZ1qPeek4I5mrz6sWMimhe/XvPKKMZNE9OPurjbOIahGW6DWX+n+QWz4i7XItBF
41l1Wlhwztv/P2VTDwB5B1LgAajRWUwagPvsEEIk9hYODFyfKv2wZ8JjCBGHvMVTrZkujPUn6MgN
yPfPPGpBQwcQSx2+NAu515v9l4ILUpAlLRLWh8XH0+v8AJ6zOtQz2+ujrSRtzq13qs6JTxPIqnLV
AqPGqohmH7vFCSZ21bHsgWK7EP5R0DC7aRWKbpDgO15K9EnAasEebaPRqypzmzivBWLxNJYOW20U
bF7kuh0nTzoFtGYp6JegbCZB7xqkiqN8tnOpbKZpRV62NFnYlZ8D7+kTM4YvuQ/oTYNJ1hNYLNdY
+UMcizFZR6HGEaKwFWkkRGsiIfHc2UIlNTU72hT/hHI838W7pyZmby6Sz4sA8hKTEvv2U0xoSzy7
+rCGetf138Wn6M2xWohxW3V8MzM0Nd9dCeBPShmwGA87nBp9MADVBQge/JtfRVUkjDds8KfPavo9
UW8P8AzkYWINNje9r7Zgj+w7md/QsqwSxqObdjmWRccgw25spi9EkUx55l/FnOd1Wti5JV30NMRz
MBvwDbiLyu7RhgWVVXD6HsFT8ZKeDPvNEqzTJUtEqtabUkO8L5QCFfaDaLeIN6xLCJaYZJHksFB1
8tbn3wTyu2no3CbGFPgFFEkLUXiXDHZReqNcgXnIEDPe233d6NPgZSd3YL/McsqFzxpMCuYIIfyF
EpWGrlGayDiqHFpANgBGE1TlzzQ1chRG74tfB2DoRVZhUXjhCZ/GJ2bHve9hQXm3DRCqkOd6mO3D
kGYFdrl97V/ov1NrrXmVXbBjOchCStE60EMwCc2MiFiYZ1ceOddF92knn2+b7zg66lQs4ofM2Hpz
Y5uFjLzXjVnclD9CI6zyxl97m2pmf1XAC6/vSApcJumcQtbF6hIM8SFsNAGY22VldQuz9KnlVbRu
BTqBaI3j/LDnRkfyvy/+RWDsiEDyX5U7GA6Y3/TsiX1Nb7j2I/eccLOp2S+Wg2tRew6kZTzOnkg/
4qOL8ZcFTCsklyFR24psY7u8OYfTzjjjZCLR5ulR/Q0dcYAkay2eaP+v1q2u9c66Bw2tSxeEaIDa
SYZ/enMWoqL1jf3UOQiG4nCN9CPz+pgxBpf7XJ34g3T6Ne7mU/a45QEEhh1gboz+PkIkf8MhiJJX
OaIGL0WuasMBb2EWDQpwwgB3qQ3JCozqLr2CTpJSdmjAJ6M4ovrmU9oydWJvldjxtFhVOfGCG6nf
5sxqxLcwFobKWjIVDURKLBTCNukqYM54TCYbF/etBwze/HjMuhWx1y8EP6DcB3p8AOybfqI+mD9N
WIBSHixPrs7kMZF+qxRujvuj6cEpoP1St0bradgQbwRsT/GjjbfZISkNTY5XhyisGPMB+4wZOdEK
8aHsc9u+egK5GdW4t5/wK5Vr/STU9wnRuj6Tl9b+0gDdTz+LANuLH9I5vGCIwCghb7pA7Nb4K4C2
ninc54gqpw3DcdOUHtFqLh12wNIrQyuccHaA0pHSEbVbTyfGEY4awToLTeRcYrzSyQmjnrKbqTp6
V1VTPiJdY8QoNNjOo6ODfy2BouNv+14ViOWUXF+Hx6z6c8Dd31JJ5hXw25yT9xIltv0RUFbNnoQw
8jGQ+cozcdhww5u6dtjMavHpWaJDgsdGAiGvpoz51KjNGRCGrFh+BoRCyZr0wVyLnH5kM8ZBcVRe
lPsaEpFcknfsN0KaIBKctity/w/u3iKrqAElgH4H2IdPfJizKlPePgBbAIbgkp6P7byzjoKL9n92
8dVayamwERV5u2/FC57vGRJLX0NqGe3bX3h8cGUEfiLbfaxyGiOau+8U0LiCY8kIinKSBX9Ueq/c
o0CCWxGseZJqdqsw/Fhe9t/NM1kZy6tPKUiaEdiRJly6kY8xHqYN6ckrmRkSOtcVivR0cGNrRqu1
eEWiNFcDI3B0UeQm7UaAZoABvvs9v0G4/Cz9VPAt1HIpCvq6h5kLN8nZgrpSc/pndXQJuOoB3RpN
huTkorPYecQ6sV2Q5ErKrFxktpqmnepWa3bgCpsJVibXuaMrRwpy0X4z2e/Goe1h7n9luLtu0LeS
aTTMkbQWvxPyzfaUDZTtfzVY7URmxcLyaeZuBtiJnBScXoNY5RA7NwiHUrdrD05LSihUJ8hgU/9T
/1lP4fUuS1oQ1zeWC2G8CX4zM1FYaeqXZqbFUnEC3GGF7EQDYZiNzg0rKjiQhNAWorBdpAkbhwzw
TbbE67zDHebNeC7WoOJ1HUhIk4LbV+bRMtzwvQFBKRKG3+fwNJkG6mb9de1lfQ193Hvas0p1owrL
3Ogh50UtuN6Y3NJUF2MGW9hqEB4/Txle2r2b1M+LfA6M+4u5nMcbOBY4Rw8YEVjKPLCgGXo8Rpxm
ezmPD2sIc7kwrwZOetx8oAOTAx07ZKO03DE6lXykQ7oBHdGU7vjscc2ZRlV7cLO06zehUz52Rg6P
JUGXpBT661X33tktNSFSa5PcJfe3kkYAgAkYe/AmMHZBNS+FJstynHCT8yRSzHdJalVNgM6KU8Uf
1COqxRREPIBGNLQRQckOwbafrm7qY5bx80O2ALPjc39CcIw6hXxpwqx6PdhyQPUh0o4sumzE8h2A
3ie/ISqAH8xIGdlIMTldvU0aHPVrZ/5yN7SWyk1n8UPG4PbyDBOhJdy9Mu8GhI3p1QWcMDAArlQ5
Kex/9QTpr7bhq2X9NnC6R4YqYKXa31AdUnji8kRWeoLuZA2kzE3IWet/cLEti8qdV3zlViKnou7g
yLB8Nf2JnbvRfW++avN7IUP9WLtu7vSYCBjtfnjElybxPqQZcyMyoJM04Bd1T26jFf8Lp0FZHNFj
TSyh7PTxBOj9GZBVz/kaDhVcX1RdulTm0O5Belp7RozNfaoDJlgM6QlLRfQ0a4R1/T4dUD/n3KWb
krWSFG479Q6aG2Xap/0jM+4sIp0EV8S1ItGh/1CDGQAs5EWaspY/6x2OtBLgy2vGWxW1/49XxOJR
gAcbCRPqxOvK2Mjb3s0TTxd3RHDBcMizrAoPI4io7ODcbQH1mhewgnPfllSYQs9cT/AnxXnmMlY/
roWCliKcN6fV0ZNiUXyTJNmz2V/fxO+5aJMrUXn1jB5uLi19EYLMlmjlocakMpLzNJ4Htsbde3k6
zt7fN4ZBEN98cbrvYeisyGUNZLCAUyLcTqTTlXch9kO1fSMgUUHTy13db9yXwCTKvFdYhyoW64Jr
PbhMl4drQg40UwACGrjpWIn7NzzeUYAXycipUMPpweOJUmV3f55m8aGgn7clheOVCzo3GdY353tt
YbbHVuLHt1T5jTnFBz3tM9nK5h5LTrddVcF6blS/wsu+5qN75oX3ZWBqcbU5WaOpVQuVWudlTV3M
qy1rUnVQi820ejPlb4zKSATFsbV/86H5g1y6kgAguDSVImijDmrWWGkXH6Jxk3Y0ckryuvUbOx+F
ulQsT/g3qKBUQgPx0JlOvimhO/ScNjSd+ZsRmcHplXgvC/rGcVLDSc4ets7XMGWdMvXu8k69d17e
ZgQG2tpdf+09EQJcCdncb+/+81puOmAK/IVwE4Hv980NW1xLl+dBOnQJdbRTeJP0tzw4rpbzclLA
15Fuc/+l7B7j6/60/7gR1/DlOx8gR/m53OR5nYE2cn+z+B7BeS4YSRo/0GMHeJQPxflXy2uIqThL
OjnCNi9SDYK8OiCKlY0dXx9QEUk7SdoF/lwbtkBV8m6yaQsmzZv4zRUV6S6BxZd0PwgGE5zsewAt
bZloMRfx6mHakb2STDxCiVl5lwhNTVsylZKuDwwmKSG6oxrepSPxoXjOjsKoNIu0Z3rsSBiGD+YU
aQGhvx/8l/ZA4p87U1JPap2SHho5ji1YxVcVK1512x2hsSR/279z7sbeNqsqtDJfI3AQvKQuz4sz
6uOKlZy1ZBTc2I+mcosmqXOxgxnqxKNKrU6uvSdHiVYhmLTCi0nMmmQEifKqS4agCyI9GwnN4kSY
xFrNzYXQhEm82alU7Xc5E3BVyBNNmYa4/GB4ozKlaa/stQkGvl2DHSy3gHQnudgc79Xk0qjL1zJm
D121IGvwxQt/tZCS9YyHPfgVdFxFW4+k3ZwJGoEWJz84t2uMbqi5y4Am1llr4hXhltSSzaa7lNG8
P0Hsam1NSCLpprHq8JU4506xrzZfeIxZV1X3SIS4b5eatwgADDguDXIuH6qOpiS8cWkUB60bL5GQ
sj53Vm7t+Cs0U/W6tmRHY0xPjw3E+h54TVpZJESAbTcOnwTeGfvjBYMDhJXo+4rbzWjWmxuUKgni
j3YtAbWRNA0LZKqQusnx6nSKuQSW5QxKQsDmp8qB7xvyzAewTDMhBOPg6ifWZ20iAQJn3ThFm8sp
57n4Lu4YVUYU+J5DUEWXeXZdkHyA+dhPJW4sKnBr86MNnw1KZ/32UzQutW+fEZIkHzPQDY9ok/7u
wrwfWFSAtHVWt6h8c3hpT/NSdJImpOJLzsVT1vD8oP++wiSrFlS6LC/8ips98dgAm2+tz23/KysK
eZDnwM55hVkaTcw/0uXievtpXCUKeuR+p820OkqS+yG4xVH/GEPZOE0Wf3QzMeLHHt0Wb32Z90v4
TOaGZbo8OYDARQweg2p2J/D57o+j3xrYxCedpFG7LYModvpKrh+5qRpFnz+kUXLl5RgjRx7QT3xK
lcu7m4WnicrcDCgg8361yg0e7yf5R9+rnLQ+bpdC7PqMoZfmeuVDj2mO4uamT+37UntBit5uYD3Y
7lFg0JUicNf4kncGEZtiIUPNGF3FUmCgGIILEhqwgXpOEGcLhBgoRYXDngRSnOtyjkrHlfFFcq7N
MEyST/+oi815rHH362Nh7i6qh1Ue094st0jjrtzCxO01a0ep71+7A9ACHwPQrcDEe51J9snophLP
foLogFJw2qbN83RowiKEMcLf+tsF5hTbHYN+0KB8qjj5Zi34YN2d8z63W3GQx8qq5ITweayRwGd/
FTNuM8QwOE2Q9205jeErtS/WNNdMAZ/auRC6Vr641XFhexPtKMND7ZZVQaKjNx+Tu+YegjzRuQTX
cJGwXnlbDZam5mPmeEci9SuDMwUObDmNtzNgK6o59bk75ifnWUF9MUnsKqmH6A57RxkqYAHXEqat
f5oGZbvf1chV42Z4lI+NFvVLjAPvpKfnfVh+EEpIHmEuCcqG0TvXWMj9TacdGAuHL23H0tWSNbtT
2Vbehoh0Kj67Tbg7FlnzlaBF9dGEsY1aEAqfzfqmBhlkO+flr8b2lyRiU7xO1gte9SH0hIjEYXBa
qiePVtB4wd3qIw0Y3A+9EII9fT//f655qlyF/HP3uN6BSi/ex3xPX20S/TELywZoIU0mhmhWFTXZ
2MY2RvxhJABD3d+b+ewU5o51yIccM+LlX6NJHCttutLlY7WL1RP5c5q0WZMC+IsJELZtqUA+k+mw
/2v+mectPlIP+uzXP1D4BBZlx4vFnxbNZq6tmRF4CnkUTUgiJSB1aqju2WgsFhRsGM2Pm+FIZFB/
XHUUWuZsK4JmQCilcfIg4SpLLKFhbWaMhqaCRkUHpKAacg7gaXsKczeeSkHZ460s8rQakS5HlmD4
gpslZa6lQnyVkRP+UVwDcffPJm56ytUc9ovZXZ245VxnxDfBSPbMAudVNY7O7WjcbHr4y+48+vRM
EV0bPfd0doG/lrpQCrKix9Jm7leVRpODrmpacM2jDCZ+0hA83yNeoYifd5H0kw2MK4D1vjk8rHTX
FzOPYgCYQRE9NZgLVHw94rMCvZTR35j0hh8f5B7729j+C+TLzKWzJaGJ+k1vse14Mg02KYtH4I4c
KkKolt8hCjpUfa9u0VMiYbbTuTgZyRb9Y55ERKL9G6J+5K1Gs0TRuK1pqGWHJPxYOGtRcVIXorLc
tF4Lp89e07ZkkGBgaZilpPwpf0iNHgqbbWog2Lbna3UnSgJUgl12Xcu1YrpNBtcKeZg8SdzVXCNB
CyCnyGyzsdPv0vSFmTTXaOaelUEOLgYh4cnzMV7zik3I4iYh/dv56ybQHL4qyrs2yNZGDJs5XWK2
t4egkNR2kLwhyCBtvhGn8HcuRgfWxDS02SYfrMZ3NuYy+XKVdcOZTsl38W+HgLjsFOYEOriN2JMc
FceL+btib8ge2OTobIx858UH3LSef0/jDXYLnsbMKcsMaz7tYIgdas1RqPIaOE66z7WSIcVBH3Nc
s00C6Yq0mHRPa9SnM+Br5wtXQYAEU2E4R6vwkaoW6NkDUYhh9YOhFPYBFwXLxsZ9zcqkzOtrzVr+
qgkx2xZPPAFhsrkca39d1iqt9XLEoGHeLHyEK2P73/5uUM+No0sH23a4qKZtfRlz/8iy6mpsi+Pn
fKZOrLdqGyPSKxjTPWtKQoInXokdS7RX6Q9GJPST1FFeHI8XSPFaXBCG6m4IcfHnM0+R4i7dHsaN
9L+CWDFfKUcJu92X1NEUUvHu7W7Pe2wGxSkKO0gEFaLS7aElQOSwj/SIhiAWM5gcFwIS18coQekd
cAZdjJGRusjeAfDOg6VQb/kx7OcL9d8X3gvBXrTfm0tEoWzJvqwQorcdNK5q03a8cP88nQ+WoPvs
FDt5rutm2Wv71v1JKyLKgbIR+gfTINNRmauJrRjXnvHMNvZCtXpLXgfLXttlWs7EaK3r8ffEVd27
Wo9s2/21LjNLnHarELV+7bdh7NQt8mzmFm4q+FFfUTDthbrxsryVI8UDCgZrihWdrVPvM9Zc5GR7
aB8luaQzW1J5QQPAA7keQg68DGAL9+428jbVaXOzqKw9aWOPcPx8CbS3ClaFIl4IqeM8UBatelTM
AyWb+CNuRQnp9efF7cD3sZfhbJn7kTeKbE9UNAjgabkgGKtUDrHa/vafK7yKGcAhekQhoUZ8rutF
oMjgTKEVGgreAGVA/dLrt4F04rBjIZCC5NQzuOEMw+XTomjl1qqVbJZ/l3SZseGNN1TODTKfcP5H
kuU/hKBY1b5C0SyJDBi+jGVHePOi8hGxmc/66kXf5XbmmTGsOcLFG4HUf8kKRIJC8pYNa5/nYuTl
nLaoENggIy8Yr3vJUIZIOyrgtw3goxTt+ztK1sp9nxaULxP8tzf5cZN1QamhPndJF9m9C5sezKMM
I6fxH4t2wcTvint4HBZnm8bJsN8oGuyqdPFfxy8lxLxwRd6J0utB+9oX5zx62xw0rvtKGCPXLW7P
aZNdm2BsPdk8dSUGjj7RasMIhUi9y5etb5UZioDBm5bFlkXQZZtzRW9Jfsa0caA37halO8PNvG+f
OjkpvLDQmEoRp+ibxntlCoSJ3FpSGCr/8fY0b3J4rEHefQAdXDoJ/8RgRR3lrzoHKpT8f7PgJG7w
CTJb2iC0toB9kFJZFv4bizWqrDjwjs1mJlpCErV6Il3wOYLFfteVlLzKxr4iagNpA5fX5faN61JR
+5xGYxL6LB2eithVJ3JkadUgECkqRyDK5YSmhcofnkOwgQUi4VdU/yD7DqRwcgekfW8kJuORNn/X
BuvZZW/YHIOLZnDK2LISrfafp+UVG6sARWKbcyrZ5pCDkQFFIUGGu1IolWPE/sRu/KZtc086wgX3
6iwlA+GlEdzeL9SxntuSYQIwLFRExb0LheMTJHNB1nkORb+GJhfp6CKzqeC36NjdSWRqkVqwwmzO
CoJpdz8mOuvhHjR4wsZId1bon/PB+XliAKVij3wQBIH3DlfK4tczvsbUFuNCM1jYL7bhzO45cq2F
1RqdTE5nU0gCM6DUgK/Bya9jMBS6oFct0Wr84UFBCFXE+geJeQpnXXu6gtPJHehef8QrEKFMTe5x
YC//9IFyTb3m/vTK6++DeYofHgN+PuZT2pIqZEev32xOgcs0V5gvuTXWnfOwWZ5x8T5WyrcW5MXo
5M/WZhHBjBMwgwYPxSZ5RLregRZQ1Soi9E4dw4Q1ekghPQhvAiUntJ3NF94p7rZ1FLaZYSqWYI/9
WEC1od+JSJZYQGKWwDnlbdpQwqdm5HInJ8GMIrCgs6V4HBOc49eD30axlaPUIhvkTgfTkHD0lJZu
nFS1TTmkLYSEkwW1aAerG/6AMAfrARNI/lzsU2RP5qDx4ApL1zROQRaktqPGncm+vWCTE44YliN0
n1SdSrN2XU4SWDVbpcFyg25ygtuHZFMpRwXTcliJJuDdMgWDJUyEK2X112hQ/pSWTb9sGqeMsKvL
PDyBO6kwIV1hb0jqCAEfDiny0QNE8iZHBYnU4kwyCZCaVz0GuZYJDqswgHVnVGQkNV4YQ2ufM//9
PPwt2FMs0Drvr5E6+0RrPAFsVoJ5FdP/T1EGwdoq2s3nhfWsyTag0F81eIeS1pO23CjnExtwBmH1
ZX9o/SWwY0AU2n402olKo8PO7OwLs5q+mUlmXSZjTL0yzNTI/gF/MCfiFf1Un1izni1J5zhlMEMB
1N1nZWw03hbZqqmirjYpwsizbhz7C4JjZ1v+t2i8yzLcTeoZnzTji+Xbi39rg/+b0u/PtIiOCopI
d1UXOUKmPcM6mjs33pBG6vZqJIrYBRdUk7URUS8SZNJUB82DhB0b1WxUIprs1FfC90drruum93kM
GHYdk9r6WLRJWfutBa68yES4mq5cjTcZNz5gnI74y6I/09ni3B5W6zkRNkXlmXsMNhEcPlviVVP1
ksl9rXDtnPb3DA4CsKRg8hijaVK2/zoQj9GKrzy1RR9hqB2skWTXkmJT+Nxbqq5rGzlUNEf299j+
8sQ3WbjdMCuUWFNPYUqJucZvkWXvyYH/p4XYaDR5YubTbuIfZKOijzNBgpzhcaznqqWfoKJVTm9k
J1ZI41vONKKRtdE85X++rZdSHIehEcTPdq3VfZa7JDcNOqCA2seaccds63qY+B+hqZplCGF/0S3m
boySSLboTlJ72d/TX/qXJwPbOuTW7CyDYVD90tWxS5I61jITrL1tOnVP8e2lJLUkRcagu/vOsqEk
hdNVZQNrEaSHQcOqDGdLz9rZTcjoiOzqeEQi2rbltnYecE93j6zSJuMtZb4XKBCmtjBCs7wUGker
NEIgKzxAzucT8qCZ3uKNrTBhqBSlj324VTrgDckIn2Uq3o2uCa7MG3KT08AvQF/NbZtbJWNjNS7d
jVqFac4DaeU4zT5Y8dI5jcGIjZ9XGQwISGMcdwVyuNrZAM5bTQuP1yutjHF5flKeGJh32uiZwNBd
pClPEZ7/X0ApuyTed9vXEiSgdmrQl3kgIZeUVj8NHIpbM8hEl1kh1dd6whUmiovvMCgb70/9eKy0
z99qaMjuvXdzQiz2b5CD117kBhEGhFhF4dL2um8w2lP2q/13nwiz7Hfy3P59xpD2Z6LdQJXAT/rZ
4P8aSnWqOm6fkIcDXvGqnrT8o0iHTcWWYsq9SKACOFYA8ESq6CemLCBQhDObc7GmIWba0hBrSWQ0
SjMpFHJ9BiiaHaAE4eDAcW5azuGbgt+n5m3A90v3qljp330WpEycVIaNg2taZg1KaEFONZoLHnzi
wguEZqLHu1Q4My4Bqz5cSJVJJqNUX1OM1qa3edfu4IMkkqe1wM6N2wg2jR62hbUd9mRATPLYcfPv
ozNRDtuVJFbO97JMK7DzQ+hIezLcCpITE87A1Bv3Spl76HfRVoWsoglPejkzPTopimHeqmLbDVOT
fu2pLobnfq6w6doGy0V+L4PXcHQO4+rC1p7xFVvBJ5SA2d1qXsSsvBrGnLds/7hEzk2nuvXaSp9g
iZG4iT47Qra2b2oWY8WqLiQCgs4QU92baik0B8Nc1R/fVDh5VaQIc/E421/iugKdQQ5WcZiu3bLk
o9rFE30Tk8EmX/yfmhTaVLxIXTTH4Ol4oglljkwGiCWVJ07eZZ89fboCwOBLcCvANsf9WlRVx6DQ
oM/UZf+cvGtTVcZ+JNBLKhvOXTZLt2739rTHEX7DXWb3OIUh3UUl+wR5iVV/BzrNYO8rg5b1FBL2
3r2Gg10m9nvFT6GQqJea9f621oXonNmLjZG1m3FxNm2b/NfTpgC8QdPmrj/utz5+NxHaefe5wUAD
bpOY7tfABjfxuh5za2G2kDpu/XpfD1j/cR/fY20v9p1jg9GSHQD1WxITcuvN4+1vSroPe+SK+69i
9WCTlPVyune/UNK0gR6aE2tUO8UjvLY9lmYOZqWERDGER/j2ww5ObYOyL+O/FwKn3wZNW/uVwZzD
9Fa6zLf8lS/fp4T8vn8kcN5J9EoddF3mhjcPHrNFchkxtlEtwp/kBHAdWy1fEU3JF7tbHONq2j6U
/ThH/r942L5duWEhvPNgNVErCDveVJ3DUJgj+tyuK2siZz8IbR1ZqR34+o1/9HNu9T5t3q0Sn02P
+omHvFIqPstgE5mp2U1fBXXUtHqvZ4cK0bgwCNbYUA9HvV1rIp3KuCdYgt7+0VIEZpE+FTr9rF+8
nhmtmCCDnyVCqGGi9bHTgaUzkLT1IrtUvOlih4md8jKkZQpUMDP85ecpA4DpXWPbHQtEyLs+dt+s
nmcJvUsQYpi33HMZ4EywZwhpEXrvNv/IjF58db4sQmbsqtExHb4K95f7RYVCDRi0zGRXzlj4/y3T
2S35571smEGqy8OOpu/eroryQu+V4e0zkDnqcS45ukSHp4p60OnRvANOV6XaPacSytCj8uNP8hj3
DTAgWTuWuUkumkI4hWwH9bbdCMnWu2yDFwm6RErA57v6WtFNTgmWxKYAB75wpy/Fuhh8wz8ki9yg
XjZHJnmlpqAeUyFVs0JIJqPVeEzv3WzfwPFsNI8d4DV6IVocPsRsVnb9D5HLvopaprsY7i1RhsxB
T7OvV37Fq0585zs+Vqzzc7yDiy482ofhIEG6QIBBjBn7agoGwIUlFwhoO0IefjP1j/yf9hDB13an
ak2bj70XwkhHgN3W3+kQxZpa7CvdhI7Y5D87LAUClaUt6qLTgIZX0gpt6Sjhx2uK/T1v6MnLDzbL
20E3JpBwzFVkpz7dj8R6egOrbkE9StBc+fnZ3O+1toJRG0HP+XDyY/LSrjszos3B8HolidZQUuwC
SkKLLDzqe3ctJHj45xjk0FlSIVLk9SwFRoPQzr8bKBLKik+ZRSVYWHkfWB777JUWVEls2Kg5aHpm
VznGX89KNeOBBBUDKrfpFjnsMANJaJ078ygEjacv9ZuEFc8l5PxAu06gzTqkJtvNn3wYfAfrbrvR
QhN720aD2t678xrJ/NQEjVrzzyaWGMYw8Ad19CoOp/qDO6+5AU0xIlOn991vcSMqptRiWWfxrNJ7
0OTwJrhDb/cFdCz6E8QZcPdfNyxlc5PKivq6iYZPQaJqY+FB4A1k20guriqV6EiMeQ95SYwd1u2s
kejKAZSJpFAuGsn3k1B0MZIGV6QFZEBLogRVQVIpI1/K9a0LJ5ZeDcPHNGmr2CWvOWBQpeAN7L8l
OpLrqCCWceNzvnKPbKygvNs8S0DWYLTTsN7haloZxOozZBIf2C94KOpG2OkBv6i7aYDvsf/jrS6I
lCUeuvuG1VXr8lu3BsnzLGpJcHJiUws9tmEKUQRWJStYtiv3qKWwKUGLovIdqQontQ0W+WlUZ+JJ
TogFciVYvxFLvEeYOV+mI+88fD3XWWJWNOvZZDr6Bm3ozDNSfmVEtJtywWegxRov/Ebf4b72RTh5
Xfilfv3pb8z4Iw7x7mWkL+E/10F6mwV272k1dSiWdNOW3vlkps6OcDVnZKMvdPmxzmzWKGdjk3VK
PQijLx35YeaE8VlRThAHc2/U/mk7GwNkaSMdpkirmVwH8kpTtr3hAAqusWK/ZL+o6NfJlT2A348B
OxtDiT2VvE7KMl0HIGDj1E4uVLUpVV8AnZ3Bvqe0brQ9+qA8v4qXF7Sax9WebVEr0w0mWbLEpmSe
WIKbANt0U2E78qsXA/jkSNyLfzNL45GmttWc2mT5/Y4QxrAgEphS5cm6w12tSWAJ0qXx/guUvRcq
BUbOeypKeZMNAF+RA1on2rGiI0NnkWAxx4n/n2jejOtM2dO7MRnY5p9B7HNpaZ2bLeukTW33By4p
6sgCMBhtJCjuY0Jtymw4P2nEEV1Pu7znqnmrR85+peOr49i2TyhxSrGS43wlHKzhpRFOHc/9cg3r
KcJxTRQpzI8rpNSPU7wmAGQakTGd/16gacBiInb5bhZfZiOs/nq5P00f5VBqxWZSgb/SiLbFCgrq
LfeCsuObakCHycBhYKzIiJqD1j/RKfpGV9tiAmNKgEKIjyIyU4ad0Yzca7X3Eo58dFlYzwR/CUhe
GQdgi1TsN+W97qUC+5RiSfodlov3bZnN3oAM2sqEwITztRYzwlSHmcXqC6pOB1iNSjTitsCaKjGP
0q+6Nt/m4Bg/MlMI5ThEVS3mmBwJEHtY+uj9qjADufnSDkYiwCaWirPp7C3rYealCzLpJDfiGN/Z
1bsdVblHD7tvB9bPDAA/ryfRpmwOlhMFgfx/NtLF8o8X9yO3wWL1oSO5TOAkbIczICO6IbRsfAYh
LW5Mlxq32fExzndvDrGuja2JcuVuMeN5ymo1q0xvT7TyCgbU41EW2pA2m+0SLWcV3Uqevfh9QKVD
bRHAvv9jZYC5bG8tV9EOxf6f1tc9kM0JzRqEL1YRg1F8eCbJ9i8JzPGHLZ9ugQmvwVKA2EVeHgzX
L0Uv2iJDfxWB9/ieE/HlsVHTeur/HlPZ8XVuQ0e5qZ6RxzLR9963mcH3rpcJH9YKzTC80PUGgfYG
GDwUev6tFfOTEd3ruMvSITYZtNJLpfh5mkWsnQU0kE1e0Vwhi+z5ZcN0D79lBa0DYmrI6lItkTt5
LH9lEGTKCBb1ZQ7YamXCkM8dn/w5zdKb8IJJ4cmw7gCg6OO5UP7pib05i89kUHFPzL9XWvtWpJfk
ZKHi+ycMQN02zDWWca/9TS/IknJDYQMlLMoBKN1kNXY9O1TFnr6za2A3FW4KfsN+huoRfFA/HFW2
tJNDfyeVmkW1A+X2PB1FDhnsLDYddvSgODFAg0mNBzk8U+d7phs0W3E9xFu5bjUdZ9j43CQQPqaK
kmozT3fikvmnM7Nqm49ezO3sGwZcwdqxn8Br6EqfTsHKNKCd6wHjTEOJmtMnpZ2iI1z6CKgswQ26
IM4W3O1UbEWsOi9knhpsiC5+anvWLw5BBLCDjefN7yAHgF6EfV/tlgWT+YmClLkq0/xx+gvv+cbS
ouEDcx2keY2ADSIowwZ29ILOMn7g6kUyIwqOx1luAud+PZ2Q3DOMDeHxV9WXrGuwYJZk/MR61kGq
M8RfeL5aiNkTj2xgI4IsQ/I75j4+eKsnxzKamB/+TWA0/c3QrsQ/hMCsBli9a4ZueoijeXbiQfx2
ohkRp952DW0J4i3fWleq0T06LMjap6YwgF/x7BRxWY5sBdhgXnvnIA1Gm8BZCWubCyh5m85nlK0H
OMZN5KzRG9KZb7fY9rU9RdCAbnbwABdfxx36/ulqxPLepY8YqzNqtoXYB+lY0Y231jMQDecaadDt
ljpUgSf3oMtoQv8e4bBpauaSYRqVU3ThmHGBO4JFoIaGNs9p+7GphEoDZCmFLnsR7dZY6qSLCotd
9ypzlj53O/qZa/qe0ALmRjzXk+ppY2lz2l21C+Mj5OOJtiSMlmFdSklsBixn0kwf+2fe+wio5ZCR
7mbKYTvFBuCmE3sBE0AoRdzIGguI0sY2oLs2Vpkx2fpCmRczX9QMiN/KM35kla5mhitRYXbfIL1S
2hIXkGoI9u3nxY/qq9zhCMpjz5/luF+D8cKjoZhqNc4jXBckoCrZcQOClPsXAxgZPQuX54Lyxzke
u5r1jkaYZivXTLYdr0JRv1UsDwUCPCg9yVP9LL4XiO7SfVYqUf07fOz+OjVsoOReDBaQvNrcjmoW
ySLjIP5l8JJh/w0+9KOsvjPhJsy6vAyVC4MIElCWSVn7pGGgy9u+Zh9zBJlmCMbaNcSOD446cbA2
Tfxq9YDhnIEgBgVpSKwU3zyfkf8/maLC97klx2avRM9SyS1D81QsZWiTM4bLAg+7ToVW0oDR8vrT
Kj+upPBUKKB50usmEaRELXhMJUkDYiz9IzA0lYNMHnRIKnAf7Qdq5lhddUP7LiQjM3Wl/7xlmmFj
qSEbrZgB3OYyS9wiF9ZP3R++syS73y+ACJD8gvdCEgQifoj0n7FziwdTFpHf1fBSOPBsjLECQY03
Fb+vqSdFsdLFDv3XU4DqpX7bvauTcH3scPv4wmkLqsmpHjeCnUPkODRM8J6gBn3Uvk3pjvFt51fD
wAkcbdosdqD8vo/Vm8MRFlTLjPVz10naBwC5LoiZxIHOgvb71Lj6847aK7UFlg2+Ru8Zb4PHnjIe
RazmFoLgd6I8i6VQi1pnzXeuUMKEcGHWGz8yRA/V1YWesWpNo0/jSMXJg1zHDvBwH54y1oh8WJTK
Bgg7UAOHxDm9S5/I6/SAnQF5Nt3ej1qwzkGRIOJg7PZrJPO9GzlopDKIxgTxKFiPOt7pkHCkaROf
1RWr13Rn4GV5Tw2DO3t+FXGS7vaAB65gHYx9rAY8Cgb488DNRF0jK3BNijl57uTxbteKuTeaxbsy
FCON3zdXbzDDox0YfyWFPydUsdqw6KiwkfUeT22YnFbsC2C7jbbWIscGvnRMAoqzcSAv9qAsM5NK
Z0rbu1VAsFvvXyfK79ZkS3qkbTzMgOtkcpZqbteqdKzBANvXhhM6QcxCohsdqw3EsAUqAs36A9n5
9+krmqkocFRbxyrSN4Ob3V45xFvFA5m/fCUDfQEMRb+0G+1nERBlcC2XKrVtio4PI+AcxItThyP8
M7ndAxbQjBz0jDnh9Ua7i3ldbrJSWoB5gaBDonkivSb8pRdufh4d7sWRpKIgaeV1+E55cL94/6er
rUwjZAnT61+bO+C1+NPTN2ssUlOVbUGBxN3ILck6bXESy7eVVC+aFYu3MbRwk3QttYE2gcbdipf7
RhLOHHGkYvrZXBa0T5gotwljumNTZkC8zr/pUAxwm+r6Q8U1CH55Gg3WQ+/IdvUwzRMU/HM6njFp
4DxhSgJly1fccJ8VZeFZFSJk+S739SRhPToGRIV6oUSfMHRn0dDaIps2o2QCWRotpKSRQFawbmAb
3uuM6koAgwp9o428BUgfBbQEb61pgWARs8KUpbHuF+Qxt6iqYXUWp7W1Wguy7KD6hL0bqouhXqul
xQtr3bh9JkQdjgw2scEXvArHKC02YL1rTljNI1WeE9kPxYtuRsxq9q4/qAbksBd3Y8SR6VBoAck/
LupEPtp1xVfyU/PRH8qQXKwbS8fp35Xk6NPDR4JLQ1z0uXnw6ThXIUfRcTqBLGkl6iFdQOyJFUP3
9WWCoDZb4wEMI7scKAi9iLBxaknyZ1MIERqgPhmwKqGPtXjdq+8xGFHSt5VGziHPl73ad/xX7oQo
L1uuvQUcbhZXulMWU4N+b62XYIBu68IHM7QUwnCL5N+ogelqhpVVmCebmLDZQFctncMY4bqRv8Db
JBybff4GKOgeBo8o4CdDVtNcZIQoBS4PahIN3yIEhMXx1HXY5+0GsM7JLUytfwb7gQxvwo3j01eO
ht7QNPPCr+5/onaxQ6vNXV2gvzf2L4UlyDlZUs1iYKU+Wm+2RJqLO6Eib0wzCh14BtGkkehc7Mtq
LY0/nFrcY8DZOWbvOAZCzeu5dZWFbWUI8wLETm/BHv7p0JQKKugJUKxToIDK23T7eQ4zeXI+E0+v
52DF8xLzcGEXs+dBz/VNHOD54CelbqCysRiWZBC74D/PVyBBbJyQB/hNGMJtyCqI4CSNE4vRyISh
9fXfdueRIJ90zMYDsI3gykTPpxeiczx4qqc91ExoR+9atMiL2UVHZVYgM0Cd+oe3Nrp3ufB9yris
Mvte6nOT3Hf0gv9AtQtStbINv+eXRIRAZMMwRpP22hJsK9G0EC7LcTN29oY6X2I7080gn7IkS5Wb
6NaB/iZmWdhGsSB8QQ/MzDzhbJxXAaNrBV9YdmjOhTT8WxQ1laCkDio+TCF7Ci9St/9Z5vivvWCX
qTSp/Tosg1zDkofy+VGs6e/ujCIbMaorS/d7ygPx76JCPS6ibPcUE2A+iLNwmoUwqLNqq6wH1lR6
ca6YmhIuS7zXSDv3+bnp8ERFBTMS0CzDuyrh2q9e/WALQ2j7coo/pF8I/crJ9sD5eLZWugHGYu2X
KgcJXsg4s77GYdpkQ1FshD4rbu/dM0NkPoTi5WLN6D6mqmuJ8T2YM5xz/NQeLA1CjAFQJ46kVHvt
kwjWW9QT0X66NIbWPVujOtzor16DOx7brUPhJlq9eCEF3nrIDcRx6ovZxZSaisaYb3GnOROr/nng
JabPAsf5rVADKfFfuPG+ATQHWY8nGD/fA3amrSXBJSn6emEY1gADfxip+Ll6u6zgeSgPSiPlcGp0
0ix+nYn9/Mrpu4vr1tAYwEnxxFJhO3nmCVAw19rdBwPTZZ8/Nbe5DzsVAfQeixr6p915hVnNghEx
Mz5jGM8iCSh8UK7DMnHHNwMltqe9O7iHynstfrRqqxYpYEm/Xjhewsovw/2813S3nyocfGF1RIPU
KYYWtjExaLVxnJSIA8s2xJvgmr5aoYfkbEaZDCYuuK8LfZhjphyzwu4bqWdFsy2xvSnScqv2YgoN
D7JqbnBPDsJb2BfP1nVUbsd0I3bzkrTdjvtWkfUxA6KLVwYiU6EDBtPbHEGwA8ZNb7hTFGR0xFjs
Fo6dhZ53+T3wNdADMQL9VvEX3ZixiTzPoIw7C4CJMdWM2EwCRFkzfthdTxfsyb2AFzRitgbNJab9
z1M3NxnI/cWXM3UyIUbVg1wdiooNJSQ/aDu61+DBGfAUyb8z2O+xCLwft8Vs6SSYxc3IDy1dgUDF
BCy3RNGvNxgjpvOGNxWe/OgtRPsa/TYA/K0LQoD4pchjsymA9+Onfyz4euZN4JmrxUCYfcodqrdm
pofk7wbJl1Aw7F8oyVABjOw/VAQgnyHSuXNDj2LgMHvfhYO5/Dcuouo4AHUeTSBK4pldo4VTW1Je
WQHLwg3CqRO/uOjIMJR985Cj0WJXE1KotQJ3qL4B5oGAyGnvbeNP/1g7UuG0/FVjxjsZ/kCW/4E5
p8XXWD5XUMe7Ke+E0cQ7mlye48vk5uT1xtKS2xYF8nYuALOJzT5XFoZ529ItEDkfXAadt5DE3zgg
JLrffo+uw0pa/fclkv0s3NiGTJccQ2qh9nJDLp6AcZcy7morQS+oRmiOmFhx4NZqEnQYWKZ37RFA
T01s7W7HAwcKPsLDzg1K7kCRVDdhcHMKA2JWWUL3ert/QQOzdWLvMa3aSmN6VhOJ9iWVohq29zZK
gRuAsGcFjCvuwJJAFK80K9YGaQkJEss++Xvbdy9A/CaZx7VIhzAfJXvKSnCosMhuXT4MhO8E+YQa
W2gKcCzeftcnmHZn/g2fyLvlqcENk66bBhyI3wRFXe+7vWaekQiVHTMtCaovYIDELTlgoPIdMpi+
QhVxDrn31i5iFNXl7xhGxYBTNenML8OnAYcdXkyi0gAHoq+w7kG6thxlbbpidq4YyUnJFEeBj2P0
n/zKf/M+56ZnQCb9H5NtTAPUbnwsMr1JeXm4GE995W1h7zd+aMsaurPziT0/dlhgmozjuItNxPIj
4Y7cU59bPASPemRlq7D407njYlrkY1mlkNcvNw22GIsfB4kgUUrbD49IjE8FF1ggn8h/xl6Q5aI3
7q0d5dAStrbQQUAXro17ducrq4J9c5nZCVoFrMxWqEBdrt12jH07ZL1gMxkcNlv78YBlaa0la4ZI
8fMdQspNzkdJFR8JkbMkriBlAFoo34OIslNtkzAIqS8hiQ0/MC1pZ32Gicnoa8WSCK4xyn1QZosb
IS8YKa0A0yt9Hd8J4FnWqa7u5M6X8art+REw67LRXUZk5qNybz9EERgwx/ac/uocVi9S6II1nGQY
Qa0f0mO1Q/3ZfW2QaIqY7GYj5PQqmoen3CR6KXR0uGKeBj0dfd1L1DK/fXfRtEtbWxQjv4qc7hV4
QGLEvAaG0v68Y08pv1AWaRGS94kYN6geo1SbuZ+o+FNxiwpycf/K0ReRAn34wFKrmgqtJHLS8a58
mbn+JlCmYUfdI0ki7MGr4XU3z64UQsupH9rlx2OTCRJ1UmB7opF70WujHtG7HrjBcycicD/OI7jx
nRg5kIXtBf/iLfuynUbHR1WGVabkqT2V2292DifyKGliKOfLC5sMlnS70Ljb5vieou14KYH6zTmh
TNF8ds/hXLkjRHurgY5fgPxSVz/LW2NkD1HuuAP43WvjOdU+IDwLDBCdj9B3SsN6hIgg4jhu6IQb
KvpEFDG2t9wD6K8mXaxQhSAR9iVd25RAvBCFNOC9iNDYg2HcO+jeJKkchP/GSF1lboK6LXQo0pdi
HT8q4ZixmOmmpH76Hyn7OLBCwL7krxB6Bc+Lkf+J9VBKzLAKytCM3u8fpLb3AVs4voUMQcZtsra1
wiBuphkOb/o1zMUjPZ+tVVXi+tzvXp71fws3C4/Wk+QLBWn1/OgiYVZDwgjDSEbH1nc/RR52bIGA
wm0U0AywLtgicJKIRW1c2xG3rJ/5/YhC4OZTak3AigCbGQiMMoG3x+DAof1cBYfpmyECkT2AKnih
RQ/miNRfTjlHGb2zz7Tqfo5gPUpygAqwJp6yFkV105bhTMvuf6PA0Tk6HDn4k8GcSnzVYzdtWc7n
drsQVGhhZmtLHkTldvmajsyzh9Xv/O/mygKKbksDyiCl97gRb2wE60/wyxjhtzvW+NJZQ/QhDrRB
zupTaLp/mGL/Q9e06QmLkkAdTxnBGOQULspV1qyRRoe38LW+kvrNBn5OcmU5leDw7Y9pwmE5hEII
y5Mn4cKvvSurZNmMzVBOjWqZk857I5F2mLhIXo7C/1RMld5lQRwxdeyPfrrr11qkoXTCp6AdEywO
EsaTRPNqxCgluofExrQN+57D6wz7Tj+yyIHxV1IBXhBODBinY5WCK516CvjPpBftsu8FLGQ2pljL
wny7gxMs5ETDSuSlM1n7jzcQGYXTi6/zwDNHPrOvhiNhNb06cR5RZ0I8Zw52K+qVUaZ0kpY6IIB1
f2eD3cdpyZNozdFg67mCBvcghFkd2vYr5NMp+nLHO/vqllKVbG9nN7lek+NXQW+r3gTJE7tzJiWE
RJvYhfFMxs0CFD4GlunAoNCX4KpHA7vBmn0S9RyH4k5dlRE3/4q9yMzewk0FD/mrU3jCP9yNN0Tb
QxjgdTtUKD8VL6eDimeMR5rekBRRh/Swzh7fx7/yjLncm19QRimW3BE/DEgJ8mPoeBupXV+Qys2+
ktNGqnLS13QU2eWVKO+8QZ68356A8cf8VMW7DyNnq1I5+nW/WVaf6tJE27SnC3F5KaliW+10DRQo
N0JWOBKoIXqzdWgrOWvFCQC4lGW5uSxjqGYMOVjuezOv33kVfp+Vo18dZEh8L7HWqlKyZNrWI/xm
14UcmHQPx7WCDMgPD8aPhzzAoAEuOIDu1ahi/vY2geo6VlfgrazTmv+zHHafreCh3WVkoe/MdgHA
cvYQu8qX6mZC4S8tw0xpciuHg/Z4EZ0A/jXvz6Cay6IiQlnka5v8wcAsBMoiEKIU5mSke9zptioJ
6YgVKI/F2+iZOue7apaTHW2kfV1oCsg5jBsnKvG86wukx/Wg4MbcAzRr0uLyUtPNSPB2046QrnVJ
gDZoPbNwY2uQOobmtbvIfUup7l6FiE9lnUFSTH2O0J8r/vfVns8bJJ99+OyReET4CZKUuwzli55C
twYWsPLOYA2KHip8/112xOhkRPgISsOo4hQSZULKN7lVw6JRAlYG6m4ZO7/5CnndlWCF0DSzyOe2
Ocnrygy/hDOXXY5VcfJZVr0RkVhiEM0hvcnSWdnN3Ea8dJFJaAFakiHsi26tsFHwptELMDDI1663
ZhlI+OMqIVAf4RbDqa+gw4W9iHfSkp6Kc9O62J2jsBqU/rDChQ8eZN02xs7kRDI9pqFs5G5/+Wjv
UXg+KfXEXaAVCxeFxQohYTCPiJR6CC7FTNuKl83RjX9hAPiD4HfXM9zOKMh3ruDUEsnqnRbAj/bk
Qk8EHp5dLiIrTeRmJjj/bNIV2vLUEtevUyxdQ/c8zFfG79lq/uoBucBQfTahZXvN30bbvSLCTmue
h7A5Qe0RGf8B4novvGtniGKxQxEd/SpFBM0SFtOlF+RdWG99eOSeFTLkB+QkHwhKtxlDRODSCsNi
w0L/JJyA//YLyOKgJ6B5fS4RYFqoz5SbZzgQ5fQAlZnsutWlD4xs86gluiTHPp2qdyZgaT7RqwVq
GOoqs3EJoJE0EGuXQC+ZrB4JKA7kcmP4q0aUts/osch8u0niSJelrT6XXCV/pdnuLN7tRVdq2pzw
XSYJdWaZoI0kxIPBOGmAgKjSOJ9riKsWKEI2/Kiq4kzbjmWQwwNXub9EMaZ1367k6j9Hu1Ky2Uff
hYN0lD+hXtiU+uQQkk/rM0AIwa9Prna7/PzkKD70Qh+YVmBaQK04Mj9yiHSoIcMxHN9yu4cdiBXv
VICS3iLAg9EwCdYmR31probb4FXT2nl7zlDVJJPoLiL4UQoy6ze0iZU6d+lm75DJWwFLq/hBz1o0
M0kZOj8yWoCh4Twkopp5Zt5VO6PPcXtrAXHbcfFkBja+B1xClWHbD0XOTye5E8Bq811cC8TsjvLO
0eT1OUE+VHaIMGtBUw8gdsIeSGCLP8JoL82NBY86HNz6qLtSEQQXln7X1x06mbs7dhAs64ahoOD5
O++iZDpJNZPRfzqqtCs9oBMkC6I+jnPjghzYdJsrYkNAaEQQ11oX58l6EodFx99nYvaiVzfT7I2s
rCdw2mA0iYHkTzxCTmO6jCmyHB6AtUJEmFdNCEceK1PXcgByOrJ6jmDirbScmtDPLRLSYaLw2s3N
vzGm6Puzxc/KWb74sP5cuTcHVoJd9VP0Zwy952K3t+b/r+oGLkLAYef9U3DzMakQwYLRYnYrhs1i
QDdHsYPEb2gct++XUYdm/U6t2LUUnMum/vTLDi1PQDsiSid9RA+E/7eXDQXRQo2zt1Gp+dRQyGMt
26TwETZjExXafOsRqs2J+ftGC2AkSx0RlrjD1/Yv6Mj2GcCqhVvSWlEe90OJXoxQGcFt1sp1+g5w
8zbNHNAj3Xtzo0PAhIkESu5WeLvEEkcxOa5RrqUmwTl8Zm5nZ3IePnZ1LM04rODaFoAkhoVUT9Kz
jKFmCgd7XOaizrsjQvJlMakpE0+cFg+znxS9cHd1NqWM85xxHkITx4bEs/xa9RbpEoEvxnmxeEJi
ge29w2qxIEKo/tR9jt2AFIWGGO4AQorA26Zy+ssgCRoh99aaT16pkX+l1V3EB2BHDPlUftw4fLxD
t1v0Ji1zkiqYugKb1H2q7FRdybFGD2wUqahOuquEY1Y+QZkSPJZaC+VgR+smunL/lqafuG0GKIai
bUl0o/OYxeZ3ha0iVfumq6hRDjrEmamBi0a73BLl0Zl6NNvXXePT0rk8QNZusL2Zdwjd2A/4fItI
01BuR8+Q8/4gHTmgRnMW5du7axi3zMSfGX3wTLtc/MIus5H6gBbMly3IvMGZxJtdayUmZhOVA5cf
fdPQUrEHpvNeUGALwVEKDOXrSM+HvbHjTzSj7tRTqcXSqeRN0+hZRO9ghV6sDam43f/OiXN2rDPw
WRYL94kcLjx1OckXlmqGBHYTa22vuWN+zLL3cUZJ85EriQL/9pW4hytxJnYQrTP9EkEJYN7raT2x
0yF4LUjcnBwwP/uLa7/rmsyLhzt/OxnBMOILzNkg0OlYoZYzUZqhYk/xpCCBcCAJ4KDtavhYSyZu
/fMaZ35H7c6tob8U0rIXi0HRVZYZ6Lsv94/7cnPCE7Z4wsneKwDpfX7CEGg7rpT4CPC/scxRHkkF
yFbQbW7VJoZPT07+vUfRO71kdIh6C+Dwelt7tnleLaEsPsxAMDzvq9GH12/irIlL91JcKqNszoRn
EiWpOrquQaCqtSdGjPwiKq2CaFEv5iqpMMDf/Pu2/Gp+DPB/plwIbvefZZMoce/s1wodNxHJNAn2
OJn+BeLctyHNjxF/wAw04EzNaeeUxIndkiNNBaoKVJ4TEUs7hZYw3Q8RjWTt3vtvuRagYQfIhapx
Y7wXR59nZ01Dmeg/jpUcKKUcO8AbAth5k8VTYnRVG4mgzrv9LF8yDMMFg0MPsSu3svJtzT/zg+tU
mwcBluDQXfPFM9n74Sqw3x9Qm17CvTXmRExQ58SkDIBYNUpKT8xzhldQwJH1ND2nxRl5veIOn7r7
o7TOnobSRjuV+q5P8N6AD9XPlapqadvQB1RbOISKwDybhlbKJwo5YMNii5qE4lFCkEM8jbMG3Pkn
QdyUStvZ54jMWHyWewuXC/JOSEDwhugZF/xr1XhokoAm8glyT7nW92qHn8V3wXMVWGKMFIwjo3py
Ze7b6YPKaLpUBiSERg7NPiAexkWAtL+hXMOml5h/qRDMqaL20QVHX/YCmJdqtG4vO+6IDaW0u1vU
HOUv6VTJXYwaAIPzeP3NSpA96PXV4HojJQYvz1syUWWbsUS99A/QHQffNdzMmNqiYpHqjJMDmOvA
tKxRK+zwVzPsI8J+q89+QuQc5xzGsFjqkx6H8mVzk80jENhGvHmV9I/zcEv2R5a8NIStb2XpZtPy
x0fXCpvpBDq62hAk0mRgnYAYQ+ym0pXAfewKWdKuxTdelK+pugsdvW2zAhWf0pFiat7Sw1Am4leK
ytSqpajxdkVbnfkxazLwW+79nXHUpQd/jlRcbXpw8qFUkqAuNi2DjvAR12WLcMPqk+YJLb8se5ya
ykzi/bsLE9ZyhRmHpoJfM22mksTKnO08cSeCYXm73AEloyf4vHiWVy33Tbg9cQX9YtscfIVOfM44
M0j+0UCKtP+osrnOHF3/mfb/MSJ4vyhovbG3ZW8/dLFupWxFud0k09z7FvNaaDXmo3IpVL+Wlhg1
cw8X70tEFdjV2aBPxbn2ctDrB+A+/lZuaF8pNKLrP30KW5BhC7PYE/pTMI5TOK94TG2ZwJxVuj8H
THznJ72DPKgmsOQC0udA+grz76J5/xjomnxLeTYPcwlB/glk4Ecz/EYSblsDoGdmK0XZgGzB4IND
asp+D3jacUqI7APvW2ADuApuNKku9nT9UzH1Xy95MEGWJtxRUzcxvKbVFQuD31T1cm3A6ohtUwzf
elna6zl7JJObx47JUq8UO5Ft06XpAHFLI+WSLreBRBFYqIOaVmmnittzB3DVjjTWdG0twNCgrDgs
4MCkv25WrSrnDwjFHUZo/iE3buQxjRsDpW+fGqtIRPPUCsCVP6zM44LlxKlQEqmth6Ilg4Fkgsvj
qvGZNTfW4GPIMBFk3ORcR3qmcqW2UXMoA7hiQDedYqLTjGD3sqptgn6ynt7pZvEaEJ1hZOQ5xFGi
DeX+1iwOTVZ9Zf++TSsKat6FNNNwIRLMZXH20jJCBZYAQuYw9WRIaqpN5/LJ62QfAVNEetzSNMoV
ef2waFcGPXP071ZQYQvQaAhdo/u0DwHhux5lSm6B5AuZS7u6xcxqE5vVcwXrmT5E7gmptX2YoLZV
NxSm1n9Tjt0SGehbd582fhjcv69ksSdEpAuDVv/hnbivMG2OogdxiF3IbtdVre3dzoIuBaZwEFyF
QtmpVOarZVcYsqPoDa/11Dh7WZEtYGi9/2KIXQcHPcx6v6WIFvnrX/4ccOKyvIlgpYVjDo3wXJGM
MBgYDjhP4HDeG012FLUbeDUvuzAsSMfbuEzqiUu0QflQvaTFgmeflG6KtpzIwDpNK2Tf+kpjGyqj
EsJP8TkdFtkRSwOGnqA5o/I6JvdlXb49CoHWQyjsI5k7cTCZl7ChwMkBlMXBRSYGskD+qrJPKaVZ
6nZS51uieTK+SylRtzsICUbNlyugt8k1BXmyrwf91JSeZZkFDPfnNHXZiqF18eeCS+9gw6uYKd5G
RYzU7e+uv0dQphyESM4CxaRI/Usy7S5XWjTqmDLfBckkBJ0NvXNbs34EeW/+eEh1hkine2+PJSA/
JDH2m+gFokmR0umzbRUqJr5bhqWTXQ5vw6Fj+BDzRa5CCIIEEJQdbkLx5wWtb9zkK0F3W8nkABZ3
jywDqFZQdzOCHVn7cZbmDzXfq+qUYk7mY/mJJKQB4oEaLlbFRW2vrQhcLPQFEcuPTXoL4wgbzV4+
zpOSs7wqawkbHRpMIUM62iq2S+Xfn09CiovIk8aqlMh2ATfb+pUEzsnKd2YwaU6ZSOSmqhQiY0uS
5tFyXBebnVYS+H1WE/GOkAQaj1sxLQho5f8AgPQRYXNkMFXunLlhfNEapaKJcPdi6KRAs4oThkju
Zy13ghKF+0Kscii8xXCbTK5B29bVuLlFasTnhQXjk3f8o4ioRiRNO7jIKq5+FUDqfxadyykSCKUS
9qw04S4zs8jqKLRikPQhFKoH7gxIZPGxTuj+yvp+kQ4EH2PO/GN/VVEncJ63DZq2GcdyDRjfuUL2
PvAhmo0Gfn2HXtGdHF7EyyS4ejJBpRIpRQTUv1O0+aVDo7VEFN87deXrCTYixqu4UpWfhrBbve6q
v/KdoFbNMVX7a/pLaYfi0A2OPrr8LKn/xaJzblTr5kfQwWf8qUZINZsJmSoDFq/A4pmDfgPQS7hQ
6huYs21DtoCo65nKyTz3V9ad2SKu+xed9qD4prgoRRp0hl7kkKkCj7JAouqqMFXk5QAsV0MMtOe0
8fi9HmXu/GN2NKlPko8SNQSkrfR5C2teR7EmAxtdWJA0t0R3TnPPDba7cDf13VJLQ7LUI/jDojuD
aA2buoLW3PetXWE1IkjQfo36YeYEQ5wElvYNMVeebQML/AKzBbXLLQrtBZKJMK8idx8Sh6O7Q1Jx
qbD5V36m1tRUAJ2RTU1ppjhnde8kv/raPfZs2qPGF2FhcrRuT0XUwO9wNSXdgFsPw/WhJBQ5Yur0
/1ldS00dEU/ciRbPoc+cv7/1ul2Js1RYEwy6eLfp5hPTrPVLt7Bmr0E2g/S3sJfe3oFHfPvpOFjk
w/9JzOaaHUMFjfX8bjF1qEbFi51/guahpBf5VNSygH2puNUWOT0jLdKU55BPEqCglX+fuOKV4Tta
PDPTN7VmUuOo5h3cOS+Hc0MjxvQic4O+bpnYEk+P2vvCcXTXKod/03/K/nrh3seh2o97q96E3zfL
qptv8NzwI1n9BGnFMaWE9QE1i/0gxEIrJswRr8H2+7/XQCq+sdlFdDV/+l58IqEi/TX0cJUDjsx0
RMxybDufzksoRL01y7mlPbG16vXlRS530DyaLwp0N+OhF8sWImdgoAykR5grEk392Kd1OgG+OS1B
Xya2DPG3+zqQw58VFt5dFxabek92XHnOz/XRIngaJk1knIpQiYSraQMMauBqFz1nXk2Q06wrJ4zc
EDZ3yXwlLhNJKlAxFkbUZ52e+geQIHyLYCt00Upcq7Ly7pBTvR05kwvd2fios8m3qP0ijEBqckMm
RCpgrvQVEKfkE0MhbAF3Mui7OumFV7VFFCnv54FNGjE9d0pRlQUY7S7EpJKRpadeFUs6CJudsa3i
OtqeTMyjD3+sgSA78VCc3iXH7C3XzB0JzdhLJ3T3g1OHFjJMXH3OXktIlRmUbUB9Ld2ciUGtyJhS
SnqZGwms5G8jybfd/+K82XmY8EFQCewZU1ICkzAVIX75g9vA2SRcAkCHPEovmiVWAhxOqPBVzMFc
3gvUX8w4img/kzCODGTPxU3RkJi1svXPm2ScY3Igk5e/76muff453/OjHPwTToWtGI1HNCvrv8dU
d6JoCYbHhtaVJQlw4yUVogrbVDyJIzl26rZH84Ga6OXsJRN/nm8LzSjOc+sdnTWfRS71uOiBLNwu
G83wZnnq/SvrLTcI+rkaXOBooMlybPWthVi5pmZVwYuuJ9iTWNbDNig2dhIChIwBXb37dlA/muz6
zLDk3pLGl3/ryxsN3pC6sct21BPgvmhgqgaImoc8JbHRYsWqcQAp3ZN+Yt6KQA8mwVYg3gJdAXBK
iMB72EsboGQrg/dHbjZZvZpfjOQYanmC4ckhXAPpFEPPLpueCX5j7rUlWgDsV15djT6De0aYXqZr
1vsvhdue+FLLpZqOi3IBxPUbafnzSFelbHJSN6GwKf0051xBCLKUsLcUt1PWL4q4+/BtEPrjR3jG
Q4PE3J/5bfrealBUy7GFKdV48GXNkBEYB3etx1YSYEVAikT6DL/UEWZgB1nU5MBg+CL8QSWoQ45w
20P96LO2J6SV9VoGab8gk7kwqj/aNSp+VvRCwdMcDu4j/ttfl9MO0kpfo+gY+53fWOsWoVc3b4h2
ggO+bvQbp3GAmUO+A1hLKM6HFg/Ixp1Imu6CfFSyZbZkQWR+42fkHT2wfXSjqeCrRe0Ger78b4Fg
XT+Gei3OtLKd3y5cSc9NtGajYRPXw+1VyZ+aNT0l4hv/W1K9Bbq6a6492kE/8mhDnjAJHI1uEuwr
GOmTpAKxUsZOFYpQEiB4hL1czJlLHnTv6jCs+gvXcY3fsjdflNhpD84AiSkZ8vuO1yjvKHSpFJAM
PUikIjxwKqACnN19eIN1YOzUuWLY2jo8e0J1shmLwPwTWb5zGcMKnb0Lt9tnsFtfVwLoPdhQdUYb
DUWLAhPkD2lszhfHlGjKgDD9FVoBbrkc98QG0rAtNQXxfXrUUQSLFJDDUoMU7FEziyKPDlRhxP+f
opF9RSDvUtI7lWyShiZHxHunLMVRq+uXaAGKGoleweTJjdM1mFLwlJpDgpjWIy08RulFjIDC/0FH
Ew4/EiCzosF5ohNsrFBb6wksx1EjoNAHklgSSYEgw9FADiu/51sivjmCipSJWux+l+9Y+1LvqKfh
22xP/XvzpLZ5ojbiQcqy+Ao0urHtEew4lZmzHWqV749/6RU2JEfqRBjzzZSg6u57Akca2SuqvcvH
F7GO5DYrOVvAunvatmWu+kq/vYTKYxpG5Z509u/MyINACczzBf1nbyLCVi1JZSlqPL1yyHTOQ/YU
6ijws2Di1UCCM3qmQ4PvtoGRY1gRHHsP3Msny5DSH0UKAzEKFM6AfhIyB9dbyJv2h13/KgPeo9Qc
ZV7xVOlg1oNV8CICUDqhafRlrZgu7OZcGFzGJTJ1gOFdNzTzPrbTtz9WKwCnmK+h6UztdAljNWV0
XSV+6VDZVnpk7bQqdbkL/F5enERld780WeRgzrmmC8hBYD8FCD2zJ7bi/w8Sdw2cn6W4GAQLCVVL
HCEmcaocKSJg0Bkua59ScGWCMW+OvYXPsKAthrYCsu+8nS3QRvlVZ58w2X8QbTX1Q88QbYI6rBHf
63sj4ZOwhPKKMOPe9kGSa4UR2alaiMQzA27ldRqdSsAzCn2i6WI+JjE4yLRux/UcfYakZV7WJ4na
f1AuqegZCvq5Wa6Z7cQGgs2BPHmYtkeu2tjkB4JmWfAKQHhNotZoT//tw+02XGJNckhuLf7I1Phm
StI/ZaflesVOxK9Jo74PZWeZw8ZwsPgZ1qLgJvfBwiVQBooDPKzk1uv7/7S6VPmBOiTXDiomaF/4
6aP9EITur7pOLdX8A7tTkPMQFH287vnwN5Dr4hpJ4qazaplyCxJs6FXf0OtprWQXbwu6MtuW1teC
YxA8T9HU4SWwc3zbEP2yCyXZqzcgtAQUxwX+OBR8jisvAGdRhzUxCEv38OnGIkgL5QYDMyGrC2Pi
pEKVvLbAys0vw+P9wg5sRPMPqHt1AOlXk0taE4qWfGbwQNye5mjXdAxkVhIFfKWCVa/fq1+PKcX4
q/1u8AfLJIl17xvhpdXdlKfj9IeYXwTMGcBMNgHUFdNJM97SuPOTtuJAery7hnslUxlaX8jPhZaM
mC/buLXmtkvo6gn6fDnus3ytrFxMGyGQpBrrk5O4wfs/XzNivxHDvM3+BTQj1OtZHUDc5BI4MTMT
wgDksU4dEXiBFj4X3J3p9byfk9AXgzZb3rMZ7ZNit8BtVpanYkJ8b4fOVwTvmompWIipiL8uk4Gi
MKCsWbB1K59rhdDX8B4U5t3pxuVGrV03hkaZw45tk2wLM/MKUeIboKdxOhJi2hKIdIWId+zFRYf5
P+qy0qAeD0yjDYLwVPv4h/Y/KIWDKBoCoUP2AJmjuBShTZKqCQEjptGqePF0wBEcyd3FEq7OoFWH
XYD9ov9Ll/JqFOry1v0blpnxDf2ZobnxMbPambHRc3LilJ6RghyT1Z3rnj/07d8lEVLECkbL7XsR
wA5UsHIGxzRLVK5kPW045+wqr9Mbgo8Omfp9G08DQKryK+BGIKRNgmuzJEnPGTKvSF3acqf90wIj
FA9vxOFKHL+kvCkM/r7X6NFWY3Kx05FhuSCPdA07qZF6YkRtWvS/iVHnzcjKyQ6YJXkvxtUJIJDS
oC2ga0XrLNG6KfMQdKEaqoIeQp1RMnHu+LeNEPBseySIMyrWtcIocq5j/WPi+65CqcaOAqeOgL3N
T8TTIKMLC2Vgk7XpvsRVjYLghdjs5OmY3Hz55JnbaA7ntH9ipb1u6ujKZ21F60HuRAU/gdvZ/zoN
D3J9x1zX1SKU2kyRHzRxYwuDqx5cdYxaFWTe0yFrFIDzpIBJi62ybo9EqP2KK6h4c7wytzd+NJY0
RMY2t2ki4NhQUF3to7DNR1ov8TgoqZaDx57TM2FKkVwVNWecl3mzDjThDy0augjCIq/zGmm0lexA
CJDakt8tRYtAEH4LK3NknNJMQJOcMzJX9WlGjMDb+G4iAcsqMKpZk5sXSqGKATtgevMg/JX4W/Dp
GPFZuKZPyDgK7M4rvDM/QIg7VFOvZYUvH5GzGClFK4x4TftWYrjF4J+sv9/FYXdahiMvrRUHjDeS
V+LyoNraVLM7s8VCdW8YEgLXUceLkha/5fsMYFH5mANhysZRyqEVkCEltMjQ2J7/5U+TqUw6/Cqg
oVwPqa4X2cC0s70bvyJGdz4v4JQ9Y8FFik9WjRGXt1iwSmH4WPnqj6UVt4IxrcNarmIRJLu8n4n0
j6rElbeJ4pPVbtvwsRK2ginoW4Cnxq4sLdWOitKhYp+Jf+lV4eziyKNYrSlWhEeQXbrb34awz0zK
dokPMyC1ctgSOjCfiADOcQXACE8VGcMDhmzWavwCHAY1sLE2wyPk2EDhwzXYoCR04pa8Y3805aAj
22rb9Mse+Qn12wSRygmU17EYzGTsEVHFIG0wrViDi1+QfZUOrhEvtOX824IOpPFAdgsnfBz4BVub
pCztm13gTJkhQ8bP/WJzN3S0wYklqYeiv0c/lg94ccrwJYg9TQyIVR4sbKz5BgK4e91VD+jJN0O3
ijJ2iJY9AHNrAql8DSQdIBcKUJp/hgEMVoD+/d9BwDTxm2S5kfFiqKuq8YLRcNLZ+4PA40ysQxeE
oEQT9VqPzkiFCqZKtKE7A5i/dc8rzAgVcP90Zrwfs8MayaEIRphwoF7FKhCE1d4AYfWVXCF/nSmU
Ni5D1AxuGSLWG21SAeDjy2DlWlDhBLbMmrlm1tizvqLYpGFwLlUwTy0enFeQlMFOZP4XLb2FWtis
SPFDQwPfA6TeTxBnmbWjlIEbts02hI7wMXeN5n90SzSqnUoifRl1LPZ6lJvCZmPx4TFQzCSYo6AK
OJWU8X4Ogr4j24mEtY44PvkY46DCWmwrR87ANSo6ZWLpIoQjH2yh64Ihvcz0RbUjPtsDS/L6/US/
o5i1gK/Kqffhd/JfzWkZZ0prtukKCnQTJgSGHcYl0ztXmlS4XSv6uNkPM8kRpXZx2VABUH+tyDW5
qH2Oj4O4M6aG5GDQk2BLJ5D6veF4qVVG2V7gkJOF21Totov1BUfzoo7JVE7HiptOl4ydScY9GlzC
hRkz2w6Hiubao5iYlJr6NcDA1i6uyt0Y1UfsPooItvUH4sdmHCSeUUjglCCt/tNdGbsIeON1veej
TvFP4An30gBz2vv/mvVx46Vxe/a1yWE+X7wH3BUc3B17Aa0I5lHECbWOXt0W+lw+9t7SbJrYtsDn
qmxTamfVGO7SX+q30fd3/VBcXjjX9ha7Qjfwy0dvUV6FpgCmxAK2E6PiQ06LK78eLb0mx42kYrL0
+FYljl7H8VvXGyRhZkxGITlqdsqX5xtwjU1rhJLOLX0A0Vl5z0zHVHC6AGDvFRgivlVThlzJaNLE
be8bX2hNegluAfLt6moW6Bw0n3fpE/s9SJvRunnXqtwGnwoOWqDvbM1rzyDzfbY7L738Q0jsxDXe
P4Dmln6boLQ5hO8vRKNr4oWWm1cu8/TcPP5kEU7wJP+qzzlAm7cFpfBw+lH7vETdRVvXlfAbaRXn
Ll+kQ3XqcT+q8wThayzMj04wSRwKRzmkarpMEtfNEO5Oo74N1sly9DYoL7QJKnOB19wk9Iv7q/JH
lnx/D9sl5wzatbVZ3KoUAntSRznu5dpoTxX+UIJcdCEg4eDCtrKaeP4ofgWBsZrRkz9NaFd7BXnX
pzl8Ntnu6OukPWC6hrtwDfeyiccHVliBUTUWy0sNaelfKoPR/vUsAwAh2Ymwle/sheA19fRQmagw
U3f0MZQLj02U39b573cfOtIvQhA0ytfhARMDBNVR0IRzfZ5r2zu0wPRA9vFRNo6fK2Z36vPFPFjP
vpYs+ETTHLvHL8HgK4mT0TAjEuLRJ1ZSqsGsJNiWCDUxc2qFX4yDmOJ5pFMvY0A/pzsuHEGn72lN
qlXyrlOHTtRNtX3RaDM38Vc6ebarWk0IF/Mra+tBwlT2+sHjt6+dvHBKZjZelLe+p3ozp4TnESLR
vjHbZpepJEfuAPyN3hFrknjWZfgpKyLM4FbBTqxjzfnD9VScvwkbfwFVLVCZXTjPhDNsEh+OEH9H
c1SOma5kjuQIFRlPT+Wv4d4jWGZJ8D+fD/DY3T1dViijyKnCb7mVNrrgaG3vHia9JLx1HQDhEW/k
aJHmdGQYbY4u5tRVjZyGM4Ki0J7OjgRWk/bDzfI3DUcvtSyW55Dg5J3s16eFeOExO8Kt8o1PXTYy
ClNazcbG/DMRXRUirAuUkVvW69mbfqRjtOapsqAMKI25j5jhvz22iN7+hHTudE9ycekvO2Sl6B7i
oBJ7Sq891efUIKM2Sy+usb2AyZ/NJG20CGwAgsrsmX2t6iCzzMJfs0bUEEAFXa42AQ2n4PNvV7WJ
QdJHR4WFc/ESs2onRq5f9UY6AT9bKKKHpN4tW59RHL9wefHa1vpy0d9Y8G++Ja7AJ3aiuvjxRKu8
FigvcHw3OOy3nWvu/j+GY8LIjWTjreT1BnZbF7lAtG8qCryoBKPIoZnFf+P/tPzD+036HrSH1eKH
C/V1ho5wz/nsKOgHKdv91F92cBdOVmQPTefCGfcpx0MXQp5G7l/sWSskPUL4xYWfKJxqAC5/jDXR
1lE07yEKCR6nu8ymJEHYqmhulNg4jn+JBAdseuX9UKqzZXZhomvSIOB5GJCUT6JPhQMWFX3dVIMp
OqpCSyJhMN5Y3R+fgriCjseQiOIyz6WQGM2KRzGyyw7KW+/c8uYyOuqBlkHXtdkvgQG4ajhQ5tpU
oWjNmJzA81Ix/2DFEN9/JctWoK1x/oFV2zbsxAgTmckAV93DySdsMAine4DtQ+pr/yk0K0HhC1Qq
1CG6u8b2UiNW0DrCQuoyp2VZsRSx4qJigRSV9ATFikbZeTPmD/+npauexmN7DtrGxLWtNZb3dqdU
nfPpyKUCrlPBTa8UwcDJhZphGTSrp9JOl3mAP9hru2DNt4s9D9TGwgy4D4QPbT6cKlsv4OSnbIxW
0wNV2NBDfDzOg/P6lAP8wF+BxOX8sKin1K+sueYeSs8RUpkqgxIixWbHjMx8u8cBEWZs6+gSRipb
5z43JHwBOXeNIeaaMRd/qlUrVc+UjU3KAnHX6R403rQS2ZR/nwk11n+kycRHynRYnPJSdijPx1Iz
7eaM9eMU2ye/UwDraOGO2MkItMw+M6UB8qM/65PGWJ7oPmUCivlT+AatC9xdFg6vqfYR+BR0Q8WE
dO/OzXvhS/G4NW2crGs+phW4DnNcukrZYgoN47ZB++w3xFaiRFxt9f00pFqY5TpXKJs+Bk0rO/jp
1cNYVlrkUDkSc86cACOcZRXpWuTB6E+FGtw4qjNbUpGJ8CBW9nb6gIvHZ5cqfzT6hI3KhuPd1EQY
8kIO4q/91P4AZ8lNYvN7zwBjfJvJsO3szL92W3XHqQUtfrhfar9J9b9qZY0pbz6eXWcIHVO7g8V2
KGCRsATVwM6JglzRTMcT+Q5vdUONhCEAJPFM6v+gE0BCYuJgYmoJvvHVgU9BxWAbtvFf6G7z1jrV
JaNRSay+F7KZRIDlbAPrRgGr0Vxe2iSQxqpDvzxo2LrjiAUx6ANM4G51cTWASWe0AobdEXqu3Pn2
KhKly4Fg8QeBzH5PzrF8KWA+/vvac+mtgriVMafrbUlUTlEzHNAEkNrp6DIOA5mlKMPifqu7ewW+
dcgFrBgm3HnS/INdwCpHYDKfRaSK+//hM3hMnWj/h91II+8Virfmcq87DvZ7yk4V1jBa9BAr5YZH
VYQJHXmMjPm6R/XgJ3QuhRNU/8ltNkWiX7GFM48lvetPHODuOV2z6sNmjqKhhU6KEtxcvYLWaPAk
i8bpZIq+43RFx2TX6yV+ym7Ujonzx10MCPTIC+4V3RQdAzFqjWctk76yp+ot/Ocx/m706BCl6tf4
Q8j6tkCfAncpVjRGL8Xm3ZDEBXaEQZyjlNGq7gFITRL0B85ORAbn/5AZn9DRdDhageRli/zDNB2B
Oa/9CP5C5Y4uIIaGORlpqUOuN3N+T9TFxyAa+5fjkDsYYycS3Wa9ERybrMRYPxJNva3AZ4YZrSBS
4ynhRFOhwHzS/UbNR/rDQiyA2xsOmLv0tdNpqTJpkSphyxeYN8MMz8E3anXROQImJH+pEi9si+RF
CdgRjPlgOHrOoSoHgglFehgd4BNVix2D9+sJ6fXoFZeqr23BuoAoGwN7iP75xKGW3Tj1AZLs8odd
SZx57GR9ABsAN+pQne4ukvcnwtOCKGypmP8nY/G4UOeJbAMd9T/x1N8f1YO4ZMo7u6Zf95b95xVk
S0zx/iav+L0BJh4DP/40hyK/GvEDbKnS+vZOXlr1/jFqTajTmw2Y19ZELd0RP5ehNOLNw7hrUc8C
fvZxnnJTZ4u9pHDb+3U9rvqcP5oeyHvvARLjTtA4T9AbKGsj/gH3CopjgRyO2auC6G0jn1Zxm46Y
S+56fbrnzOS2jS7LqQ9t9GK3wF54JpqEXZ3T7Gsz9jalyIOeclQcSVxs7tLdgm5LkQHl9Gq0DHk2
goh4m4TaHNK2TC1vwRpWfgL1e8CNAKFw5Si2YslUAOX76WYI983GdDey/bwYbipUHEnTXiq1PfgU
XRbr2oEcAbNFwa8SQo5G3TaypgE02yhbziVp8Hx6vr6zR3tXgNcGIwmPKd+Rop9fhuEXIt0yusen
W557yU4vOrNcfqOdsxtjzYvgFp9Z3r2W8QyfqJvDxdWhRs7wSx+DTz/BgIvhtsd7E+Z3DMFMpbhI
JyLZe+3L3lU13g7z8zdCOE3LxJQhv6F8c/m2kQI0I8B9oZy653rN+yoDkloBIVcka1vw+90tmO41
Mypybdn7ztPHsJtSboAzSKuWsa4xK/B9JwZ4vHN7MfFJ6OYyR/1GugoajF7dxX0ZQhYGoISy5X5m
uU3mw8MAYnf66uUJSAsO5R97lCe/sgD0Yf/TPhiFBrj047aNv/duHRvSTBQGQuq4s6yQ1EYAC9S3
NGHhwDjzHJiv7cqvde0MjTTY7Om3ZiEEAKpFu+A/ChaQGsr3mzEavk+0tz988StDEv0Laaowtxh5
hMEknqWFYqV/W4Dh3+hiAjRbdIqVY5/ibEh0Mu0wK9afnRnnjFbLHZ0XeWhzg8t/tF8wvSV6EqGw
zfM2FnbWZMYIz9FKmyZMGRYwH51VSgUtaXiKVGNs9dt7j3H+3xx29YENsYHiCm0fe6Hp668lNpqm
bZkOOgBnyTle0c6MQ/NwFnQE2K1uhzIThrriNXeqJLXh/FjPuyehTiWCKz5ZwzQtrNuzepHI0OTk
ow6e+wK9TfnHL2X6NHc3U0idNv6kXlUsPSTGdYERFEj1xh8h5Q1xlMa/GqzcFGR9CAoo0yAtVeJt
0xgI5vq05jUrtAzp+ggVF71d/k8KvfV3MzW5vzgKjeHNt31xMn5jcdEKsXqHXkw+lGXmJuS5G+1y
ybCf4DYbMjJCRzl2eMb2ZNsfRmtl9RBHM8ZLHSx+XK5iJFXYZtJacfW29iIQ3JHESjXV/jxBBt5z
5ZptDgotwr36BmDYLFlMH+8rXqRC9fchp2ehKrr9TkQCl2mtlQFdEeG60yRvfYPa82OGVp/5rr//
658IJXW8iq5hTLaRCljsSoTBQVzS8wkonmMRzI2Sf1s5vQOQ0mAVFQ3C9j/CPoylf3BHBRcY0g/v
MWTqkpFN0O1VIoCEjkpf6VP67E7MDiDEyyUgiGEP5Tnm23NdpRd4L4iO9GlLkiL5w39+lSygUBng
zd2ZNz1i+9CukYvWf3k74HQqN9W7V6mmrXDj23EoxzgPuPP0OtvSL9osge88cpRV0PqKPunZdNew
GKkulEnWjgAMyTNXxp+Hp6pjZY35UhuhZADrPkyKzCxMPwk27eh6+dpX8cinD3Gt4dfIPrtQxJ3f
5cCYmDUD9Kaswtgm4Ahi0h9EADU/yFGbAAjgfLSKNbkY9YzXxq19FyzjHNHGaxr6dVr9G4mNmkm5
DQasgAWm4kQym8hsVN5+FWoN55dfG8luID6Da+qlz/rTJNQsyCuMLZWpEcCEWJKmfn3RZ7JyCq31
u/u47XyOwohV5l71lUYvokaQV2jG3bbt8Pr5VYOcN0Di7+iJBmdbvrkitt4VqK5icySPcqAb877r
SCC2hGmuAVGEAlTFOgoG21+x85UV5vTPQwrNsa0JP0aa96X4QMvCorm19gifEkcA9izXcipjYBWB
FmrIZGz/1Uk+mK31uaIu/yHrqGdVZWkYdNEFmWyt1kiCq3efC/+3H4rquR6inNYKZko4oT+feAtB
3VDjtXYMZ2hxi/rLEq62k+Z2Ez4D8V4H/zURz/vn29xzuu4VXBCC3QurINDFWRj3KRszCfi7vF7a
iR2E4HJp9BbFQ1kEcBDbzqvX64I5aCgp4Dq6eVvwwzzxk5k6xPPhicwAUZKBijx38tETD/pvd5DR
nUYLC60EWrmopsNUtLWJQugi/3LlYbyRW/NTi6oSBPkqQwIa+rO3TQv+F/S8rw+InP+StmEayoDy
QjLzYSD8xwKPEt/En1Wf3X7PdPa/D4Bz0pCK1T6Twhshy5DEjQOTQLZFIJYL7zTfJgl/Nzyi4eHW
SSvXoUJZyRYT2HRW+ccLIAq1VVsPOkmZBIShtfIbB85RqZnscsl7l4/cj3YUEBSjNpTW1lZbBFo9
avthOPe+Tz0CrSmM7JKqRx8stEYpENx7aVb2NdJJwjSrVXdXiF0Vut8HYT/KiBIYYzO+AqM56B0y
DpfDNIxkwcUhSqFe/dLvnWgVZx52g7mgHChexTfHMJEN5W7v0Uf9J23uMLM34b9EMnWGAqRwZMPR
ksk2RvQh7q5RSEsETRMdcjvRnuzCopS87BKoOun3I6tv0dS1UvyDvexhTltE/r8rkRPGbGnGaIQO
RsO5qeJsvxDZ9v3OeH9UxXt5PlEvkyenYUAAunoJJzbbQUCDKZO/yHjM05gbDNPbiJvhOfBqcGZL
7F8q2dp5fdu152+H514RQMxaYrY2m+PHqvHPFWLPzj+422JZXS8/xmEHDZj/lxpTrSUBlHUp2JYy
B46pfyjVGW/gyff45ppuBbIrD1lTMmGvR6cBZfKFh2clIonm7IspC2iUIB15pBvyehwhcOF6i+VU
t+yfStFAj8b9+1/ju18TqRXmplu2B3LDdxQ5+q/Z1nGK0pErD3h5bomco/NzVAvln/BoaumrGTv4
YNr+dkbVna8Mno1FldVOBq5KqmU3ydeJx+j34wYUxPMburTSnb2IOvygzm80nHtN+lzq7OdJ4Eei
Ahy0MTS8BfWKhQ5x5UqMQx3QGe7Q9OmpNMnWtBdNRvmOxJ+GUKHvKTtQKPo/othDq8dDfU0G163N
wUaLPPgVa7xNNlBZIZsYTHenyAvljk9yziFnWlZLJ0nUlIeOJi3LR8a8iapG4JEKimgi/a/Si9dB
dkmVHrxNuL4C39ofDkLHZNC1Ji1/Da4E0bBdPbuCn6hDfQilhCqb6FvaJtwKMp3XRVyzAT2rxTCt
YKG+ZX0miP4c49AFglbJdfj65JCClcdNqlwRLiX98Oly51zYR+4SK1FMD+4qyUPRBACpBNgOZIyI
ze3rWnX3z1wa+uFFy/LndPgsVBd1/e3Le1g4MwjsqbTNdYdjyuTqyeM0AT0S2x6IrAqa1AqzNsO9
nPdbQcJh+iib7WMVi8R/j4gcpwaW9XEvYRLoBmzy1tcYgEab4Gx5zbzWTjxTosGyzVtWNNywScKV
BQHuSJ9LiBON749ZHaQ40r5S2/oskkgtzsbJTdY45DqUZsHp4ZdrxV7Jt0vRFgwSEnt89gLOOGqW
D2cNf8wKs7Zip6HJ7J7QdCZFG7jcSgigZmdgh8m/edKmRZCm76P4+oPYoTTfIrVA3RoPUHXLVdo6
ZUiQB7UECwDCEj3Jtl3TMxEwsQXBamFmbhz8gyIrxAf/jk/zUI6m9+97TWROoV8JJZXuceQbfIoD
PtWmxqrY1tYqpJKJ/bxWY3BJQ+ZpnYnE5GB4kxX6ofwxhiLifUv/niFo4XjKQFvxFpiCIlI9qWsk
ooAsbWxLrSYPn0ofwFJtittuQhcS/cw5gJy9wiEPORGZJZ/QYwBY4FoE69jebbJ/4QSPz4L/Y1QY
nqWoSQDcztes13pTLg3vlyEW8OpMxhuefGFS198Lfl20GkntOrSZyjCnT1/NC/ZRK+eQZYsIYhLp
FIhyojVY7xXdl8XJ3vVBcj7w+JYDXFDqsF/2L8bB6cwLJ1fGQ2QJ62iRzkAejIC9X2ehfivIDH6g
bhtchmpOnnLux002vjCSRvDvRG592DKpg/hVQchNcV9xq8ry7yMAY6roA2Y+WojC+eFRH23kZ+aU
iZzfTdIBfBtTLFSFqWQnewuCgek1otYOZdPLbiTu+peMlmiQjDd+Bs0sR1U6CM2eUuKFnxlQk8N9
5Vks4WQUc4lEPpanDLyjhqtHoxdXg34PKtlEiQVQqOfvH/19a3mvdUSRkNSPy6AdHUA++hRw+BbK
U6vqJGTwA3PeVBtc3kFrZ0HrLPPpm3u2CH0mvnTttq0vmLs1mAEWVkdbkW+w/YlvhvwzWm3JZPqp
JdfbnmI5KgNEvg6OGtpKK1cmevFBsNfzobASFGqGFkJqJ8RG3o+Lj3Lt74+vV5tBaY5JeBkHYFkl
BvM0iZMeVx8/XRt9B72jFf+S/gGUI4k7A7xJobsk6uOVpVVmd3alaJQWu5tn7m35SWH6351Wy3fZ
ynMwoz2tTcWqsQ5tB3kLap4qe2Hqz8dHdThoXkl//dynHlNoxZmN1N5t+bTZH1KwKJF6ptDO4AUf
ctPoeE6sEZWOAgbEoGgtFN1D5CtNfIvUvqSC7fHJCxui3fgmgA0sa7TO7j3jthejCn13JWh+PURD
MurA/y1bVfgYrgveJ9E0Brt83qLleLBD9gA8aylybJNoHZcwi2d0GLTDY6hcchIxUr6ZWCRu9h3j
ygzNg+nQAlSFKBKykz2uG+bV8BHBF+LetcW17/XHacAZjDowck5Y29zACGg9ZEutfqkpJ2aw3+kb
l6GNHxxzJ1Byi57ZkKsT9B7hPCbf31wMKAe/Q02PDET9JyWMh213LjWVf8RY/YsqsKIRRQ4izYEq
itQT6jnu2MuyMNMppCL/ByVDxQczJhOpBdvlH14HbVWyMkedxI9skVTp0/SqZYk/uwwlWdzVDAb5
bWI75eB5hXRWemZ76eMP0I4X3zNCaCeemQiWhcyi1CVBzf3vlnvQdXWsYgjeIp0a9oTZaVuD/0RW
vvGUBkzR/AWAmfzO3t5DsTQTMg6HZiF/dJgfkHwmqBrG+W0MazgQF2EpF5wBW/DKzyJK38aA3dqL
dHM/pb9n7uc3mdqriKBOYlgLiVM7WL91H8HZJC6dpz37fJuagLkuqtfrxKhq4ZVrFKx/MAFO2QwZ
2BAn5SN0q+ruv7F5vzWBE+3ckxzyg2duSALzEB6iJDDbwx6XsoVjnKyK3dhEIOhKmRhw/wPbpUUh
1601LRCeLPNGgm/DkVtCAcYFg5hFFO6FVVEv+uIWHqTe6BiC+KySyY11TBlIXtITz/kjM1wVGjY6
uB34y+MAoZj+Kw2FtoIlJPDxuZA48ZhgNSK0ueUdPL56oy/1CTMwzhTJdYb9L4lvhDJQ6+bSFiIJ
gf+zeIoXCoIbkG9LZgaEkUL07lhyN5bGvjdr0Pad+t2L7sFbZFjnFeFvJNUZa0JqcN18JB955ntb
9QFcqjHz1IpXIkCLWFan9k6ENtdH54KQbRCRWgsbfsATT27jE8aCi99PevK48QwvTYp+mqy5GwwO
fXS+ylXn1NnzLoJ27Rssipn8SaPZ26UXq8ZbgFwWRHievnusxOfFBa5kto5C3VAGPfE978jwD/qa
7ZXRik5dRneEKE577bs3OIvtGY8+OeBJdaNFl/04ytUapbRMclCRD/h6laRsJcble8Nxn/ELelqi
uBWdBYr1kKk5yiMqXatDMlYn3/fHgilbAx2mJpdds9kp7EbcIBDkR9X0sOa2qc776WTLl7vO4DQc
5Q12vl+mCoOUkKj75UrtDKZKsoX6mK1SACWIE47tI4FCdHhUYIYgIQDnfL5BySy3eVjr/5eJiwDJ
JNsnUaSfzlAsyPlQtNbScMfC9aY5NORvzQeOYzKeMSAsW7yXPqWLpI53MewqDArZpqpO53y45aYa
WEtRGK1h/RdSdhWF8eARw22QmwtGJKc9+LfmbNdr4KBnH9mkm8wayRYKCCujyOdnFfgVM8axgAOC
9kIvlVrJcKq3bdENHh+o7OXy1f3gmYiFxT92sL/sWmPf3YU0FqFtkh6qLsIVYe7IVxXm4fCYFOdY
eZPKxWEE3Q2usw7vp8JXPnWy9kM2wCHL5F4GtLI/QDAvQxHVwu1ucJ9mRqgEd4aFp1Dq80KT/wH7
2JXdDXVaWAfWi+CONLtZTpL5Oul0FaL52tZvN37VL9Ie0Xi7x3LtAmKEt3egRjudl4kNbXFWY0pd
ZqbpkbnW/e1LKCfbVCiUFOIB6eEYy+q1g3b5KPMwQy9oFqJ4vvzCUqAGGHxCbRzIfWVd2Ynl30SN
zaj/ZwlGyk0Y2t8umEeyUeuf7DDakJcNZYFx6TI++I6f4xtLanUDy6OKlSRHvcISicHCDFK5nsaH
F9i+tQwaNeFoKyp2rnn82brqJl+7rNDYK/2WcGF6YTAkbnNlwDOcBqO3ZzrZvWjm7Gwbrpvxqpuo
o9GBM+8dsHAKx7bDMR8SWLnCnnTA29CZX3u7geJ7iAiAlKu1h5eakhwLHebr4Jng6X3U7fjxN7DB
E0JwO0U3wJ0J/ago3yUCrX6M2mkgAUhCFeGipF2Vgt9yehjIcnrZCEBeHj+ZHnw3yIPceSlX/EDx
g8vKeRuVJE4M7hUZZT30Or2yspwA2moSz/C80kfnz/crzLOtkkaP97Yd7IuilUTpFPjJlRiKeOsK
/t8vxufdFqKykrVTyB5/wOTWrzdI2Ml80rxWihvuufty/3VN8KouA+s9T2VotNDFELzHoltytw3X
utvsgq/55QYpFjZYxSf+RYv32bZ+hlgp05XWng1JXs919sXV7Rrrz+7/4qWT94JkH0kVVGSN2Ine
vyPY5SL1cIRYCtWjQwHYd1rlFyGrTBjqhBHIxQ1frRL29PY1af797Jtg/c7x6JbJClmasoRIQ4Eq
Ui2TV0Kiv2yop5l7l2mPH4BtbwVGL7vQYVtwSTiCXUjwkrZFqDVRqnBEjxPTYUWs2SsK9jbqoz4W
MdpHs5CkiXtx14SV+Mg4LOJngwxootatQF+2wjpDuF60b1ttZ52+c9ZL02xayr+ANOvPwSoEF/y6
TH6+zkakoxbrccpSSgRspyq1x6gaWfWQHIsfzYVD6XKkE0W6iKMEPHAOsxH7EvMv3cDFn7SbZr2f
kXPgskwCOTyTankcEe/kdd/6NKcSmH7mHFSs806jwzBQlj6FB/t6nLxBB2uk99DHKneLn/rUiT2T
Y7dMk2+6Lm2M8G/1eI+m12h8IqC3Vay42W8ZEAaWxAzkzZtqOSeWCeugEEfQtScYIyt8V6SIjqS8
FIig+D0FyUecpGo9Yz6s9lZ+o5Rw9HzFPRlvn2eSqlMs8I8J1+NZWL3bk1wcu/E3j5nveJNjfrl2
5qNOOp1Ky/TyGRi+ykHvyTulhmhnsKyoc1kagxgnMI3zVOGuL2xklm7UJ7XZfWdYxR9GnHcENujk
Fnu6yuF4Fn1PFkAyVUM6Qm7H5HYAI9N9F0iZ3OJ6x8XYKqGwPZ/mPUZ7F3VN5YFukuLcvFyKdWQX
A8O62CA7KH329ir2VbUbJp0l0bFxbPT+RXwNGNTqGMk3UHdESqn712IFKUB4cLroFp9+lJWrrBbw
xkVeJl3R91kuy5gqIBNAMfilQOU/vkN22p+qr/fj+JsTJi/NKw1t23sKoT+WGqtjjaKs3/I2xeF4
Vz701u9I+cbWIj3UJSQ9oxe31rtUQH9DanCjSH9+NwepK3UtUcCSj9pXnGSMGIDeWDvJMbwN8/0o
3e4es34BFXYg5ZunA7jm6aJBOM/q3G5Vx7T6oe995bR7y0FGkso2QFq7Pn4UDXe3s5unILzlry5q
3yNQLGj7UmBUuOlSaEHpbyuL6bl6HuY9Y40AeOj+JRTA+xypD7do+h57QmysmRCrzhz4JWu9cidf
P/rYxrEKceQRVzWVtTKMELXkB3sS0w7yYUXxYeju/7pHV+4BXLo3wpKuu+U3JffIljbCMwv2cz3R
XJRJZSGnPJrjrFawuVAnksfD7emXaFObqD2yXk5aWN4XKeakxXiiQbmm+nZIGr35mrCqQM+JJKFV
SkcQVFrf2bhyn1JbpoQdCAGr6a9zVOENw3a2vv9bfYdKQLoFEghZUMp0PrJn4EwEPoGx2WlY/Xk8
Ibj7ADsFK3mYGnnsL5QmL8a3OKY1mXxDd7bS+RVoNFSu0n4LN1+eNDRQMxK6OrircrR0ZxLR1PCg
g31l5UX1X+Y/RUBQyOXxSXUABxuv2jgDsdnAQwK04ugz1YuYGuhDskK+tBuMdZM7vOtE7WdkRftT
W1xfUrVvCCMISE22hSHjPFDsSffzILIkEtQq3yNz1Gg0Bnd0OLrlDije07eU3/FfzjPTXaiXALGa
6DCIm+R2akYCrZJxd547d2g4GpY5vqnRh8zB8w4FTItJ12u2Ub+d0AMZNTuUOqOk7Sk146bAivln
p7fJ0aJdHccSwxXPSzYfLllVdxNKR1OrJCvKuR4s3QHwM2ywQeK5gedb5MFoMCM66EBcS6IDLVBe
quuk3BQdCBNkFEtAwXudfheYNtX3H3I3bh7Ti5l0X/nN+A3XyOxzQRz9GV/ID5bqdVEmnwOvPKgp
ClXfE/V2cPWGg1o7gCNm1ZGEArSDdJHpMIXV727XHYCm4WkRa8olo3Xul84+L1LkbpupQwHaEhFl
PTyMsJxHhchQYM2gpKfQrjNHNwKkJVOh91N0h6PQPDc5YtOu/oQpFghAxzR9BDJ2MYRp++ZA9FLb
iCdXKzom6T7MZEFjuyOJsyiWKahGZuBfHXLyAmt/4us/Q8bvOftXDRA+P2+nko18/w0sLgbsyzIW
KwXjUS+2LiNsviegT8lIWE+STt4w0nHK0ktii3nae4qB16EvNkSPAFxKaQV/bmUgheRV8/Tn6Bk9
nFvByQGpfv5N2EAT/LjQ5ooeJJnY9KBZmvnsDvBjCB2R6qmzLkB2fy/hze98yB/xll44yts5zcEc
eUJtlikjMbt03/HbBQp03Uguope/ZMyEXmbuuEXowjnvz/7AwyQeSut9kem11WkUS/uEeywSmoL7
HPP2AHnoKFwtxtJOJ6/enABmaERNxp6cBd5X05Wvz2dVqH6CphBy7mqy+WtbtVdCEAI93risTNva
G4yw2dyvk5XibpVhXnV6WCy3AqkIK2wykehMBPGfp0XXYeraV6mocyvJfY/KSDBuWDunXgUWpajl
pqs26VG4V2MBYclMCU0SLTZsZdhvuF9IeqMoVYhMOhmtNwLsQXqSMuPtWDZFRzzvxe6itZj0p86r
T+9OSOlne3V+cAEvoZPeMG1qy1YsnPrgIjfHwDYlMMEKf1B6p5kBS86LLYZ7iCUhdFT6MbmgofZO
NWRTEveHrK4JLMjisSXRHcT5w1sHqbGotdxCDi5kbTdP7KXjJix71FqfpQNN/HBUGqP2KtQ7pmSf
bKfxP3x36ug+zDBkBUikTiVMD1DsqPgtEuzijkNW5asaLWXjzaM7YU+2osUA5dM/q80r7W3YAQB6
IPigGEZJI0FWMHzS6NekmynJWKyxUYENLkfVSRVg+fDnb+Dmcp+i7tnIKR6p4zbgUeS5zWmZTI9m
SgQ54ZFvDqq3Ondo+3S1Kj8V1CtiBCUGHfHfeKyaEBZM/kQVzQ9ABNRV/eHoG44LKTmbLPZR9lz4
kxOKJ4Lz/F8kmDAJszvbeSQ2IUz/Jyv4VBgJBUxiotNNl1evMkoboTYNlnd3QAoePilqH92pbUzQ
atnjZP3gQPlt/bX+6CFOXR5KFVyswzwX9wUYbCZ1FUBqrD9ABecVa0/jy1LSqsLZ2eyN97N7k5WG
bqPN+mSSNhW362HVmfCsxghIye2X/tGvrfL3iuaz2HRviRPKeTKSg/sjwIZ91cA4KsS496SCmv8K
zmjJvISnV21gj1os3orFD3n7ACCzlOD2K2qe8zNN5eiLo7S2sjgAyJUn5V+Tf8jzYSq/Qboe8Gxv
yYzWaO/qbw0Ni7AdzteChuWUvWTn15JpwrUPwj+HPFeWfuNJ9y3SBnByrbbER+FJ52Phycfg/kSZ
NO3K6RbS6j33CfhweEzxPmhgrJ9GzfsyNMj/bhmhFL8EW7kj54J26bq8a917jo1bTbAGLbSwTRYW
f223KRWy1VH5xOaJEGy75tOSUAUf/6ti0uxb6oU1SduZoz12gc2RPimoGuyg6lMCZ4VjvxiBZxgo
4OV1RJ8fWTmgXuUjk8NHBJdKBUYO5qU7DkAAjv6JvV9y53UxuN7yvr5l+0WjKx4KUlr5KEV3LnEo
cc6P7U4D6/Y3jh25UHlYVEdsBLDvFsKT+v3E+6EbxIKv4HqqWheQc+kTchZYv8xAMfdJPulxXjza
+batpDM00HFZCvUnYBBe6n2nAfVVIwbjZ9Q7uU6gM0d5H/ewNFzpNbeK/VrhabLrt9QsJ5qLMr8h
8wLi840aQr3ZEqIkBGoA4/VgKulR/GziiVqUob3oyJeiBo9QvV9mbc0lKTfgYXXjtVkkwE+L+3vv
uBrquLG8lnVgyyzGlrInN2plPfHMhLLnBDYf8jJIU1v0sfhKSJQ172AjZrTeGrj5NQuva/e4NsKc
oFr6rP43EwQ71K/FjiD4YC3EjofBRyl/SpTbuzoJI04oxA9S2LlwoalyzXBl5h0S4nyP40YOUYhb
jJadF+f4OVbXX/VC2ipMctQ7iLmGRpPwrXj5PJYb+vLMWfTxezAZH51n4fjSp+VjbEHG8SFagatf
Dk4IBiDFIkgQ0dS4PLAWxxYsSwcHDF31trHFiH45/jAlZEi/z90KZgmBtS28Datl7A41oPZTs5K7
RjFZf59V0Ef5Tyc+39N4Qsq0ojTutpfiR8CyOp6g0hZS+bgALaNBblHtZ2xFWMPaTW6B6o2sY6mV
skxwfvTeLTKJgQhCdMZt7R5dDMWMyc14ICUP+M57sdM9vvIgqHma3a7hWlaysn+i0gX/MeJ98nfP
I26NhQatLqxw8o24ekn5BuGKfUxtS6PtDSTDd0ENujoTnZb+c0SjdWcfH7meuYislpTkKKWcw4Q4
n5jqLaF41k9Ms2pubdlNdnfy2wzeO+I2fOMaoU6rM+zB4HdGvYi86i3ZUll/zwOLGbKo/q8rQWF4
eMeEmshhXBInRmcpz++xvinTPKlGgZG6ePDsQldc+uATGXIRLxnMlv7si602W3K60MSzv1x1u/i8
ueRZ6Djzu7Y7RxdyofiZ2ztzLOfU8KYDWswCDN0Bsslj+iVtuIvyx/rM7b4Boot7rbJUsyiQ+izb
YJMqW/L17mxB4qO7XjZV6x9itJOZqofoUPO3BheXKWctIRewv9FDXyt2CGP41lQwB6xfQOO4WHMJ
JAl6pk3Q8fBO/mVLVne1GAXPjIwnmYtuzDY4eOPHrXZ6gV4zz+OdYRA3f94AwZE36EXLcbpR5jT1
P0OOUr+PKsVsPV23WACwUtjBuO7y6KgvXOQtOr34YiDriZ0QM37zOOnxNttOCOvh/QI0M2ecxgTy
QR8m3fBFub6HP2S7AxXFINKSKBVKfccto9f59rptAG/oEtq4sDEW14fAz1omoDsgTjE6LivIeKUk
rlZFgavSgJ9NNviuGbgmSCqJaP9fzsPJ/nr4h99yYJi1M+zu2QzOLqRMSARCTwxknzy/B0YKNWDl
/U4oLQF3KKDGeCAsJw5qmy4iNdYZbrutR8E9IyCWRaNEuqEp8PDHTz/b45NcrGjZaWONNZSiQ9HG
j+1RSRj6/htp12Mn55AndJ23KtcpqiXBjh8ucL0idcVKWi/gNgKOszwPdNEDuyWOUbYHFqO+k5Vg
IFthqyGrIy4czIFGUyIacZqZfWHTV1smPH8JMlmVl462aVfvPYJZ9U1JOixaKc/+ZeboV4kfH3Zu
dh3V69hK9VTgts8e2uhO2ILwdPYcL4AiB1FjNrf904R4ZU4pD1IsCuznksKEAJ4rb8odzXTZBKkk
JpkEzkO3mEYak10OHsg/PXl8nC6M64cKMJdKQKLkNx4JPmEz/ee4uNRvHEGwwI7s7y+k8FCl4S4k
E6fYYYNQY8a8x+5nKxj/CVCNY8WYCYgGBggDgU2utizp/V0VUWpd+NPNTLS/R+yimrK8HBJhAwzh
ifz58o6FN7BuJcBLOO87OTnk18dTJuKRQipb2cALSMth4qjEmvntseQG6gskLdUzW1ZD9xzZ+CBm
2SvUHqlBF6uYspGhx3tS092kKvGWvMpbSAK7ru0Fp0GcxrMs4SL83qhk+RzNJClUNpEk9rH/kICx
7fbPW1OUk/2GDL432F3bFU2M8rvuWI5pbMD9YGSeECYUs7g9hLyiQ8NHUb7ncMXJXR2dCAcbwv6+
UdbZA9ePZszfdWFhu6SnlpA+pN2ifNdCxbjZmB3mzL5cVkVqD/t98ceQpU4AbMfNQiiK5jmZ68yQ
XQSgiS14KcHzQQ+m+nrGZesv825ogvpHX9SkKRf7e2XH7WubWBwP45vF0S38xOw0rRqaaPEbv4ss
oV5heaymTp20Uhg15dg03RcVGhLCfax9llI62Xm9Mg9QjMLLm1GzGgJyfIPmL2K1pzO73whCqCVq
Pp33Y9ZxB4ZtfE8OYdScqDm3bqBQ7/g9bYPg2TkjogZtF1jppXJwf4tr5Tj3hHf0WulDN32AtfRv
wotR/j5MvNI5pJTycYUS79YBNGdkfZ2IRS4ZBNhtawXN4j4vUgDNz2ppuzQ9uye8HtiCoaAS/0Sn
8xIamN29F8CZUFYdpxH7u3n4V2YCQxEuYcBnbfQDyoMtqtaZgxlszOeq0RLX2VUSUU/3S2b0wn4s
aUl6YMTjkHvATDV3ZW0Fq7ZKVFuUmNAjVWyxZXT/Rw6VyA4mcnqf2iiD+HW6daT/WfGftwr5JBr4
3nTsONBHu+o/3c/4DgzXk/an8TuUTVPDjLf/dRMOyidf6EGHwTVL3RMebMs4yLyyaAP9D828E+DY
Wh/ZywlnJpZhJ7OCNy/cFCVxKw1DO8PNtkbRb6iZKD8GthG/9F8q1+9OWAe9/2EGHpuLajKg1SkM
U0fgraVokcqmK+EX/65S7BPQMZMxHBXOAuO9d0qhbSshbI1QqzD4reDwPqc+1hsuKjJJftKmfkvP
fkZvCujPsjSF061BKyXlfeYPDe8IV3fY1QN/DC4cOAW/xBQ25gJ+7nPRa+icheZKpOwGbvXb0F+R
VRCz1rlW7K0x4Tq/kwDxv6MpiO4WkRHlStV/iZgttDYOjBnN1TbVLmg8pOnwFer/HU2IvC8J0PIf
oEsjO2VMf7ibXTSKJovk4KmK1nVB4KCEFRkaQZlZ4l2W11hgJBO1n55LxaJGeAYWBm1M6CCvIIPv
tF0vkdxgcYzEAxnriTosc6LiZl0KCXzpYm2FenpF/0mqFoS9BEEGKJI1JGU01qSZ9Ip3ukysxHG7
HRe/ur2r4fFFCx0TaanH6JzYej90Yt7N0GdQAcKAF2gnzTdc/blcEuTFojRk0ajl3PfNSp+6ZUsj
Ww/nnkB/9fsF8cXfBPIEQywNnCQ+39pYjN+uv+RLrIxiEFCd6c9b3oKtQ9Qq2IMG53/ZRGNW3iIy
NKcY0It1u9igMWNjFaspxgU074djX4Isv3xWu+P0m7Qk9HY1ueOT61O1ciptUccbOK8zYlKZ4tsL
ad/p2sc7k6MYhSg52H/nB75E1/63PARn7VJlq/HB9n6G1N+zJkA9rGMrJG3Kt6B2146x0X70fcwA
L++ktvJlTY24ya8gVDkEvucl20qRlfosVHtarsNG2kEZh5tvN0E0HsPMo3+G7l7RiRnbhpiQfurB
M/VONVj0RRH7vOqArCDPW258p5iZzN5+vG/Xpi3gvEsbM2Gld/ZiGOhi+1xOl0JYH88OE6AGdbrQ
hZJRUPy9gfimLFOe/ntNImkc+r7WqyFyn4F2C1mfz+L5fOPU0DIr5RcQAsweEwMgQAhBupi4wPmy
zX69M/5FzNz79cpX1IF02MQ0Z7Z2JmaeK9QVhEUUnOrTc09ZS8dsGS7rvb3nLHRHMkMuETkEp4ym
Kh9xVBnnhONd4tSX7Mu5b3X9Yf3JtdG3j9SrYK6R3o2iXaytRLt3GOAM2jh5R07nVIGC5g4U4+c1
60SS9BLf2L/vSVxMSpELJrNj3Il2hKWtZMtJGc35ZnPOKjUn5ZpGBcv70kJnyDEAAiP1qTZzdbDJ
MTWvD/QyRWWmA+BUv0886MU2dA18VbxNokpj/ZWJwT8FdrhcAz/j34xF8SJQDB8K1b5TRgJiaNP/
QH1uTKIVs1Cgtwsf3zZvLyBaauGfCyccT9kjbsnc7DEIHbG3I3gln3zcRbcKKddLHpyd+KpcYZF6
nNCO20MOYZmvytznqJAI9Q7gn1HdyBe2YupfENnJfiTKbZQfAoD02ooRGlhlBw/glt/m426SPuUK
YoXWMzpak4vbihbYB09KCxugzbbCAC5lZYK1TxFsR/Cxk28U7wQeZYaE0RVrpP7gDQcKof3+j/cu
QrfvMV1TXF99UJkkAWoEO/CNR7CYcaHi1QM10Zoxi3GWRxOmny1KH+jBmQGHovruZVwgM0P/OLNH
PChQCWKhfrpB/SpLI5C3l1CQc1Jx1WSiKWjKAywUH8KmLT7vn33pB4hZGvoP2RHzbf9U3SdJVywP
1UILbKLhlAjcG9/tP5wOxwjLRR2UmYg4B4/Cegc0rpnDqvQKiXTIKki6zRyINVQFidYowyWidZg5
mRJLZOku3AcQCxL3pDVQWTI4a02v9s9UMfvUkyb1J7uCLfKFzy+orhst2rQoFS31NqmHeLvGXEGW
kXj2A+IC4RDWH6u/orGSILtBWjL2LyMJROvRbd38lZNnuWca/Q8DOER1erTPQbKJTbpJnsluKtDr
TpRmS85IJ+tWdtWkY/oj4ucURg+UfhYlqTlxRah5lISerngnl4GRMvui/loawJo4ej18CN5UfQM6
ifH80PbT9enqtvvoBwsHf0lgiv6Us1BXcoQdzzNlkxUGRAlNn02OQWzNRGPw0bcXO9V1URmoUd6r
6Y5X9l2CELxITeKFZsxG3e+fL7ABVnCnFr42PpIEBdOx+23YLUza5rx2m6nSvtH0wQHOrloC1+Us
ztImVex/2T0T4GbWtCn3DsRzey1tgjmH77w0I1DvjOQ3ayiTvKzR6AtN+x0iwGPavEGua04OXG3m
UFr9jaZTnN91KdOs1Wal+kGpRNc0O0/M+Men0cu+qoiv+XTFzCQB3bM/dHl9nRk3/WQWtltdoJn5
MC4Th01wtXwn9DNBIk4WVA/kJhiWrlbQBElDAG8agnvCWdwf8C76hM7vHt/9aL1i9pIm6djYokEM
LB7/pKDvubF1EaoKp7klJgpjJfjYZLnqBpLW95jPpDyi7XFq8sJFryoOgCdsF5nclM5fUn0tTE9M
FvwHDQWA+lDS3tlw9Igq4oC7orFptVGHTYPBFdRNjoYWSfNEmUf7/aKNZ1VKP+z0wwVLGVlvR6By
MPRh28SGbIxn1tAWGU9U3tLf0vtE9GmdFSQOU1i7MUTFjhvGbCkLYnl7A4SbB1NE+VHNwwKNEs0R
jtAFDRePCKBaMRkcl40vX3fx40XDJ0SdYFo7JiYifR5YdGnvA7yjC/mknk+FQgUp8lvYuw6JG+jC
gkuU6X+mMOHu1wuh0ufemNmK/w87Qg+55ewhs51pvEZGrFgXlA/FAQVic2X+7jZ66fSKHec2P8Ub
AwAAvFU1hoZOIDBvu5KEPRdhWjrRaEjq78j3qcuL+TC196Cwp7EvsjGk+Zvsn5hi8heWp/L9cc0E
OlRddPZ0JUYagIhYLezFR6Hl4SL1WTkiXAfotfSVBdMuVFQWrScOkkn9syh1fHNyCHHvFVDmvCya
45iG8bZqd0+NoJ6wRtmX7iEbErx4LpxQ94ciyETtvUgtrywoFt9eC+NELJegBFrXMPI4SmHxkc4k
J2C1iak6nmpsCl0eeVeHZCmF5RzyhAG4N8Tr61kEGoqkmmzFHWbeFj1NWFQY/Tg4RRPgXLSGZbMY
RRrkIHsyW69Gys0JFE6UJwlN1oY9hyA7648oQSZ8jpjmrxIaSBuRLpU9aRr4pY3ZmEK/1Av0lXsl
9jvcKgkSbFUeMJ9LVyL8LkerZVljp2q0rklJXj+kUCjj8URXNbvtuGO9msMB2Qy2b8zgHmtGB8Yg
ZWRdvV3yBU9ylm2KUbZKEO6GSHfqsU5T+70qddP4xm+CbGEQYqMUmOaqw4JhqYmvk5ZRWHiBp3fV
SySvxAU1jCXjZJQcAZh6RniiGoCNn/iJgIrHpJEOZoM8dLBdrfy+85RyuVfBkj8+o+CyySWiPwBP
MmQe+Gg4x04fWhqUjEmURc009/+mTAejkrDftTiLpkOoa/Oik1fzjysCxU+13xwnOELmX43zdhrB
mn3wmBvN9GizMk+4DqiT/yd6Qdmat1MVrxdeVkEM28o0uUghlRbiAyK9rBbN75RPSa/d7rVacASn
O66yX/sRtgzWfPYY2vCZUH1EikduaFk94Gy2JX81vnXUWnk20EKngLVWiQRBcUr7JH72bUzODiyE
IUrrbOwQut6CbR9uKebItHXUmJytaHBHK4iYIvb5tohUQOHAMr8ue+A55FINiwx+kIfxzwTnagn9
DMHpYNj/1kgaPzKH6X13lbpnbLlgxgeWxWRcOmKEh/6xMNS2i3WFQs+I7vdmW2HkQn11BkH79XjR
LkmopDXFymrzjxTs/KcevW7kGMrCV7Br9X7+O8iwXObOOUNz9MD4CFH7DbUnY6Y2Cg++pyAsUpZY
hW0rlop1AUZPfRPoNsXotAEF8p91pzQjq29oAU/4i5xVMu9/+rXtDFCjploSybsWUayb2Ba1ENvB
1jdEQNMqT8Q4hVlFrgjMldrdJBURnkRLNQqX51mvPSjvOXc0bdOeZ2jndqb3TgUK0wIIgKA2WenN
wAafSWy482KcemeJuHlX9ZU4Wi7XrXnRknI7Q6Y1wJuStuK0zs18jLEStB+E2elLVziNSUs9ihog
B9FshkR+uFHGbQ8q/JPxPfpxJ4ybQJfxGbYtF8z/as1M7syH0FXHZxCpPZb8tdQmQ4qDYVwxr4g5
jNsympXeensxfwQi8JCaPFXZ8FeIdpD1/fxBvKk4/BmBNKi94qO/mq4Aya24JLHwLJcBrb7VI1qJ
M+hkweMWRNRnvbwfngqQVG1nEWEA8KwD8haAj6EGnt4QpnXde3YbCKDWFnoARnNdWVY4cQlmrxln
rsq0FZZtYKzHUdN202mUQ1KrD5q/30rVGf99hs2YNMwKK/lnHVxW3PoUe3wdNGr/1Zva+dkXq2kZ
J+TIRse7u3tA0gcRYResX0a47OEQD9C+b3NqfULfFlbJSz0NWUK+ZNc1FbcGlGIfZLLEbl4GJCqK
NUIfHOc58QC1BsQ1vCFOE68zHZ2oXS9NcV40lXSmyBcwJfPM1QGNLc1c47sudWJ3nB2/c0K+hYQK
WPoEHtEv3b9YVb9rcgzWupCXnZATMThc7LmYS9WGJh7lSYm3urs4ksvMJVXdDGyX44z59tJbBIcg
04TzTh5VTga2HoeEUlKqDvFhHIFfUva2E5ircw24asDScGvrDacuy2fQPGnzB7UV870y4kzZENMG
0+PWKvhyFdF4mdLfHPuzQB9NkRj/qvzT4yQicTxU+KXmym0IyEgiJOImA66696DTjraf7jBe7T0C
LPv0BgS5rjxo7MAbNZXnp3yhPtU9wNTVancVfYGKn0Nl1k7Xgkit5f1WwEusgz2z9D1D212iZHgD
F5tnfbYi8ucfuXzpyaZsh15iQUFrUF0635cPDFQQfxhh9e3U+uy1nTanKAJWdRHkgBmZ7KuCnrsT
RnkzBxXQ9bDSujY1+8bJQqDdHzZUSbp3OEz2p2msEtYdP9mrmV5+krC7l+LYYJymU1QdRY1R/Gtu
dVDI1loKwl6dsOYZvF3jau6SEMXcE5pjiN5nAF+zUl3xDsAhlOTUWcFVrRFikbt2k6bAVpkzqeyh
HDNJSzXBxWla9i3hfyqTlmsBJ/BN8YfgnmpIckzOTnWKTNw035K7+tnpX7GeGRPlWg/6gGg36wZQ
WEDV4P+MTN+Ke53BGGU6PHp6lMpwkWvWHCpi24ejvzFrVOqOL8b56H0qm+EJpvLhiDuCZVCFW1x+
MYEC0Oin6wNgn5n1NYvOofwfeaR8sa+HGjd18EBpzxN0DuuJGX207LMPy3zLgDqCZytQJUSPWLd6
KEiVHjVS4sfgQwr3lzEg+wpbWSoN6qCoz8mq0ARtgBpbYAwNlPq2KGzNQO6uud/gZmzUQ8uO9W5l
X+oP8Johi4MFI5zzZmpEhAVaFJLB1KqXrHL9xNE7do3ZrYb2/MIwtSYxrKoNEp6CNa1xtGE4+8eK
EibISmFVRHjT/XP+zvIzw4/jglfSDNPVL+ySARi/Tb0EwawUzng8x2DN9uaCB+yzdRfJsx0ewoHm
D/CKE7nbvnjtId+MXOkXXanKPUPCBcNivHaqCQBvw0O8/lKbG+LIUWmCJDrp1VQqVylPiErEouw0
LO86yWirGs/efScmQnmkiz1WQ+WtuAYymXLedI/DXu0o+xPT7KSE+2YwPhLBLJsNVNWiqu8IsHvD
LhKWBkFeHbGpsrzrL3TpmhDZrKQUXQd0B6r8JuMZPxOMc2DD4Hq76ojhAHJoWLMd4sQikQDKtcLy
TsVVRVXcLmLoVyJpTF8wSMX2r0xkZWInpGBJNMPiL6IM0SKDOeOB4XYNptnhAdFN3EzsxzNbcnJC
oxaFXwn6wid1i746xkdFp1sMKSsOdYQvEkoprQNUrfIqKj3kW/oIQ07JUlDHI+LDpUA8zW/RpDUU
1HAgJpKre7wlpiYLR+vjW1nH1TD90kNdFM5h5RlL6gr3j6srbbXji2HN0mEhbTaV5hTstUfgUnYR
UIfEvIUeOQv3z1f3ALj+ClLtfV0D22Du0kvk0csCi7WHm8rHrfER5+VUuekHYjS/7MhRDqRpkFL4
1dkHSmj4AJHAMTCps9uAx6IRsQfFVowjhWfwRNpgQR8sY/lJnD3yokdJ3OuWigTaygAXW8PCd015
ZBm1GxmZur4ZsjtzEEhH0bbBcKADdHwQZfsx3tnxfS//LZcSyEZ2kC7YVRb2FEFYw+Vwmx8YQnNU
pxifViIfQTf5M++wpH1l8XqC93/OFl1kpS9BAkbCJivcUeBblZJrVRzR29iMysLJSvbcNh4X2sXJ
i2shIw5gQk1w8+2m9+7t4X5lv8ixwiIqV98JUCMorbfj8SeRwdS0HmyBjHwBiOFFwhdngLa1gYeu
V10nVjhxtQTA8wvz2lZh5AKPeWUqn6NoUPGutMPKc8aiM61cAJWAuxr7Pdq4D++8uOQpOCm+6G88
q2aAr8h/VhU4LNmI3bCWc372w3MLNq4bDJJkeXi5RKDJri0iy1LBFsFriCRq1DIBStJXMbVEGP0H
RQiplprNz8/gXd/4Q7Bj+Wha1VtXeUE9Q9saI/zyhrQkPHmw62LQ3bl9Ox7qgg47TWk5MxbonX/y
JqPHg64W57U1lgtW8kqY9U1r1nYtNpmXOhGTok8SbovQE3od/bjj7Rq5KH8XvyxPBPHGxmKC29X2
Ow5u+bo4kBPa4xltebHRdF8PdxURCftekeAAwNyURYLH7C/GtZJt5q/TkcneXO8jdr54qmDCEjjj
kHpTiK/BGJ/YUKuErlyNscBVUEV2QBIKsge9W4pjIGK9rksWyowiq2uaMQjg37z0mJHsDfKKPcuw
/QNZFvdPx/zkIqwEK8xo1Em8VSTlGO6qaVzGPMg4jhc5Ft9TNN+pyB0Go7VXufiMIFZMiIwXrEj7
6zuD+RiU162hmMdljr5XpfoN+EwxuPI+2A0hZ0CI0JkWS+W1wxlIUAdJB4fQ8MMjsNWXN2L7IDE+
5JVdjMAei4zWFpuup4xOgQ/k1ynsLFrfdbmHN8q698EqlnCiFrZB0DagWykrg3+61azMnndgxtZj
o7xkOMaWlxLdSmJ2SCaJl44+QNxYWS59HdM8M9vZuB4S0rkZchiDMTOP/27O1s9qBZY/OTXheae/
uV1ADWTZb07unpD/QqKGK8/R2Yucjxs/1dMP+8jBeskU010Hodk/Leb+h4pEKRbkuWnR4cAg0w2f
Zf6mMeEQgpd7qyHHAuWU7SDqIRBiYofGdQyd/U+4X2UnIdcmy+PaK78CisEW6TSxkgI8XuvzMmvb
NtDcw1aF1p/RrjKZXx5NjyMVplFsNVXyPSM0ii1O2YUmLds+v7BNk8+yk8IiumQm+1+1lmkSr71o
INeUeBmpolrP49/nt6X8OH7OEn7g3EsafcWSNw3D0gOHKV96pUpBZy+vvaoahvitM3zRP2eBbXXM
q2pS1t8n1LHdJ/8HKDx2MDnw1YG4qaq58geSSz2U0sjFDUD4dwD8aOsc7y7ShS+Bdu+rX+TiloDh
PCGlJ2XX900r/1aDAkSVQE92E+7uA4naPnb5BSg3X31w5aBxA9IZiscjq0Tibbn13s8wRGNTqNzI
ngV09juFie+SlEInHZy1P+wsyMdCTR8qk+xE4PW4hik+d/49Obys6IH6SZynt87UpghS/hlWRl38
Wj9poNqYtg/52b2y8J2tHmXHgA5+XtzSAqVHOvVqr8FL+GJAL11tUP1drulf2Bn3nW4m+89V/Gp7
fDuorElUAaRxgoPDBbiXDBEWYn3O5dU641AWlyxOGIsT29YwmC7zxiyMy6Kne5MVEudCyN90/PyE
0TJlkVICjPGF/PQPVfigWL7inzsLYsP05Tgme/J7pTZ4fwrE0iqq4yf5RqIfl6eNUOlgl/fcl9UV
HtFks3zolcLuFRKdHaFAVxLTr9TXeb3c0A9y5yCZnWk9zkWixrf4aQZfep7NPta5lSbDKsYMttdW
mBFPz0W2jG/spgjZppyy3TzKQa51OrnLZ+0F7jliyhLMu+ojjC7ohioPE689v+szLofmq8w7PI3S
5AkY5RzxpsSK4fFyX9Z28b7YeauKM2nbfPzuRTvuX6B0emRieiNausB9d6TQHWQGUz4mytAUCUVu
HpJNYIxhU6/yUPFOOvxp7UJUj4Qu+LrDgB616kF7qsEF/8jWwRZpWZvBcPEpCctnZldALwOMjLZF
+XdcRXxfvX/8KCb/MFc+oSTnFZXgyWQUaf/D+2J5ZlNlp4FQ5khsSzZbeld7L2CH8JqcOINtrcRO
OMkhExY1YFXVrRN6O0JQRh7ngnUku3sTc0AyqSwjPvJFJEtWDFaYSz6mSq9ASpE7kXCXKqJw0iO+
LW85K6iTHRhwMB92fdEVQg470Rp78EszgUbdY9Hv4twVYft4BKxIldZUryMHcb/sl8eolu/5aTdn
Z4XNXY7jjRDPZjpXEq+7ovsBlABKVX+Zflhvl/X6FQ54rpn8N1kQ+RLipWKl3tElnJE3YSirg3Hp
pOFOD2ijEmljsRyRjuW9W5gWlYtfO1IAnJeuRuQM6j0CDenRCrumsh92uXe0O4aI4itzf4O1tmJ1
VGkEGS6kxrxvePUtmxCwUe+Z6CSYr0j6rk03VKGfbKrU1GaYwtSY9lbb4Y7StefaHcOhGwoupEXo
PRYgW8ZzmDYmSKPCfPLrYBgwOcHtXDCZwLYo58bDlza9cKJ28fdJ33PN7Pt4J/+MUH4xN9fi0nYe
xrUjtxh9u55KXdO447diEqULISjpSqvEkZEaSuM4EYRuK8hpqGh0NLQfNgU7dq1jBodXcQjQZG8t
TAtnho7ezAOMqiBv1jhP+DpSUbS+QKIbVjiMeM6BQrJMtTAK3jPjY80O1tlt9oBrqAppGq0HvLPX
hNGfc+z2+pLQz9/HeXCXC3DP1t5H9W8ToGcFnIS+DYRJf8oupvWnXked60D/8VU9RJKi2jCWI0yb
imZvXspcEyZLGqM9OjAJRh1gymJdPPv12c7Udi9oGAv+HGztdZy5JNLjUh8xAEiGlvNG4Bw997Z8
mEpLvXqpTBuY/LtsME82g1u/R4+JhbEsJcfHoU93q4wVRo3jPxFC8QpAJYfJcwufwNQIS1uorpEF
pG6jkvac+GlYtzHHN58k2u7gs5udYMT3JAz1HUAZjbaFyOmZbgLkagnKLmdELbsqcU9RoWzgBEuu
E1MLlHLjLqto1uV7vqbhe2G34su5IH+7J6bEUsCyTdWT2C2fnbLy7UUMW6ThM3z2Az5ofl/v5Liu
wudzR2CZwoV2Y2cBAzi4eLHGAUhgIHcayHqQs17rBwMetzNLvqUc0OXUfPMRkTZAUsOy6/Xx5tgo
vEgoESVaMYrX5UV929KACydjkt3DCbzM1DCbuII6h6ZIBSbEX3edLR4qc6RjHI+67khXuxMISBxf
MLYWvr/Us1nJAUA/755AkIcXKHl+zElVR8AwkskJpdDBXPl/WuF5OC89fHGHla+Mb7czQL5gA0BM
sq9xxfZJrEvm7pHRayxlGHxvg3VnyxgZQi4V1rUEYHACkmuoUxObEumjIbw1Zq8+FgVlK+5RDm6u
lcqD1BevvaeJwRNTHIIf/1kjVqFI7yaRr8mZyHw37bAkdS4jNf2RMk6GRf+EnanIN5GhW/Gd5DC4
KIuLojde3hk0mtQ4+y8ULRCsZqgWqvHJracQ1dqF0Re1ZtFxExVw37RKE+Z5CchJcKSZSF6fUxxJ
dGvp98Ani7I1pajfFvryv3HZZtlEXZkXXwZVBWlmyldzZ8CObqPof+x83gcUdPTsbp4ifausuEiK
6QKleBxW4LBj6TX0dnDNgsPbT2xNp4SdvuCvCiamt/tEcNIZWTU+MJNcvrkqUh36mpVPY4MeBbZa
/Ct6pqFWK4GpzPZ/2x/Qb5rgWiYZFcBjNV64WGG1/kMovmuzB/gBBxcnqIRE9FPp8Ue50mABNE/2
YsCKS6KDkuHhnCbNKwoEtgzd1gLNXTGbHXYKSTA01nip/5D0A4YZ7FsAEYZ9/2XMpnmt/qVzWlhy
OoVH0/lZdBsVHYMY5GO6h7cul2oF/xTxmYR6c17xDOi31qvTsZZCUimyM6hokgNsvJ6QLaBYSz0g
yD7FAYN/qb4plFk5oJmUP883q9tSxrIg1jv3DgKTXhTGWtBdEZ1BduMz7BNq48V0bYCAesQhsE2C
+by/QeU8Jqm1hlawRS+JIF8rlEcidSE2nlywmdJk56EAxqZ3ZAkuq7sORAiijyluzhKJWz7GgtDR
yVdkCP6To6RRst0PKqe/OJad+dVq+sDD8/NEzbq4WFnihCHwK3AXglGVRWu6GA72xnh1SXJFNa1e
IGZ3GXkQYtIgES2X5FjNDfue94hbrIA3nuzS6wCftyHObeTO2kGSYbQCnwfRvDXHUwxbGW3EloSS
K/ZGKWNjjEVtjYDVNYJT0JSA+wpOplHwXspkwWpQeLLrVbCH5KnTVde9fQ/isaKLgQA/EHCFpT9Z
HOnpqdam4IX0m7HP9Sg3RLMuvug4pK8Y3OTLzW7U3Weyk22/3YQPWE9je4muMAYhaGJk6Jl5Ts2F
67T0UZ0KP7ONBCnXGEVSpWBQOM9+M5c8p5eHttDDP4O2RPBSN4w+0Rvv3Yb2uXtcSAj0SzZLOzxB
sDVubVtTFks4je8HOtx6tNz+q0sQQ/GJbcYxJF4M1Qd6p9PGDy55mGIFbep8iJBqoK2WCFakoNv0
7PM9rv21AHj+dwT+9bhd7I9U3WWnmao3nOMg0ie64T+Co9pNA9F4QvENnMH0ZlpJJUg6P5pH0grZ
YEuW+Xx1/orFMksxXK/UcnL5fbBZ83j8RVFNujP63nYs7o4RUL/qJmnGiThmcuEVQATZ9zSyotRd
gmvoTFgI6WDT7kHyYC7NZGxoXJHUyQlWkZWkmCRw6wIARaHR/tA0RXHQnGgd/5YysXxmMZCeUFtf
GrLeyvM7CvaNuw4F+UYcbZwvMBIF2+d4f0HZSzYMZO02ivI+qWiBeh0e2D6kX1Qi9mKGd7WJ918L
uclXzhOxPgZdWWbZeim/qd/Y9uheTGFGqjpMIDZM4bhNBSqHv5wpGEWH/yK7RpKkIB2mQruLZ2F8
10GnqBkYqkjeiN6JKzim6oPl2QfmbiEvunktq94UeTY/K+hD63+quWwFaCxlH6Ua6XjGCuW0BQA7
X79+s8GODeyLz/zsVPhcAiOi0yW6iRnaF4K2NMor15HdGFLUTp1RGe3DOSjKvn/6a9HhhwL7OwHo
sHu8yfLU13f31OxSjv5NZufQnYzMGXTLizGiWU8yW6IY5rlZcxUG7SyEMFnNmrS8G9+9H7Ev/o/X
kucdHZCiLFZY6uLrY9uQQOLcqPjgFgTnghL6nOB3+Ykc3PCvwNFHfhBqsm9P4rlY41u2YlXrZtkc
QRz73M+0w0ybN4nB9zRORoOZQeRt/X14ArUNYrdJinKHNVQihuRp9hmBdjoKXwgDbjbQzmio1oLm
CDV+tZIf8J4ASsKHPZK5fieTU4gk1jIM04uxyGfeUSSi6bql/K1M2lUk3v+TLbP/y2G6exH6whYD
jStxf71vlAbgYb/STHOKW8VoG8MaifLogjFuAnmKGb1sUUUZR6cHzzmoUql/o+tcEkbdtcuPVdCv
rwQPBxETa6QAT7r9eWfS2gas7fht3mh5xOfmAI6GIU5orIUcqREr9tUyVSgVQa+Yni3Vivh7zCCe
wgkGfjiZsTN6aasOJKfa5/BoFiHlYf2yF1x5HDBSsjsPtZyCbc8oePjqrvTh1YJVsigpRh4cQaJv
+lhvr+w1XizUeYpYMDNER4ob+N+U52Nzxtm6YpkanKzL1mwQhbatFkQ0o6eR1G696sfsVrjcOoCt
pZtf6ONvYsmhsJ7FhGRRF/EYc5G67wK4U1M7Jsi6h7QrH+4CpNYwNGgu+/Aa9alMiS4fq32OGY1M
hFxqj42i03B+lBxii+05xBrvXxosb3d6LSuOY8Xzt2FWx5D8UxRlJ3zvlzbPNnbd6VUN5bv664ej
VhwYxcDqn1aeJhk+jxp9KBmpr4p8NiXO4FSMTRXoSjysX6HNH/JkG7JTC5OrQ1JTmHAb6+/xP0hM
DlxXv6QhmbST33Pvt09HoCBKszt1MyO0Ldfp7hxUQEmJXzRB4f2PI9iZpSMWUrZtdWNv1D9X7YZG
zHHk9A3I5b5bGDcr+d572rU2P3+OtseIc6Ov50LYslaYH9hg0NJxhAaIDiweFtvCFmslE4/ww6Zr
Bmazp1v7tcqzgIHnO94h2p4cH2seAjcv7hALjCzX284GN8TYWlseB9nfJ4PO8yYVjc93l7dak1Ur
st9okPhYBz3efANbJ3eBY4b5p6Y41dbfLVyBxZKTAXaFoPc4nsBuUGf6fm4uill+ZRWe7D96SAgl
zViYtoJajUFlt5Xf+YAykBqZPFsUKB6GgDsdBtII00qtm9bB2vJKvdVVWEmzNSCP8u6hJUA00+Mz
/iJdaJmCyDUF2YaH4nPgq81J9eM+/IL6Qil6ivmVzBP6fzRcTiWpPSRNvCCqEzCtbBT9XJtaxDt2
5Tpc+iAmyIREz70stikfqgygZ8M44qggil4HjnZxQ/sRuCoS0ZB27B53cUIYC+1q/lmPDy6/wGVp
cnImhJZajkWw4gJFcs731CycinhNhm7Rjm3zsEPsssB0qu0sn/vRaGSw977Jf9X449WZRdwPukFo
vUALnM8d9tqaq4FTbbo1jsA/Maw9PLHELuC6faCyAKXv2Ic9jdgxaqGpvoVlA9LtEtvjQikECRsW
fjp5mPMAY4giM6j9NgAppvAWIy2zRCu3tY3Ws4MaBu6ijCD0G2XS2EtFfeB5MSt8533pjC6Sjmqr
YwILZiCwJQuP2RjcPvEmis3exCvU4JxWG95YxVmaAPDG71LspKW+AyE9iK/tf41NSMN4rSRDNiGp
J1+ax1xVcM6EuLp5l4xulfyMRW11eGBeChCHjj5gWiRSpce0jVe+loIWwgzWyAGz1ohFDUedoSW4
w9qtdTeoHajQwM9pMZ5uDfLYZdUGyHokbqUNBlmm/UVYsjrd9cWFhkJ/yJ6p6vp6ANxBt107ONNO
Icj4tvI1UQ8YyesMnQ1LnwgijKT3iwNW9clQrvBt7+XuFsF5YpxyQrPe+6VtIzK7BJoyFwFkxUkm
ke6gn7gjCLQ5i+sOvhBZuTp0Qz4XMmdOTGir6e/Ge7vyBTxpQ6G+mTFkpQ8JuIrWT7gLpM9wpt0o
Bq2KbfTaZpj+k9PFXz7k6Jszs/otZCahPnn6FhP+/gR0oQVWwdTJqU2klSFvbxdyWLecqDLvT9m8
XtDBGCieEdCrOEPlUDenYRGb7l1preUsDqL0SrZYdQlrTGU99zsR/XDfdvuOO+O396l+8EBe+vGm
ipLJZVGEzV+GeuDssU3Ox5i4Gbfe4BmKFfjvd1FrQMHSB0mPBRX03ZrFNVRUUIj+o7tw4nBkzie4
1aEA2w2Tj/gKxXqsRtKjR5fkGQCaPcDFjv1iEOenEb4fjrNX+5hfUnGhmA2CBTj/NNZSuEidvQrI
l+d7IDUuibmvI08gT9brugHxHUCaRDDcCVnIvZd2UPos6rVRtmBkhK8JuxHNCaivZ8uHlhg6cjNt
21nz1cgKuAF0dFfw6zyquswS3qAPwLo21cjNuYeQnpS32dqwXKFKp2/vqHCbAioa85ffqeU592cR
n+onFPCe3pjfYKzT9MKCxm32R/BY4I1QK4MfeQri9sZ80jhkEQTVEggs1Qt9ykPbs8EGcsS8d9+0
/ikSe003ig2Tsyzcr5cXFkDB0LY5yeTYIh8oYtNvhSmM9lhI85IOA5dvnakYl/6tFSzUqLgxTytp
aR2+9GdW27POhuVM2Yu5M16rqjjIsKcINHXWMaVX2ubjkh5b8rigl7VHrrRZhVujTtdc3/hENNjG
XZOa3wlkHefP+ulArdbbYz84eHEmhRt0aLTHQUhB/FpzVYEM9KXiVWPc29Ue/1uspq/4U4C1xLLP
+7oA5UNjSpad/TUyhFyXe7h4iYW5NmHrk7BsS5Ukln+HdzPMaw/FbO7NQEdcNUa4guc3yxLiHQU4
YITPhZdSzDhKhrcpKsud5NAcnc+SD/DDpMNQQUO8sr+KVkF3gi3XnvCKbk68ldntPPQGW27+QrZo
hVMnuyq3P+9nA9CFp+qQS6x5c5OGlDuMaI/RcoRyUUGF88hIAlE1OomrxWZ/AZv784VXkIn7Vrnj
M7kvapdimVGvv64TswEzFqnE0oKtB75PA0Mb49VfcudsAxyBaDH0F0gdlx9lLRoaTOe/QDPdDIxM
ygMh5FIUju94uap8PlmmN+IX9CizbiHoACbOcPyClVbNl9yugSK/pzdW7GU7jl/1WxCTf4kepzPA
mf9d8WSgM4txLY4jWikEphF3iSeHyXg5ZZ6xlRVoqogvPYZkCkUIylohczU1OGPLyN2M+3M0f926
vVTaJVl3emHpQ3i2zn60+ueZcqzJ35DZVjU9XFfjESzcR4Za52dSV/aUpAtd396fyRVupMqk732R
tOlTaiZSZEIWH2D3DYnAHSDgWMiHyVVQrWJcrl0j0ta3PJqyLlpQm59yGqqIlkTSSXMsuSO4A+mY
uqVcWk3Yio+lfjLkLcvIZ5AU29lny38TSqC9wWBWpcaLdpLN6E/iou5XqJ2dq9gMRel6ZCXiYjb1
a1hwpoDoIYXeD/8tTOM76DBg7zZuDpKwMjrcPU6ttTrRUodKCvn+sg2Y6fB6IvMWLVlIP3j0E5j6
aI5oM62z4uAgKKOpm7RBn0JhHWTa7eU3xf6JzxMuRFAFPh11+o+0nZlWQJtlmageSPXoAzRZUUIO
1ZBT2qDcA2HxnokfiW/nMm7mE9VCrLxoqZ6697p7znULZFPAQXz5V0VxzK4Zp9bN4vFdnSqnek8w
WXLo0HMUcEh/hqxg+mogw/NVu0MyaL1OUW8RrbL3jXxxUx0fU1SYoUZ5tI8uPHOXm6QhP5jY/CXs
xtaRpMpU7GxY1HbBbZg2/3WGVuHtJ5P5QKqbrmDJcq+cWvkVvQ7yIOVZCD77jCVMI2xPWI3uDRs5
f1D4hjZNo7c8nt0aB5SZSjmEAA/I4Yw6b5zOA1OoqyHxA+VaU8pmAxio7sUwSoK7kcusy0gTLqPH
HVNypd5fLUiBREFbPHKCZVpCrH6VHUEy7Y9FPcvE7iOLHU20Rndl4TRTkmBp7kUBZGcbmwRP8z/e
fBD319SLIBAlgi7zuW5gLdo7RA4shq12usY03xPCZ4slN/7A576bGjv9v29tOJ5ICfbCWjpJhxPS
z3qBvV2WhB9XrF0ktX4iFWwd8KJ11XgYk6CMQgyKU8c6zdO1YRm0vTS6Kc7nalgtVTlCkfMpRSii
Ge0HvvQY99WuHap1KCQFEOVbaDW7jsJFY5Rsb83AU2jN5GQKIm8QecauMy+zgFjEByV+SIB2GpUW
R4OgbP1qaS8vT2Nt1C7BWmpgOHx2LixTT9+IyjtV8ruu7qrreXXk04cpRVB6vOhFJoMk9Ozjl7Rh
gKOO7GdtoyqHCsTj7JYfMc9Kh7cdZvJW6PNJKG6Jng8SI3/AtktcE4O/UyiJgWOwjDDttbpdKutn
suQbya4KdScJ7hCW+zB9yuB/lTOWCL6cRLylbn1RRhfrrmMr9RAeukBrFjT9hxV544SdGMdQRpVz
ANAcJNHsBYKdGJA9Xl3VQtxVOcIb+FZg6+7EqcQPDmmBeGAVk2XdjrUwr7azX0ubAgcrP0KA1EPV
EPBwygrF1YsC7B3uKj/OwWGeNM/zMH0W+B+P5F/pSr9gAh86+z1SiSe6/ENnDp0rPSfPcHmLJZwZ
jDCbFYp1b4dqUQqdrho3RueYzi/8RmPloYvrnAavHW4w67OPbSp9Ooq9IyOnxXFC8kymWZ7OThNk
Ri2dJeqLIopyhwSHl7FLekvf2qVV/BMhr0w1WmMCzroVJq1kdGL25S6UuX9kpv188axl2ukcD+nP
vHuChIoedRKjHBz0Eqg5M6GzVNql4PX8VEo72BtklRhW6ByPwr4gwYJvpgM3voN5IwpOu7yCLq05
IWz+X8KgI4muLQdgzkvVFfssSa4/puflPko9iT5IGJaKoaqWItHxhKgQunCvx0la/ihZ4k6O2yMg
ezgUYp1UWb6l63lMRoKm7KXvd7+DtDjixEwkMRTGFzb28H7MIhAuO8bSCvIf3mKgukRk8OAkOHwu
bJ/nsX+OD4VjtaOf4NHq5q4V0AQw2l6UJs0XpcABEKPJ2Wn38ceNEQgADedBg0dTF8CU1E5NI2OM
vuGRxE3OpYd1GSTA5ZLEDuA4o1uFKC8TYZo2YEKDlz7+qFf+VWS3t2nTEgqA2bwBNPxBhLq/V34L
vA+Ap7RMQkHguma1tlipyvS14+bTvDyk07pRypFfxtvZiy30u6s1owwsRS5AZx5hswq8DZsvKnKv
E+g+Bi8nGEtaMgxrkV8HJgpkVU7OoCQtoZoVZsZHmyAUE/HSa5CzIr562OAlsfeW6K8r0Uy6pFfu
t6+h8+ED3H6Ewub+p97VQD4IyCEXr/rzv56mdD5u+qxt39BD7ezAtPs9luMMR5dXEK22OSSGxDgI
y8D+uWtyBzsOSYAb2Wn2QpG218mvLjmwxx0tCgYc7gm6YyiKDFPoDzekDcgkwrwtJ4/8si95Ub8x
MUSIqHFbwc9OhRbmzzmVwpwoXA0QuMhxARehIsDrsP2oo1eME7YkuOato9EnEFbyVYCGQNQTmUXG
voyOmMq/REOZ5as/cOQGkqsYF4KtLRw8UTIFY0Xm3fyrAvGO9+NUUFIo0p3iXY+sBxGa88oILzzJ
l4ufvX94rmzF62cD/cudqaUfzvShGACiuQcAuZu7L0CDC6vVOtogYjM8SmvUZy1OtexTECK5p1Nv
8BX53X2nHGoAAD+My2oeAxrYTFdkcBJc70htTqenbFyQEufKpmZcBnP2kazFg7GrBrEvxmt/vVVu
vuv86Q5zYxlwvNU7orhMNandzzx1BzxTspHcU5I91AkbFSKdFR7DaKE1PVkpLncR9wdpJtZf8zst
m6EuiPJjoE6E3sTtF+Ypuh2Us1MKfovXj31SKK7kv8GxVtC+RMs7hGEK6bkWp//Pnb1q02A/RuC8
uxFvftKTbLCfGE4q59a3R+wcuyPDXbs3OB5uk/aTafsXMnaMbsobjyGMseAkSBhB0kZXgX6sl83r
GjqWnjo1TgQz0zWnALuzvNqRBkGpeSo4gMbXvCIXSTfEfqg/9mv14T7/4yFCvqCAr03yGMJmIib8
9ahptQ0hdcPs/b6u7d+/CrU2YaxuT/WPxaOawg50IOUsx1Ntf043tcjiL+89bFXNk1VW4hM8zj39
Hwc9bDe1zOzDvQdqatrx5H2C3xHK9KyK0HWoTOV2/9GQP/IYxEeKKg3R+jW1NnMi+iEU2jnZrri7
0eozL6x2cyvoCK0je2+t7AsJisPoiwetblVineZAbnqOYR9Wqq/IgUKK+EWn4TiamC2quwMziw02
RoRmpCBr69/WZPJ7IaqMvISkWkgetbPuFAgYa1uY0ZYgFxHJu2wBAOpBjDOSRYgYHgycfm9wyERb
z3cU6Hq3xCpz8gElYIPqAq+IQwqNN5VYdBlTkxFdVyaayD2kfxlLYeOyqP+gHtoaBnvRH10A2JEX
n1IJtOcSM/NS6XbY5imWyy29UHMZ2rsbQ7apirMknmaYnWiTYiMaKqvW4zf2uE8jXvLMFOv6Laj0
i5S0lJBkP6hjYmxptmSRlBLd70lRqZ0hxJjDMcbbblHQRZvFI8JDYvrqiIcbKSvpmSDv6YNZTXm1
X4e3na1Y5dg6wv4wDf4VFjwhVXrkHODQ9noitYEw+MTw2wtq3h7SPIFsoNYVDvPYSve44JYPIAv7
xyu193ORGFGbHtha5IkpnSrgIcpkl+i0V6RvCA7LGjRrdQb3Ma05cSZF3e83xVIN+4xDwDCPpmdA
QueqLEz+p74381m71U125t2WMH7hRp7xlYTIo4iEVW/yG1fVfEi7rykaX7BvrraBqatxzz0DsGzD
DNncanF5MTxfXgH4kS+/TGim6gnhZKmRGxHFG9MbTx4f+gxUEofVQ5AbyC+Wn46f5B/zXTmBnZmz
h16QqHCtFX6sJwa4YNQ7jp6aslrolPRM5MDgpj+hDtao1dbIMxBBzD+094ehALq4k3x67khvd6xP
Pyr/moKNycvbRvgYK6cw6f3Pdx1BJbTcUrji0qEC4QZCbvh1pWk5YKwMQ+J/Ga6B2LUxG/3KcW3p
NGeoA2Yrgwev96fAhP8Li/7t0ZhNFIdr/qarnOUpJ7F0rW5iPOTcOo9ZpkKhDtg9f6QrkuRXdxRC
X6yrmbFlJ1cg1etDNz0lhP+/9SI9ZjGWpJ1OmYDWzUKxPpHiSut7JcqHYlYyKsSJit+aoP7SEJvJ
8XPVgrpYzLHW39XTGoKoUnAAGfIH2XUrFX5nrBaQ6tya6HRUk/aCkxDNRpYzX0kcPKrAFc9vS0TY
9LaTjBFpKYCJdSDK5aC9DI4EraVKJk1EckGUHHYsjX33i7VrufTaS047Z+lj81s0zHYd5Qv823W8
wORJhz7lqSAHDK3usKPneRX+MS95u03UGXM5z815G0UK2vvKOlw8yl+mw2SsFs+nSTUn9znoujY8
quaMzjj2t3wlNrlodDBy6gszchi1USwJIFZIQa3UFvPu61tfhM4NWN67nu4pMruYEE+GrGV63ERe
l1fE1K1RVXffn8hy5UafAv/kTqQ58YAsk0Jk5fDv9vZXdkDnA7etCsoAVyebjnM7AQCeAh+siP6x
94BPEBX0FAYOa2AT9nXYG/JGl+n0ioFVVqRS/xKvuzCpV9L8tQwAV4JLK/dGmFAZVguOzqLCARJc
m27ANVL1xpUVScwXMb9dz746FmC/4GZ0XZOXLU6uuF0lrnRm49PzTV3Aj3Y8nibQQ//657D0NPBT
UZ3wLQ9DYoN69wRS60Gb1Exm/W6nQYcr/aOvMVHoPdWOyO+mPNYKsRFa3Q6RXX3lPUH0Zi1z2c6D
8EZr2Uw5V+I1Rdx4SPMNuQQR6KT1TO12UJ+E4EeMV1ftRgidbCHF8yehjedGhjtEWnsI9U/eOWEs
4TrJkW1zru67uqnadwM1UgO7lB9w2Boi3eyw9yIAoHnCZMl7ECMuHHXh93/lO/hBP2TeyVItGWVT
dBMchPVWoDVmW7iKnXI8m07IcsngYX+W1GAPEMvPP7d8DBNksSmeug0O5QPorvFNnYfiLcq6cT9y
bobe30OyF6JZHrmKR7D4a/fwHKZCX1rO2lYxka9mc/Fg0yQ5+irgpRjnvBBoV/JiZSdVxZd4EcLc
Ioc3apq0VTwNJ3Sl/xawT5QKlH+cdLKV+tLJBzm830c70dKptEZ9zuI+bELbUpqk2r5WJkCyzGCo
rbv0UEmgcYHioIDz3NFXT2ac/+ZPpUTggSRmCelXz8HWODfXPJBFO9jiNz+fT46cGjqNusI/ljFS
bR/8yqk0t71w87KfMj83AVf27jwtQ+IDjKLJuH0AzdIeYiMYg7hSqDPJ8fLnMUfzBaaYo19E64C/
Nayjhg3zwIs33Iu/Jx0+sDlykPtoE6aBofPgTtbjCKJ/QB8XocAMfS6QUrjcyqzB923WvRBsSDDP
bZVe+Fek03nLUP5ilTJJ4aGyD4ZaRvESY3NkNeSWLDgn1X4liLmovGccF26NN1ZQiBkcJyQcAn/o
Id5xb8veBc5ViwKqYVjSzm50NQRZo249Pg2zKJg1flXo6WxDORvsfuK1L0FLLazIfLiHm7ur0Wvk
BQJH8jItUVvGNrJu0W4N+XQG3VY8Gbd1tghG9j7quxdecyJCJPvo41l1EQQtHvOYgEZRnhONEAoD
UxoJWiekZ+1Xkm7GLz/Jrwo+ODWNFJTAT4Z1mEo1Vpy9o4b0okBhbttDIGaU/NREMa4Mvk/Q0ooJ
P2Ri3wM2KT9MY/0gpgQebqTEIij7XeXUXxls67FPn55lQHlC+f5dxbCeXtlY+Yc2Pg/sIpl2msF9
CkE4Ac4e63K8KiwQ1Wa9b18ggfQFiNHptwuOWibvKlIIi1DXH2/UnOKm9EdBWSQPfFGzpC26Gznu
2B7DBTfUVKIK8j0s5HKZ000TueY0VMPw2CiawZjSCXAzDkYe+gx3O6pDuFZ+5B9Tc3Fe+NEKDA35
oDTlZ5zEASURUiFhJI/DXiJPGmLn1C9nVLJokGPO2T5Vwu5iQo3JIc01o3BeXRk9ddNy/9xl8loc
pe1SyoF82w7oT9poSon5Yio+umfomtqKvKASZPoqbxlcoNHW9J/llANtBfjchEe5DhrBkEantuCd
Rlw5GtAQV7gMewAHoeOgPrNjP3/23zRnfEs3zW1uBUYgTHaNmcE6/HIDlk4kp7ELSGuUfbdykPSI
4zheMmqMpAr6pGTjz+fsLHp+Xq49JgZq0SYjIhlMkLooM9tTlTlgVrfim7q+DsPdCxUj/NcujyL1
bfKLGO02Ue6lqFZODj7GoBafM5w8oLlB3wbkbqRwzTCva57LhGUGEvD+68KnEZbMPb1WWWUQh4/a
baGblnis9op0+a7Ks55xFALQVQbfNOE0VX7Qobf1U5+7fFilM0Ieq4ZrvRGLuL0QmK6KzNfR43KR
KEd2iq7eOJTUU5BClh7t8tQ1Rq4vBHxYFq6ok4pS488s60RzunmDCeed38y8F+FIQWqbnyzTHvUZ
c5XvEXzRRssvDnU8FtOkqB/GeM5sgMlmaFZC4xZnN+oStyK0kcXhhlFIn72puzqgwN6UJMKP5F/D
U4HIxqCNYVakUHjXtxlRR4wpdh0myQ04vYaN9G7bRMUiXZIgCJJBJnnRe7cw5D0NvbTYB0l/lRJ2
FqCeMXKFxycJBQYTiIUd5/8Kk6H2QwoBbTjAYeOakq17ikR31V+lmFhmTV96CadI/k64JOpaEhcJ
CUE4mHriOUqKVC9C9qdlLAtznCa8d3xKiyAduk8lUkfc+BPhGQRxIxy9R2ZK8WmcTro0vjhsoH4B
1kTBB5lTCKRWCUlnpeuQnruiyjAx+rw5Jp43/qwcm518EAzHjOm+JLL3UXflE645vYyjqDwhgXb+
OrLylg0Ynicb8BqUxSl0Wae8hGwEb5gPhPveel11S/XAADDeeoglfnFVpV3NA1jKTy65amO0xtKq
rAccCrD7WIDJrr5kJS9ygOSXy0PJN29siTjrwa8KgdM73wU9seGb3WSDDdhRuoLdaSpbxl605uCO
wATeQPulufFrkKeOTP83Mxlaw+9CQheYQiSX4bHrc8kDmX23mvFg+JaJzvodPEhtZsTxOJIf0JtF
EIyhJRoKhp9n1BiMtOMnQXxIkqnY+36l0mGymxJzcPtZXwVxsFp0CwPNZ6z2y4zskp+monzp9BWg
zY1xcO3rTlewzODT4tT6ctVOvMBOEvw2dQoE9m07xUVd9qunvdej++8E5a2BRAulcRtaj60raK6X
bu8pwrUsMWIJUhm9ZSimP8Df6GW3Jk2alXuYoakCEfWRCk5ISObbOP26ldcvqK/3ubTnQtRyhgV+
UVmvLuMAx2gl5ydKZ4BHWnCzAC4G0qjBy0p21rXs64oIJvs1Wt+cKPwFu0txGdz0+YUVbfl6UxIm
vaGRmyS54dRuZOdTamCdAi8e3g5Fz9QtbfnBVS6CCCp3/5TWUhlp2+OCTKqCfGAndF57nLO/W4aO
lN/PelyL2GdBenbJh04Z1vaZlomVSY4qzMyMsznw2n73wba7xjRPzmVgCShabiEHB9XIwri2KxUV
RbfpNWdlFJAvy5O/huqMO2SqexIs0N0QqkeTaT1ndjX7FkflS8E5dZx2k+eyW92RRtdfki/Z5wh6
CdsJl8Vy8k3IPjgegjbCe4A+oUZyJJl0PWrizxXTAvH7hZErnHy14oq24w0npSpKfTqDvz3ghRhH
NqOxvg9SZe9eElV/1yF5iQVFgw5aXPzTxaQ1nXcKBnxaDW/f6w0xhFssQceGVyC0+1srsm76D2C3
qhk1tMkt34ZryIdgfC89krKg75DHjnIbViuBxBuRnsFJVC4hhjwNLd5URXTI3uOxbpjSfcNpwhUY
wllFHRkcIVVaFat/LIwRbVtgvlAikt7wo5X26aG4EkTeRBuDzHXt9PpDbAWiaiJJi2egDCo4E1Sn
M6DIXNWmJdfu3dsouhKVxyjVyf4mQAKEtke0Qt9K2VAMK4KTxs3hZVPoRFmU4ZZuZJ+PvbNWDhQC
UnSvUdsAndgT3Fm/Ahl1Ua7VHuMBlETBdh8PTzJ0DeJtM6ZDknEZXi3jkiqO0MGVnE+0GfPlHlUp
o22PXyqrcWLzj26PxDq5lJw0FjAyLvJP6gsT3adDkREqFvxnZG+2V3JE4LP4yxj/0rOxjBQJcau0
swkcMrfTZw57Oh4FDuadj9rRMyNwpnf5sCiaNUSV1Ph8U78NsokUTBNBBu76dVfqGtM7Dkhzypro
2T7pSO+Pa2eQB+aNEbBEkEJQYEgRZpC+UaITFgK7o7VK6yaMcAnjmgdnbG/zDUKc8smPHN7Rd6C5
tHFqXLnoz5qGdlSS188wkSZ+N/+J8NfJyDF7Qu0KgLhfgjChlXeU8TXdOznJH253OSP7ZiaHa5JF
itJRCTVtdhEqEqr1EMn9dARbnLdb5NTlmHoWg51hmX/dWxMzT/O7InJjX2YvbPI51/uKa6GuVIHZ
AQ6gb9y3L1/ESXEL/Flfy9raCou5UoGAKkQ4dkHPxp+ZHMs4sBoV5Adr3phvNaKbISggNNdRr9u6
nVKbFkADvzmCWD7KeCQMIPnlo1vS7qB5Qhjv3ECJu8WzPFJj1LKpFDTYsfV6RM8S/dkL2xZ8dELB
NhqJ9OLHWndQNQkAeRD2xHEtS0i6FkqP0CtMhs+SkLCDhPF+cDTyus51T/fHwd93Ho+HYuNzHre9
2F8yaOQpQY2B6ypVH6fn2nD5FaDe0OTIMWHx0pMov7yfMI7LYfIcyiuu+g1rDuk/Y/ezEWqFQvxx
gfmCnP/b7Tavij5IYR+OJm3O0JgHLu1zPSzJ0qT5T3XEGEJc3bxC09g1E2rhFQMDSW28AozxiItV
10WtiieyVQp44Pp6x58y1cSdEJQc3jbNxOhseVcQ4CjKLYH+DqJtxgI6CWf1EKo84r0BFMSuyMIP
fZN80Mj9aodOKSL35237Efltv+C4ehMgP7SAIbjMYYKL4Qmd4ApqoApRN4NELvc79QXl9Kz55pH4
oCvfjsuv5FrLwHyBAWnzYwFecvJpNg1v3fnRftYOto44y+0msJY1nHWPvWx+myZyNtZi9Lpxlgtz
QBTbAAW05/xaU/IoyXXgxnlFknYgNwyhNxqm/6h4CbWdfALWq6gR5hBVmV4iAdzWkhZihddkvOzX
VkXqmlQvTMPh1FDx84m7wNNpJij0o0iR3fM0w6sRL7vXQdsHBwYRq2UZIN1eR3o0YD60lIR0IWVH
/J/PrpzloFe1xCOwFZV7jS4odYhfH6T3nNIlrGVFYm6vkd66A5rr2PEjr0hP5WDlkiMoLzIxOfmy
KSVzmhomKpvIFAqEaCzp9ngz7qfM5YaKXEey0aU8S8HgXq5yB5C6kAJ+dWnmVPGuMZplNKdiIwnn
4UW6YeUF1dC8jfy88xvSXkmgwWCzHFLuumOBaQ4rBZbAtR/qc/fSW7jpz7lo4VkXkUYERni+SDHy
yy4Cu5paQCWyw0e/sz+j4DHyaFhn0O0s7/PT6NOihQ6Kw0x4R8lEI340cl0ONvPM9iYDzsicsdid
cyHBSUCdROme8yWr3XluxxRyb02PeTNesiWi8HRBz5q+tJ4zC9W4RWQRmuHEsU6SdX93TPjMSnNr
KvOWGkEdI2PTkvznhMRNLlFkHur3zsoNSI4+LZHkEHQqKm7PkEHc0GWuFufBlx+p1A1mO6g1p1g9
ixw9K7DokPX8xMT8H6M2XFCJgBSObHlBNzJXNlc3SnZHQiR2Aviyh4oLNjgjiwttmFXhSS+2DpIZ
rRrQLd5wCby5MwL2UWitvbj/eWfRKgwBSujM8GjxXkV13VU8YpMT8EcuNgA6RIWjyEszAjrXUlaS
wX3+eJ7Jcm8UC15mWuUS06PzRZxvU4Hlk9L/7y33fe90bMf02zTkc7sryHia0CL+oi+AJb9xR/E+
TQ95y1YHFEd97LdnGocsQISXRxpQByr6Y9Y4V5xsg619FEwAEh9AOuuD6KP/LvGEPVAVyTHCk5+X
htA5x+yxH3evPN4s7gi1L7X2pinb/EYt3hnuLWK8xgDGpORrvNyLjevaki9OWqxLD2o9SjGUivsI
v62QLNI1aDXFYdYyfUFeQ+RL/81TdzGl49c+tUllC/ZwxLhkwZq7ulanL1sCrod1b3EMJvSwlgv6
AP+nFXGNaVF1ZZFDWRlM8BEuFict16p6oa/0yVqJNLXKpBjopnV18zw940rL+Vq6WYHDE5Dfx8d4
toWUDWsm50gm2LjUmZcSNSNIVrsh9/48ADL3sNraSR/TOtIWM3E6ZhklVuQ7T+6IknvaDNBMHWSj
cLSGF//TY5CBM8NmrVs+LWFRQ408FsJT7B3qLvqluMYnEDn1jiaUCscD1ffRTGODT1hbIOgMq5Kd
E2160uMWxS1G2xQiQF2JPgCpIad/yQoS+5y5eLwP8fIGsEGFLJoXKTs4SqZSjmO3nxy8wFMSwACa
bnVY87/03xVbMYUeU8uWqGz6iGvuYCXlEbtGccJm2afqjFPgyp5vJEX5wuyxmLBVe7gM9yrDmVhN
5w8GOcuQHRqhBtGgH+IgfwoKObtrRuw94yhG/LxDrPLsnlcLw8B9+uWA9DreMBp/oAN4ZeCUZ27Y
+GMyY5YBzo0+VBegB53GUjUcyuHi7wFqzMwIHtg973//ZAoX5HeJ6PFK/33nRRBmSPJ4Fc6xhsu1
yLpGHsjlXKrJBEo4c54stJQ1O5Z14Uva33XeXvIOE4M0exCo+YSeOSeBEg0rAUI31Jy4k5yidP3w
C1y/QoLUec4QIGS9wjACl+yvAG4vpGgHim5LJbxyINr+mLpa7dEbGtvOJN9hWtpzr91tLcMj1YDh
a6VI7y8gjW6Qf5ccw/s3vAcjgFpRuspqLUh5ZknjS+HqGagvautX3CVzMYa7iqNERsi37Lxswp7J
F/k7fV6+wV4gc7tPUQnO0DYSCyvi/qlomnHOTkgtcKFBWjwdY2vbStvjTdDTP39ousc1NMArD4GZ
cmZal/wosnzkK/S4paWO47g76RkrVhd1b/2lDq9HQv3Xp2Vth+8s4NZhRyhBXtv8rhz8kWrYPXNZ
X6QSWyV14qQxowq9x+6GEY3ULxYAu9ia3ExGTmirniusyKRXK1Ca7uM2a6/dBAULDO5OSDR0fPCz
1KX5VKQsHHWy7TlMR/+YNTK8SZ5uN8js2M5Dv67l+JW8ii5LLIWltzi0pSGFiOvj2tqK/hT1yupH
5ELXZXR5dCFLurZfZL5v3tfW/hWfRr7NbAc03HV3klbaf8mGpyRZjh3Ho/jfsJKH8b7zCmOnDxxE
UUf7knw7Gd6PUqlpqUrrKDui2Gwq1zUmxj3+PbMb4s0bPtmHEEMsvYXijWUiLY36oYRnaC03rQoB
k/aH3knbKpKzNKquXOKbBER8iNnwjA7m46/eBXgPzejL2HcJ2EDTXa25G5BT4IdOzfwrgdwwqcYR
86NFfXduLakcAjLvadDysNqlVLOUqQ7H9H1ifWUWfZJG02ozLajz7/gCncJHP0NjxE5I0y4BXoNt
APUtTfQIc0Mby6Mj2gvJQv3iyr9h2ElyXp3436y0b611g80BNXunDjeQKO0oifN/3nrAPIyCCSn8
6R5wnFDDvttVYXtnZoiuVDiDyzW4rqTMi+x48zGNvw9nzLNbzHO4a02bRcZO+gqeWGqJL3wYsFp+
oKZVDmo8kdVCWKfkQJ/tUgsdTOULdpDc8BNk9l5zAeghyp7tTgn+WISwOBJ1lVpLv2sdqi4rdrt/
tEag58IZzp/TkZkW8QmeWVVoWB1Ekch02WLTU+OdTBV2cT9ANqeUQB+NTb3lKdysWrLERKgyFepK
1lEA2+MCBbV5bmcis7TBF9M0Dd42TU2nyai+FpwelWC8z+UGa4nSnSge461eBJ0+zJxMwyVpHJPJ
yYjOrEgN02pwUaFFbqCvmbScX5V2A3eYkGLUpFfrUeAbnDm+v9JsjnYI0dgb18hi+RednKQu8Bti
3m40fAiLrO2136LsIH/62Exth40V0pR9yFlLrDCJMlHmeJhz9v75bKSyMM5Ie3jYHy6zDUl+Kjzd
sxgT1Glt75Y0uHWxzRuzu0IMVL8QUvLfB+u2ZtkdwLXaiCDmMOYQqgm5VMcazhh9WiofOyM2hvhS
5mIcOiw9TrD8LCNNymPzTZWjZQWnSWQlSpfh386vlXjffVob9FQ31fHp5C9LlHoQcGtfu3ZfO+9q
L4xWT/hJm74awAjGYN0HYHxla5D3xHcTTIcdeuY2g6eqcYzkwIYf57d4kId3rTt+hibskXWoG8rZ
4DtN5N4JndIA67bNrp5oSBYWhp/m1SE469jEOi5CsGkjGq6rqtC+5T7JzlxF7l7SyEtQ3eqt/ujR
0sUDj3cpjohlfRKW7BsLVmbbj2QtefOwcbHjtXzRJXsL6NzKDWawPEYuTNLQfLK/o6u2dAZ2EKUE
jht4vOSKY0qlWq33wrUP0fs11Z6D781oeWXTeVXiC82V4D94yQ7Cbxp/7h7dwFvb/lCwaaICxD0C
kmlPZK/0HH6yc02gODgrFlAJKk87fyPOkQeE/l5kFRgnv5qKRsjQK5J62ZS+uubEg6ygpjEwQc45
lEqNtDFCnB/C8DWlC8QglY8bkjauzyUzPO4yMGfIholwLcjfPDbpVT9mmZb49sAxpGzDlsNN1xCT
icF+8TvZdrR0RYGiXjp0G/6BzMOcMURIPWRGbuyvEWyqEKk+JeaVHaq4ToGHy1/Mb+oZLwav2m8F
qv4mEg3pPe9FI1xMY6BddTuVQtf3HjRJxWxNUgsfhv8QHl8Evyxii4rgQCb4YzoKqEhEGLucR2Ww
A2V8fSjkZf1bfn8G0nrKQ1wRIcV0hKwPPAYoo8v3zsox1AlsGi/GMghbXwVpbc2erTzSOcVY/mPr
ejb/z8y0l7Co4aXTpzIl51boAhcgGuHUaQGcA4EJ9u74+X7xNoYRXy8YQVwq5wlWUOSE9IrvC8NC
d7rP+5hbF/+Wlaf0o5NyWTH9PS4GCoLMrR/pR4gSTGh2t7TQ6de57t7107aKuZ5pmqq1CkUJwy7t
gl9lHi0KmRo83RPEUZnM5gYxmQkiYNb009PWghS1moKBcPLU2g+Q7bPvcQyUqQ2kbNW9IZnLT3st
zkMBoPEqg0xJZiARIjjrbwut8oAa8FbF1Q+wFz4TR0CLaMuih0BHEW0I3sZIF7+sBInggGHEJhdx
TlG490yKMvXy7qMVd0HxZDBHF4UWK6nrEIJkQaavmluuQ8m/Ob1wTQqaPz94HctkBpk7Il2B6Yyw
nLDEmccMBSFqxlST3wHu8H30Ta/opGViJdGdKXFb2fs6yMX4iQYYGqDeWqoZXZ+PJ1k5HnItkYtA
SeG+ywumeMHy8C+HFGL5zB4+71vPlM6H2nqOFuPA0/GAwU9+SkVsfwfthB7Zq5bmSRsN0jE9g/ml
8MR54WpVE2UTpglp8yGQ0jjXAP63cOP2vXZ5JyHGp/U32rrK9hhXl20sc9+QfIFqQCacbYuLR0on
nFxL/EaUUvErKQIZn0XT/0bFuquyr0Kue08AFSER6UjSNN8CiW0Xtx9D6xRNbeye5Thjp2vyYblJ
suuvQuLVuisuIHqDZGaPlyM3avZlwGGg12ZlpK7rUOArHer0WjGOjjhdfpIX3IWFqYxdu4SYath+
bjgeZ6gT0yo1CDqbNz958Hl75jHT1fxaqkNCyjfd/4sCk9h9Xgr7Xfw7CAAEjx1hi57Qhf104zkE
wFh4deP7Lnmbe06X8SXrISxC2wPi2XH1/io9RgQvwYstLq4toadDzQyPSBWPC6czSv9LXTsccTAr
6Hfyo9TBizZU6J6GSjbioL/niwxOfplaTBZaAfIgG/hv2olHmeqvmS/EXzkB76XE16JKM+sU4m64
0IYm4J33uX30mcFYwDBiwQoQDpjgsO+yArHIp8Bu0XL8FBCC/gbagFKE4ZT2AmM9GO4DherLelVF
gSFdGLmIpI6FGFFpZtED6xYAXqbp3LrePV8jb88c/BxE43so1h1+u5HfP8TynBJm1GwLXUTBII7h
ulxYjT9ReOTcZO6Gjn/k2z/lhnn9aWKHfX6VYBKSpMZdpvob3pm0tPFLfEfx31arWWPozjDBaCgv
SqJP4Wzv+BaocE+qllFr58CkLd9rbpC+m5CNCpmb8mk63ire7Nlgf76FishB7uAU9/riZewdgKUa
1eFr9TAXs485frDBgZxjcL2TiJICngdF7/yHulaFDCzJYt5VRLQVnAqxqG4x3uW3AkeR4vibBUo7
iEelvY5tpMnuXzk5QkFIOWoRSPocEuO/OPbZZaRL7NgBbO/HdBIE+NN5II5igMI5IuPhRTQWeFyK
dhoFy4tkrlN2B3cL7euDpAuPqakROkkWof4ezGUmsKyUf6++PGvwJBDjKuyzyEW7lytTNGLdX9eL
wCKUwpXxui0iZNNhk924XEfFqH1YvjhA4xbz/jJRC09ZvFlJDUPJpCuUdPhUz/waIJGg4mnK6wnn
Bf7YPy6jH7IldgQm2rM8sMS5aOemYM1+YRCkjNH4hpfQpvTpclr2YmWR1/UU7hJVs0AkYkIESJak
tLxx7MD1JjzUUsKw1aVRhhUA4Y9Tq/3VFq8LguWdBQVrM+rFhw4/i0HlobWoip4IqPDG+Qt22ABV
Qsh4vEto41StBAsIvcgDhiRlju7Wb3kbtyVvMDQjWDtCCWbWOuSKnpu0JtbtlZJmjjTiHQ7ocOVk
fAgJ6ngTLABYqperorOwcGOFyG17YZU46u1RIw00djOuLi8R9OHSpZyCe3nAZIbTxXiaBMTdVnka
O6KbbmM2buXRQHnzl4wq+SqxIeh6bqPxtPJ82518TZnJPOKw559eaBJYa6OmsXHd5fJ8qBrY6ICW
zPimBWdLHX6I6jmHJszIkj1nJSP/OuH4RhTBb0vpK4wcq9OZz0Vr3kE2hcSEZcpEyCZxTl1hFJ8s
JKYYFDskJnkmIFDYEU9mqo4CEttF6RAsHHeYXIZydXdcaDBw566XN26aw4H217R3xJROC2+Afn24
jCj66yHma0/sjWGNO4ufgLOSpTTZMTH0uh7uGU+x+tk/lA1DWV27zy16ZH4AZdq6s6yMDIwkEkQH
+7Q/qn3UBtxgTsruuSPO0+Wy7m58NOHBWdHeAN5u/jTFUrj6Jn+q/zSs4yX3TPn8EQHmPOnlF5f3
yzZQLWrm51AyJIPLo7JGFIITZf92SYMubLi3OGpd3xbCYtqGki+P9bzhl4Z/Cfeh/xn7clTKLegD
r/yCcLDwtV5sBcEA6+TeHoPILCkJ5jCBmgfBiSd9Z9QFMjwSN1Plf6PnybZNwzrVglODgg1n50Nj
daAKzdILELUwffDsHYQzvT/AMOXf2j0F7/1YAHXoj2A4Q0bC9j/9DFP3KuvGLJ50Gc7UyvFt3GbY
SvbAWH37NG6vbve5FKcUNakCyblcOfrrs2MhwseNtfSr1sQNRPBrjsmdVflcGoNH3/QHaUwQ6xA2
VZ8iYjn/MdgH73iw7YwPX91kg6IAbcFBtqhtfzWnO4AZ0x9zjS7PcDbR1Ju6BYEI4Ti0eKhB/ppR
bRzwtUrovXhnZIcRu4SWBuEsqI7x2Q4pWQoKbrtSu0JY0r5rkg/kfZ12Vg72VZFL0Z7lwqqWIc2s
hwjYoST23l687ELEpX5zCAEgPrCV0n199AWaHCitxEYWmddnnLoZtSYCewUvQIkfPeV+fK5BTCvT
HWpdNjvKdIkn2wpP2YeyVMvGV82KTVzXQxFS1lEz9aSTxoaUj/Bk+bb2kNmr6uF+5ABKJp7ohK1Z
iWcLgnT0DNTOeTehkWeH/ZABtTBQIZ+ALf27YFJ6Mhc5GugbrhfdQU+dN92LApeclHQAT5gvpD3O
AZTSY50oM1E5J0I1Ur/BHl5uaKdjHxaddZA8AvxukJvDlNhqtzeyo2i2Kdm68D1kfc4oThP4R1eO
k4nGu2Ow4ggm5xI2N1il00zrjsZLokFsyMQrUIHsnaAT4NbHvwGvR4Cfyog3LrSfyPEEWHrKDplW
7DYtZjLkEeqKk0X0hSoPIRpaAS3nTIcrl/MTiuwLEOkKh5nYhfnLDQJdO7tDnWqQq2En3qtmzdXE
u/94+WKNBRUz7P3Wbnrtgoa4kzWU/pVeQ01aeElelPFRYIaoYdusbMZ8/HHXl5z6sPi7XeszeQ8r
qeudv2/87BSWIhxcESbqK3vC3wsh6K9qbLWWsHLQ5WYVrVgSa1tuBRyuRzqD+JANLQLM164rVB+4
6gCSG+nTcjgk2UZ9s1rbaYqSoi+maquqshHZEvuE+vzYIGqQfBIc9zFzm3/Gm/nKukrvJj8WYOkM
X7RVRU3IyFj2OyeWTmTad0xb5VyPLIZJF+1SeA2ZMRQrQYy4/UcH0LYx0ddElIF/CsnhB6L/wd6a
Pn23fQpPjnmnqd6yjgXJIWThkJxklMLI2AmN0/pQ1hys+WRSvUwto4N2SsFvHgeaITLtrNeJO+uf
9xPj6briOFZ6TAdTV5ep6hkbIjKELKGd5LwH9ukUb/lHBCcTLcqAbEFKwXmjhcRG106UQL3qykZT
L1M2gpS/I+33ilNs6+kw+ffRd7YFcd0O9g7+iQB6Na5ZiUuAgK4KJbOpltKRPAXRwX3Ow8gdoLb2
jjS525ztfQe4OKvxoFJAXkbk+o+EluOCxPhHRb1o3QE6xY/dfRIzNhPD9yWdIV02i2xLSAf6tdqM
y8n4Y+e7kg9KrjIDGLXQcVnFCq8/P11YSOioZTonmdflDRjckVfajLhR0F9I16VTW9qovZSG6/oq
BuSFrLzfOR8+0IdNKTPsppMh1ORwVGJ5tKLGLfMh3hQZ2d7bwTFqgv5DIW5m3EArOUgfMIOpeq9Q
H9F5XAiRmiJZeOLpbQo0ME9uNL3ky1T8az3nJxBYkA9MGJ0SL93vkleAnoDxjux+VJ0Eirnmf7YW
PLSHyB0kRLcTjjF0iWA1GkT92QYNYLG/uWlHIcxe1LuI28AU4FfJ0GA/yj1m4GMawARtC5/uH7NT
vzrv7v/gNF4H9ADCsJAdcbOyZ2Hh+KEZ1upbcmN1KBob5cWdQV1+IfWF6l9xH6Cr7QqZyAUJXnd2
8djvsvy6lGmSmqmN8BIqAVx//6XO6qb05cf77+BuGZa6crRiNhAbUbRkhpOkS8LAwaDNcJ6oJ3Qq
NXhrWyMz/MMph52AtITIC5Vq8Cx7Rg4PNsgRFYtApEI1n+zM9872ONH93UoZHSHyew7IsEA5G4LD
SpdYgeq+eEfX/y/3c2qjtbWdGAxmm7xqxDRv9HD9Ou4O161wTpU04DCEnCqFDoBFOgz/hjfohl0y
rlkdU0+BcMuW8CoBvWDnar1aQdLVyamWkZtb4VbDo6E/GqHHXpzUaCAqCaw3IVBpPIL0MzECP97h
2yXtWnsMCT7QQmUQymBjRckmfG5d/w4GH4x+y3B84iqpw1r9QWRofh/PzYwLMEQVt8bjHVCCcfjT
f2Wgn6SHmrurtUqiPf9S3KpVfR+b6ukABzx//aVyouIrCSVXXAJ7Do5i9zf8C34xSZb9+paArZle
TQrSdr/QExAJwFSeQPpo7rmegrh0gIxLxekPv6Mmhvq7MUT4NMUhKc6OvKdwHTSTGA+/20PgDn53
XmTqH79SZgmZ/HbZqaHnD5Ay225M2yF+FEEUBz1J00csHfCkV3rDfZFm+0qI0UNjwmKT9BqVqa0F
MIiXt0v/uhjb4vblcMxLTqQDKyU2VQU7L6mAEWVAvbdD0DaafZ9cwPf34qkpywjehw0LCcDYgL0L
F55uVKx6rznmF8zCBvU6BDHDRHka4tnB49o8R7tcHVz+0I7wa2o7DCs3f1KXhwc+ZG7frR49iZNI
UFX9EFqlkAEhtdukT/ixJ8gnjItPbZksqGUq3uSkTd5AGo/4PwZNoSImiCTwxW9o25xzAKeOcAm7
Jjch9sNXSTpv+L+tXrOSjCQihOOBgxDBFUz36uiBMPf/3Bu7fZ0PDaAUwcPXnqNTdR/Za6OTIObo
Zu/fy8yqsnLyicw8Y16D8b9CQfHiLla1qu6tXtgKCq3In6DPMvAag//Jd1CFqSUWC2v//6M13uWZ
n0EBVHxTP1KOs3R5d2iEEBKMlCiFkl93uzQ/pU7R3XcD6moXVDcZdl61HbwUlL1B6/wIv/uTxq4C
4R35gVqh9B0o5/YrLUwr65C/giWfRhuaifhBFwbOwFyLlG5Ej9bEWOK9ql4dAsrN/ZFKGM1UzOi3
l4+YYUYgjXfa683mt+wQiy2xJaLOMPv6gYn4nXaxR0Dn2/2jJCbcRCPzDwFDNFAy9DVJZu2ymKM+
TJ8I6S5qkrIH58mp1kLblU42cjpH/ZxgqlaFtsb7RKqdXOr7pugSrUzMN/zR69AapUve5BENeakS
+6p3e5HNiK0ccD6EG7pl3LGUmvrUQaOWzfy2tAvCHYTdi/SkXIDW+1XA7lS09squu1AJNKBQO5TA
IEFPDrJ0lFVCQoMZC7LDL7umOmPKB4YCrZBYzMcu6/5itheHdfIMIiKN3Ww7joV7E9X4vyfzyBo0
54G3nVpEafe8FP69C0hB1G4EeeIYhvmIqgXwp8BTOJ7AQcCXH8eH0m9KH24ps4ZdKTrnUMEu3DGJ
TT6BwsnUp4EpkDu6Js/mrTXmbd4aUAZoPVxRk3mr0cNiQcmS3fdsNxUAvY8kox1qCDdo7LnVzTbp
5/VWhJDWgK4uh+/J55Adv8vBZTHvJrWRMiTrh3ZxL0MSZ9wLGjN+tW/ar8s8lZp6wcObD8nsLsus
tHn3X5bTQwzLV0qPLVvh1TfQJ01iXha56E/fysXbypYieiZhFpIyV2vKKFviep+IZzY/Z8TyxMfN
+davBwlXl+g6kcv8bVYns8aXRnuR73OO70Z4D7meT60fFjeymGoJ6S56QsLT2I0T24R0kXdXjFKP
r49bnKoTF2Q2FJt50SOR5NZG3bDcIey3VMFt/MIzDKnjLgVv0rbCeWeqrbRq/m+80ot5mWfo4lwg
fZI78ABJ9BGjgFjHwUbGa1AX6M9ZwgNERuTNq9KUcUDYpMzRrwwz1PnnJuDCghpQU8LKYc/EOCPQ
DcdbGTfBVzKaR/d3MpcVa7u15xevOdJY73awLzGmxL02BHCM6DbtiCZQU8dx0CcJje9HEnU6bpXD
XrtUy+ECGEdrisFZYYORNMet5Yk2tyo7/YI3yWrcs0fEqeRdTKyLm/YM4ho5sFQYLFR08uZJIgT+
Y5FE6A3oAAms/0MpLrQeKL6I52Bngb2V1LF3aADDBnDvrrsclnNQJhY3ZsNbK0u2rEvo9Rk00/Ch
tR5H0339sCiRvbcgU3xaFqZlbPH/B027izVY7Xowy43InhOfV6s8WyYAhn+UzBPckjTp+gye5fBI
mvI6u1Q8tWqgFPXnrM8FzXN/2u71itdUCMDDn1Ai9tylxDLUTXsaLCa5zFGMsSZZHInVdqPm9t8t
bcqLh3W4SKS7DXjwgMCJfYEww8KSS1pmji0+2zglaO6K6DHIn9JYmGOvxqUe4Ei1qVBTvVKUAu+X
mRyt9l5Y4u7K/cKVyGno0YN0+Krt/67GXKQxGQhK5HMawUC4gi729LiQepNBvF5IvWUqRk+eV8eU
FsMDlqHaRbG79/gGXocsa5ycddM6z9BqoSVrAb+2HvtVA0rqtWYU7ZLfbIkWsfTVypI4f+Hzn4xL
/zzjrS34JQkTVj7irsza+U6ri4P4kfepqDIAalHuccwR0O4kcgX0PZe9Q3hPxBh6T3Y5FG2ODAkG
FTpVj10O3qsykWIBdPvtQI3ycPABmIFvcfbyjsDFxWLE2TUcr+2HudXdxCwbfH9WDxvYPdBPSAgf
I9jSvSz/mmjfkqcwp78d+dVbl5xkLuk/4S5U2LAxWzmKOGl/NSKqBQMSWQ2K2Ny02ym4ly5ykQAA
BoqDKw0pMY0dsBXrA/medE8Y7rMf2F/03sPwmEya1FcAcIxoeOqyLt3gAfHvzuzsVYCgn0+hnaKZ
1uTSxR88mWHFzEWU/L4Wtnmqdh6/YeQYYRvvWhP6tBrfx5NM99wwn630NoIz48Yiqn6QOsKGtWye
Mlu/InHciUOdSx0iEV+E+oHKVQ13jzfSi2j44mZxEQTW3BQP/Ec7AfNXqj4lktBFDM0NXo+EMv5x
XbPyVA0zVW6Y8cpQjpmenFOcy/671G9qDxNTDqtwFf8RCvWMryGieh/DBTwtlykAR8L9D9UW+6jG
ck4tyFOsc39PL6bAV1vurNH5wmNbjVK9wuKDoeFo3ocdUSiU+nb3mS7pS/jCNJU+M1nVdyOoxLnB
MSpScXal2YbpfWhNEhSe4vMztt0R/JwF1fJQxjsIjgVSdHSfQGSDcCJQClabO4cLYrX9BjrLEOeu
Ua17kgnBf7p1s/iF6BiF0ziruVPJwdXdrm9t/FW93iC3cLrgQhRquCb3Bx3k4hhdP19unVWbkCdS
UspjJ4Of1eH+RIwjpThHS1JVbJHR2rTP8nsoUg8hhqxVQoUcn6FSyuMJDqfJB1D2GEgXYDab1jHG
nOt98fWkh/NlUVkg1io+fILeUFB2crqnCz5Px60BE4Ge5fjJKiXa18uwNyQTc6WLanmoo6S29sbH
NIdRi7G4JUvq877w6J2C14aI+rmrh+nBaNwklDr93DTIVGlOS2q5xqWEj3/t1hXtAwyHW0Rnl8Z3
4ugMqpuQ+g5uDJho8plR6aw4ntKIYddBxsXYIAVZ3no37L3ZV3r9xc42ezsy7d1sH40pYUMnTo0d
Cd+cPNfJdjELmCNX2w2TMgX2xTSvfxhE5+jWSfUjaOc2uQshhK6iLQZMCSSAn1S87gE8mmDQP3eF
rYvPrgyd/YB4r0B6mWt2HEdcOehey0aVQzLOqpnzlXNWREoQXJJZWvMxgPng7D+0uvbF+29yIm3H
0b/THQqGlJOJPB4cMjk9ZVSs7gbVM+Z2XpgTlQI9DfzslLV4tcSwRzxuexmVoVWkixJ3V+yTew8i
jEoW64VloEj1qtk839Dg6qNbg8n0HQKugXsCEbeiPWG3XC/+8+IaiQfXqq2UTs+qo03x7hiyGq9M
OWIZT7Ifb8XwjudqNz5y7xIRBycjiWoiKjU87eQuQNHB9kNtFGB52Y1SmUzcLd9g8lDumcxrzytC
Rwl6JS+ksUYPWTcXaKzR0T/4SqHh/wTduV+H/T7mo5fhKC9Q4ymU49i9a97rX6aw7ir5zsZGBDZk
9U0FspJMFNP4DpShhOjC5zSNI6EAwCwaqGXCoAPZwnLld+Kblcp4ncWlPS4WJ2YbjXgq87b7NS7c
GPLYKI0TjfRFaKj5oL1PcS7fpV3NMHc4xrCv8kcdzdU4dqttGy6GGpfj1wkqLvV3l/6PcYfIOM9N
5W3nP+iL0TjQkCvIGGIOUPhqcIUiYIZ3X9OiLh0BDSFvfZzdMNg3BSlFC4HFJznR0+ZqE7r4ffjQ
1DLSpkYaTuy9BHSCpMIL+UWEVaviUISx2jUjYqi4+6KH/RdNcxje2M6fPQ+3kIHc5+2GmoJot0UZ
yNt7q1zaWVWtVNzep6uV7H747Ex1DEPbI5jFuDguCDk8rud3ptj+eDIUiRRdwvxS3Wt6oetMwDyQ
T2UjxHMIM50WE+NyvGM5v4LT++/14w+ZjiG4Ul4T/2wGg37ObbfcQriey3/QYxOaTn/EdaLhJk08
+igsLtN5y0Pp+lGURNVjDYI1MymQoiR1sGEvIyn7O0NZ0aXntxo/SU6dVxKX3WMfSJJmGXQJUrfn
GNpSErjvdK9o7wAypmUlXC7PrKOGa846xeVtqLDdgqnR1NMrbDe1gLpvrvHutYiwLdyP9ZW50Mfj
NBKoLI8QqL02vQDWahU/8nnPPVJ8RbV7hjXOV5NQNb2IkDE+vRSxCNclxr7ry4l9ukSisNkQ9RPM
PHT1u3tJ4yIjD5rTzNe5AKbfWx3mB7BerCUVRAQhO7B2rWiJIyngX/4e3s9PeZULwwc0wxT76IpX
6A9NIEFJOCS/IHMa6K3eXy/cG+Pp7H2bhIGsSJHqW207jZ9qYQ9Blt8BPPfbShlvoBdAwgU4nLkI
7XAZXb6uzClAyR9CwGiCXh+JpcaurOwIPzCMqJ8ge1RzNBhrGHD92Bxe4ZD7MxGYygDctWORcIzu
kqF0K1UQfc67JdA3qbz4CObQSxpLMhRzZFGSWOab4Ssf9/GgJpwtZ4M4d1AK69Ct5BiF6Z7RoHDr
TbcgnJD5GQmdJCWXnbvRJPJwNsyGskaA44MnfyeW45TW/RL4GJEPoYUao70KkyDkB8HCnfLdv5DJ
s+puXwYsZHQNMqcRpBCHz+47aFtR/rao/JU4OrGqS9xPeHa+KlmAY+VYhrduuFyqeuw0tXHnW8zR
yuHjYziig3F8y1drMTyRcG5d7v7/rF4XkL/QWc1zBqBbK0pimUL6/sREnqz/nqdkiWEJ93nNVbVw
9xE5E75QnnhhhOhIAWrbcqG8f81Mnd30i4JosNrqjqnJ+dQo3YVVngQ52vr1Tz8oo3MdWIBrWT7g
zWk5hfZ+g+QgdojACmnSN8YJcOGOTjRziNwbWJ7uqIjy2aYizLfjpvOTiY7OzKDVqr5T+YK6faIc
DBAGKN6xKmrk4s85pY4Ua9qsjEDo5EPkUJMbHHDFFgmFpri0hJrFWykXhbWKIt4AWgE7qtzCpvR3
8P+LKLewiN8VnDDJq/Gtzt0e6sbGGjx5YxB75OQOdSF7Uz/VWs/HqO3jJIfPOCuAQcNMLVbFQIJC
wlid6ARWkY0/Hytu/GwXvck1yO/xMXrp10/Oorpx7aT3923h+N142sf6hvEyIW1AMuNj1fkT5NHr
ZMMY5L2qIP6fAi9N2a5J/HldwXeGGte+516nyiHR6KHIa3hOgedEJmmg3L17cM1RDBoJRILygwqK
3Se7yFQl28064BIj46iU2EEoTcJ/RwGbb8Yx5ik7wxtUmIt5sqILNmvwYzgJZxdH2pcbjHlQ8+do
t/+J+YkVUtaSc+gvp70wX6ahhqLqCp36CS1eiyXcCQ1Cb1MZ0wZ9GOQmkVzQYAzhgGOn3xZdtf/s
JXP+QVFgxfnziz1Tq642VgKj0BQVSobF9KxkL351bb0DH8MFMm5U7cJf8K2nuPpDJU0jQik1lqTx
tlFP/F2YAv3yDHoh/QjXtHvNI374EQu4wlii+l4YVa3Vj8d+nATllQEZIoKCS2P1MkdHDG72V2wH
6qPwx0Lb6C1tg2KereeYnzQkvLe39iPrO6qM8B+pUTcBjrxwR3/zuIZ0h8dbLXU3jyHaUSyPo/Nr
o2NOjIu179eg3Q5C0C8fKLHyxWj1qNmNDpIRnlqmHYwpklGQLg+j4DDrOPANhcBZ1oztX4UN8h23
dwbdaPTzBEXq7uHYNIzfNdX0dz1eV2/n78CrSjXB8B0TbyHcEgyO5neD7lrMs/xpbE7w63hyLowJ
CUARnpXBZAU+NiuEubvhe6OpkLPJs/CsqVsUYzEqf8r409hghA7S4amOAcO0IPPr4P8hOVK2ON/B
AiJrXlhu4TJ5TjGeILqqwI3Z9nHy/6wJtr95SPcKcllBsk88b/bvghX6T9cGpQguPIuM8pyx1FUS
yU+TXO29E1xMAIxvhOLJRmZ93E/tX0QMtJ3HM10b+LBEzOwKksyc7gcfL8kD/8uZibR1MAitZyhQ
ZxqKmvNTg6lLa3jEf5VTDmShXHd5hCyilReLDtP6lWJQG691ZOFE0ZNxLTS8I7RHSOhzbxG5MMEm
zMLvPNkUlGrnya2YzdfB91d5mAe5PkYYFpECBs9VlFspP8nMJLaxSqC512TRnCphbFP3i5zrOeA8
VcGfPYRKY24dZei1i211or/7u7kwy7SRwXRvkcDgVPnEz2Ru6ZLPJ0FN/nOEy4hGV535G5b8wFWz
HHyeAhQkfhi5Yvm2O1gnvsYit5CgwUGrzx+xMHH0wCX+499q1lDib4Znbr9gROuIDlttD/+iB7OU
dup+YSMk3cYG12z07HFMyPuDi9/f+0QSQcaq8oiV5/4ys2dQs3O4RLfLsER7svLAL+bZA6fUfAvi
jYaXX7hOLM+49Lj6A5GgLT0l1kL9d9yH/OAA8GnYBMCJbv4wcLUbJbLhjpl+RORwxXK8Z37hFTs8
4kL9meGWYcQhyciLYl/1CZ11ShHO4QOo1PL0J/al58k+bcMM8jFXc1XRcIVuJqum2as7SE9gLXQ3
bNxSouBDT49HqI4zGqsD4g9jg49Wp7EBY50YjH3lUC891rkLJG05QgSaPJkZkZw1FVSGLlh0D1d5
KmtJPgTn2LFUX5A+KZVPCeLaQkrL+4htlmRFyi9C1537FH/egnan4SXeZpRM02UxMc2NsVBMYn0O
7XnTdi2VPM4rGoijKy3yIEL+8FGSZWW9Zd2wa/iNnInbgw7jwyZoTp0r+f0JiMylbaJ7eBcKj8SJ
GWf9AqMPitQAjf2Va1Z0PxHJ3SZHpRQdtaNp+DK942mCkaUlDlIiwl+fvTZZdqIcqMulcbs1FDnb
gqrW0rkh8O1+rurS1F+DRH9o8LP0BGN3wR9TC+6EWIchIvannPuMa2Cakp88IexQ8jQC4MKLgowj
pyN34KZdeAvlko3MTa8hDa2uqH05cEStuiEzS5whJ634C1OM/xlY5GPi0IITWuwPsqnkd8t8HKuV
9yDh+myrWdnBQ0D8DmP0rRae3H9kvWVEF7xQp+ONadqsiPwE6K1QeSBUKg9n0ASSkZShu02S3Glf
CZ+34H3C+3sSIYpGpHdIwGYZDPQxpbAcwW+U6CpF/YLoQtL81i4GVNN7ehFODy67ShKVNbtWIZiK
sxVCS41k4OcTUkAYLgvEu3nO46E1u4AOOjoHgXO+pwlOSY8c9Uf06yAHoq2hBthdTjy34qtwhERq
nfOZ61VfLGNXia+61qqYpif5M/BQ56AUHbd6OoqDY0TlzzrgJqNBB+cUuwoE3y1DmeW4ksX9RJfO
FmjcBwxtr1xA8Bjr6Y6zqebAhyddT/Vx2mMCKs0iUFbFyk9tGkbKlfoqhcl0oKkkbdFn2wjuN+3v
lhSwwgt3Pj2kzhNoruDJzxhk3dmktMk7/vpKhcmkw1jdyZLZer5uZ9Pp5YSzm53qBBygD5Ox3FFl
boj9uBX3RSZk3T4qASl7ly5+eBm7Bmou/DdG0MMdolkZoL413vX5oLVjDnoIeaixuoGKOaufKvJH
UIANDQCgzlUApA36YCsi0eVpwJFZPYrl2uJE/gfRcTg4Rc6VmuM0RB4s6/EVpADqwEAl1B1r9VXO
ZaXx/5IUs0x+lKNwzPHDp9FTFUjH4nITV3scT5Z9x02RO58pw5t6HGYxqsFMJhoqwTivkIdTgkF0
EdAUfETiVd6yqBuvRyGmowNqxB7J+LLbkOg9gKVagoWOZtovdwoqg9pr/vtrzdo6T+FTXNUt+sp1
B2xs+4KsLIA2zY5t+fpcVFtbvYafU1Y2MrSFqUmYwV7WUGMP8uM9MuaLVprfdelplMP/A/rcsJz4
Z9HK54Cy4+ge9ZIUDcuNmLpO8rZ52xOwNvCZKu5Ns7t25fenLlw38697/NkaK+ACd29lR61Thdm7
vjUQ7LUL/OAcX6yapaTB8BYQlbTSHZcfCwJS2lytzHFVBBlDUETx0cv4inN/Z59FMgb04O6JsFaq
flhlKcltM3cSI0CA3eQn7NrtyCI+nry5Ese/aCLFXjf4i21NUpxdL7IoGCLquXNG2fXbyFn8x0ty
ri/V0z5IWwUvLbalUd3ZfyuTJeR83ynF84twsO7fyJadwkpF7KJD0bm0/eVYM2I/gJqsrtqPaguc
2FyMYDDrT0KHJ0Vw41bFl2ajDTZ72ssQ2BmQRWoUU5IWcclZesIqvYooXji74k3DA26m8CENMDa2
AGdIn2WXHdSHp0FIhWTAiwU4HdRSFEuhmK608RX4WxfarS8qiJTyERiw2wEUZ0Ee2++G83vhYkxu
IXVsaXMv109/qjHyCtqHTtYZKTX+Z/vYDnE1Nualz9b+y2u7DboYtkYhSEuklTJYBhj25j2FPizN
MIQCpQGSrxFY4pQVzY7WOJj8I+tE8r2cjHs0gcwYIKxPmDc/WbSdXwwD0Nna/REHqv5y6msYo0Vb
SR+oheIjPhy1dlUregalBgqNprwe6f4TD2lZI+qRZPHOax9tyUR+CgKs71SYTGH1rW7k0Vx/5m8Z
4QuVYMjDNMmgapbGR7nnKJWzbCvLzK/fMbHMJB8YPfhThrAHHzbWqBlMF2JnzqanyANVrTn4+V//
eIWfxRLeEJbjelqs9/rmHy3uNfxpzs/07cN4pZ89V+rra8nDv3F07lbysTwONHN+mvCBPV/NXFkp
dHBSemCxjWc2JQsW+pkDhHvayxzeNEbVY0HA6N+bTm8rjIFRmp6D66cCqwwqB7fdFvsaudsEnBd1
UDmTgswLjsRSEl7V4CgUqXg8VS7h4+qAvp1zqxRuf0bBUkvpC0QRIdFfwDXgTgh+F2qSjT4CXAge
4Mh/F/1gN9YyPYPlZMimFeI6CEIO78QP0l7c3eOn8abaEYqIqny8HgcX0e662jd9shsFn/ojP5Dc
S3N2yAddu6BHTzWL1burUEPB806ZFz15gNoy/babylTLW1dpCrLUmUoT0YgDZDUjP9GBuOzW3SnP
l3AR3WBpmgJ+gVrrWzR1uOeZlYbih1CQcVSzpuhVZQTnuiW2EWV4XHZg5FE3cYG608XhWcGioIHC
VKYWbG+M7QvyBoKeSA23SFWinIDnva2x5Wo8nfUZWmyc6GVjXoZQt9jIHjJxtR0mlyTfTZggLr5X
4z9w56M3/yppEd9Vn9KxY/y9Ry05sWg/8hf9Y/heUKzCqHolcVWdEYZUVWKqkkX9zKZwgDc6d2wn
mkwbetziWA2UNqze37IAKWP7WPmCS3yaQtHID7mYgFBiwz2lNNRjWJjtIZ1QOEQws7xBF5njQM+A
TIVGfRsNYbDRjJoFfBPGxsiTcDUYMr9rceHQ7RvXTZLEa993jsJI4hIz82RYHGh+mGT3QAlhFoK+
Ou8TBC9bOKNZUWVTjCaW9hnCCqYT4UabGgTqlTgEdLHtZc3WY4uRufddEkC8GFzPgVC4L2aChqQY
z7e1fm84lddcxIS3pwLC8X6Y9TEhcgtsuwwmaE819t7LKYgzVzHuNckPNqlSr90xE+mfgroaDNs+
mqVwIe3olBAzlyC7ivt9n76S/UppGvF1ffsNbKSYBV0El0TIrwsyVL29usWjoVGx8WiQLb04juyS
zwRciQMASlnDpkOuAbvesqKID4+NPsGXGN33QK3grDmrOdxcJLrcwr28BrqmuUjdCqwcM6oigxJD
cVe8FNvpHnSdRa01JPwL8QhfOL0ytBCEGsziAzNWtjBqnRULstAyUUpVzQwS+cL4uxDSxg/zFVnn
DQ5POKKAglXkzD3skNlM7oZ2ds8KLSQrKDBbivhTL2hxPtY0uwhQPpMNYelOUnw0g0uL70sHuq2L
+kl+HnnVXY9+Pbwkw1hzE/PSJOcslFEtTua2VM1KkfnXi/NkFxKWNGG6EYqTYi5bbv7n++ARc1me
zOWZegPoCx7fNU4re/uTz5fUcGf2yp9fur2YHS4Vp6yXXOlsOkjPJODyXcTKazKSFLVmM+riArsR
QSH68Z73YNqeJHzWTSxlGPI7GaEsgYEgybLjBxTPGEXHfEFjykqsJViUpmN78eaNVFjq3UReQbCb
h+bXBGLzOMavM/7i2x+sR1E+mCV+ZMeGqzoATMufsJggmHXBLUgtm+apFn1sc43jbJbUxmqQCJNj
vezbwvRrmID4vKJM1U5w9KSjUDV+kgJGBNRF3I062l+gSm2Xyl8qgqe8dvQhRb6zl/UjBQiMItAI
C9mWDl4knh0qrktzjq9GAtEulgCP0//tULthHR+jeXXgRS+wcWqifKjLANqYGMjhp5yhokpHHIzQ
QH1UEjse7QCwvcDNTqVynR+I/zCXE8VXzMGzkT5juN7vVuiwS3XI3vFNN0sSlznkzplGB49ZdiAD
qhMobUPW+YKvyTOzorHIYj4dyKy4XkXqyurx0hj+uIgHjykpngxL9Io5CBBkZKJTs2cIDDrHV08p
YibPR0xR4noRAzfYfR3yDXmafIC4LuTIQjRNrryxl9KVVMnUNfIheHGyjPOOTh8iQxb6gtbzN0Ut
Qi1mSZ6QnDdaTc3Ue4Y4HONgJcEtAoO6opi381/goz4ugVsLDyDIfN9fGpheQNViwIcuNqvqZmU4
LnwSW6Xbg0QljTUlLwktlbvoTj7pjR7F5L4kXDaJz3dTmyRIkC5DTa7ReETsgO1qo8i7wDRo3ORG
M5BBvhw1+vcb6TZ9TaBFapw4yMUifbHB9r5oyhf1ppgrZpfgmtJcxgONvAYBv6bjXbyKuUVc3+eV
tALDXDu4PXCYbiY/UOsn36UWUczEZMDcTuPaYllLl+6eG8m5RmXPjhvxRrtaob8AjjPYOi4aluAh
gLy8gCj8PA0a/tRgh5w8H4zZHxYqNWWBceKqYS9d3IqlTfesTLf2GZT6ZMeIj8cJx+SYvCd1Bp90
DcP84Ay9tNfnYKmHd2Cvi7u1NvuGeLj1ZAsf+PaxW1KsBdzXkgv9ERrLri38yCGbjCGPGuYK7SzZ
qgUax0qJ9MwxBPKlHTEwOZYtazuaxc+pgJYC86Vg4ENRyfa6KJjYIFZ59tBPs88zzJHe2GFmQNrO
/n8IHgtvgIMr6q8Ccv2OQcACdrChDH8nnQNIMuXr7j1lo1RW1F/DcwkT3WrKkWzVVwVYropv0MHL
JJetxJENH+ZKAqFYn/7sDPCTDblDHjLVElCSlRK1GMdxlXpxKPj0QAMaif7U24GkffJT1KJkUlhP
pYHTwMLpNk/AZy9XJz8nUMlngbB26Pac9CrxDh4+HxcAouxLljUh/oUw5EPAF6cTrUITBtgC7jm5
BYyhwQ0BxDowYdKr69EXS2YsotfpAuHposhHaUdV/gJTDCyDlSD1gzklORhwhwmvfTnZiEeDJvk2
VTxMwIjiRu4xas4QZfOgmrkkBNS7of0ImF4za3uwvukB+npUDpr8hMPJWG0kXQuWftRnHZXUwFkK
KHkCcXRpZ51FbJmWlfUVoWiunhmlhrMhxocfETbyL6l9oezsEHG0PBoncb1PW5m5OnQJZl8+VSkH
bCN7qC0lNYUr+wf9ojwxzsto8TAOhUNjpeSqJec3yXXKxHiIvy00dSXI2RrausC9jhkA90jJopb6
czXjxuSTr6rma1KViBe8RjMpd+k4DnVJm22drYY0n181L+IKIawPu6ycuYBhjQSqo8c1Gl5KfB18
uyOMP7Rbhr6bXZyi2wIfjLHs0eCzAHdkmPqIqfs09c/p/bL67IKerYOvZxJkiE1jP5aq+2b01KZt
vblW5gZfAGlOl5ZBR/812BKUww1qjQxKDEIIHNdnAVf3Ua9AbYAfHyaVOj2XBYx8siruC/cSrAb0
4MpigP2vk8cmvvyTK8+ldZD/iN+Csh2Escn57bzE32HmhhUYtlarDIxbaxLznSuGfNEouXMpIKtl
UMJO57kb3g2dbBghpCkd/QrWbrFaR1KmDc9jjqJiKDxEwkqY5gjcaQsmklbeE179RfZrWPeTxbxM
j/OzaezLIxvAPk82hsVv8aW4nuBlw5yNaPt2UhXPn5SHUt3SVZR6Urt0UJ0x9HefnKMFQsgosw4T
26OjycMhrPdi7yRfQ5RsDsrrazJ/GsakWnf/DEwpiVwdyVz9/iY3iSchdWsq3DjsnMI3mwEN3Iah
n/96SA5tVtrdxFd2LVpqF+1m8e8mkD4EATcrSEIxvjugCoLINnM6k30SrFyiJohNSKjYGNbmVMdE
rNe7fx1JXG18S+HohLQ3PAhLukrYFFT4bFLzqdbz0z2wK7d9+ouXLsv4IlixJHn7L8ePXDjtoC/A
QMIBFfC41tKLij+brosSmx8gxOJxEuTeMGzy8AwMuPX/aa02lk1E9FdFwS3KiGJiis9EgmFIuDbs
vLu0iVpAuo8Atm5uChpdU9G2rvHWJarW4jYEy+xG4tAtvjC6qb6Ct/j2DxUPyEaxeP2srUaEenZq
s8pOCbrQ2t6nEHDY/7tTp5hJRR9YQXuky6LjDW4KefCmX6iaOzgKeGsJJ+//OThGD9PYE28hAQJ2
l5sPtSlvhOorj+0DWah61pt2JO/S1LUJeWgiZ8D2H5fwk1bd0TQ+hn1eVIyMCGGTpqW89eTQ388N
ItO81+v3OA5fi44XVZLUsAJCMe2tMv1nexFczG4tIBGc82zs3xdDaruqclsCbndoWb6AY2lM6bZx
Jio1O90BPK1b/kQDO83EtVatuiQyI0zAw/9UIFOvNUVAxhw0TyEreNTP7BhD9Gu1Ij5ah819AHfj
R1q2V1hvWuLD59D2nLntyOgokpixNkr7UIxM0chi7690j8pfbGRmfSlQihov2SITMExC1M6U1oph
WIJpwsndXEmgSi8O7tGFwTKcPRUuMCNVOYLfMPHGYkov8688sXIo5SFCLTuQYzsGksNNzv8fYhkg
5N2B2nrM2shcTOlr5nmIb6sIPMcrewJXXGEdWtinzatmVOLjpnvB+gLqAqClTeIPcYkxr9wpBX68
yWmN6ZKkWjaIZ+4TLZBikC+xoxXtFclJM2Y98lCPjgk3AA65iaa1NbeFpFhAjHVDcfbwdm/zSqYS
REZv4h5aO5OVni4t7TV6N9RlkGM6q7F7uIS6fgBHpn98Ac61Pt0hlpjKDnrgwZRzPjetmTal4FfN
BrjPzipSpxnSXgY/NbHc1cfR0aSXaDNIoONc2pXvw+7jXTAcDfe56WO5F6Zh54/xJL7ZxYvjhV5t
DZadcEiyDyuu51BtaapD82K/sB7jijQzF9jOrwVjF8ARYnubbaFLWFaFT7nbGcuhn1n8Q9h191AX
1O+cshFLqlUwN8eIcrcRb5F4wIpShbeG3rOoOAN2S4ZC1GJjNMB+lIMPR0aqachv4C1Bgs+bXNCP
z3WD7119ou6KLIyfWFS62N2MwKolQNYu75p8JiD0mAOnvYlz83R3Bp6fp5OdYa6B4jBsQcL8raEV
bXQpj1XXCZSAcCOEiBwIcJYF7mynxaRQXikq9RZyyUXpKOmo/NVUqlH3bZa0lwvkptN4shGhec7i
iFLv9V0PCPSvsYhom/+9PK0CAqv6kKJ/K0nzwHG/Le4NueJ/dNuo1/2ruv1LpSj7jNHYdjmcpcGv
xYVykYqZbBcHDVxa96Wk+yC7VW4K4TNUu14zNtWATxMydYutP674ffn+cZHnoglRGhoWIQGTda5J
1e4ZxAWdOMEs48yUXbD9GDmLnRi+imwps6+FojqpwGraYkXqEs8DNkbxA3fHTNmFMnfhdc7XHpyk
bGYDCA9d5JMjhTYyejCF1dQ1xE7scbG33tSc/1M54Ol8gzCXCNspaMDM+NqbZbEeZ08qvSdzoEdZ
HQgTtW/0Oz+LXduyYZa5qYwJm0wPfY0yk16o0nGjLCL4Eb1Q6U3ElEGWrQsOfCaJEos0DdQ5BCME
15vvjVQDmT06iWLiMO7kL2mfBQHp5GaAV1Ba4QWzpfdVtalUJq1d+KPbn+RDohpZ3j9xvNXf8jSv
kvPq4JNl4Q1B42vIa0HEO+OSjeDZikBIWpaW7ON/7IdFUU8NmP6GWyo4HcUyCjf8cz/YEIxgIFHP
4LgGj21tU5xjtgrcKdROnRy5IdauK0LXWgvCu2dIRUYiwoorm0rfrDfdyE7B0dEBJoqPzEYEf9DC
RxG04NKGWwAAtzlvvXz+rxZIa943RwY4TXLxQwcFFfGdcGB3v/mzt4Ja1pZq1LGVI4IhSiwFgiZS
fjtogMEStcSjJHx6ORzxU+JMj7DsaRgXby49N4rGkOVCF+v5jzOWKW3NNDxp/yfWROqeu7qZbOLi
8D5BzTk0Fdv209293if7487+RXVWTy8FjOF8lkFbrgFUaNoOv08YIR/YjYsXFNW4xSKF+jsp/19U
gwsm7JrAsW+7qMAC089RFtAPFc8wymWRaDwuzxjHivqz3pBpi6gaRS0gNJ0+pbnmWRo7bSRnB58O
IUzahTqvAIHigDO5CKlECDo0hxocn5wQv29NV/UW60BDsSVYubSQStE5U14xUD7xm055dyNNruhF
4UJqzEQtYOqRj+gbr2Te0z+SM/z0m5WjJG91pbx/YpbUYGAp2cfKN4o50wuHUnA4CibdmTTGietn
lRLHFd3nG31/PDg6Xsyh1ZdZghq3DCcB1xVP2fuvvvFKQdYo/g8E6kkgpPn9gG/K+srfkiTMgpms
DbbGkkkXmCzRtGkg6hCUnOl6XUni8EaYd94ex1Zu/SJwvJMkD1N0smNjCqvD48dTZsFX79K641YH
2C5ppocvEde+G0/hZC9AIeAUTFiDWdXroTrE8YLTscd4PZE+g0ZjMt6L8P5ntGVDpcT4PZYRFXjJ
zhEtxo4tyQyWSgTP/6AF5DeJBnBN3Yx5/px0yMx14bFmN1xG3MYuovy7MdX8bVpBiRpS91ESaOfz
4/YkGYklMxyb4IxfAIQxPGBzyq5wjjM5lPGhD+N/7ZYnUExofdo8mQIW83vzP5vPkkiM38hJtY7J
mX83GVziM823ttw5hsTEr3HIZCzI7q2Je+E9vvwn43h9tRmjPN1+XUAlS4WYQYy9sTC40TFwrCBp
qPRuKLPFMSCDYe1vdtX7dLIfyV8kLNjvFu/Ssx4dMVwqNI87Cb6XXJ98q/Y7WDyi5uSr6RRXRErV
86wgrxENZjPTofigLF/MeE+8DNONDfaJshe8GT/M+kSf4y1ohaU8WtDo0F03ijJrWdncba+/slzH
zcR04UEg+BppEfRj/OJToYB79fl1TXlJBtjig84cTKOh9XugF8nQP3jmePhOOTNoGUHBFq7Qf0dA
vz6G+pWHvf84Mq1U4FtXCCg0t+e9n4C+WP/SFIDJJ16slaoCExFeGNShJxl2vMu7VqVSp8TMHo/s
PgFBN90hUuZlVJtnYxtyOttS8GQDp6Wj6ISr5vmhOlq1W79mJ/nXgJRqKT+HtvffabFYdG7DQ1tl
92n9xGXLTpzi22knrxXPiONuEWmGGgkqYnMDdc0fVg1xcOfcwn+/fjtPCOI26274Z9rQFBzt0SFJ
v4bqLogO4aSOJGYj5i4Q6V4dPn/q5XQ1vTtluFo8cbBzagekXsjTxv7rvkZ92v4AL5a/jcSEh4Q7
EX9DoXiCdLUYi4SZrm1gsCQk6UyqjJYaI1we5hGmgM70g2J5hy6LNz0kPgJ7xydBLmPjYF9vA+8y
/TH7Ji7TeivTLUR4vYiTK6A5CI1l6jbh18VMl9HEgsFCgIcY4yJ1+N5jQgeNrCSHgzcArozzV0nz
WqjRnPuj7E+Da+yt1MLD+By6Y6qMNIFmV5iE2TbHACkqAfiIWu1YNP8kGo/pNqpyubHhHNv/IwD8
PgOiMST9Jqi4pj9fM0pvgKIwkfMNcnCYO35tGjSyaP8eXORDmHRn5nF1hddZPOieAaOq7w7J90a3
JztZdUMuxvW8CW1vAe8b2ZRKQQEd6FOJsZwOphRbfEfu/Q177+uTv4J6W46JND5hM9uyNhseYUlG
/gOqk9Mk6IFm5jJbS4tZ0ZO5lPEoI3KXzMTHFV6OCPh9fo1A/lNcAOCsw4YqD8Kx6yrYOR8ojygi
cNg3wWDj2p8JADZw+/eQ6ehW5b0kTqMPrIgsbfj0iidgGmgrwWscz1utSd0s8hZV5ggI4zOIt4rv
QJqCuRvTt8FBTL/TkRt9hU7m8re8FHWMIW7rTLRIYnKLsRzv3FMSQn4mLYNHD4REC5R6tjim5YWe
9V20bSnhW54X57lTdEQB5e+wnkhSb4E0EyAE/hXU1TNjlM7wZDthYwo4zXmrvo28VJp4fuqwJJRF
Fnu7BWRSD+u547Y6o93TYC4Zoa7QnKGcAwAhEicHb+iZWfgbyRMxEyX4P6P7Ytt6gNNNwBidZ86l
Pj+ZJJEFsiopHCTIt1tUbjq7bOvMJgbMyN0XZyrcdlZ3qh9pmzh0vHmGbaKzH/pevOYrIzs+nkvD
GjWwztvruof7SHTCAivlBj47zWhsUiPick/CY94r/JmWemrgKeAQLCNRb+6zDBgfi+3OofobQ4aH
da2vMQRZyB3Q35MOilgxXTNpPd3KCZiGcuPDHj2sZsicm7Xw1r+VQ6Wh167Ecm59i51/iCeA/JzD
mJYrp90wmrznELtF3Irxxhji/eNxtbxq8Gb6QootUOCsObdu88SXd7zZ2RqPsMwUXLm2O7YdKTeQ
v1uLGSDzO2BtAWSxwiW3nALbptI1BPCsSvo6av1Ttymt0VpARYTJ+TzYIgre66vKicAtSCeCUmqn
sE6XEHa0vUFm7fwllEkIvCMYx0KC8EHHhzPD+Nm9dNpIlwXHoM9vRncBqrx8UJYfH1+1ZVGcy3so
/sZi/wDU5j1WJQd0KRuI46nUK8oFc5SyDGMm+1ddSnwq5NORql8pAC31zzAq7S2c5Ft7SUeB5B+l
8KH3LzCSHaHZ2xWA8y5ToPE0tI2oJDL+B0eSQ+U1bvwUF9uatR6N9X02VFHJ3tkVEuFRDvAoExn3
/EpMztbYCrfhNedzmcmWoXyJzHe4pzqcQkUVedWYW9ozKCIZB79IToWz4aq3DHx+3q+GuDx+OF1s
eGj6NgY72Mkrq/bjkU77wfrixRObqTmXvHcxR9RjjS2DprdrKFVUEK180RypDjYkQq9yy7zNzho6
F1FwYS6yixyP8zNQpQoFRiYgfD4HBEd6rA3a/qcXmyg4XSxaRtagzVZsyPdXZ8MXy1qNFuvT1GD6
bNFINvX93cHfMWMFHAd4HH72ujH1q4v+/fyolTaSLvTFsknJdyFVGMgeGbWT1sBhSaEwl6kpPpqp
IXfQCngwZ+WPr2g2ZqWdRupNUBjhW26RkhEeRiajF0axpiBkT28QOU9/tUu6RnMbRC2PQanHhJyn
TtdoohdQvlpZEY/TQ7byDSnOoRM90Y0rWx6MPCWO0SuC4dgGw9bQbuK/8RxRprfhj/8ALDaKCHdv
rUWO1CKGVMqWTKkF+6apBojaO/3bdNU69Yt/qLpsIUdXfNn7u2qmsrRrggJx21D7+A5r8mdk9b+N
oZGuTk4goDsihr2YOKlroGHYaoxSfdVAr3AWd7gR4L+H2lUOjWctbLTAwVD+5qy4dihuDmbQySek
DCjISBIBVw9jc0CkWiEZkWbYji5R+vcGatZ/s2KW7B9bFAXnhEugqm3GElQcbzR6CWjPQwF5+s14
neHf7mHCf5u8E1DZUp89IRJv5CMsqoRVV63XapRsmST2R4djP7KEJtT6KYAtW07u5riJm0slvvgU
P3Zf8AZN+ewAByc6FugU1dTkWv2kzovIRzClNIqiv1oClrZDc941f3d0YaEmINYSR4UVSUC24cq3
INBSNgd85ZLFcWy1I3ioG3ouSkdB22qf53kaJzQdV0jc2b0Hx1FYGYy2lJmGl74IujH3fRw+XGCc
mTwCh66iUw4LYHyUXMJJHQdZasDfOe47RLkjP85+DO4BRr3Ztc8J69UIaepx/NT1iaNy8yo39+Im
XD7LSJ18EGIMO/tt+WpyCMMBHGEpmrbZUJ20F5hvnJgFAdTW0tWW9vgSYzi2qvvXa5xA3NBwyYl2
B60Ct9XyIQz9mEoLJYFTsR0Vnprt+uplJ5Ez6u2OBYhKfhAxlhdXw7RQtoucD6hD0uOeoUKR3Am0
tsMBixStzrio8t6tDsgJ8Yg/+KEWpalWcO7dqe/ykm0+QHMVdYhaPVg+9z9FHNDXvTZ4tFT7dGDn
4XGvgO0rF3jxrPigDf4txe5QnDnD4y+kSbnw7E1niixbbR78o9EKOWoCZPtAnAscHIG9/rGnHayk
lVozQHTvNINRnXIWes2mG1N+RYT1ZUdWHAbRqetQrCMhVoEafufsCz8VXi5Y/1jHLXTxbZmYiB91
61tfbtnkxe/FU5f74C4vS+W/JxuHRG+Im+r+SjgyBbKN4FWbLFw2RjtgSuP0B2dYjcbJKAMXlq+t
euWT2lsS8lxf152fJ3GfoiDDv/9tbIVduNMOXtofWlr+ThuUcyWiCGJQnYqfWCCeSAIftq5BEKz5
D9oGnZStlx/xpFVM8+Zuo/TcKD4nwC7S6f1Wlr4uj/aW9K3yJy/XjDzCI3mJSz5LlJN6nA/pITjW
wcDxfQ9aFWIjB3s4km6FU/qEdQF8rBCw8EgOPtWypwcl57dtXDgjoNDC8czGsmful41+VvCLPK2V
CM17Ie5tmpJMDdpAMtcNMQp3e7bCrozo8gtr/Jj7b8DkFJVMs9tMiCkH3/XXPzaL1NoUQrA7Xn55
qmykkMKsjo9QSdVPqvo85ThpKKw5JffabRwgWINBRSOMKyT+CQn8l3wEYg8bDwLoANA41jaMDaph
dFK2BR6TdhL0Q+D/yu6y+5GA1ARb6XvvKKW5OLpPe/kk95OAw+EBrsTDe0nx+htdXUjK52NW81O1
jKm0f9rPKMAvBANO8M1qNUfawZ9RbbW9yG+8Za0GKOsLS+nsTwL9xOJ4gKsnYr7rjq/EYMhnSZjw
2nD3Nsxm8R70Vma/L2nHXEWElzkSg/GiFbq7189+xPSQEjpgxlNPFpjvzTCHPafJ9+QVEXBEMZLF
UpTyZahXwiEjsOfmttBdec9E8tk2fpxGxky9LaZCK4JOSpTG8bifFFJ6AvZjlUcqEpLtuqaodp7D
KBIzWLwXcsDxNFL5LaJ9wX+jgRYqX1I/zbTKNwPXG3jpgly8WLbsWOPCsQagY00HyeVfJJaUaL0s
i8TO/pcaoFUALU2d/pJLo0Ak9l0ZyzdQhNYe2W6iwOnMZ1vBTkVFG9mG54uJsL8w9bdVk9vWWXz4
/3fU3YT8vOdS0HawcrZFmn9kl069sK39rjHlNyIIukWFY105FDjSchfa3yJldPDfbZFXpIUQyvgW
Di9S4EXnQybMIlOHzefeXWSrkEvBVRUtLx5HVc1vAIZMXBmSpwzKZaji/LBaWkcv2SxixhzLmKEO
Nx1IdPSDnqJ8CFdHFiWHhTJMp7i6J40e5lkJoQyk9MZMTlPf1k4RmtLd1BFkomUB7LRJBf40gXYc
+swF40g5KhVyQ1WCM5D6fvY4fxr3DphjFo1HHfV4I2fMG76ys/Z/xJa2fSTm/RL12X/8y6bI10DQ
p5pxJfPgewLwY0TtP8VsKwG0mEpSXQ9GzXnm9LJxTy6mHPgXCtSIrWqgk7ONqkSCKTQlHZtOUquS
Gvwr7KE9Ndqf3qU3seBmzJtPbyF+aTagGedsLSpVvDZiZq7pjTEgCZidiY2cdoeAsqbStQU39QRW
iYX+dKJyx1cztApM55dhPTrfH2gjEybrtJqMrztzZqc1h9OVjILKxwIwRvXOXdXGvjMcqfMCxDkY
4r+8sktI+1+Lsou4NHhO08ZksyQFK5IXzCI+ueSc/FK0/UafeOyJNFItxx3zqi/xLWrlywTqeAWT
KZOYBjrkulE9hUqvE9CcZ4t01GMkk1azE0v4XMqp4naZ24cf52VpOWREYo+ctgbl+2Pswof2pah+
LEtuV10ZUkvd33Ma9W5c5Q6UP8EniDvKEqpr1qx0lgfYaNJfEj4uAwrwlTxrSCcwQT8S3G8jOZkE
qaL+cxStazDtKaWCylOJb+ZXriv5Pim73g0mVZKeb+Tnx/iSPO4T1cyvp8xBx+pkpGLrcuOGmg8l
pIV0Vh6FDRRReCz2vz2OlWAgHp5AnPyG8lbgJjIFLlvWGw7Jdpv+6v8FgyBFOx8Nex347BiLBIyG
QtxDXqMnO1t5vFxFHR/DNXtj2lXNIqDMHe13wwfpgQSQBMYVFncGewRLihjNB1yN81acFEqeo/JH
h2b4MOjszNita7ioAZW+NsyWnJgaeN9DIPyGjQ2pd1XQnSeNDMad4fNXTFGtwaIPyK1uG133BlqW
4AD+XFYgjK+m2GzsmHcChguQ+oVTLxjMXL8DTGy1ECrGNAauut0KlWTm+FyFYswcbGCiuqmAgGhv
zBHXwrnb9+S0gg4uKBd5QXakttASHl6MtX8WzmBPi+I0aTGUNLmy5fr6gkZeujcmno5Esu978dVR
FCQ2x5O0On76HtTMOoiLKmV57y/M9YGXEZ7zgdPBGahTfBMzGQWf2cq77cmGDr0zskjfG6ldhAeg
IxbadxYHQNeZa6rv1VWG8g1Z6EN2CucnA31Gxx+8pivhR0YolRCIg/dYbvukdyIjW7GKgV3ULrqe
ZeY3n1/2UIFYNYX0IopIAyaegnvF3JeyM7DslvP1yiLVthBesO7nXbY80pxFkMu8Q3s4HIAZ85jp
cSpiRIDvML+KOhapZNrzA9SZOviHCIslWg+fuqalp/HBpDblUbH3zFPLFIW8pOwG2vGaosFs03hU
JEhVE/2w1hfjD+2r5IG+0y4kPi3j/sdRKnFGyIWK8CScZoXs37LyNWWi5T6x+wkJPSA+6gIfdjxr
my5yi2SmaZM0/kZ+FfgBoSq+7PqQgnJNVGW3dDE0U7KuuZcejMODcVsSe9nNYJ3RIR9+YkesJPKV
10x1nJvf2YxEwgOIXLceOksteqAkpyGQQnU7G/d2g7kXwFXCl5mXGdFErrANQcKprAvUSUI8NzaR
/tGlxmmgP9kltg3Y9t25QI81uXHjj6nhAnwGA6kSmRkW+WbzdYbxwwlum8ORHcXum3GbG+8yK4w+
trXGtMyC6jmsactXvLUcWU8hl5MYWaHUqUX3UpAzFsCig0iS6rnV3PJBWfeKq4cmjRYNXojHa4W8
KOvKSiB9G3zq1dpZlQoj/xZ5lfxnn5CLnWAvLuKK7PypUIQ7pb8RZsw6mhIhwuHWPV7cDxN/pMYX
rImGMnkDY0xR4Y2BEZR+ZXmxjaXjcTPtRTK7muwCnAz2TqX4E5J8f+TYy+kf5rhI1yLO1JSYjcZd
NZBelK0PS74pL3cJrHCTj4PDQQwImOg/G5Y0QSfcVhnEdtQ5VRE/OpWLc92elZ0ayDbF7ChZYroL
C3RBsFZA5A6x39MAEQs0/gQH49V87tadvQLhLg1YVMtvSt/Uim43ez6vIUaxL5kjeP/9ozHanG9M
KrAGqPTHfLGgNeM5c74WDwaTqqSlgNtpInqL2vVJX7mcM5YWT1yK77o3Lx2FlYeswlPNzcR/Q8J8
NnWHSHGggKKHcQ8/mOW8waJMa535TBdRfueDLiR2T/qk2Oi0MCPsk9t7nw7PMFkV4OYFn5sIZJFn
bnS/tHqgVtzl0uIoOi4ztlEFWLNdnVxU6Tf2V0pV6wHRFtmqCD5+3rUN9oHRYvizYX0hiwT1P9GY
f2an34I9Qpossj6ciAAPWKwXtNct+rPXW6hGM6znh95lI8z4wcifapSiJdzh4Kuo3IvsBH/2D82C
BrjXXWTQQX406dkQqGOuIXB5ppkL/EcYXTfjxGs+IMjcK81esICnCG2aqU0hOyesMVDKzvAdHBu7
KOlLgzTlXC0tEYxd8K3gtvmQ19RQLikDYxMJxoSTkrDdKur6YkTorRNbsW5F7NVgvEKAICJ8/XGj
N8jEJ0kRxMakRjXj4+wQM68FxUJkUKPcuXRtc1iaCtXfcOdPXxiDTx989dlnLdMSeTkxZsVMkPlc
Atx+ORioQlsTF62SuyqzHy+66Oc4sUbcEs0vdOVdBkILB57p6p5QfBgUkj2F8YUOZ9kG8XBmXJKK
Hg/Days0P+kmrzoo58Y0pm4EzEpXZ34yHSjWu+4nDI0L/jNWFlNj7sTVQWjUO/NplE9qKpcrTeeB
mvOI9JBWcF+z2hwSLHPj+xsco+reyjAe+b2Nhu8FcAXilYJn8aXze6uRAORQCgfFag9mpUnU+LzL
m03MIH8nlVKcl74woMoNfUdQfFbtuxHLS+7dbdny8uk70jLK4aB/z4XdxOiDGhka8uhNNgPdVKlN
WFRBLHtDgQhl9TBK4aYdrIYek889QvyEfLzpvEplz7FZJAWygi8LCpgGXn+i2mtlbpqMHy2AN4rQ
8UGCj6Aa7NK9XIOy/UizQP9zaW/lPicz/snEVm/eTqA3XmiX00b4M4laqsH3EXdStwDAwkQKrMCb
BxGYykzYxS9f/eDgjKJrYWnl5pdF8k8dbebzNWyZRK1jeOWZlw9uSYvIuITOg2c9zSPIbwl5X+dJ
cvQzRXJLZK/+K40ilUUxnEFg5Ip9pD7W+zauk+wx/4LNAbWVQagGJJ8+n6O2LEsBruhLSYdcWgOh
rCpO7eutKCpvrPQS7/Wzfn/T6D+S3e29Ojq7GuHCrelY7gFetnjkGr30/27GPUWA12VVt9qADLur
Q2k/ghI0O5YlcK9+OFeu/j7at3weoUD0TK/vcl+AZEdrtAjeU8Hcz/Tz2shUF0Jwz3ID0okbvydN
VBMJR2/BBy7H7DId0MscWglBu0WLZ8MubSm6bIhFVVeTd+gCsc4vLNuo7ea7lf1ybz2V/5CQoDdx
+UKq9yv6L/0Wue+3Og5I6m927Ehg5vUfGZixuISeYP2pvMeiyUJt6E64BcmyrFlTbGyqWuH8PO28
a3VDOheWtzZpuJqsI3uCVXW9k3FNn8xLLhqMhOSM+lvq6KBVkh59pY3awd6BK0JDvg39obw1FlP1
gnnIsbuaqCAZb1NdMYcLUQ2ONIOyNbvkLhFjcxGEYqmXt87k4x3sR1M0mRwc0WQP1IxyjR4SWV1P
4iVmw4VJH2QydJOmbV0cxvQaszdhQ2/TUVJJo3HyNT0I8mwxCfH2v8qDgPq9cnJd+TF0/5kme1mG
gR5gOGgNHKFSw697vb/IfVTPx0jRERkWBevE9PnpusOH+5xPqPzCB65sYvIIKixvNX21UVeqehlr
+DxKnnhGoOO1yBl4wJylNJCdHLvNmU1AfQ5JOMzjyltZ7oBW1qi1uacAeiRo0m+8nSwkEacrMFwj
u+JL1AVkG7wwF0GcG66h8HY9pizNsixTCpQBnns/3TqVjmIWqmrOthVIRPd1ZZTKQ3CqlQbOSV2y
w+mGgDTpn9TnPcaD5I8F4hYH4oUEIgBz01erQZW3rBJp7O8uehtH3teqm8/J6OY63Jwu0DK+kARF
Z/XsWkuKOeOXFAvbRu8YZUuD+sp52Wt1x6gGb/eeFSy1NJWMIrHDeKlFbufqzrOmMvdKWHPf2Ghp
4IM/ZFn0CoKGo2eY0Bc8K707NytjREUturbgt3taZJc6DU1lkCOJOOF8P2nK0YQKhWIHPrYH1bBT
85njjVB6X+UdKjUJuj8mPscP+LmRygdC5T47XcrqP7BcV8ki+ZVIu60V9lO2nxaudCkz7yaX3aLH
P2j6DeXnRNzk3p2F7EkjY2NqkjwKNQiBXey+NY9dd7iwl7RO4L44SDrayDBrFrmMjRuLsMswOsdi
cTIM/dgeH4GX68/l/hNFKoImjLf3QmNQCJUI2O5kjjrHFX0zU2q8miXfZ7Wk85aWhuLQ4mjF4dgp
SL6I9YekksCq4JU748t3yOYpqrlJ7ptNDrXtPPA1m+RLCQADzucycbSqOZAdOWiJdld4uZjqFniL
1RJ0XTURwC97X5dehvvinWxqdzFW+z5zfKd2hjKxmy9jWUzUd+sCjDFW7iPzn2KzgYF18wFym8hu
d/zZ6naihsKQmEzQTcqPyR9a+cEvH39u3ZLCIVexhzJk/7KfYA5wlfzD+H0UW/M2XMohwExCXbiK
oaMhPyW+qB7p/8ARL2bInZlAa+PSai74DqPSuj3+h0kuUU9jjXyXqfbQKsVjaj+XKrMHjBh/Rhb/
xsCWLaaF/XvcMgrkncZRMTAWmnglx1juV9ZJMS8x41drI/as5xzaCttjcg/DFurjrB6FQ9Na3QHo
CGmnyPcuEk/OdHOWKBdokgyolHCZ2Xbt+E7TbV2g+I3wOZi8eHqpHPU8VBPnY0oXwlVJfeaq3P8j
AtIHBSOP4/lRx3DpnGZIiXWbkMcEnGmik5vbFfSBdrkqlkipkJipGr39BqCW6UwhLlBwXIyANked
a0JITUwjVn9N4FVX5Nh20Mf910dc9EOUgjoA20RxWY3Toq1RN8tnQ8JgD75399JyFd8Bx+EvQ+J9
8hZfCWo70Cv0A+kSYOjY19OSGfju6U45aBwXZBNN4rGO+S4fwYrw8WHGqx6BZHaIeNbKC8YekZtL
2ULQaclTm88Y9UWV9Zp0ly+PRpfx+O+jUgnk+pmk1NhHbsQkA/LiwnwCiLPDq7Xc5hQZOZaS4w7C
DvXtMdE7DkStbOA3Gnw9cXGfVu/RvUdmjw81RH8qJcWVgeXM73wZEt06G5uZxTLxIZYqFzktY5xK
HqM5A4RWuOcssjgprYsAm2hNM42ua+qxM3043ZtMDoqvw/yMI4hX6cti6L2hVFiqUEFlPTMyqP/R
yr6/omWm1dCSob2u1BeiaWEfgRoTUwWM60KryEtvGkfsX5RaolLQ4yrzEuY0rV8rfV0UBuagWjJM
Ge3sdCY5o2xgWM4+nr9e0lzctvO4BtXqcwrXaWbz1ESNRv5JUm+vt+PrOehj7tqwC5XaoJJReJtH
qlGvk1Gaj63AOqihcv3Oup9yL+efwItvMfSYeeIkHiQNR96UBjPU6UURzn7Z/l7NXgKeHrijo91T
iR1IsDkb5Q2d19AMG2XhTySQFPGM5om6xQZMLk8nybbl2J72G6xP5nDiO+KX5uaoK5h4fLpopt4e
zX0I0d9WOm/sJ5QxqBgTsNsdNJu0n4KfzUx4MAFW5R80Rlwno9BybJj6ZCCDiPp4xdFza/4G38SI
dVQ9XrRTV5baZAZE6QVGR31tVewKclT3aUTP/ZTrTBWOsJi8XgK8GGRfP6K4vIic7Vd4LrvWxxzt
fp/KVYIGRI7/hRYrREQ4r2NbRsKULwuaGsp96wGmYx7ydeNsIS/D7e+aQ4n2yZyYzmdcBrp8kKSw
1JVsUpGbv+afJ+cGplQxmI8LI3kl669dgbnVvsPLYEY9+6OcpviyHOnfjeQnG329vTbOOTrnjEac
M8aPM7pa966skF8vwSQRs7fih4YWhSmr+qlCruE2xVyU2zc6Q3dzNOouPtd3faJebTejGxZOQXnL
PpNkznGkxmVKTe3C9Zv5OTneGWVF/r44Rz5UUglaWEcgsK0NJ/gNGCTNDOSjzL54YDWJ1wkuwkKy
aZ0R8wNKz6iLexDrPimMiNXlQ8nKZQHzhICnA0QYtJeRj0s2XU3Lc4lrqH/ITUW0FUTds+W+ROAc
xKXckhG4Cpmv8a6uRnZfy4JFY+bKN8vTsfB2RG7PTWp4icdjJ0+G2cgJCUuXePWAzIynZ20ZGJTD
0IsuBnXswS10dKdr09Ay3Wn7LuldYeGvEpMeoz1T3xOvTF1xHq35u3thiXUTVyFW2zgFckrQLeIk
CH1mpsFrjowbjqT2HJ9CEY4/oyq/LDPbLXqQKOg7iP+7Bxwl+vc94enxdITOpMqA1mmsWcOrCQ7H
ZsVgx646/YpoPbTfFkeCA1+V7MtwGoNQcrzRq/Mk6IhXToGN36HZC2dWPPmRlHEECwj/i7dVMo7a
Ho8zx+3j7ghTRJgGdtYdMtxOK6h8FIjtwdV2brYFiT7z6f3R5igZfNWpbCHm4MwXxnpiq7ZrM3UV
qSf8gk2oxa/4lfkOLpl6NCGfQiFYvfgFdjvN4Iq11gyFQSx8bLLAAxyBPd7Tb6qEzJI9hretvhtJ
EAjQeFAZktZFvyhSh9E1pY6l1aHU0p1wrJjpHeI3BVkB8idfkiEKFl9P8mV62qh3zxCnheNZG1LC
r9KpIjuKb0WF2t8/UNjUbBQ9aQeeQF18kQnoheGgIkx7l0dlhqkjIYd7XHfQjFWlM6UrQ7OnnniE
galrDaIq31WTZMZUlo5ZuCcCgEd3Fm47nUVitdOIckstmmKoNqzPSdv5b3OpYjrmrG8N78nVy/Ja
IynyLBGfUVXf/o7fr86ZXCvEyA3Umfeyu9lp7HS1yXZzLAepyONVAdFbcOOFft1rpyzecY3iQ6vL
og7kQTbjimu7DKVNADJpWTSz/JX1OzVUno34IFBB6U6GHZZd5s8QoMcK2sPpVns6pvkID2XnjhOV
NlRARZcbWrrCiTu5sYJcR+LXkRlPSpENXLxuwbFFzVuwk2xbfbNiar69sLbNrV8ERuyHzHZcp0z+
OSIQZYmc091hGJD/9ON7Y/ecROXRDV0kvQB1CZEZ5Y4mtQ87eRWBusyJNaT0X8JkfjY64+puoeYh
vreOZSHZMcFkm75ev5NUcjYqRxt6ipiM4f0enXMwi19VY/nXeH42C1Qre9SGdHfq/CnfUjfm05YZ
bMeeB5ACoLuiWWJ3aEytCIBePEC4PDFEaQALfuJzw4qCfnetDFxydHze0p1eGXfHXFftEzrHBH/D
TLCYTE7PivqzjMDbPR2VM6BYORoU1bEJF7fdw3xCC20bwCutRuFdp8J+LIcfDDKMdYzT3OvS0phd
ne8d8OR0RYtMg7/dNFdOKtTRqu63386NvbTU5HgdFSJ5WATF92DJyyvP/kaUNgpmq71hNv+wo6qi
jlVyOOAQj1YGxE2j4xk8ktWUPm+l68hcxXHSTUOVE+1s/sXc4CWCymV5ojsMO1j0Z79WDqtiN32E
wa7TOZLXlun0TWLAoA3UIOT5R0z6m7jTLzylE/JOjQhu0aW4mBkE1czyBWx9eepG0XKQrBzG5adB
gcumgcv6JAjy4C8zuoMp+sQZMwvkWRO+GT5Hn3Y5QdZDLnedzkN2rENZnGo7y3W8VnzQhGKS2JK/
J9JJloN2oOpasPcAiuJm/O7K5t8uPWb9Psi2FBqIUmf4yw87tZI9izgBClgeVMwR++pGvPmLepNn
Mk14IdskA+3gMyQPCxNeNAW78mZ3Qpb2VlBPH92Thgw/YZZjRgIJV+V1PlDKREyAq7mYog2yCysi
8dnnsBif7/R1NJHpPlFN5btGEODBh/47we+HgAmcRDAEro8Zw9/vaXcPd6f7HsTuFHyXlpeW9yPP
odTAKdj8daMsGW+YvlhuIPo/GWhOjEsuQehIlAoClhsB85MnSHcKXoSoCCysXJaTC4Fz/2qwqB6d
jakixLwODUY6ZNja79u9CTi9gszTWofwAXcX72MSYqDR8O09mKAdLpYEm1jOIUx2u9U13FmAulWy
wyWZziBcIGlkYDkZ5lUL+BZYVGi/5Fu2UI6R8bkhQS5pfGuxLJB7+SFUYVb/3CJhw8CSVjl8ZX8F
CWjVPJuhBAR+smC49mV9sW/KFOq2e99i75nUjYACBxQ9w3uMjwR7sc5Ktb626zwtG8yCFrgmqFKp
x8L9LrZsTvCnDwPKuRgVzVhwXFPS2uwgN2/wznRA8vzX9jhGrFS7LO9tHw15CuvqMiowTGXQn4D/
1ZPE01ylp0lpU+0RxnnLsFprXFuwdbP9Zz9jk5AnLoo3ckht5Z1wyMprhk0fEDc2nExYT0PFuRfC
auAxTdxE6yly7OgswQv4buHlySrptIwZd2HG0vvs2LbenHqILzUcGNqLUjA+/OGEHiTHgdBMmcGV
lBE8ts/nGJEy+4JfrWkrNofe+4I9470w34/pUevByhFhcmJSl6xrHvMHEpecgEhh4EDtfZekF/SG
ziE24wNsMH+MJDfKHqq5mQ8ZY24i9sN1R5dgOpT8RyMfZM1NcCUQKZ2rTgJCnPw2dgOfjiQ4DRQJ
QMER4wCyClhmSjqhRXpn2b8u7g0HmTo+inJvtI4JDmjpVS9RqaYSOitSFLewpY+2KiA0RFbr2O04
PBNQtVZLk4Wn9XKrGK5O4jlpjLKDkgXly/4HT9zmPZxoatcemiVSpFnSvM7ZdhO5eq+lC/DVp7Bf
W0D0uLMaR9aZAgGSZm4TLzQF0NFIY8maJ1JA4+zWJkt1gTMINxvzq3sEZDiBLepELDPJFY2RSpaF
4cJ+lcP4rYpyCMNKRXrHXKZOqvXPsCRodebHP4y1rULEE1W6YcEYjcYDqOI92XBcD2y2d22jSgXk
OpD2IqXC8atrPdXLT7LHWsQvXDJCSq8D4EeDI/NjQ2lF7cXC3hWAeJY6q0HkUVH9tcbQW301bJL2
9x2Q+11r+stddapd8plDutVO1o9RfJmiN12BcSr3SrhNWSMrSl+Wq9ZibgUXdUFohhfk5TwxLbPC
koOprgRoJqw79zQCxHGz8KO+YZnZ0cMnPI21Lx9XfetcG1ZDAZ94Pr5UwvAlG9Y+fbXX8wylP9WZ
KasTAdy1lNhhqHbNpPe/aZOO3pMKHiWW9PzJm6w+LSSpcQZyeJk2cwhMzetvMXlq8xXXaHZ9fD2S
H5h1vmPXVy2vU5YtgCsEz8rFWOAR24pRBaJ/g+DnXNlxUJBMqI7z3TKzqS/Sku7d0F6DYirRAZlo
UjcfNu687ZkAPuMg+fwU54hTDTs+kD3fJ/02t6XKGBwpUsmpU+Un2DtkIdiasce1QN+cXvY0ikyZ
J5dl9hAfv8cGYSb/FFZNaxO/dR+gMcg+gx27e0CnbHrMAS2McBdS5RQxQx5HW68JO+chdHSuEGwD
ESJIbqCvXiYTqiWUp5rmjuSNF8znpLGYgAGLFiZ8Y69zU4G/7rJyOiIhtzSdAeP6xIzH4kgBmnyy
HRkxAey5FPNZQzKhNnzoT6uoP9cCVDLxNi8Nshbv67cnmJUm+xgcu2NANT6zNw/EHQ9Pa0s8yA8E
VN5U+8lhr6QkzKY7POKMbUYf8Nu2uWqE0M6vSXn0KrY0m5LcR3SKb+E18eS2MqEZMuZEGfAUcdYn
8VaSg6PvApXtJGCBDyWQtNWeawAUiZEgyV1p5OeAgZ5UQ8AZ60mtP4vj4RkQn3f2NVOAF6KjRD5B
ERWVf+yK+tvRMZO/C/+FJjwsrGL2AjjEzFeNmQqEwW71uRZfuK7Y9lZ4EuKt+xz8TM7N2hQVs35X
kQRTE+G66T2WMZlXdi00YQaf2o7v722hM/3jlYvtGIBJijCCylkfs4iYWm9LNTtIs5n1+T3eV7mJ
V4/EP8TRENVj/XBOXShUFgWryi4GWdrC+Hz3zrHwdDmUqEzojuwYGMX3LPqc88dEdVW3m0MR9Ky+
R7G+lzhJdDUG4mS25YRfMLj49izGgysvnjAxcHWKjycdDJwerAZ9nuwceQj2UXztFCy7Sw0cxJyQ
63t/S7ZyMXMILuVNEqF/n5lsuODQFhzH0ClcSxigaBW0Gj3ZqPLMI27ZXe28an8DbfVEs3RMHzTG
Ttjx+8A9U+17ZBr8UmdoSSkp2TJ8oM86+B4qKI1EHlu6HWv4P3k+JOviBxuGQt6bGGkoHxlb0Fo8
KE8sjowmbHVGZVKgmAT9HcQysVPTT9pyx4KyL1+iPPbi7UanxgG47DhfB0Th5olwL2zaNQgeZ696
BiOdIhRMf/YdDxTtX40CTfHXlYJ+Ds237j26GGaqx3uCUcbcKUTS6un1x4gVYDdFbhscrPdq8Ky8
s1BepMmJiRnLRD81UJJF8oKUQGFc2lOcv9OVqBwESZA2dRo5z6djWE190s4TegtAz54ShfTO8Plc
Ih+r8TPKsd41QeCDiP0pfmdqtifllwRE0komZP/oF1nXuApRDrl8sCjCg6DzzhCP7x5gtq/9Y1JS
hakcrljqJDxIYys1LEqiv6ztTcHlwaAwHSKiaunrGD/SocO67sCIzm2LVh80CE6zRIFmf6Rwwyot
MIeRCGSQ2bDRC66r5MD7jtUjc/Y9hXshTpiUZ892b7L5ZLe3OEdacuI9DYv8vBzv3F8BlW6qq/jO
kFVCzYvVufFAlFjXToKqGIKUKAwAwFCJE4Uezcp3GvEbexY8ZZVhpfcNdBTHpD/oBEjpKn30/tDI
sUsthmjwy0F7d4rD3JdHPVrqDULwZstaB5J2mYynX32k6FJA14JK0p9LApT1FFuNeJijcEVCxLYF
l8oFUqA2ImTfhTrCsbrYZni97+HGGf51eya9ThNt+/GibMCN5B7ez3rSiFLx2dWHYlM7idOM6A2X
Qzeru9EMErLb08Pi9Ib50mlYBpHqrmMk0iE7RSdxecDSVMMno+Am2ukWNj95/TTwj6iVTI8x30VQ
IInAwUEMnAmWnQMwsyzpgKrjxgc+ngzfKiVXIqAeh+xU7ZiBraCMXszltWvZyx9z66Rv+n0sfh/x
R3V9uN9GpFlOOWVus9gZ7w6j/eurGxmruYCMNO25Dsn9CbINk/EoDFdf041RIsLRdztMZauEK4ss
Zb/iALZZo/lm8oAXVsWDZ5iXkMt/KIRUJim69jHdZ42ld/ZSesokuMbnfa9hgLayPdYrXavdpuCo
lmVYNQWiJZ+9J5jkXUFh20ZCsTpkT6kFZNn7/bKwa8+mONC/RlxX7XXHkbRdiI6K/+STkud6GDCj
hakF08+rw5XrRanFV576tp9VXZxvEOJE5ZcXWmQh9e5ZkNqVp1yI0INRcjBYWaEnV5tb3aC22Mpk
f36kdx0p5w+A0IfPK9XvacOcBASYz7g0NeI8kcIRtmgoEtafSJdHh+yxKGkwoo5PEGCq1D9HyreC
bKq4KlGxw1c3hySSs1HsGayMPXo/RSfcoVhkZ1ybxxE3C74ZsPubnR7bosFEFIM9jEA0xVDpki4a
YlyPCjxLQmBUXM+09FylTjX29REThi7d58iCSRZKY+2mRJ5Lo6EHdwvNN/4V/dWbXQfJANwW9k4w
b8nBE8UoKTSrQQMC0qRG6q0VD9pLFRL5BSFRP5QoQKlucIN2xoiNLAS7Ed1uvGyIr7R3+YK7toMu
gv2L6yur+QFQZoPfMPQpjUYAuTLASjmk7l9L78FqeEua+fzO8vGm9FekDTkHZpdpuy7PTp22ui6F
k6wOWlXz2rh0JdpOxeW0GpiYQb3GvLWKlbKoHOC1FccaQcv3ttRtxViKayYQHE+e/y2ojEn3Qisj
FZ7rPpnwSHd0E17C1J5SYzQ5+ZEZEixFnTIgz6GA0Q24SNM+WD1YqNuerFuTQ8N1zV9JbK4Ir+lS
F7UtnusKM5rQLoEvL0n2hAwV9f8P7mu5urSa9kps13uSCRjbehlsYkagjr4nlMmA1tWZL6qinaMx
248+kIOYHMpcoE3RCgKFG5dr3sVa4r1JtArZ59bfuNsLpbeBRzpBIgYMFsYp9s/2yVwv4SesrzUi
jo6W8IpZIIIJyD9iS+zxPd3uWR61L5MFR+1WKm8u0gsW9xEN4NQ7H2NR/KHYsurfR3dPj2p0Egq7
qO8Z63bMCSiHu2jPSCVxF9H4i5qiEL2+KPOJmLnxiUlWx2uGaVDBQ1A7xVvfe2u+mBCAkKkRv4qj
6+NKv6s4OcHP6cK/myZxah1+Zsx2peKwzUS5BwZyyNGlvkrbHNWLi/By1qEJKOysOXFsB3F2dRoc
2n9aNPovHcGwZ+UzI5dHoP3lUKAKPYzeA8xmh/YJ6b+4Qxhqs+6U8KASeSHXF1RLSlm+ybfxZy0X
VLwMUDTJOYSAFiSS4ZaIGPNK4ckS26hSXRemcH5TovU9cl7eQqIiBzUgm2IoJOE8e57ND8DXR0Wq
a9pOAm85Eou42ZbJLuzHaTV1A70zDuib650x48NEhoIk/TAiAo2f4R508gfqAVs4a+1m0qjRpSfi
wlGTDCjvtibwYAT9kmPQBUsvfvQhR+rrfLxTFkMw3HNwXvAb2/nq0idtIEGOeIhtgVWSP8U3WbS0
g2lLhCjIdnLwW7Q8akUXeaY7wJxDrYvbUCP0IIOvJymeWT6pdc3Gpd2967PDanKo2q8cTkWpdMzB
/DwuLPiaGh2eIjO2ETqYefV18oXLWEPchX6XRNTgzseDoGbsxmlripXe3VzIgeZMKzC5ujoeZoK4
59nwJK0+nKLnDmM0lMsDiKrt+LJWPAt6uBfY1d5GHe4aet65d9+62HJI1C2yS6tXdXMmXMO5FHQ7
9gFAVpTSYahDHw/PkR4Ayntf3ikgOirgRrtdKtbaJgc5jnVOFbDbsGRhyLsKn7t/GlZ0HmT/9EF0
t45NntoWjKjNiAvDgRNpOoeZVMRLW09Id6armNIViK0ypOI2bk0MCLZdaGUAbiSN2dlF+DsCMJdK
Pbu3MQ2IxTEGZMpcYgB39/tKvtPEGAfgWBItUKF1dXRwzkJ5HA6BA2Ijp/VDHzKIh9xNEiazMsXp
Qn6Bs4+oAG6CLTwZPPEtyojo125W1H/cIv5MrvDLedhIaVlPy+0qXyWywV5Obk+2VESv4UVsYtzd
tJ8Y9WgIYABxKlxfVk+0DUflNdPYyx/Timtm7Mn+A2OthJ0XQU4bRNnIyZPqmP2YSO1zg2cqbVFF
MQD2HK0yBqk8+6aqlll62I9Oge/L802MA66Jst9r0+IxLJD+D/sESISNFO0qzEXoXrXBbUyVV7HH
8ZPMFUv82s0oYZ9fNAefc2kOUKXrRJMB3jRmFqOXXhtWa0UsTQebQfJEvHIL9RZ0FRfM7zDMtaKS
CQ5k3FSNMfWLzLAqHZRupx1edoF+8Jw9SmfFowMu/IKZj1RG/HzdyGM9tKPB9bfMOf5dnvP4Xfyj
anLpNAM79Ii5iC7HaHK9EOvuPe8staJGMHBbbaXoFQ5pyMX7xHjZaRx89Pn0PzE+kzqO1pGQFWFl
IIVM+1bt3vB+JTKAGvQ5MTEqkPiIPoNY4ImCis3MkvKWHpsB4GFCi24Uf87lg/pEN2kOHv9QT66Q
MYyV6RrnLO8Js7soy9RW+hKQJYVRiG8eslevCZlD3rEFWgK+Nsd57vrFj8AEb5ZGgHNzfajIZ8or
sW923lGR0qLRr1ydttorLUzEoavIe1A4QxNEJ/w/HmZVEHNp+uUsbF8L5FrSK8Uo5im3ArTYo9/m
BempEGSpl0N+dzBefJyqvAMW4D4IdRQ63XdO3Iel21YRP1t5pFwM5lqK+74GxUQEpZ4YZ9ILeTWv
zDv2L6+VhnQP51bIqj54kJKD2XpF4b4EmlG8jwkOedsp+20KMGhPU9S0oNK7gw6VksuXo/tlr7Uk
yTUeRjCGsX+F8pvm0oU/AxQsujHmncI/NDdJuUUSubzRBbNS2pjIPeiY0R8Be8G9tbIAhlp13QYl
ekf8fgU7l7VxPsBzKmaMZYi/Dj/eHmb3+duxxiicnxuvYR0DBh85fUNVqzhhCx0f8GHHw7I8g8C0
uxtEabK52Jk41cSSLYVSCDmwqEP+8G8PYiSC8AaUSRpCoDofr0yzD16tG/vFiV86UpsRg07NrFt3
j5/TtR/zl08WDk1cS3nfQFTFBjYWcvGwWHqQ+zriNz3wEVyaMXCyo3E4tquYLBpfvrdE1LYBxcgC
iK2S3fHTRUj9h8lw9pQfP7w7j9ixXWsJ2FjgAQsAOsDTHsV68tYQnNPCKPSbM9k9XW8ctlWPdori
JCwpbkhmUKaT+buelj7ReOrjRdMfpqu5gCgDDxOc3//9CmDZEKgsjldjrHh1A33kPo2CM5/4m1Zf
234tUqAQBe5KHydMzTKSihYvCTqPsxgTINE1pwv7Tm7OK/vpjt+VhKAwdxT12IWqE5hCkGQFPd68
gCWGQetmPpm2nTqs97gk1XnHWt1GxRsg+FyNreYSDT4svGyd9U3rODMPmxeE9H5K+91LkzD2wXDp
0tBk/QaBAtwDJg98xgVjtHqev8J98rDHU15ziGAu5NWBTvF7m16wVNiMXNezEiL5gV9jxgsinKoG
Ae2nPTSc7AJ0mAagIqgTBkOFO310Sv2aYXp7mOT2csqfhJ47pe5ZJYtPBIvWkBiJp49SdJZ2FbEj
10GJZSXHfPHuwyc0idFYO4JGvk2q2tZfYdYXlVuYAxT9/ff+ny0BBoM+tXxichd6/140nQ8A77CY
bUYGdYAsMvwwp4v2RH0kj8S8niKJHjFIHIyIPsmRsYbYH0vUuCvWJ1/aw0oYS5bdpF1UBxSCn3PF
QJSvWjAL52oQzAP+ppd9E5ulDUC55f2oqanc+Ld134JkN084A0OZaFIgVAypzIYwv7dhAc+KE+sE
fvVfF4sNJnyOWTkChCKpLj0Lt0GiHn0sAWYsbsXq1VyUpIdOSvh1A7IjFbqDgn/v+uK/c/HGcWvL
wwRkNiDTw0ovNBXDsLy/aXO2N3sIrZvfwECKYBIj/CUQT/rr+y+TQMzBYvDnb0cTCrEwZ3bmdiJg
X1LqHQMtLWsvIG9QA+YM2xCPkAuRGMa8JiQ6Qid6FDLX0plTJkjGmh/E4Cw2Zg0UDLtnexZQEtct
n3O0eRHR1bPEwYW3AJ9gTDGDS8EFMPSgbNi5iSL47UoSVFzhjAL58BdwlI8aa17iF4LkIkoW4NX/
cGCFpN7DSpamT4+HgQhj/NzbVaru4QU/IYawOWqq6jylZxU+wQ6U1SHDv0HznZZImAuXpD/VHZck
SnsEE82GAyqE57/knCK4/VJsVm/WsKn+Uvdfr705En24ijhE3zNaSqMn393VnHPficSnBbSDLi57
hIwOQMImGElnV02/g71XrrSOUvBPseXX6xQ2t9I4raJcwXOoZr/TBFzOGGtbH7YgZBs0MlKrt8+2
8gdt0Pq/uK7UdS9YuAubaIisUL3NLQK/cktsD5/5lvtLO38puZtas3DlwHYP8fLQGqfQ91h240RU
reb/PDRlHVhlvkBF2+g8Be5S4od7npiHDTMr5iQBgNtPhfQCukIYhUBCrJPv7sEEOgi1fP/ID0/k
6gCTt3aFY9IWoMD+0mdWCK2grwNJjRy1S+XlTMLoi80g+Sjdv/5ylZUi3g9WJ81PAbrNlycAbbCx
kYIPc6khUg3spII8yiPDL8eHW0jGHM2ZVsaesTgTS7zW0r/fYIvcGcFYTR/g8VRUdjB3W18//K4q
XxckKOFxSjMsMm2i0OGI1W9qdpA9HBFrBIm/hqInr70B1BwXCimEwRuexwOkExdd8f92VPWX44ze
yK1g2xo/3lkhl42wQk5g9ou+O2cDlhnaRv6hUqZz9FgkmCzaXYWXQFL4Mj7wDceLYXCRA9Me/3/J
W5z988FSNxXp0/DYrRyFzH7zjRSfnnXee8LfFarGxfD2qOrUhscnck/Gj498B9s/uzqPXwIgyeKl
yWAvG+Q2x5+XH73xpnxRcVJgp07arRaxeJ7aFq2/SnnKoynp6qKnQSEyHCzYsNK1qixlN9l2kmRY
uQ8+gRwvidL6e1xBUmTC48qpOMG3YQClmvg1EH//X4Xju17iWyvh4Y0H81/oe+Tc+9/GIFJi6ksU
7zL3kBsaKO5Ft8Oi7ezgatMv43XJ38rEmiHr3iX6qmefPBV69Xd8WIgfsCVvtdLyDuuh/yM3rerv
ZxiwsEFxXiWgDUPVvNdxBP2FB8YtRv0qMLC3IDjQYuVPSut4A/BatVgih5V3yYLYrb/DlF4KOzRI
d294PlD0WHOrNkj73M+e4zpDKyNDUHC8NqtJI8u+nSCqCYd0CcFfNxLPfBzM+uCn5+AO9tMfG9uV
pGcD8oggTYYMdzds6+0elEycOlwmkyf9mMmueDh8PA+O+9lCqmOqpi12WW9oCbuVHQcMo6n2ZeUN
kElHgCurDyxdR4/mPPtY5T43qryascZSAivFNsRv7/do4/X3dpQoKtcthapTU8/tFqZb/dpagfrk
l1WoGXEK9ywGJBIFaVuttSFjeqNJ+Q8n2ithCybwzMh6WpFb7DNVLAmzxZDJq6tvIvsj1dhNBpgY
+nwhmgP0ftyDhMVv2pG8oY3/I9fotpAE1Vx6wT045VcAgNQmEQmS8FteA5nD56KuPpCBA4sfzRLr
YJNt2fyZ2GGHM1rkGN+FgIagEVdkY8ChiPmntgMsKHm8rGa8urlu+PD2MNB+t0hexGlLwg4C6Rsr
0xUfeiRjuYScqkpHeZjT+DQsN/HpvN9+9UbpJ5NDE4B/C9H1T1bDGAbhhKrDxtIlpoJE476G+81F
f+QdFGNbf8/cj1P6Dav/bT8A7wXq70LM/krLeQfLqEtUbZzHm0vfhWifyLfkXZfzqPtMnqJaES+Z
OHKgEoglUytl0maPJkhMZvRhDr26s2r9WMJZ/GgOlVTVh/JCmGFDx8eeU7J8EvnfZvdV8dm99++Z
k5I/XK7naQ3l2gHEjEferrcbiMfkdqf5HIrIs9VIMGllWCn5Hs2gKG8pC4AJDoXkyDgn7q0EmOkS
wmt7XKwOrH53JizsWoBFDp+WvjaQiGA8HXjLt1ARgwXHFMia8MP8rmTmsvzzx7zzMby1bpOZML4j
BLNi5L3NfkKUendppIfqck3jMIUrbnNDK74QLA5RBXGS/OoKdM6EQu9JtwIHzC65o13fCk3dEaoZ
fY4O5c1IJsDWmaunxBQKK2ZLNG4PwO7FljvDqSSMftC3fMVLF62RmT6M+NolEkEO0pbxnmMygcbw
hUUf/CjXnHgtYtmq5UxZQN81MFHWsDjhb063MGEWyD1sAg1tdQ46C0SAVEmbJ4BYvDlwSSKPYATF
WpDM01eG/QZ27WQqEbjj8vjU0qmm4FzUmohqhaXDwYHcbE86LrvMpQweJT2YVFmKki57Ot9E38Dm
1R+wWPcbfM1WoXhrLNM5ZpSqs/eGcGTB2FezkJFk1l/+PUHdtNAEgj+HSZQoyJKTL84rT3/m9fSF
it90oBpbebXc5onUs+zjC18muS6xTFizdCvBLJxtVymg4ncJf7oWdt2COiHRaYAjdE9f5F/UKPLh
aONstkTKCP4uqpZOspyWlSvwTJOMGQtTHgpr8qvolqSmrTaFn4dWDSBHz/vpdFjgmMLGmWwp/ISB
C6i6x7CQX7OqIoTspjoCE90jxtz7/fTI0llx4gi3BaS5YvOGjlVyYK/X2BHYbC8/aPKVWPiGFMnc
XgadqrqDRtNTNDksX/ux49CFkwYTIfI35gr0F6st2JM7nOiinVSqOo9vi9y/kzSUl1b29OTm3NMM
gXY5m838Ey5XarJoLZhfBiXwROtFW4AEk0kboyBSqTmBaP3c5cuLIXF8u4KkxiPy3xYHICNjb3bF
l05jU+OG/FVFxwvdSmHZnwYgbu3J8L0pap+xbTTbxXwurQhYru6yOcNTQmanEcUxie1TmRcIQw1v
CBy6U/mjoWa3f1yWDf6KzW1nmTras5tRgrR58b+4pKuqNtedVlipjrwCj4jiciw4/xrm2ZjPkNio
0ErQeuqYF6gon2K5rR61rA4GgsQDlaqLdpkjLPDMMKsXgVP/vMiI6xlo9y0sGc04pqVgM7OS8SXm
G+hIBkrGR0v5D23YYruevWXVrUwyk58HM3HOlQ4MOt51lRZ8b7loUp3N+mmjko0TJttr2Hw6yBQv
KIZJowYKqTjmMkzvzAcNyEoAq93ZAlZ8+Hi4aBT1yCWLpsVe83YQMhkHOYVVgtrA2IZWgnRDAHkn
pdUfeoJLc5UcRFpxq9sYdxkdaysoeUXzb6M4Ps/qkSTVu8SY0adSfAf1jKj8UOka71l4hGjOsjSP
c8JwmFvXajyipn8aoE6cXfUv/PiNLpJW/VJkZIDw5S4/2FSTn9C9A/4qj52TxNf09KF0o3MLjhDu
g2IB6YQQSyS3dUqWza+r8WKRtT3jfHl9yxXIqAGDMuNdjX/je6oeO9tP1fYJXtgPNzhfqxQQSjcX
InQCTU6px5Jw1IcOfGb2I/Lk7cDJpWpwKp9TmE5A2VY7odKuYTBLFDFQ465fnNldtznmzQm/J/te
nDGKYcycTwZ5ZHuIsYH672AiSRGYHdJxFyPzNHmbWIaCy9O3oKJRG7IZkp3X/Cq62+O56L4vy6hS
4Nf8xTYLTUVg7cT/ioZ7fxUBHnULrWlGSFO0xfWvNNZtlrR1MMROpDBFO3cVclVhhlmCzfel9HMG
jWeUWeMBcgzyZZC+nPZRsj28w4G7VnR0YBk6tki1acCvrpUTzM0Xu54Aalf0yQKLNjk1WL/adHjD
ZPj2P4u4Y3GCrhP8T0PM9M3yArcHKDQVGQR45A/jlfgN9vT7g1L9F0pqtZvXSyZAHh/aewH0+Y0X
G2RCMwe2x/r4kP6Qda2Kk8yZ9MA4S0h1OPUWpAQeyCiHXPy/Qr3SUlbFzKHtnyCtyqIVOKLwhqYS
WSFPuZBwGEQtxox2Mkw7IqbnMRbC0knevaEwjGFdTZdktTXtQilzaoDE+YuJsBIrLev43D92RZaG
bdvEk+YTSB1M9Be5UtPZe2farPl31ZO7jnryZv+yG/SQE4KO2UFjGKXyIwfpqg7f1r18n45Q1omn
sF2bpRxzrpWU3k+LpJ2E+cJ+7Gypj3kCqUathI8FFZ+U7blg8nAhSNNatc2yiz9ZkfKZJW72CaR3
6Om+sy9COLR3Y1734fphxUGMbe6OqWXZkIMfLo99mDz0YDI2mrvKKBJ37HKIH4AtaBoHecytIRDT
KgnHdIYo5yAxV6ml5Klwdv6Gjz0RnHkE8AeUrv+Rv2zCJnDrIXvd3oAJWXTmP77q4A1nBR+UlrHB
cUdfUBYt3HTLiSzUn5cGiKtlbolYTYMx1ivmRafvPyX9ePvg53ib5FAxSH+bZhH78az2fy3VPSVu
wINtbpg/QfRb9M/bZ/Pty9TNEb4d3Iu3vEh/KkUBFHnyaaVDR0/Tc9MCcLVSjtxtAnRvTQe7y2zw
kSl0YMPbjLu+rDLYoOmkzBk6IU0+EJpg4dgEVHOPz7sFdKUYZOBTFZcNbtKa/g4njD+oa1e6rQbK
4RY/9L7YoSHqM5Ymt0KgMzAa/TquYpjzixQe2180E8Qib4HAM5GtmJuKuFdm3PvwXrCDi+Mrzjf7
XMoWcWM+6ZmhDznlsGTf0a4FPf21kUz06+xB3FDGV3qZEQrTPZJTpqPFi9rLXnxaCP0AUkAwMw8b
WxWrBOGQeZx2iLRj8EaoZmdpR8nEIzRPrsLEYqKI5GCFT+Ana9nyQw5pba8rpRWKFOW4ZmhEvb4l
+WWtWVwLuopgBy17eJwnfn+I7Z+9SZAVoTBnY360OZW1we7HTzO72RozeVxwE8cacjwXsXXlx4vf
k3dqWNj4Ul+Bq//0s9wUO094Cg1ghKcwi5joMDlQSUjp3Tr2lUB+mUNYvgVYKRw2bB4Oy6NPLve+
DGdV0dLN5KH+IhUKjBP2b64fh7fQcfMl9kY0CEJI265a/qGClncx8P5C7O6Z441+RGirzWcGMuIZ
Aah4ADYm/JATyGrr8uQ/AZ9x78TCeTVUJGyCxruN939bWeDfVH9jaIc8SnjJ5r/9wcGR0IQI/CzG
DXrCUaIIZ7G3L1XO07Mw80KGr41djIFQWoWSpq0AqGf6CrI4rHKL0bqJgNjmg9aEZDmxEHgZTtYU
jj0PAtqnlSPL96ZAegmz9srP29Uz/KkYPHT3WbKFjgGhjGO/3KxDFnSU+pFiKj3rBS2i+C9B3iSq
dm7vbmfgjI0OBulHK0IUIlU3qkaW9Hs/oznUetdskH/nd5MfBmbsdILrbdcOp0fM/vO2Ws1Y0Dsm
RuAqi/CQa/0IO9htrRH0ffDfEurzYSuk3AUvYiuaIfudHGD10cG3M1t7/D+g9jVOKrZnkILejPYS
FmXnCbHTRHbYZkenhRB5FdKDpQHDIK+lcQdEOF05L92D1p68q4Ss5akC1MFjRGbZt8vloXQIqav4
AjmXQiKwdF2e+LND9h7VrWRuAtjYjvXyIQtaZYX49qSSsFIk1KZ765ohI+8IuZHVRTWUO6UXAhXl
f4vsC7W5eKN3wbIyzuVMS3K/JGfeR3XGu7eKobMfJTu7KhR3KRIMKpjlHqgcXPhElAzFVNX8bPu4
IiA8P/8VSC/r9vVSDOpr3aT04QFPAnJ1qgLK3x/dri0FSWgvkO6ajygYpa/1wedeAqxw/X9fA/iU
m66kF37qtAEeFDWTsiTCULW7aaqXIpiYljeX2zQ5aMhPxAfwUTlimJ/pnXjPp2FdGHKHeiAwd76b
R13cFZJOrRmeXJwOQ5CMJd7HvrdKj0snl4aWdFGMUftVVAa6xHy4gqC/2R7rLEwgJEKNBNa9WOlB
z8b6wZ1kckiyv99dXQmbFwmML1TtPkVIfk76dL98gs2r6X3VCGQxiOa4/7ArP5WbIn3dIPuS4TLL
FM1go+Peo4brfF01kTcP3MeUAosAI+0WoXDHX2MpQ964vfsnZbsleFd4s721GoEK1qLz3brFpjQc
geTmJvRi4Lis1UIt2CF2BqB5qPlWG6fXLSAJ7ySMnaOf/wfYotO8R51A/oOkiWves5hmiQD7Fs5z
zOJzf1rCHfrCWUp/5PnbKy1J2++P6IpwItnHoPCHODJpxXVBM2b6aNEmgN1JYjvw6p+p6E/ApArL
VU69DYDVuuklMZB1gPY4Xn9bjMRmvBDL6Aivki79ywQUUhopsTSm7r8eCB5QICXUunJOx3nfsA6V
/pGSdYlm+9OS/gOyHiL/tKk+fPfeEV3JbZH/sPTz1pVClmK0deg+WL8/OXEV7GBZcgiMKHkGcppt
g/yz9drhB47roXGO0DRuvmzLjivxoC9VlRn5WkvQFKlW6gJsbaCAJtmoMhWlH5nKhDYEqA0D7NgK
8mCDJAng9mwIDv+Mi501DW8SQ2pPPj+cIoGafcfH5cnlUaWebgGx2TDcAz0LSm8EMjQWiDVO0TOj
CI9Y9hF+IRvulp96rwiHDCXs776JesjZO9nmS1FPh21RiIEkRalusXUF7v3M1pd9uEqO9J7za+UF
+RmbhaOHT1U7JZawVZ4l4vO+WbR6IIbiG/G7OIHbuZGuxDzhQJhCfPaJtvDeN8INnzOAByHgY3ng
388nE6syhjvYV8AX+awhcbzgF14rwqPx0BFsNHd1ixl1eDHX1ncuMsOc0oZxywXgE6saAAV5s6hb
Q3EsXkXFdllm19gk5KL1yTyA2HgpN8N9QeNgjIBvz4Jrj9l0sQnINIhuWqBtwoug5v9BG17OlXGb
/UUPMMTXs6B67oja3txJKjMHnINfbBAdNpBJO3UeKCvWPR07BRLOWKoQCPaMFlU/UbWbbGmyy7I6
vzd/JCnRStb/RajltP4n6J8Sbt25YaWYzLb6aUcNuNnLLFu+Xoy+RNNYkOiLRiK7hpTDVacTMTD8
AB+bO0v9dEXi3+V3QGcQz+noW+qTzL+/TAX0+SrlXbFX7GMZDoJS97kE+n7sfhfjQzNdPqG6FtJW
d0nhEG4v25RNGHFm2EN8LM93UC4SmaBjAIEWn+SmhCA/2+R/QDhsLoyQjmOLxLiJc3StK3Qld+x0
x1tHjV/ScBi3MRFoo51aF2DVrdcOpuVOrFyjG/yMLyrg684Ra+pmgR3nR4n+p9bUpk69qYWMGQG9
sa2Wfje0cEzLdEObw/Z9Zx/OA3GafKGCSl6xpZI0B7sCDwZ9gPwNzLH/Q9N8GH1+LT1+cAsr/r/Z
Anx7a8HQx2ePp38TpNyABg9oP3MF1U3atvaf2/yfZPh+/xqvxFs/BJO9vE3jkHs+7xPEMmiRazf6
30QUB+rxhkW4x0nU1EdqLPFenvvN6U4Yqu9XMxA02vhvca03GIwWsjdKbABuTjnQfv+6tOOA5VwH
AdWHaELcknKElaQTGilpmAb4HtzP7EG109ctwFjPLLrMmNDVnW4xP5PeTejG/JsqJcQiEzOXrmpE
p3QEW0r1wYKeE7W9c58naFg5Z84jPAu/y3gpec0aPeDG/hJmne+5H2iv1f1y3CTQ4YsBHt7sqq9R
/lgRCpe7eA7YwPUjsaP/a3izD7rB4k0v+0CtGJyCu/8YEPCWXsCbmZ28mnPK8c7GEiVD8GHhlIg9
/+zuA65uI9dXzdFBqwl5O6w0+1sgePxU327bvMa8TalepjPP+0TL2ZPqbttUDDIjxeiCU4lrK/Cs
AGgxyERGtxWYQmvcVTWtoTMu1plkyXrOYlsZrfq4B4q5DRSkfHfmQU76uGDNZJIlIZninfQEKHxf
ivnHH2qpfp4hvGJCWe9u1fPpKAaWLrzmvPpCWyJjhlaj+MJv0LH+8ZSAYUM0kqM/G1cx9NldP4vW
Bwzn3+8G/NZfOvalKVXM5ukHchaKM+DJ7LG98dA8mAwH430VttEGUfUt315qx1Rn6Sfjr+Blcix0
fw9kuV7MO3oqNPR9lNM0Ye7xDgPZ/DzdAhKwSlLfGH8zcpDAyVGH8PWZiS5/qwDClUes4pzHNqPU
8XJ9+LLaBGr286woXjowjS2scQ5IS48qCNEyh269TK+lvWO+j49xghlJEtCtmZeNtlJRlGOPVwuN
KnYe0n6lD4yJU/AkMxJqqbskLc+RvfhYjpFZ7De6wA3bTEFlvm1/PPSfNI4SFufoQtDJ1IY/Z8bK
6p7FtvRkJW9SoiPbEE/VPyy1ucUM0GW35yfLaOfGKzpnTbrZoWU9utZv9z2OATpbwgtG5RtehGmY
ZF9EVTr/1oEAOV9AoaM+suEX4cWP3YkKf0PCjevf+NfkPfWJQ3eHJfflmsm9JDfjcYXWT4kil5b0
9xwJvRP4fPZMNmSVhAY9minre9dRVaCnyhspLplXOx8KYuedyZTOx4/gFlNX9bb1rwfunYOM8d/f
EJbBAz6OubCcrR1jRCm0S9B3dgB5z/80O5qpWr47XnPcdtcfnDBVmdCQEeH/f0zggdPPjz31kgZ1
dJP+ypDPjT3EsK5sj/OruFQsNk/TBAYWyXhAf4+64rYatXmGTKVjmA3RlRqHZDZFEzzLIOlIXyrz
EbvPC4hS3k7r+hTeERxEw+a3c90ZmiPALjAeVGCqgRbRPffNXz2GEadG72RQE8+WwEAjsq7HoiGp
y+rBme0ilVxMTrtUmQe+uByAZQbLkvQZsGmkkNiF0Kz+b+N4Zd8FC47q0r4XIKjS4k162VF4aRsU
buu9iehlBHpwcQwfN3PQkeRvm+oFzvxQGGpz2y1bWO+N63mvqvC7F3qWi2JKkznYgLJWsSzHffry
LT+monPElhOt8WQCMXhH4kM1xOJiU47NpdUgJJ5inwG2TpMVGWS0iaCNC9RvoEdd282yoFucDqI3
JnzUWzgFQbahr1z6gFqAAvN6Nzpu6r1g7a4EUl4L/JDaWGgPilm4jdWRpTbwsWPbZXkLNmfnE3+A
YPMEvOXgu+ovwfMvv6tsNhTATqcVDxuaJj85v1p9FgWxn2Qsjt6dvZxoo0RuK18sbLEbfpv4LIRq
91zyqlcDMJ6cyrlHpOKZFJvBkc4v2ONNk6za+Vy4kaC+0MKVzts3mybEM37vk9ZE4qFIFbYmVueR
1f70bXg1+zAB3MmrIfjc6HkCBZkRn4b4uNTAfLSfquK8UPDYj0VB8gpV5320pREKNxTMhZcNuTlh
+uyisCNy3fvSEiNNjXYNS634V8lflBl1hvh+ghcbhZBTuVQ76yh/t0D0MhLxYW+/h2Wc7pxdRWGs
3yB9po9Sq4uUi1T+NfVUpFb8vzOC1yI+IyryBDsc3ZkejyqyIUeZRy92l8Hdne8+6WEKRawoOQEd
osxWEVXYK0lTTa8J3v9UNDkp8twbWq20NPQSnf7B2Dz/nvJmYXViGTLLUTCjO5DTFHBfiOd+c1Bb
MTXVAuAT+MbFJKa8ut2qt7iXHWl+kNMobk+LjL0/tYkA3IbsywSMehlgPe0pz4WHh0h16iYh+V6s
3Q4FWf2+bV++lBpNTDKxP71XV/5MJth5nWjYZ50frkBtLOeMrRWzl4o/yLd729GMkLvHWIC2RVoM
t8Y5KjRzIVZuz0dEN5SwF1WzAwwXp/v/iCz150tDIxL6EVY+IPPxxplUO24zh7lsOGiKFKto/8vW
p/JbHiXbQJ44GEKxpvzkr6ZGuoEB/Dci2YN4alWSmTeUBuI1IgG9ns6PgOUpkRK9CS93q/+dQjj7
m4CLonNommOKOrboOpKZEqv0BeAm2SjB5rMfKt9jEWgO1eRe4bvx3/IjknDWcC74nZiQXgAKKU1m
5fygzTd8Z5TLHFwaZIscqpSF3mQkGvHH0vR4HcAdiH92x9/mH37L1ePPUAIZmPmbB/eixEYeS6gE
r4cHfXgN65wTYBWr/JpVCy89D/9296WhtISytB69OS1emnAJ+KTID6kBX62vJVxcsZ3w6jaceCtn
KoitkWO019EVe+X/A2EPegh4FN2t7vXUGvF8xW7aNVuZQk8ddfR3h6vN6JKo8u1FhNKBbmSqbKOQ
xnhM5Q7lQ6dUIvoTVb/ewbo7hZrLkEYrDnj9WGMbpynEghUB4BVuTWRYs4RVF1pWYEPOLSgCYwxg
LUOregSWBJYhHMqJ3Txk6qedYi45Il82aZ1B91D6hqSTYhWALN8USJcBMt6M7wYFoZstJv3HjPJd
wKnIk3bfgoE9yIPWP8LwhMwY5hwUB1SyLvLnw6OfAcO04TC8hmMzA1B1LhFouD7RuDBf2Xb6XVuu
lvY0D9etvHd6DX9K+/2SYaEpCfGANc/BO93SPuxTQmaDYMJslNwEZyglXobku/ZjAxY7arNNHC/4
gZKlCtX1RkQaO6VUYyrzSBUM2TOhE+UOMagzeCbjiUOiSlrGyv++1+0LAmvdoTzoCqlzReQGLIP5
3t7v5F8iD1PzkPLEikz6Hqqf075/9LkzgP+kUyp9p/DT8t88WyNQe0ypPEDNZWHDyK5oywdFHsPR
jsOAlCDJ1x0SKb3VWG8KRWYe5tnMMNo+edh5ey57Cycqyg4vIduTVaBOANPtl683uu1lPuvnbGXV
3Bx98dci/HNKYeA4oLO9xzpWARo6mjUF9aWG2aB+bZ5q/hN4OYYU7ZPaj70WK1GWcwyLOx0SIxWo
TynAmN9bpWtrGlFwwhE9WiJljrO7ackpNgy2JOnRDUzUqEPF5e+2uEl5FbeSI8WmvcSAo1fX2iEe
eb514Ab+F90wifkIRQJCKQY4YBapxM5HQ7p8Vv2CVEHzsq2P+T0AB74JA6ETdQtXTwpuJ3sGX0DK
hHm/fJkv7fIGALBsKCCjvXxPT+YbVC5YqumMGs8Juw8EfI8xAI495JmBQuoaVJ5jlN2q3ihv1TT+
FMxp0dTAh3H6v+V+ny2Hvl7OBk+Jnl7sT/qXFMNUEcmnc0iL2VHE9RGPgU4gLaFJipqydX3brnaB
DsfX/ZTRy6OHtv6XtJoPSZsJFyCbuZdi05bDetMOJm7O9z3ENvBfUfHvFgZ8UIHMTgSFl8ZypAG/
YxbIpz0b+nwAcKcT0PxjAMRgdO0oEuWagcSjwB00qvI1MduJq180BdJvyA5WIjB96JEE98nqLNTD
no5CH2uAZf7WWXNNfQ7ilAwCOUfMWb6ZDPRnkvSDhv68jBIE6R3eNqvkTDQ6F5N/WkqovM0NulZa
wKBbcYzKQwmHvur13fRo/iD6tHKu/fCdesuvyIlicePvcUvNNe85sRz7M2RWI+MGOBmXMEztOzIC
gFBcyQ8lYbcsv/bjWaWetqZphpJgmEu6WoJEezFVLCZ05vRnXsTKbridabdGKiqZAte2tBg5ZZEx
oYrAfg42JUg7JQjIT4ui9koILxEgQRPyCnbJ/yVq3mNl7OMXwtrh8G039VtCcnu987Jmc6t4nAEQ
UfhmmsY0r1BkltH7Dlrf3xhA4SzG/HZ992atTFpkW7e5MWwUHL4wVaGZMAfiel2F0DGi2B/iivMM
r/V3AAAe5JydYSZf2p+++RYLQTdNznjlAEb+QJ95aArkkTQNWj5TFkd6prRW9/oHfN9aNUhhLk4a
3oJqgxQsoxjmTeamXDWjyY5z2gwRREROfFMhLa/Rul4Er/x11weAAlIZEZFXDMnSssQaIUtLm4nm
uS6Jq6yAgRbXj0ievvV+zTFAwzw1+/gj+RmnNFn/GfGMVAtNBvSuAtPglqHJkD0PY/WLq4wOBhbw
fSSWkuFAokyXpnX4LERZjnRZjwHOf183RqaRflaqBpg7dC0u//Gey4fRaOx9AhEdb/ekuurSV2fk
QQtnr/eTKBECgS67z/qK4TL+O3rUD7KtuBaqddd/Yi0pmi7DmfmG8Z8BUC1sdEgf9U+RrS5PDGjl
AgTcHLBSCfaE8oGun275nwpnsJQQ10c36IsIE6yWV0eVLTbCrXSGUk7GtRg04YodVtJctx/+1gMY
bHslH3zhEXjf9tc5IuAKFOARrKiKm49d5XQGgcHS3khmKQQr4Gj1XKmF2hpeC/eDzgKLCgg879U6
GFUQKFoxI+4VUave0TBi5EQjFt/++hQqrHQLCxoYaPMZ9t4FDPMb1dVutUSPLF1XXF8xBlgyntLy
snXq3ME3Uc2N2kmvIrWd+c/W2RPqhzuEGQgBwH61/oWj/tpFeXbUcjgYHYAAjEGhaW0DnpwPXQqn
Eb9flB5rM+8L+t72iiMcLXmjVTRA63sr2icV1LryEJt/17eZxkaFHwvq0fLrUKrVuWQqPZjpYYy/
yS2gPiD+T9E2xEOg2MAu4wxEKpcGcGuOTR0NMWFkYdUfDBosdLWv82zQ0x2B1WCDrL1crZgK5ZB2
Rr6xwz4Tha002s/SwPrJheGr2Zt+3F75tbg3P98YIbFbzEOJ6rVDLVuykeqTvqmTuqQwBMz0UXcs
OuID+w+RCDgfwCtx3KtUTaIE6GXK0kY6u57XXdE6HCSd05tllVw5xZLHEALOX5UwCH0xRMzElr7K
C4AclerCsi2bc9bBJPA1AS+GYRmR9676b/JQ48ftdbsqn7N/T/CjSu/HrD8q+FtdC5G9OAbmh2vI
Hp/I+gxhsxjgYGJv0V3WFRRPjxsjM2GUYTZYc8WMbM0POIwDhAa/Sf8TH/rfiKCGjNNLGrOXFhLI
DKAswLQjZH5w3Bh0tyhv1FDgNMQfF5GA7VuPJKA7gcNhZb4iKpnEx4P2qhlbGecN0KFXg9y2lM+C
RkLzS6gybrr8Hr3MEXySjUI9EVYxEe1pljZDLpSSb4b4l/EhffjCN+U4yZ4Lto8hdexnTxrbiPlV
FNgjF3NFG6mQ1VxC0YAWvqkFqXNbFMMuFmZRmER9yFUWztSJR2hibZNKlbQcnJ33jDKiLg0/Jpu8
cNK9I5ekAdK6eg4OShQ2ygn/3yDz8cm4B7exeUEhfifqp042m643J4hNPiSnVmRy22d+H0287iw2
p0jzC8wyPWcVdhbwNHd9sc0W0f7tIVWPpik3BPi3PoE1rJbJsToWFAgzQO/wajKOXanuLyNB/Blo
O74foFMSNGLkPinr8YsORvYpEvgebxLRT3PgsOaalprRAQ2XgIOIRkJAAqxBXf7udwWRTNP8nbut
tvYLv9DG5IhXbrSVSj0LQvETn1mhj53Ez/U9ZIAOQkbFRQ1HVDOwTVfSbrAm70SloY5lg2dAiVRo
HIoBkzBPca5m7yTVtdmxLF1mWVQGN9eufvp7gr5wUJSDDckXIOmRKIR49QRjojQKWr3T4TqvFPKy
m0zNqS8y0cWAdAYVW4xsfJcqdy2w6KetjZ0ob6ivLciqcsZdYPE1k+RYmj3ijPBFrKVPfS6FNW85
wv6MyCwGbSK5On2afAoMn3MrLvSNZmEGZ08XUpYOzPMhYtCuEP7stTM5dgoiBXG4uNrVmuJ4PKR4
q7T8kqNpsNcpYvVRiJ6vPm+pm4tbMD9N0vkAuC/ZlwH3vtqsrPAbHohcxePu5dzX2uj8Adn877T2
bu71j3ebYnvmlADljRr1eYpB++pF5BDxyI0UUGkpPuJO1tzzF2IxtoAgnQgSKMKAoNHfw3tGh60d
5kOPrwAVYgGyZg0fIPlG6jeuAsRGeMaTMeyzrvUG9GAVHB7P6jlxC8yEpdKdD7T9JNvXdnq7vD71
dIxukVamqZk8MVPldJgXEFWfM3teQSD85U+U2RTTUNaeTo6+lkvrEU9xxzlStrvB2/CskNabECzU
Ue7cJOcxbwebfk1tWZQwzTcfKGCYnWvwlcBNTYkDjbl6CVmVurXWboGy/3OwW+mQRYuuF6Vhi2zK
gZMtRj4ScI+OEdl2VD4CibkzEhQDl8BfjlW2+bQUzwDsyF+Z/cF/GS7z2NVbHk6EakylurZdEG1e
IoSdwJauhJWdoVu7l2Xbqip3NnMe0Y0vplZv98KGH3FwKUU09RwEVzwmLspruRkKACc+PBSXSQPT
qvV7CRoorbjzyyhoP5sDBrXDp1RNqX8MWkWVldhX3skiUUoqz6WEdzeRV1VhhTtzLdlsn/4xpv2l
Vd9Y7qx3MEEsaavlBh/OQetY/sHuNW1gjlFAf1lU0ucnxfVnbltanIiT1YGJkdrG6hOcfcXJ8Bei
vOFxhvJttNoJO5VYAwHXM07BOjmVkAH5ZfRXi6/UYo1Azlnssuz3VBM4xyKn+BqyD3Qw+j2eufdf
1JwzgdKwZycNDml361cUKWFwEQiCJwe9mDHlaCLbGgfktrpuzdlaWx1Znqb1jw5pT2J7ZhLgbqUn
MxOk+Uq16sWMvCPjiXthZHlpUecZZ4ZGFrCjxnxUHyE//xq8KC1UEfRa3vUuje12O95N92FBY4oh
M3F9jLKTydqBob31cDOSRqKcooIBrVMi01xozK3Aer7Oo50gDmmAmX8vIcO+Wta2gwei5YLIasEm
OJ0G3pww5WOYLuw38FKrhyVLGLHo8aftP50evrKC1NI2EDbLlXG9IpmbqY+oPOenVqzq/ylDpUW+
VEMESYTZsf45YCAX2lV6w1q59F+sBylG5x0pQre+bdhwtuJKSf6QVYRpb8RmYrw0wucXR2u84mLK
D50ewT4Em98bIf8olMsMUvlWlT9BbN3l95hHeu9llSgzZUUq9/lpgA9By2kFIZBbIGQfGTr542Zo
tYFvHAuWIaA7qAkTp7K985gPRQuBywSooBVxsTIim5klan1RBOBEPhTvHcyTRvbHSspxtXAZJSys
Su30kr67BPEl1E43nHsimnBMtucm7WGvLNXCqoojqbJLnIvt3a8bR9pHkZB5iRzVsbn4H44ndN3B
wlLXfC71/sKf7FJ0F8fkloSd1iJ3MMYiUq9P8IWat1k0RxUDipc9ywgo5SRvDDzjI9wrZ2p7/2T9
cAGcFS1l1/ea7IHa86h0JYlMD+HR5IG2FXPvbQVd2L5GJgwwt07w7Lnln9vQeLqeXaNphP00QL/I
jsKib3yo8RZM5CPpNR7s6qn/U7HorRmYwxe8SmIhkrKC/MRIKsslhrzWka3fN1WVi2RV24M5gqzq
EF+jqefJ1WuCxFw1vOCSxUFxLGovR1rxJHtka411reP721EYaw/esOedG9YFt4wynlX0sumAvX7o
YM8BHPbvB45oMluO44dvaRghYCiZwKzGVVSaD9HWjo6SVDbBQi/BWHAH6eEx1c1nPd5lJgSlOHKo
XotfpemSsTQq1cLEqMgjqMR4NAgpVjI6SclDzFupZnQYZ2HEHtx3n8UW0wU97zXi+CYdvTZ5V+B8
kZVQYIyJoKNSNjRP93T3sBiGxm40ZJM64XydfwVWnByiUHey6s2IQ5IS4NiNZY2jDMWaZdMg8S79
FMPQeu0IZQuGOtIVv0XhLhMnxzWFsIF6izkSf6K8Jan9mA0svxlA8m+YxuKvmXIbHv4im2RQvxxF
UwFyq3avsfLFrTUrX5xGDUvDI17kEDUVMNWv22Mgg6p3SL7JusoAPBw42G1v5nQXbdZUbqBxvc+B
00pXWq5vDGoyI2Nu2W/Tv/MDMWSp4+YgIB3lfH8l5ftJfsHh8RSvoeaO8IXLPC7x59uYk9xswMyO
/W7LH6GmgDcAM7DX8/GFM9u2RvG9J7a0aIRvN57rcqvhBB/Eyp7VyeJZbfN5cXxMf6JX4IbNSKs1
JCRfTT/m+XXQJ+tfpKvmwDn467eBOLnoK+YewyEeknvbCeKaYctD3Pc6zTSmxZC52wIF6zd0ohpp
ceHVzZyEpc73I5JTsHtZUwtnScJzsIbOt0JaeRg1kQ1iJeKgoQGsVfs2qjWRGq2zJ8wMNmBZ7PCC
t/itWGrxfQKy/2jFJMXHQ/zFUJe5z6+KX3RUY+fVxxRO3ccV9DLEFdRZuYUUjY/4GNp6AheElLOD
DntHJAd268sjqKmRK+qe54fEpMFIzDLIrGpU+kqsAan78PHQxGgaiJNzYEd4KeThj6SBvOLlJtcS
k0+4wDR1IFNo+YdhfRdA14s9ciL2sQLqNojGyJmBmJOGKouDihII5GdBn3smD1bUSVE13WXGpJFR
WtjjB4fs9LUKy6pDaUvVLsrSS2ad4yIO/zghbrecDZLO3mYZsYeCFb5Rip7hRb+eZOc9URIqoOqu
s7OYYaACiywdp46q01JJOxA8DFM0Es1w0c4pxn0RI9Td85YbJRF9EMTwh9ElqF/ieqRpzAmFCT6R
U4uKiV2tyLiH4sFbbNadb8iQcJZCeqjjfo3elLNhlZaw9mOdviP+EwTusk4I3fyyGmLAAzqiNSMe
Tf+bfBJ/S0M4LtSutl7P+Xt15iq3wSD1/3KulujO62xEMgW77PM+UbJuI0/uL/glra+sDJz7rzKE
SZBK3FDDQi9NSYuJUxmu3ycDfHd/nmJIXHUIsF6BRKd+m+4bcxkwxaLM7gZQGAiUMysyi9M4b0e3
UuE7iimZ755DpDpS4/oXgw+56ITXWIOBqjLeu1/zQcqRgEbc7F4QO0lQYNnTpv1PZDMzOXAH0sOD
tEZtyRd4u2d/7+AWn5TNMtvlVx8+3OeE559Yog0zv7oXUF/ACOdUOk5AhYxu+0kpUDgFP7k55AuA
MuANY5sPoMSWVy2IMwAt8hGFpNUA7lF/dyzOWCqynMTM4sQXMsG2K/Y7KcgmOdU1h1I9rSRNuYRa
w3LVPLqG9j9sMv054LUDKn8UfMaqmC/EvhCs7bL/FXO/XCMJUvME8WoJ0bzGpKohzBWrV5Y/Ynk8
XNZqgqy38cdfWB6walTyB64swifzk8H33YuoyVJPLrkY4X9ZzJiZtM45v1pbpXXOoAbIvIOr6GDL
zEy9A6twwrfLJqDno2XKNJz8lT3yR+haHK3HnVYLTgE/grymiwTEuUL5ybaQ93t/qQos+UbZYnnI
LfRa0GPg37ZvPYiJxxPbjZQgg0kFs7H9NsRLF8o79p18uJC0Upd8Esn1iQMbJdL2LXF88kRt9zQk
voccxETwdiKkcIgRKyQVx4c9O+AkIWnBJ3ltpXjZ+AaZOpjuhbxeEc3V3h7ZXI8Bnv3YQ9LJUcGj
74UJpXtYyb+FoWXDd3rcAc7tBjmKuNScumcH8oKNCCSkePNlTwTziPrJqaGsIyBoQHow+lMwjKGE
Bvk/2exa+vJRXd1PGxRpxHgHl5eCcrBRPR3XjAFn61J9e37/7ADwwPncr220nIZJkv3QFo72OEpn
+gNZcn6M8IJsRSMNYojqoT/hjUPGqJKAATORaTR2P97x37/8q9O1LgYuw3VV3jvgijnCvoJVzHnr
xORCuVE0oPNfpnSWfpd28SQdWBFc3ihnsbPX2LLtVNK7xkJcyFVS0PwhuiU5sLQERahKu3FdRAd+
Bs3nfONHn/Up5Y0lNfVcg+q5pOBMTkHBVLEv/+Vq8SMTKGFLkWHIggDNpNsRA7gG7ZG/20ULXFo3
6UWWx+8krkOhkqOYigPyH3wRcSkz2Tl4pU2FsNk74d4WOW1r3T/+rZMm+lAClzDabHGevVsIZ30s
oNZ7oJQ15pjT3M6I814ZqcfdINH9ZPqzzMvF18yNpl6J3daryPcmJqxpdCFpsxpe95UGhoNkUDKZ
XIZb/oX3eCCMu2FBIRnlOCrHB+pWyjyi7L5I1gljuVfHgGvPYvRR7eXP/k0lmCodDa/zmH0EFEy+
DUzv4nwIWvbHOe1dVnfX/SqLTSxeqGDnad9XcmpBDwPV9qTtlvuQ0nNo0eTBacQmqI3jhzbCW7fW
86IZkKF3ezplwu/OVxThSR5IStrpuFsFEu1FJujebGpOYyAVJO6ncq3yuFJ2gSyi0ueFuQggXDGp
hJ3RC99OLf1UlU7O3HfLl0YVkIfYoP2fEzIOGJ+SPT4apXbPpW2Jt3h9I2rNtHbiqeOuOSXywYpK
w5FOIUFTTITYxFUYE054qzCbU1yAm3nslGrHgcRglVxG3SbyaHhTfLaeY4a587qu9/v5f1LiOEvx
q1pKLBRylJUj8SZ6ZmJgFEv547/99RU7vSic9qhy0pJvxIlvf8HQoW9ZK1C/2u6XTg0sysRBO0oY
kyttz9mPeV8iuVGmyGySpO6b71eNPhKd578Szr7Ej1N0vJQ4Fpl7yM7YuBNqX0YNe5dUdfZCLVJL
CSB5hvAI6hCQlTcJUK+zEOIcBeGzovEPAV9jKRz7aIZC4VnYRSDUIVH5V1ip4UXR2ItR62xAH+0i
IUA6aYfyUKQ8K9aIc1EqAertKM4jjfrRWwKyVi8fVCACLZi/MaoOsZaR4g/t5PyukxAT3OzHjEOw
wwe+kM/7iJC8gtK6CKdDzhyy367tDXcM3w7cxmBBSpuZU1RK8M7EgNfnmQ0VftBf8p3vxDSXrhL5
EOTil8dzcMzmi7tZ+vcbyoSAn0zNZEX2GQ8m1RRaFunX80g5YpUx93UgAk/F0pmns1AJPA7wgQo/
RNPESGTqVJ9S5R77W1GZeCEfXE1HhmKtjkNpqtSc1sZlr5tprQBahiiusKQXUG/i/9Tr9s+gn5K6
eKymuoUKhSefWZKsSBdnqGOJJW997bcYO8DeaYPkFjMnNgTKeN5OH3DV5/8EGNCpSRuFx482oHtU
EhE27qWUjo11j4m6hVXba/wEP3TwJ177a0IiIblJHpY+TjQeHzJC1W52iUMLV1ApoT8Dd0Xzdsc7
4z2cVp+WAYFaZfthZW91g83EB1iO/f4Uw87UeMxyuWrgeTku5I0m2UheLCvb4AEEi0/Hxgtx82v9
36pH2eY9nNMrTrkBGiIKSBWcfge4GsFXOxBZQ/aIcvL0EJU6GwzKVqChGdF0SC3CENtE43mc3Jiv
t4S9SMoUx/4+4jUlS2ql6PYDvHLwjyjNkdf0kaRJnRiDFLJUy5EaPvMO3pub+4z0nez26O5o9Um6
QBphoBN7urA9wQOwf+EzJE5XXCUSe3aMcJkqJ/dtqM8i5jhdlWDFZa55pspRGtIF2t9Dp/6KFbCc
mI1uNAytSdFxS/gT8HMJD/luYCRSqzBZUa72I4rqWG8qHRgwk9112ck8A9hRRvO3kCJ+3r7WJCJT
yvDodCt9+CZqnk+NRS4netspvR68Ypqp7wAbiUVn/hFf0eoEQlMIeqoixUu9t6JPU3G2Y7uveNWP
IlRqFGTRUws5IKxErEsOZSH537KT4kl29NtYSsYbZgrzlvNpKTByOsGfrn+s/TuCjhSnRwc177U0
IXK0jEdd8jGUMyTUpmbWyiWBgAwQGBzr8VtVr+RbXeQgiYq9oqJY3X0c0VQe+5dRZrxFOu8SdyFI
O4WWFgZFhm8pSQs4gO8xeH0L9kiFjvUIJgY4FslQE7+yulBXjo4qgkC5Lu/45neQwbVQvryWnvLk
aaKvsB1BLBTO0bRIruDJjztFVvVOaUVmOf42+4TfTPEHRFPHnihV9idUnTcCUi6Re7grq9+ZeZEQ
mmeLRB8Nl6VgpNRLDmzI1TMPemG8ryR3yHKHTXPvlobk/FiEDgSycC/CEDGS5eNG93YhjuUUnhT+
j6CJT2xEHW6+4dJbtNe3W9sPO9nLXcPA8WpaZ74Xn3aWjpZ8Ya5ulHEQ5E+6GYDyw9vfiQcCTzTb
2EMUFGlIapEwQsdmvv1xIU1KolH03rIJgTwQs/ecZMuC8YsohZkkBFoFqx0lXCil+jLi/LPgAafm
fQegZa+3AVLvjVTmZ5ZvtWVTfXDfYvm04JMhJPw2zECB+5V2UCIlilHBNr+ppOcQYFw5nwyOpDkg
fwpozintC5d0us7jU4Ds3x4O16/n/1Iob4Dn8QVuPKsApczNvC9cUUFN6tB6IqJNGDu93hoUAOjs
FforkGDZVk0SyQsHhFS01yfSvgSQKu8wFuGHkvcESknHOg8zoBBIOEm/vEnxYniqm/gWOFBY+Og2
WIcwUzG4QQz1YRcw1ZBHlnmZjW6OC8L/WP8OIs/5VBgWrLjjYLYAXiDY5EplFWaiXsQPN397bolC
gkYrlhG6E90gKJ3XWaEhiqihYAbGmuy39KHyUOmq7sFapP4syg4LtgP6voR2vTl12Y9NMC5Jlw3O
8v501Sa5Jr20oXpeLFxBZ3fnJ0a0s0YN6tbr/7OWmQGKu967ZxjQjORfM9XG311WRQu8MErYNAuw
ZCSE9w5ugHDyrcIwT94KR9ujkR4+hAYA9Du8BxDWwu2UE6FcqceqQzXCk3gmXX+24V/4ENaHbLSr
YTbEcDlvBBtgcD1wRShyJ+bXaF8r7w685KsjxQouDhHVZFY2ldk3RayiAwHARsLUzBVGVZJdoR8J
pXGOokE7FlMy8UU/8wwsexPUdsOv8GpoL1j1LKogQn5zsvUaBrkq3HVSLurA1yN/5/BCUHFmKrpP
E4lquOCEVxeT2BHJmcGPR+odMvIToFUj/oG8hQ2C8ZcIlC8tWCQvjQlZT8qsl3WUiVwcM0ecsobh
zlsi8RvhIyu+6Pf3Kvz07/E2CsnUFqlKBVXpPwR7m6ZwANQwCi7DP4D+44Dpf1J5fK/cHo/3gSky
dx4lJ5UBGty1bZTAaPfO59wTrL2/mF13GH/wCxSgNoXsY/FhPhrVuaS5wAOoqWiwlyozINTfsWT7
LPCvQs3//4IWjK6yIcAYtmHiwbTTLPAFlQecqHoUBShALLwzZdoaRaKjfVtaoOI7sxAuN8FRoiCY
emD54IeKvg3F1B/aq8lC4UglhVMCocW90gelrgO17UWs/z88aDPl78el0sgFojTJpbG7cac1tirz
VVFcStDLrXV5AzmPJCOgbsG4UXz6sP0wL9A9afYxh7BCC4QKU3kvz96AE3raK5gLEXKK2WMiCfDK
JwDz404UiTykuObyGhDiCP60Gqh4V6aJ4RUeitAn93/GhRUzCUlWqfEBa+Ksr/hJnyFl+76IK8gX
ztKeC4YQEP+7dajaZaH/esLHKD1cqKpm8PzYz6jxSEZroEGJHlz5t8EGX1DXN/MFfLRQZgtimLho
bSn9fZnl7sycLPhTdxpsA8AUsMRILoqMaaIpT+ekzIBEeAJCErVutV5aRSW467J3t2zRrekN4CdY
rY3uwUVZ5CJiGv3bCuuPAdU37RhOQ452MBSkMFTCwcBrwrATJV5nPKfvdQ+6kgDYgPCzyACmTVBi
gdlTEBQ2uji4aLkBYVNvyZtsXyiLzGiV4MFlHUJ2vxDR5i7wGv2a8lMo7Gg9e/q1ogrmeVP9lkSv
f1Z8TpeFL/TRr7jz4lIGzBPqqtsz4Be8YjWMN9/sy+yHs+caexHJMW5ITVGHCEwdyY+USUB1OzDo
mYdtlRApZUgv8Kj8PPRBXBZ8GZKhM0L4aiq1xtbQ5VjgXNA4nLG9nkDu6lcatGFzGk7Q18anC58N
/xpfEDuJ7y/rqKk2FfAGP18zDS0Fcd1Val9FkqbI3RKC/pR+510tKagKPD8V9S3FMBX+8VbAy7EF
yBDk1XbJzUTyyUd8v4UdhJ+gW5z4OTmrkcpvOzF+zGWOuIsg0vsUxzl+rvapWb1eGgyptIqUjXJV
k20FRvDwKgGKZesmVuxX+CAmktBVdH7nRBZiGWdANAxkpSGWFyBEYs9mSQ6P/glc+IOMP7rvaYIl
ys4LuE+KiKm/M7ygElFrR7Y+vU9CVHgjgkPr+/HyGzeCnGlJSFFsTV5Bbu++/nMfyyNV/Q4a1m1X
0VP7lRMi2MyE9nk03v2EtNZEv76pJbJ18ln5ibSlSBZ594HQ32roP5h4t2HFA+ldw8DPktqgD4PT
P2rpaiKecGhzqWVs++wbBOcyCgrqVJRHgSCPFcFjhadBJ2ebJv62CPtUHu2sZZj86Gd4RSDPGTRz
QrBgldRlc38X66zgIboK8nJVxOu5CWBcN8KIJZAH0F2pVsibz8ExDJkiuv9yvbZEkSakCkDMnevL
GjiKbOR9ULSB0glAR8qenNEyefh3W/LnzEy7S/PFHBfzFcimEwQqPPLydt/u6LNUAFSxEDDYgv/m
dXAGy887ATccB2g++/69WWhGq7jDkaVYh4kHdtRuEKX0VDbrumy7g7Y3EVzhtY19IqHU5sOs/mDf
Otp+EomtY8JGIYo+7LDdcKXH2aDARyol8c6KwD72gAPt5XeKHYOwCksLJKjXnAhOGhYRMSY/UMet
5LVNIiBOCZXzKJhSQNdbNBT2RqDBe3C9bSHOCbVOFdcl2d7gTJKzGY57a6uE6TGmJGU2lzXckfcp
fwH1EyoK114HR1/8RZXUNx4X2D9dGnQEsI3jTAKtH5H0pBix53oizPJXoqbfmb4q25jKb8aJ3AUq
ZHG8/c05tYGoJaMNndOSlYTdYJqDoZ/WAFcoqncKIxZb6ubTVbDG0w7GWtA786fwda7/9GGW7mSJ
KcXB6uJ0Ah3mGIScGR54mhnZffkd20j/SHxpDlquMmAQl9RYqV39v0Z0l/G5ikGhfXArHmoEH3ik
uPbHciqanpSHNHYRo/SFPTXDKZSsuyuqqsv5qYEOm+ySg88Vxe5Gw0saBlsS63FqWYJIxyKmdmhr
Flw2lzAOgUszomNVSRL3HnYBnXAk+mg77+yKJ/ZvnBmQuPlz2Bp3smm1gK0UU2kmEUDia4ofBiD8
hubDsG6OqJCYs/Fe9HRKkhwHJJRDXzKsOEht/JZ7NB0Wh97jmPPoHiV7RTxrfIeuhi5NQLobN6mD
WTVOmrVOOuDpADDnXbth+tgsP3HsPf3rSF7VD7euOQFPZvMwkzKoUm2wYQwOW4Z/KP12yHunMD2V
iJLFaohFWq6BHMe1tolKMpnb80LKmQiIOh9FvnA9YuKNmxI6cJklAcG6EAXwnyGlbPhJH7BVqpbq
WUx75kTp35H8f2/QyrrBZphcztbxdpyy5UhRmzeBgfltBq95hKWXL6fihF66c+kLanhnY/x7YRcs
A+2FuDdHNnb6lpDpI+utcs6MolMj9oqLm+aCljYzYmnDOMvgwPvDLRsjmUt2Tbz71GAouCYR+qyV
eBzFjSKxajj/csz8s5KMoY5uVDGsbqVN/JvrIDE5x5h5wClkMRx0VIhoqfHUQ8rgn8M+hwaZy+b8
v/EUUr8nHxwNzJZjK/DKM1EReYG5nFt+l5jR32rHmObWqXGAAPPF9C6BupyL0bl0GdhRqpFLiSZb
c6fEwuRKMXgIICCG9KtoWXKL6kDPgJBVMqgkvRquAsc5258tSwwP+BcDJAC00Lpd3LD4oeVKXepw
b22txOAhwRRGs+tZWCVAaMOFPywVarBa86brLzwFE9EHKB2ydTAlu9xIZhMMVyEMN3yZ1f8960X3
tGDoJuLAWMMXaNffX8Uc51z6oYb9zKOAqcnf12C65YAUQ5c6FrJcBO/bi+6juemoOslepb4fbjsA
GpcON2SpczyIzyfF9Mg/CHFJgOIwhTv62xwUmed43vCj3zf3OooazJjNzivtd7lK4Qg346kuDg9S
nqrWsJSJgFnscH9zC192LXWfSNCVer473thXIqnY5/Qm278ABNF3jQ8L3Bu2Lr9MS9FWcckIXdfc
vtnIq/vfjDXTsesfN2j1wr33n5yhgybSjHc2LzuRaE5gU8cvHQw0XKBe/V+RFoOJ1GxwNlorDiFk
4AZm3Y+wFeWoIh+ij99huRv8SS91XIuj8ryJ6MTFtgRctmtOnDWngtJuJaz1xbjLRSVaxZYOC4Yp
8hsHr8RFep79BAYA4M4WeQyNSErQxBxMxoQz4tFoeSb3dG6ow5CASnNwqoSYqFAvZCEgZYpMy0S0
zaAHt/YyBzAlIbJUIkCllnIXB5U3O8tV/czQ1SB5qm1rMjxLOpX+puf16Qei6DZeFJkBPND6JO9+
kqMxBf1j9Pcl1lolQCnCL2sDcg9XFLL9RlkoJzO+2tknBil3UBw3Z6xwfFVpeYz6B4ethWq/cwQV
qDNRyCRfj583yukthTE4DJCgZ76Cvs9gXnDo4QEAQpd49xivvlNHXlwSHM+aswewQHuppEHetR5l
gQUeHqQdXzfDUNWPtl1noBgF2htnRzfwp/2EVXePXXFPbqcoCzb7W8ue9wDkYbd6cIWFvzEg7OdX
3uZkkqrTuWq4EW0ItaZCgX0TEyud3tH/UzBKvhjRfl1QEnVOBuRp1OnxzANXPRfYFiHEwuvyS/jj
aRvDNMaxwa1JCzckaosIEEpnYZOJaHJN/WIc4kV0L/jyCyZtZ+gvE1vr7SmAKqUmkdu+pfd1c3TY
CP9NXIMn5dTnRfUbN/BA5wrrCyoVzuykcDVQu1D/efB4q4ELyzQ6OPLR1QE4pr9ENyND+Yktqbxt
NENBStqXSm9h/aBr8Df+geBzm3FGz271ioF40kKVIwQ3FcHcj9F533xpCjPlWzgeYG4aRMlW/N5S
Q0iy6zOIra+2vNNOTnhGByIlgMNlChQU8SVhjmgUAz7GcO6MpzoksrMYGoaFq00ZlD9H18m0Fr/R
3sHa0vatdL8fimhkn+KoXj5Jj5geug/flDYjHJ+Zi1OiAPE6elKIrrSnnDZSe44S8Lw1aS2Fzx6J
4YHxNgxxg+yQlGFZ66yOXMGRyJTYu8t3CPef94WitX/pDG8lbfXu1IDavrAld+4DJFglI874cvtB
bwYOqqxe7vH2/RLLR8RblREuy7zBDbNGci4Zzwm+GEd/HuEKSukzAMzakNza0+cnC/R2m+1AIvfe
CtsIoIHATEqLdkQuNWHj00QLiqaxf11SGGn7Pgbhylwvz0zhOe/69VNE/MslrjRNkZ4oayOnMNIF
bzJ084XVPGkXc4XCd315sPEYwnc1E9Wqj76u80y7/wTntJJ6Pe0Z245/VcZhOlyr5RFA6pFDOYRa
QeDF8i/JtPkjrjsPoeKYuhXy4SpeAs65LpS+UlWyeQKlZFPIv/4BAYpOFo5rJ7l50BpjMUAS4Wm6
5BzWiiRNDIbrKy5PCRZhUuiAWAAc2lhjaJQzYXNoOWaAE3uzTt9vlT3DtYZvGxTr+K/M4cWf4fMX
AlBMtClyNrWI8/PDCDYck25GIaSeWGkL07mYkIvIkIblG9ss7uu8dcXoV4Vrrbjqk3L5BgG7B3X2
LXIiYWEBtdQCxfzQO7dcqiKc7c5yQJrl8GJWHTxwHuDoa3fQtKiKeW3IaLbX597M86vwHQnhJ7Hq
zmJ5BIKsbE793xUITmXByLaKRS8eWOW+2IKjIPaS1pr0uj5do0aeUr2Qd7cLIY3Bc22gqjUbnals
ORvZHlSw8hEGhVRTI4XMrBKb3VtuPbMBWZs10epENaIqn+itYx9iWlwpEgbHPhcPTRhn6TdnynEd
x4i2feI9nWwEsKHmMJTkpMLENVEG9IQiclTsE0dcRCbPrLFuBLrin1NYiIhNTtb2r0dGr014s5zn
c/3Ja8MhBgIVDza8Vis3qcz4BZ+R/g4jaT1sRCKKYjNqZmmaXEMcR2aXwJMc/uSQfyMA6/I/roiv
Gbz5Hfr2KPk7sjgv+W3jkUD4EoGSg2NdZDfLkAhe02E9Y8ahdCM4d0qxRMryEElUT/yF257lycq7
iPwM/avxHgpSRoF//1/8zzFikAXi9Z/PJ4W4xYfJKh/CTMynrOWlKXO8e5m3lyX5NQyjfq5WLsLS
Ys/NDniZuulFs9PwH9T8wkU1rdaPwhZYStGoX/hpjqcXuAfK+8lA/E+n83FUcE2ULjRqIltanqS4
u1Bu7t6HQFIiE5+eK/2MUw+vZmBDs0l0xweAEEep7osPJJ1toI4We8vxLSur6XU9cd2bpztBes3m
EQb+gb4nzNChM7rQpcnT3/AYN5FGl0Ph00G87VJuGb2wfH96HwHzQ1sfFztrir9mrcT7c5M+Z07d
Dqx/mHCv9QORAgNLT1fbAzBKqin3fg629upAAtYQ463LJRyVxOlA632IAcw4EP1+Z4b3ZPG/YX5t
IAuZVkFbTJuM/mTfIHoKpSc8vHAXrMTGbkDuJPg6hLUtthKv4fiB7rMNKcOhOap5C9Ej4ur7TpUM
xUHbZbwKXhrC26xwdA3JeEebcqRCj9OuWwAFbk8fE1yHdY+zsefhhUzAKBgk2Zk1bXaa1Zf4QZY3
WyUYOsP+eNJHT2plfPdiarDmGfaFvfXU6MQ2nMEZIgRvajGxAH0b8sHSWkNn2zCBtKzfB72h4OtB
9lc9+p0nctZa2IFGsHFVixsY7IguMtSADg6K+kNFqZp3KkVXlE06SBYIlqRe0f4HUImhNjhb7ajA
EAJkEaL0wAqaUvXNdpoCIUQOjTqiV7KhEwjP/pGEG7+1MC2xLFhkL/Eehl8/tQOO3SuSGc7RXo+h
+g0w0P7zV/tEty40JkZv9KX0m/+8ID7S0DsTjB3UuCdQdDS19AjLSslZr2rQS+LHcBCzGafMEZfN
f1d74+PadFcdK8UGeCOv+MuTvgGwo+pPxayypWNOlMn8CWRLHwPT/pMH4vMpnEftOlN5RtIfloR8
ZwTLKjRmjHDJu22sN6gfTB/Lvk7dkor2yBB9W65nehSEhOLwTZUeORK1fvcDgxMYpDo2sOv6Lhwn
vBctsXkNWpwTW2z+ejbi7XvxyQyilQPiwn2alaeVuu7FtB5fcmpkgfMYdjz2zyI3IAiXMCvtCDhF
aHTXQatTUXS2WiNuWLw/Iw8zITS//996LNb0+oWpKbz/7AhLG98neG9UrV1RaWcGY2rfyBPslJlp
STz/thfwOQliwUm9H24Sf/mOV4uPEhhlgjxPMvp/ks16gVtcCy0Jeh2CfRGDh4Q3+sZbTk9gD8/y
W9NeGXw50hp0SgfDS6B/0Nob3pbX85PK+7+ixgH52BDggZc31/TP3LbmsrR/+b3RhyUMsxvlifW0
mv1bwI9t0S4b4YvzDjjVv4cMp3rUTQ86E7tHFY9QzUMVuQQGguCi5sEonFz1WuoFE9Y4R3Tm/phP
0Osk/jN9P7rCy877FVNCUyGk/mzs8X2SB7E8ZBjtswppLjGed6LZ4dBPZsmY/ruhn2TmCQQwl6PW
m7wqQ6bFN0qcTlV7blCP12hg3/rdx3Z3KJr4ar3jeWwcvtsW/M6oA7cF+LsqZyQvl1kLtUro87ou
l70E1dsek4w7kzcSwm88DkqmN5IpQgf/o2xMHwGg1zyF5DhlXZFqcyZ7q22DU3DNw4K3UsvG+0y/
j3TEh0TWPc4e6yBX4xfYx2hEe1O0EZ9BQ9H5EFMX4XxfUPrBi8TZIXB59FjyOlO2lhkZJgiWjwSl
VMjGcEGUf4qzWaMKhKf0O0xwAqwKjfs7FVXuVnrJc+1r2Q8ibKVg9hT4ZYMtJaPQcmzIncRk5vLa
kKyrymlLAvgEzEOSGP09CEU4Wymp5ElxIVfXDqqyGYE9O6egk9HMLkjTCecUDooQNdnMke9WX04B
LhnNikGmnI0UP83loP1qn3LZff/CoKa1uNNPP3ujM36TcIWpRvc4skpcDwRBrNp2i+HJqbG6pugX
FW7qLZBp3svRBPFGahLQCKSQwT3t7AwktL1ZPfpF+kLaPenmhBmQhzDS5wuaZDhQ9NVvsTeHddgj
UWs9okQz7/p0UqeCcNt00xofCxiOZ4CnsPzXqY5UW6opHj259FIgwAFuzDiJnc/Y9GcgbgCI7fvJ
6G0m1ukX5DKxKCvbD4zGUbniLErt1OC8IXnb2PLdycqttXEfKEanQwLxDwjqG6Q3m97/uCM0/mBc
aajqpqXdz6/IElblmdLU70wpeDPw5fAms4HQZTK959I0w1R2uY9lh6atXmOKGbasZfZSQ2IWnsWS
vymUUXcb6tAapKo5A90/1SAZE/LTOPQ/Smq6WlByvMV6RNtaSFxAEi6TdwQiUEH4IdPTt7Qai8be
UMrUhbOwhd6HPYLJpkpVNet+6fvOms0OMLPX5VyXPVIhhq6LP/b6oFgekice1QCMJFwdcwRLcScm
3MgcPyT7btoqgAX+C1Q+U1OITeJx0jGU/hEgsQhuYburCqzSiYJRAx4NHPtFg4mhs/ul0g9txWvg
1dYLIUjypbPSSDdwofJDGZsbsjQ83rumUZ5xb+ZNJ46qrhR1pW1yXUAmnv/8M9sQ7YGGiabdcaI1
5YqCwV0CZ6GEiVekD47xwwMy70RzwQEZWiOe1UjSHOcAoso8POzoyd/VCbFWvin7pQ9NJa+DTK7U
ATb8saFT1+FC3Etl3UO+PST5ReT6QElNzsiBBpOQaPntF8XbcyXV/Snzv2Xzpl5gG8e1imTwvxy2
3ThMIQMEOKIHLj4b1nawh8sLROFzJSkEULLZOtpPTJIS8ZOXIYuUcSN3BYeUyiG5yffrbpG6CZA4
GP2ik6GOVf5J+indzW/JZyHmzcGpPzRuwjMHk4tP7BoecsR+cyvQ3wzVHW2rqSGTZvbx0Vxl1Qkl
bcYAcJzhMSoF91ZW5vXAj6aKbAy4qsG2vB5eet+VowlPaRpoVMYvN9lIljj9fB44zW88wMCTGkt8
sH4Rvco2tuKSNCq6Yo92UxMzzYq1GRWEZb8O4Rnw+uFZ/LI+IQS3pUyZ1NkOj+hMusJmPmGlQBD6
TawZ9ptDUpOEA1rcA4WQK8NH74N/qeam3n0JYeQw1pEbnVoF0TAUzaFBRCLEaUZsDkbJct6dk707
errA31t6a5T81cEZ3mnq8niEiLjTLin/0I0fRhoEwfdd5exy4bumRIfE+C8a+kSGbo7QvLtczj6o
ZvunsIVmvKN+asTjlYlEZPbxHTrnCW7RcBt1bqnl4arYROI7K0EK0Ds4fGlisXlHH2feNcQZ1NXm
Oqhjkxk4GBuJLQ8hfkAQ87Gy5TwKYEhMbdHW1F0QOQHwL+XeHGwQS+tzgmb0TvLlYGoD/sjOmKm+
HDBFAcR6VprvYRyFDWmuOwx1DPsSSiecOjvowuBFMXjWoZc6/l2Umzb5kntcUo/BWgZMplEUdNX8
mTvdKN1ODs5XAowrqczqIw46ALQXP4A22SqeZR29Kuyl/Le8Zj6ttXM6PcxjdFvb9eMxlcLseym6
YLcUqplCJRvhrrtFa2q0eWdUW1uPqyqmQp61UE3/B2yjZfbDjEF5SiAeFGF43Jt7yUNiAiBsJ9En
8eyeE/uiE0IY1kNENK3uupDNOosJLFGrxp+cvoj+8Kq/XD57PJdZfx6nxgjIvCzhaoPT/o9FGDdc
qaS5Z2kjrYIillSNkVfusxqSkF6hHdo6wxHBaH8GKhORdvE4S8JFWZmjyqjaVgPfYbhUJD8CHLrE
ReSOc10rrE7JX5lCNluxeEWnWPNRegcHLAQ17FxqLFJSljRmp7dfR/uI52pwqtX1TLDgXBDUiVan
FPUwkRHPKdsL9vWc/HGgX4duGfCGvjr5gAIUkOVXr189tuXZOA+BfeiY7J1214Wd0n6wNOEgl/jn
DkslBNf7osnTfZXJAxylKOxklsEAwBHz9w08H4h7bxrtTq/yqvv5TsEB0UlW33Fpzs8TB9U/CZBc
Ddo2rj6ezDxNqEepK9d12yxxrO5BiPfjiys8ST3vP0GJK54Z1yrH1kahVk2gjm6gV6/9gtjE9cPE
w6JoSQIwPY8hH4wkmFOIlxdYpC+CiY7Dw4AKjl1/vzwH57PxD0C5NRes1gmg+3bnO914YwjIV54A
stmilARQ/xWmrCIxzO0XUA8x1E/w6fK3BEZtTAxDlsvHrwPA9YjSpqaxXhJA3dXmWPv78NeuUxD2
/hDxuAvBKr07aB1y5Du+MVFvTZaewRZDyo6vTOeznXKQUJ+Us3/L77mvPTYgz2ACmCnLVbDLQ0ci
CfXh5UJ28tCxUrIDELlLn4tyQZTZmN/V2khgVrlXR4NsLmaWdeRADSy+aR9Tvc/0c57uZ3L5UO+4
7CBJc9c0OqAvSFTiCY1Q42Twgd3kocBzBPsSOhHm3qr1XRGMIFOCSvQLGc9QmvMFSin36ElqCc0O
6dmXo7tj8KwjRG3aoKeaTRPJ2YwwZODM5tptOGPJSgBj5FGoN6xNOtgC3Dxpy9Gj2+FXXLuiMaPY
0ywjfUbZ99CwXvYqnmEvPWzJHi1F/3HnUt/UHQ1pq9+NjVBF9UfLRlBYFyPPH8pV3G7F1DhbBMR7
CTYI9GMi/3FA+vWrXtoPvo6l7rETJER7TKb0GQt6L5cv2eE3blEEuGwbkXzBFHHYK0nuXEK4hnPK
Yiu44DQHaecJDITVJ7PAtGG9zXXNJXmH/Xi2DJgJQQXJXZf9T1sNfVRpL3gfPiniWAAH4rqcjYUe
2P8O8V6ZDdXTmduXChZ+6JZUPwlrEX64+lk1lz6VrZbMBmke39F1QqyvXhjzESYP9XuQzbqUdK+w
UF0vl07Tl4cXVgaT6erSpoDig14iNwaNDfy9pHFN5M2sNoAZen3aYVFU5Se2tyCfzvRoU/rdAgOD
csAxy046iOLkK1P6kxST9ULTA+wkCIPmW+GQiqCQJu2deyNA6UVkjf8UEcm/HS/DYSbT75/1K3gs
Ih21PhpdT3RCf6KiqtYsb6iK4t/fwzbCNtBQJiR7P+arjEwOC9em/YR3YI1j6qbP8MvzcPnFQKwv
ka9QHZGH6umymcW2x3u5QJmHeRKnWnE+tiyIzs2hikBwVmES/huKSr22P6X6854tSKRykzavvncN
D/It3hCMEpBAmabBn+1laZvX64dnAPSqThP9GL7MgBMvRZUfFI6xg9KxzDO4uU3D1/238rLwWHob
CLICLotqp380XmXVoebXYhKLoyF1cYHLYLQEmo4IV8AmpwD1mQS3Za5szOdo7tRYhGy9cgdaDBcv
ndNmkXc8dt4t5jNhqh29bA+KgSsQzkxIx44E8a27M3JxdQPm1A6kItNaFpD2vF88zNru/fAm6nHK
OfeaAykqYaBJObFZi0r53Edtw+//JqmLg/PVh68AaE2bcfHPD64mILPNqXd65MPAeMK9gCCeta9e
UqGaj65QyyK3rhFLX1VTT41TddqTRkKohPH+aU5n/5Oe7S0Xc73CUrhUApXvLb9xAMpn9QmFJIjA
RZAD6Jc7ZlyLvMM4TU6RaHy08RllYZtizqg241AUjRTMKg0vj223TT/+0L25qTZc436Xc+ZOp2sq
cJgsczNyfAFY/kQwLjQo0be0Fc6af0NVzSzHsW6kNXT3bdksS1dd6/xagkioI8iHJI4/o1ijoLA0
U51I0LW1fbN7DxAC7dKrou9PvQ9RI4+3/oJ9La9mT8uiEZ2pep2sn7sYcnwKKc6Br+pHgih5jsgM
MQQRhdUPai+7CIK3kRCeLEtGNOcT9gq5FGFN0kKBWfQiikQXY69RhObH4ss8uZz98RIcA37rVVUx
yLlVcbZoxPqG7MT0KX2hVCxPKS+TEazh7F7rxZk2Oh/JewrCYWSJrTk/Xf9r1TgQ3K9Ev2AtmqaK
pnw6X/JOfRyt9FHvHLygPlT8GkkE+trffPiiODDd0k1CM/XnRC2fFUn7FjzqPkkX0a8+LVgREV0/
8OiDP0/x5rqWGoTjyiuKW1pXu/cD8m5RqG7DZSO4j2pTZn8kIzPfMjC91uvFACRjte2kTiyt/nYj
E0ooHnhJngbyKd5kL7m4KTTVvOCACZLrldTPlgBqHA/da5zWZc2lX+QArkudqPRIezIaWo19wVp8
fuKNHNJV3UoU73F9yUT/Ss17FTi7P8CGk2/zZ0LMwnaFu2AVDLpirZRgk9wGiNw0CZO4usatS4wS
41rdIfgD64Z0QrvcnG/0DEReQDRSLwIT07+iZGui8RVH+N+5fXRdbm3z8O3/UWRCv3Lg99hZEhqb
xq33XVUQUzaeOa7K4WWgvTwX5ljufp18xmscW0sjQfEOP8EhtzxQnO5x6VhFPsZ4Gn4/wz+ZTOKi
n1W1VLavR+Y6ykpps+60ep4jZBFheQyN0f3B4/DmDspYObSUaWq3fRkcDEetFlw+iZ/UWKNhr5L6
1cgYp5ydrjUIB9OWQhc3hf0QzW0G+b/rKmA+2/2YJ2a/OALrq5N1sJuIi56aWNIp7EAoK1Xzc8LT
mIQ20S1d7nF8GgC+VriXVMnu3GufDQk7Dk06l09m2Yy2OjmISN2kjrc1LxSUcyH2UGE4qf19Sd7s
732ehSI6/+IuxJxb73Q7qNkER6+a22l/iDcVBaqoAsAekwnIRcG7xihDBM5HGvxfvr2PiWvwedV4
AaaPQGEKQS8291rbW/KDJkjySDufsVC7CfO2sD5YoJqtVw6Z6WzwzpejPANiN2RX258F9edhNZ3/
alMMC3onDFoEycGgPCR2dR04/dgQOCEpCcBLS9WMu5d3RungHwaD6Rb//RYggjz+OP2T9BfKcU7c
bkmZ3CBogFjqsBqlwbcrA+wypmED98sLcSjctcPmA+HB2nFEdLKDg6VtS8cvvX+/0Fgcp3LLU8M2
cvwZUmX5p6wVUxq1cJyutVZ5uHgBQZKNi/53OjdvzK5T931UvJqqxmFGBSWZzSNfosQqOqAohdOi
k22YVWgEWgiVJILjMh1K4qYl53pm3Y9Z3KrdkBMnKvQ5hj9513ScuM9vQY42KM9SfAGs2krhbTzZ
NY147ARVufe4tci1yjf2MpbLG6slJZBv6nKSCHbQXJedmDT7nABOFSATIJWoN1Z59bulG3lAIzLo
cNgLfer9BLnswjHNHe3g3FpQIzYZjhwObj6dK4p+ro8GxpW3AJHA7xG2NjxfTjPHY9u++XfYtSvi
boDuWeuTz4jn/73Op7Fb9JQBzHR2FS8Pb//Pf89bEiqnMqK7S8Gj3Qh2Tp156XgEb+MuJAafxA+1
tlf3LAfjxzAHD3sNYeW5k7iUcPnkHoSWh6FfAFn9VI3aRX9smasqi8/REAqeaHZtbuDH2Nf6tQmX
uI8gJAYe2gzDRVfST84VsRsbJ+HOP1PhZ6FwbhcKK2uJ2UWt8Mo50ZL41stBrvzIBens9EWgo6aY
Ebdkcv0ex+4uouiGTfw3n1MY49/7ieRIXKxESEpUxJZUfye1oj7HKI84xpDQHjQMSx8SuVSAqjBT
T0rCLZNIH8oDKQBTw3lyBrB9kGIvK+1HLokcGepf7veZtHmt0P1SbUGPLp907AjwD7u9Bbx8798w
fzoZrNntAW2aVztWRDceQqm5K1PytLiB7K8pIe28m6uB3o4J0JKOtVGj82EbJhE+2f3LrDUi9FSx
h13925xh6TB28zrVrjxA3Hu8TshlA2tf1YlVxyiu7T+uyb0iKXCq9VNEDN9VXN6aP97qA8IkE9U1
/zZ+kgYUTZi/aAhDSwbTscOEhYB++ep+IJwGjumtJENMGn4zcvf03vYlpAYFSksFXgRx5eahBMO7
5eiQIWlQZ02Fpm63fr2Z0fXHsych35ctN0SfLQrHC0irXhIwkutoYCMRaHGOVMl3CSSKfHHDgGdi
vWZmelN8PNRly7hfzCDV5kbIr0girwUSh54ebfJqD7A2wgRwSOf2qjGgxGsjnk4hfbxWKHmFxAYn
Bg2FluirGuKKSz+Sl8kHFF5NObIYIXuG0c3uFzRHkb1Oeb0OTB2rbfJX0IilwCrhT4YuNbD2ET/v
DDuhdTDzk+fs/+p0O4H+1PaFcvRTQm0ytZzsgsOBMAVCsmH8nwdWGhImT/sxWZbiNXLraETIqwyL
IHZU1FGvsas+7BDhupeUcAC9kmOkzOngkXukljQBI4dHdYP1nM+0WkgBK9/oSnF/qUBVHyQqin9c
ZeUUFqc1Q3L45kf4/KKJBiZF2omVP4JuImlqo/nqqzKSxXzuRDsXItvxms6rQ67LnLW/Y/OpqCsR
0Vnww0A8gdhSsuWksQy2zBbie2ZBksODghRTB0d5WI5Azu40dceLxCqDyfF1YqnL1BP1eAGInIEo
laXGFdtUcOpMBkjlSRMx/FFLBw+sLB6qaGQRNC2MKoT5PgiM3NTkDK8RfN+tcDEbOUjfWFRTBXhK
JWDi89qHs8u2E0mkNY8fzhLj2CRfYf2LXtIuPv+llMl24Q5xLTP0o1+L8IS56y34cZOy6c9YtT33
9RECIoN9CgJXo8GK0k5+ABgDfbxV3MK/lGn9aG/Uq0j+kBkZVkHUiSyRJ1rDm5BBp90JkpevKo5W
NdMt9fG9nM/l5nAky2A4j6BPTCGiAAs+javTJcWb8imI2UvOEVF96APgLEKFHuvR82UUU/haBauR
YNeRGeSuPsiKpAleomdnu9eY3r6h2tqBwZfr8NGfL1Eg6ePSkXYwMt+MXceQ7Vxz094vfeps5Bk4
swefG/RNDjRPbcXQzRGfJHS9YNAxVFuZm1Md2Ob96RllG+seg95ACimimoiZOd4DfZBV4A5FjO59
LVewTlNvlNKUwoyGZVmriVF4uwQG/XXv896USZQ3paNGaNIGp2s+ebASc9tpZqwlu4dbfXtt1rtZ
yaJOVwykCQyNcM7VXxAWM22T8Wc0/nO9+vC70lvErTqIhnfaFgHckooVONW9lwqN0otbGJ+9/WuI
MYRT5HcI+T1G2bkQ6ZWNq8Rxl0S5HEgbwigGrOZrjE+zVCqVGM0ebbhHh0V/fo5s+QTk2PKgvwa/
8FgWcBRsW/xG4g9OYrqRw3mo4pT9epXsGWDIeRnvP9VgU5lgz/znS7BxRPH77CPi3kgSUlQsSPEX
2zXIVgMQ2f3m2FGkSBsG6LYl8DNm/+6ZLeM6zy16qi2E+x3ye4TTPdYSUimCUIfQCcO3a1s=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
