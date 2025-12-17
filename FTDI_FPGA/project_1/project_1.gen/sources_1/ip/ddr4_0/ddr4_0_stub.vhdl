-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Dec 15 10:52:37 2025
-- Host        : RT-C-0095M running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/HUB4RT/Desktop/FPGA_FTDI_INTERFACE-main/FTDI_FPGA/project_1/project_1.gen/sources_1/ip/ddr4_0/ddr4_0_stub.vhdl
-- Design      : ddr4_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcau15p-ffvb676-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ddr4_0 is
  Port ( 
    sys_rst : in STD_LOGIC;
    c0_sys_clk_p : in STD_LOGIC;
    c0_sys_clk_n : in STD_LOGIC;
    c0_ddr4_act_n : out STD_LOGIC;
    c0_ddr4_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    c0_ddr4_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr4_bg : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_ck_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_ck_c : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_reset_n : out STD_LOGIC;
    c0_ddr4_dm_dbi_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_ddr4_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_ddr4_dqs_c : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_ddr4_dqs_t : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_init_calib_complete : out STD_LOGIC;
    c0_ddr4_ui_clk : out STD_LOGIC;
    c0_ddr4_ui_clk_sync_rst : out STD_LOGIC;
    dbg_clk : out STD_LOGIC;
    c0_ddr4_app_addr : in STD_LOGIC_VECTOR ( 28 downto 0 );
    c0_ddr4_app_cmd : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_ddr4_app_en : in STD_LOGIC;
    c0_ddr4_app_hi_pri : in STD_LOGIC;
    c0_ddr4_app_wdf_data : in STD_LOGIC_VECTOR ( 255 downto 0 );
    c0_ddr4_app_wdf_end : in STD_LOGIC;
    c0_ddr4_app_wdf_mask : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_ddr4_app_wdf_wren : in STD_LOGIC;
    c0_ddr4_app_rd_data : out STD_LOGIC_VECTOR ( 255 downto 0 );
    c0_ddr4_app_rd_data_end : out STD_LOGIC;
    c0_ddr4_app_rd_data_valid : out STD_LOGIC;
    c0_ddr4_app_rdy : out STD_LOGIC;
    c0_ddr4_app_wdf_rdy : out STD_LOGIC;
    dbg_bus : out STD_LOGIC_VECTOR ( 511 downto 0 )
  );

  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ddr4_0 : entity is "DDR4_SDRAM, DDR4_SDRAM,{x_ipProduct=Vivado 2017.2.0,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=DDR4_SDRAM,x_ipVersion=2.2, Controller_Type = DDR4_SDRAM, Time_Period = 833, Input_Clock_Period = 4998, Memory_Type = Components, Memory_Part = MT40A512M16LY-075, Ecc = false, Cas_Latency = 17, Cas_Write_Latency = 12, DQ_Width = 32, Chip_Select = true, Data_Mask = DM_NO_DBI, MEM_ADDR_ORDER = ROW_COLUMN_BANK,  Is_AXI_Enabled = false , Slot_cofiguration =  Single , Clamshell_cofiguration =  false ,IS_FASTER_SPEED_RAM = No, Is_custom_part = false, Memory_Voltage = 1.2V, Phy_Only = Complete_Memory_Controller, Debug_Port = Disable, Burst_Length = 8, System_Clock = Differential, AXI_Selection = false, AXI_Data_Width = 64,  AXI_ArbitrationScheme = RD_PRI_REG, AXI_Narrow_Burst = false, Simulation_Mode = BFM, Debug_Mode = Disable, Example_TG = SIMPLE_TG, Self_Refresh = false, Save_Restore = false, Enable_LVAUX = false,MicroBlaze_ECC = false,  Specify_MandD = false, CLKBOUT_MULT = 15, DIVCLK_DIVIDE = 2, CLKOUT0_DIVIDE = 5}";
  attribute dont_touch : string;
  attribute dont_touch of ddr4_0 : entity is "true";
end ddr4_0;

architecture stub of ddr4_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "sys_rst,c0_sys_clk_p,c0_sys_clk_n,c0_ddr4_act_n,c0_ddr4_adr[16:0],c0_ddr4_ba[1:0],c0_ddr4_bg[0:0],c0_ddr4_cke[0:0],c0_ddr4_odt[0:0],c0_ddr4_cs_n[0:0],c0_ddr4_ck_t[0:0],c0_ddr4_ck_c[0:0],c0_ddr4_reset_n,c0_ddr4_dm_dbi_n[3:0],c0_ddr4_dq[31:0],c0_ddr4_dqs_c[3:0],c0_ddr4_dqs_t[3:0],c0_init_calib_complete,c0_ddr4_ui_clk,c0_ddr4_ui_clk_sync_rst,dbg_clk,c0_ddr4_app_addr[28:0],c0_ddr4_app_cmd[2:0],c0_ddr4_app_en,c0_ddr4_app_hi_pri,c0_ddr4_app_wdf_data[255:0],c0_ddr4_app_wdf_end,c0_ddr4_app_wdf_mask[31:0],c0_ddr4_app_wdf_wren,c0_ddr4_app_rd_data[255:0],c0_ddr4_app_rd_data_end,c0_ddr4_app_rd_data_valid,c0_ddr4_app_rdy,c0_ddr4_app_wdf_rdy,dbg_bus[511:0]";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "ddr4_v2_2_24,Vivado 2024.2";
begin
end;
