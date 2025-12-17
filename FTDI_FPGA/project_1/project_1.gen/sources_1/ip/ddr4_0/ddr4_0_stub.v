// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Dec 15 10:52:37 2025
// Host        : RT-C-0095M running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/HUB4RT/Desktop/FPGA_FTDI_INTERFACE-main/FTDI_FPGA/project_1/project_1.gen/sources_1/ip/ddr4_0/ddr4_0_stub.v
// Design      : ddr4_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcau15p-ffvb676-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CORE_GENERATION_INFO = "DDR4_SDRAM, DDR4_SDRAM,{x_ipProduct=Vivado 2017.2.0,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=DDR4_SDRAM,x_ipVersion=2.2, Controller_Type = DDR4_SDRAM, Time_Period = 833, Input_Clock_Period = 4998, Memory_Type = Components, Memory_Part = MT40A512M16LY-075, Ecc = false, Cas_Latency = 17, Cas_Write_Latency = 12, DQ_Width = 32, Chip_Select = true, Data_Mask = DM_NO_DBI, MEM_ADDR_ORDER = ROW_COLUMN_BANK,  Is_AXI_Enabled = false , Slot_cofiguration =  Single , Clamshell_cofiguration =  false ,IS_FASTER_SPEED_RAM = No, Is_custom_part = false, Memory_Voltage = 1.2V, Phy_Only = Complete_Memory_Controller, Debug_Port = Disable, Burst_Length = 8, System_Clock = Differential, AXI_Selection = false, AXI_Data_Width = 64,  AXI_ArbitrationScheme = RD_PRI_REG, AXI_Narrow_Burst = false, Simulation_Mode = BFM, Debug_Mode = Disable, Example_TG = SIMPLE_TG, Self_Refresh = false, Save_Restore = false, Enable_LVAUX = false,MicroBlaze_ECC = false,  Specify_MandD = false, CLKBOUT_MULT = 15, DIVCLK_DIVIDE = 2, CLKOUT0_DIVIDE = 5}" *) (* X_CORE_INFO = "ddr4_v2_2_24,Vivado 2024.2" *) (* dont_touch = "true" *) 
module ddr4_0(sys_rst, c0_sys_clk_p, c0_sys_clk_n, 
  c0_ddr4_act_n, c0_ddr4_adr, c0_ddr4_ba, c0_ddr4_bg, c0_ddr4_cke, c0_ddr4_odt, c0_ddr4_cs_n, 
  c0_ddr4_ck_t, c0_ddr4_ck_c, c0_ddr4_reset_n, c0_ddr4_dm_dbi_n, c0_ddr4_dq, c0_ddr4_dqs_c, 
  c0_ddr4_dqs_t, c0_init_calib_complete, c0_ddr4_ui_clk, c0_ddr4_ui_clk_sync_rst, dbg_clk, 
  c0_ddr4_app_addr, c0_ddr4_app_cmd, c0_ddr4_app_en, c0_ddr4_app_hi_pri, 
  c0_ddr4_app_wdf_data, c0_ddr4_app_wdf_end, c0_ddr4_app_wdf_mask, c0_ddr4_app_wdf_wren, 
  c0_ddr4_app_rd_data, c0_ddr4_app_rd_data_end, c0_ddr4_app_rd_data_valid, 
  c0_ddr4_app_rdy, c0_ddr4_app_wdf_rdy, dbg_bus)
/* synthesis syn_black_box black_box_pad_pin="sys_rst,c0_sys_clk_p,c0_sys_clk_n,c0_ddr4_act_n,c0_ddr4_adr[16:0],c0_ddr4_ba[1:0],c0_ddr4_bg[0:0],c0_ddr4_cke[0:0],c0_ddr4_odt[0:0],c0_ddr4_cs_n[0:0],c0_ddr4_ck_t[0:0],c0_ddr4_ck_c[0:0],c0_ddr4_reset_n,c0_ddr4_dm_dbi_n[3:0],c0_ddr4_dq[31:0],c0_ddr4_dqs_c[3:0],c0_ddr4_dqs_t[3:0],c0_init_calib_complete,c0_ddr4_ui_clk_sync_rst,c0_ddr4_app_addr[28:0],c0_ddr4_app_cmd[2:0],c0_ddr4_app_en,c0_ddr4_app_hi_pri,c0_ddr4_app_wdf_data[255:0],c0_ddr4_app_wdf_end,c0_ddr4_app_wdf_mask[31:0],c0_ddr4_app_wdf_wren,c0_ddr4_app_rd_data[255:0],c0_ddr4_app_rd_data_end,c0_ddr4_app_rd_data_valid,c0_ddr4_app_rdy,c0_ddr4_app_wdf_rdy,dbg_bus[511:0]" */
/* synthesis syn_force_seq_prim="c0_ddr4_ui_clk" */
/* synthesis syn_force_seq_prim="dbg_clk" */;
  input sys_rst;
  input c0_sys_clk_p;
  input c0_sys_clk_n;
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output [0:0]c0_ddr4_bg;
  output [0:0]c0_ddr4_cke;
  output [0:0]c0_ddr4_odt;
  output [0:0]c0_ddr4_cs_n;
  output [0:0]c0_ddr4_ck_t;
  output [0:0]c0_ddr4_ck_c;
  output c0_ddr4_reset_n;
  inout [3:0]c0_ddr4_dm_dbi_n;
  inout [31:0]c0_ddr4_dq;
  inout [3:0]c0_ddr4_dqs_c;
  inout [3:0]c0_ddr4_dqs_t;
  output c0_init_calib_complete;
  output c0_ddr4_ui_clk /* synthesis syn_isclock = 1 */;
  output c0_ddr4_ui_clk_sync_rst;
  output dbg_clk /* synthesis syn_isclock = 1 */;
  input [28:0]c0_ddr4_app_addr;
  input [2:0]c0_ddr4_app_cmd;
  input c0_ddr4_app_en;
  input c0_ddr4_app_hi_pri;
  input [255:0]c0_ddr4_app_wdf_data;
  input c0_ddr4_app_wdf_end;
  input [31:0]c0_ddr4_app_wdf_mask;
  input c0_ddr4_app_wdf_wren;
  output [255:0]c0_ddr4_app_rd_data;
  output c0_ddr4_app_rd_data_end;
  output c0_ddr4_app_rd_data_valid;
  output c0_ddr4_app_rdy;
  output c0_ddr4_app_wdf_rdy;
  output [511:0]dbg_bus;
endmodule
