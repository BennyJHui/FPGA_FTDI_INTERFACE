// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module ddr4_0 (
  c0_init_calib_complete,
  dbg_clk,
  c0_sys_clk_p,
  c0_sys_clk_n,
  dbg_bus,
  c0_ddr4_adr,
  c0_ddr4_ba,
  c0_ddr4_cke,
  c0_ddr4_cs_n,
  c0_ddr4_dm_dbi_n,
  c0_ddr4_dq,
  c0_ddr4_dqs_c,
  c0_ddr4_dqs_t,
  c0_ddr4_odt,
  c0_ddr4_bg,
  c0_ddr4_reset_n,
  c0_ddr4_act_n,
  c0_ddr4_ck_c,
  c0_ddr4_ck_t,
  c0_ddr4_ui_clk,
  c0_ddr4_ui_clk_sync_rst,
  c0_ddr4_app_en,
  c0_ddr4_app_hi_pri,
  c0_ddr4_app_wdf_end,
  c0_ddr4_app_wdf_wren,
  c0_ddr4_app_rd_data_end,
  c0_ddr4_app_rd_data_valid,
  c0_ddr4_app_rdy,
  c0_ddr4_app_wdf_rdy,
  c0_ddr4_app_addr,
  c0_ddr4_app_cmd,
  c0_ddr4_app_wdf_data,
  c0_ddr4_app_wdf_mask,
  c0_ddr4_app_rd_data,
  sys_rst
);

  (* X_INTERFACE_IGNORE = "true" *)
  output c0_init_calib_complete;
  (* X_INTERFACE_IGNORE = "true" *)
  output dbg_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 C0_SYS_CLK CLK_P" *)
  (* X_INTERFACE_MODE = "slave C0_SYS_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME C0_SYS_CLK, BOARD.ASSOCIATED_PARAM C0_CLOCK_BOARD_INTERFACE, CAN_DEBUG false, FREQ_HZ 100000000" *)
  input c0_sys_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 C0_SYS_CLK CLK_N" *)
  input c0_sys_clk_n;
  (* X_INTERFACE_IGNORE = "true" *)
  output [511:0]dbg_bus;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4 ADR" *)
  (* X_INTERFACE_MODE = "master C0_DDR4" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME C0_DDR4, BOARD.ASSOCIATED_PARAM C0_DDR4_BOARD_INTERFACE, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, MEMORY_PART , DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, CUSTOM_PARTS , MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11" *)
  output [16:0]c0_ddr4_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4 BA" *)
  output [1:0]c0_ddr4_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4 CKE" *)
  output [0:0]c0_ddr4_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4 CS_N" *)
  output [0:0]c0_ddr4_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4 DM_N" *)
  inout [3:0]c0_ddr4_dm_dbi_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4 DQ" *)
  inout [31:0]c0_ddr4_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4 DQS_C" *)
  inout [3:0]c0_ddr4_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4 DQS_T" *)
  inout [3:0]c0_ddr4_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4 ODT" *)
  output [0:0]c0_ddr4_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4 BG" *)
  output [0:0]c0_ddr4_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4 RESET_N" *)
  output c0_ddr4_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4 ACT_N" *)
  output c0_ddr4_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4 CK_C" *)
  output [0:0]c0_ddr4_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 C0_DDR4 CK_T" *)
  output [0:0]c0_ddr4_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 C0_DDR4_CLOCK CLK" *)
  (* X_INTERFACE_MODE = "master C0_DDR4_CLOCK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME C0_DDR4_CLOCK, FREQ_HZ 3e+08, PHASE 0.00, ASSOCIATED_BUSIF C0_DDR4_S_AXI:C0_DDR4_S_AXI_CTRL, ASSOCIATED_RESET c0_ddr4_aresetn:c0_ddr4_ui_clk_sync_rst, FREQ_TOLERANCE_HZ 0, CLK_DOMAIN , ASSOCIATED_PORT , INSERT_VIP 0" *)
  output c0_ddr4_ui_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 C0_DDR4_RESET RST" *)
  (* X_INTERFACE_MODE = "master C0_DDR4_RESET" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME C0_DDR4_RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  output c0_ddr4_ui_clk_sync_rst;
  (* X_INTERFACE_IGNORE = "true" *)
  input c0_ddr4_app_en;
  (* X_INTERFACE_IGNORE = "true" *)
  input c0_ddr4_app_hi_pri;
  (* X_INTERFACE_IGNORE = "true" *)
  input c0_ddr4_app_wdf_end;
  (* X_INTERFACE_IGNORE = "true" *)
  input c0_ddr4_app_wdf_wren;
  (* X_INTERFACE_IGNORE = "true" *)
  output c0_ddr4_app_rd_data_end;
  (* X_INTERFACE_IGNORE = "true" *)
  output c0_ddr4_app_rd_data_valid;
  (* X_INTERFACE_IGNORE = "true" *)
  output c0_ddr4_app_rdy;
  (* X_INTERFACE_IGNORE = "true" *)
  output c0_ddr4_app_wdf_rdy;
  (* X_INTERFACE_IGNORE = "true" *)
  input [28:0]c0_ddr4_app_addr;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]c0_ddr4_app_cmd;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]c0_ddr4_app_wdf_data;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]c0_ddr4_app_wdf_mask;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]c0_ddr4_app_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SYSTEM_RESET RST" *)
  (* X_INTERFACE_MODE = "slave SYSTEM_RESET" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SYSTEM_RESET, POLARITY ACTIVE_HIGH, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE, INSERT_VIP 0" *)
  input sys_rst;

  // stub module has no contents

endmodule
