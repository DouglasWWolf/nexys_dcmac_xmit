//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Fri Sep 26 02:36:44 2025
//Host        : wolf-super-server running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level.bd
//Design      : top_level
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module channel_0_imp_3EIWA1
   (S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    axis_out_tdata,
    axis_out_tkeep,
    axis_out_tlast,
    axis_out_tready,
    axis_out_tvalid,
    busy,
    clk,
    resetn);
  input [0:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [0:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [0:0]S_AXI_wdata;
  output S_AXI_wready;
  input [0:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output [511:0]axis_out_tdata;
  output [63:0]axis_out_tkeep;
  output axis_out_tlast;
  input axis_out_tready;
  output axis_out_tvalid;
  output busy;
  input clk;
  input resetn;

  wire [15:0]packet_config_idle_cycles;
  wire [15:0]packet_config_initial_value;
  wire [31:0]packet_config_packet_count;
  wire [15:0]packet_config_packet_len;
  wire packet_config_start;
  wire [511:0]packet_gen_axis_out_TDATA;
  wire [63:0]packet_gen_axis_out_TKEEP;
  wire packet_gen_axis_out_TLAST;
  wire packet_gen_axis_out_TREADY;
  wire packet_gen_axis_out_TVALID;
  wire packet_gen_busy;
  wire source_100mhz_sys_clk;
  wire source_100mhz_sys_resetn;
  wire [0:0]system_interconnect_M01_AXI_ARADDR;
  wire [2:0]system_interconnect_M01_AXI_ARPROT;
  wire system_interconnect_M01_AXI_ARREADY;
  wire system_interconnect_M01_AXI_ARVALID;
  wire [0:0]system_interconnect_M01_AXI_AWADDR;
  wire [2:0]system_interconnect_M01_AXI_AWPROT;
  wire system_interconnect_M01_AXI_AWREADY;
  wire system_interconnect_M01_AXI_AWVALID;
  wire system_interconnect_M01_AXI_BREADY;
  wire [1:0]system_interconnect_M01_AXI_BRESP;
  wire system_interconnect_M01_AXI_BVALID;
  wire [31:0]system_interconnect_M01_AXI_RDATA;
  wire system_interconnect_M01_AXI_RREADY;
  wire [1:0]system_interconnect_M01_AXI_RRESP;
  wire system_interconnect_M01_AXI_RVALID;
  wire [0:0]system_interconnect_M01_AXI_WDATA;
  wire system_interconnect_M01_AXI_WREADY;
  wire [0:0]system_interconnect_M01_AXI_WSTRB;
  wire system_interconnect_M01_AXI_WVALID;

  assign S_AXI_arready = system_interconnect_M01_AXI_ARREADY;
  assign S_AXI_awready = system_interconnect_M01_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = system_interconnect_M01_AXI_BRESP;
  assign S_AXI_bvalid = system_interconnect_M01_AXI_BVALID;
  assign S_AXI_rdata[31:0] = system_interconnect_M01_AXI_RDATA;
  assign S_AXI_rresp[1:0] = system_interconnect_M01_AXI_RRESP;
  assign S_AXI_rvalid = system_interconnect_M01_AXI_RVALID;
  assign S_AXI_wready = system_interconnect_M01_AXI_WREADY;
  assign axis_out_tdata[511:0] = packet_gen_axis_out_TDATA;
  assign axis_out_tkeep[63:0] = packet_gen_axis_out_TKEEP;
  assign axis_out_tlast = packet_gen_axis_out_TLAST;
  assign axis_out_tvalid = packet_gen_axis_out_TVALID;
  assign busy = packet_gen_busy;
  assign packet_gen_axis_out_TREADY = axis_out_tready;
  assign source_100mhz_sys_clk = clk;
  assign source_100mhz_sys_resetn = resetn;
  assign system_interconnect_M01_AXI_ARADDR = S_AXI_araddr[0];
  assign system_interconnect_M01_AXI_ARPROT = S_AXI_arprot[2:0];
  assign system_interconnect_M01_AXI_ARVALID = S_AXI_arvalid;
  assign system_interconnect_M01_AXI_AWADDR = S_AXI_awaddr[0];
  assign system_interconnect_M01_AXI_AWPROT = S_AXI_awprot[2:0];
  assign system_interconnect_M01_AXI_AWVALID = S_AXI_awvalid;
  assign system_interconnect_M01_AXI_BREADY = S_AXI_bready;
  assign system_interconnect_M01_AXI_RREADY = S_AXI_rready;
  assign system_interconnect_M01_AXI_WDATA = S_AXI_wdata[0];
  assign system_interconnect_M01_AXI_WSTRB = S_AXI_wstrb[0];
  assign system_interconnect_M01_AXI_WVALID = S_AXI_wvalid;
  top_level_packet_config_0_0 packet_config
       (.S_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_interconnect_M01_AXI_ARADDR}),
        .S_AXI_ARPROT(system_interconnect_M01_AXI_ARPROT),
        .S_AXI_ARREADY(system_interconnect_M01_AXI_ARREADY),
        .S_AXI_ARVALID(system_interconnect_M01_AXI_ARVALID),
        .S_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_interconnect_M01_AXI_AWADDR}),
        .S_AXI_AWPROT(system_interconnect_M01_AXI_AWPROT),
        .S_AXI_AWREADY(system_interconnect_M01_AXI_AWREADY),
        .S_AXI_AWVALID(system_interconnect_M01_AXI_AWVALID),
        .S_AXI_BREADY(system_interconnect_M01_AXI_BREADY),
        .S_AXI_BRESP(system_interconnect_M01_AXI_BRESP),
        .S_AXI_BVALID(system_interconnect_M01_AXI_BVALID),
        .S_AXI_RDATA(system_interconnect_M01_AXI_RDATA),
        .S_AXI_RREADY(system_interconnect_M01_AXI_RREADY),
        .S_AXI_RRESP(system_interconnect_M01_AXI_RRESP),
        .S_AXI_RVALID(system_interconnect_M01_AXI_RVALID),
        .S_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_interconnect_M01_AXI_WDATA}),
        .S_AXI_WREADY(system_interconnect_M01_AXI_WREADY),
        .S_AXI_WSTRB({1'b1,1'b1,1'b1,system_interconnect_M01_AXI_WSTRB}),
        .S_AXI_WVALID(system_interconnect_M01_AXI_WVALID),
        .clk(source_100mhz_sys_clk),
        .idle_cycles(packet_config_idle_cycles),
        .initial_value(packet_config_initial_value),
        .packet_count(packet_config_packet_count),
        .packet_gen_busy(packet_gen_busy),
        .packet_len(packet_config_packet_len),
        .resetn(source_100mhz_sys_resetn),
        .start(packet_config_start));
  top_level_packet_gen_0_0 packet_gen
       (.axis_out_tdata(packet_gen_axis_out_TDATA),
        .axis_out_tkeep(packet_gen_axis_out_TKEEP),
        .axis_out_tlast(packet_gen_axis_out_TLAST),
        .axis_out_tready(packet_gen_axis_out_TREADY),
        .axis_out_tvalid(packet_gen_axis_out_TVALID),
        .busy(packet_gen_busy),
        .clk(source_100mhz_sys_clk),
        .idle_cycles(packet_config_idle_cycles),
        .initial_value(packet_config_initial_value),
        .packet_count(packet_config_packet_count),
        .packet_length(packet_config_packet_len),
        .resetn(source_100mhz_sys_resetn),
        .start(packet_config_start));
endmodule

module channel_1_imp_1R4OFYV
   (S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    axis_out_tdata,
    axis_out_tkeep,
    axis_out_tlast,
    axis_out_tready,
    axis_out_tvalid,
    busy,
    clk,
    resetn);
  input [0:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [0:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [0:0]S_AXI_wdata;
  output S_AXI_wready;
  input [0:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output [511:0]axis_out_tdata;
  output [63:0]axis_out_tkeep;
  output axis_out_tlast;
  input axis_out_tready;
  output axis_out_tvalid;
  output busy;
  input clk;
  input resetn;

  wire [15:0]packet_config_idle_cycles;
  wire [15:0]packet_config_initial_value;
  wire [31:0]packet_config_packet_count;
  wire [15:0]packet_config_packet_len;
  wire packet_config_start;
  wire [511:0]packet_gen_axis_out_TDATA;
  wire [63:0]packet_gen_axis_out_TKEEP;
  wire packet_gen_axis_out_TLAST;
  wire packet_gen_axis_out_TREADY;
  wire packet_gen_axis_out_TVALID;
  wire packet_gen_busy;
  wire resetn_1;
  wire source_100mhz_sys_clk;
  wire [0:0]system_interconnect_M01_AXI_ARADDR;
  wire [2:0]system_interconnect_M01_AXI_ARPROT;
  wire system_interconnect_M01_AXI_ARREADY;
  wire system_interconnect_M01_AXI_ARVALID;
  wire [0:0]system_interconnect_M01_AXI_AWADDR;
  wire [2:0]system_interconnect_M01_AXI_AWPROT;
  wire system_interconnect_M01_AXI_AWREADY;
  wire system_interconnect_M01_AXI_AWVALID;
  wire system_interconnect_M01_AXI_BREADY;
  wire [1:0]system_interconnect_M01_AXI_BRESP;
  wire system_interconnect_M01_AXI_BVALID;
  wire [31:0]system_interconnect_M01_AXI_RDATA;
  wire system_interconnect_M01_AXI_RREADY;
  wire [1:0]system_interconnect_M01_AXI_RRESP;
  wire system_interconnect_M01_AXI_RVALID;
  wire [0:0]system_interconnect_M01_AXI_WDATA;
  wire system_interconnect_M01_AXI_WREADY;
  wire [0:0]system_interconnect_M01_AXI_WSTRB;
  wire system_interconnect_M01_AXI_WVALID;

  assign S_AXI_arready = system_interconnect_M01_AXI_ARREADY;
  assign S_AXI_awready = system_interconnect_M01_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = system_interconnect_M01_AXI_BRESP;
  assign S_AXI_bvalid = system_interconnect_M01_AXI_BVALID;
  assign S_AXI_rdata[31:0] = system_interconnect_M01_AXI_RDATA;
  assign S_AXI_rresp[1:0] = system_interconnect_M01_AXI_RRESP;
  assign S_AXI_rvalid = system_interconnect_M01_AXI_RVALID;
  assign S_AXI_wready = system_interconnect_M01_AXI_WREADY;
  assign axis_out_tdata[511:0] = packet_gen_axis_out_TDATA;
  assign axis_out_tkeep[63:0] = packet_gen_axis_out_TKEEP;
  assign axis_out_tlast = packet_gen_axis_out_TLAST;
  assign axis_out_tvalid = packet_gen_axis_out_TVALID;
  assign busy = packet_gen_busy;
  assign packet_gen_axis_out_TREADY = axis_out_tready;
  assign resetn_1 = resetn;
  assign source_100mhz_sys_clk = clk;
  assign system_interconnect_M01_AXI_ARADDR = S_AXI_araddr[0];
  assign system_interconnect_M01_AXI_ARPROT = S_AXI_arprot[2:0];
  assign system_interconnect_M01_AXI_ARVALID = S_AXI_arvalid;
  assign system_interconnect_M01_AXI_AWADDR = S_AXI_awaddr[0];
  assign system_interconnect_M01_AXI_AWPROT = S_AXI_awprot[2:0];
  assign system_interconnect_M01_AXI_AWVALID = S_AXI_awvalid;
  assign system_interconnect_M01_AXI_BREADY = S_AXI_bready;
  assign system_interconnect_M01_AXI_RREADY = S_AXI_rready;
  assign system_interconnect_M01_AXI_WDATA = S_AXI_wdata[0];
  assign system_interconnect_M01_AXI_WSTRB = S_AXI_wstrb[0];
  assign system_interconnect_M01_AXI_WVALID = S_AXI_wvalid;
  top_level_packet_config_1 packet_config
       (.S_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_interconnect_M01_AXI_ARADDR}),
        .S_AXI_ARPROT(system_interconnect_M01_AXI_ARPROT),
        .S_AXI_ARREADY(system_interconnect_M01_AXI_ARREADY),
        .S_AXI_ARVALID(system_interconnect_M01_AXI_ARVALID),
        .S_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_interconnect_M01_AXI_AWADDR}),
        .S_AXI_AWPROT(system_interconnect_M01_AXI_AWPROT),
        .S_AXI_AWREADY(system_interconnect_M01_AXI_AWREADY),
        .S_AXI_AWVALID(system_interconnect_M01_AXI_AWVALID),
        .S_AXI_BREADY(system_interconnect_M01_AXI_BREADY),
        .S_AXI_BRESP(system_interconnect_M01_AXI_BRESP),
        .S_AXI_BVALID(system_interconnect_M01_AXI_BVALID),
        .S_AXI_RDATA(system_interconnect_M01_AXI_RDATA),
        .S_AXI_RREADY(system_interconnect_M01_AXI_RREADY),
        .S_AXI_RRESP(system_interconnect_M01_AXI_RRESP),
        .S_AXI_RVALID(system_interconnect_M01_AXI_RVALID),
        .S_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,system_interconnect_M01_AXI_WDATA}),
        .S_AXI_WREADY(system_interconnect_M01_AXI_WREADY),
        .S_AXI_WSTRB({1'b1,1'b1,1'b1,system_interconnect_M01_AXI_WSTRB}),
        .S_AXI_WVALID(system_interconnect_M01_AXI_WVALID),
        .clk(source_100mhz_sys_clk),
        .idle_cycles(packet_config_idle_cycles),
        .initial_value(packet_config_initial_value),
        .packet_count(packet_config_packet_count),
        .packet_gen_busy(packet_gen_busy),
        .packet_len(packet_config_packet_len),
        .resetn(resetn_1),
        .start(packet_config_start));
  top_level_packet_gen_1 packet_gen
       (.axis_out_tdata(packet_gen_axis_out_TDATA),
        .axis_out_tkeep(packet_gen_axis_out_TKEEP),
        .axis_out_tlast(packet_gen_axis_out_TLAST),
        .axis_out_tready(packet_gen_axis_out_TREADY),
        .axis_out_tvalid(packet_gen_axis_out_TVALID),
        .busy(packet_gen_busy),
        .clk(source_100mhz_sys_clk),
        .idle_cycles(packet_config_idle_cycles),
        .initial_value(packet_config_initial_value),
        .packet_count(packet_config_packet_count),
        .packet_length(packet_config_packet_len),
        .resetn(resetn_1),
        .start(packet_config_start));
endmodule

module data_consumer_0_imp_1NF301Q
   (axis_in_tdata,
    axis_in_tkeep,
    axis_in_tlast,
    axis_in_tready,
    axis_in_tvalid,
    m_axis_clk,
    m_resetn,
    s_axis_clk,
    s_resetn);
  input [511:0]axis_in_tdata;
  input [63:0]axis_in_tkeep;
  input axis_in_tlast;
  output axis_in_tready;
  input axis_in_tvalid;
  input m_axis_clk;
  input m_resetn;
  input s_axis_clk;
  input s_resetn;

  wire [127:0]axis64_to_dcmac_axis0_out_TDATA;
  wire axis64_to_dcmac_axis0_out_TLAST;
  wire axis64_to_dcmac_axis0_out_TREADY;
  wire [4:0]axis64_to_dcmac_axis0_out_TUSER;
  wire axis64_to_dcmac_axis0_out_TVALID;
  wire [127:0]axis64_to_dcmac_axis1_out_TDATA;
  wire axis64_to_dcmac_axis1_out_TLAST;
  wire axis64_to_dcmac_axis1_out_TREADY;
  wire [4:0]axis64_to_dcmac_axis1_out_TUSER;
  wire axis64_to_dcmac_axis1_out_TVALID;
  wire [127:0]axis64_to_dcmac_axis2_out_TDATA;
  wire axis64_to_dcmac_axis2_out_TLAST;
  wire axis64_to_dcmac_axis2_out_TREADY;
  wire [4:0]axis64_to_dcmac_axis2_out_TUSER;
  wire axis64_to_dcmac_axis2_out_TVALID;
  wire [127:0]axis64_to_dcmac_axis3_out_TDATA;
  wire axis64_to_dcmac_axis3_out_TLAST;
  wire axis64_to_dcmac_axis3_out_TREADY;
  wire [4:0]axis64_to_dcmac_axis3_out_TUSER;
  wire axis64_to_dcmac_axis3_out_TVALID;
  wire [511:0]axis_in_1_TDATA;
  wire [63:0]axis_in_1_TKEEP;
  wire axis_in_1_TLAST;
  wire axis_in_1_TREADY;
  wire axis_in_1_TVALID;
  wire data_consumer_0_AXIS_RX_TREADY;
  wire [127:0]dcmac_packetizer_axis0_out_TDATA;
  wire dcmac_packetizer_axis0_out_TLAST;
  wire dcmac_packetizer_axis0_out_TREADY;
  wire [4:0]dcmac_packetizer_axis0_out_TUSER;
  wire dcmac_packetizer_axis0_out_TVALID;
  wire [127:0]dcmac_packetizer_axis1_out_TDATA;
  wire dcmac_packetizer_axis1_out_TLAST;
  wire dcmac_packetizer_axis1_out_TREADY;
  wire [4:0]dcmac_packetizer_axis1_out_TUSER;
  wire dcmac_packetizer_axis1_out_TVALID;
  wire [127:0]dcmac_packetizer_axis2_out_TDATA;
  wire dcmac_packetizer_axis2_out_TLAST;
  wire dcmac_packetizer_axis2_out_TREADY;
  wire [4:0]dcmac_packetizer_axis2_out_TUSER;
  wire dcmac_packetizer_axis2_out_TVALID;
  wire [127:0]dcmac_packetizer_axis3_out_TDATA;
  wire dcmac_packetizer_axis3_out_TLAST;
  wire dcmac_packetizer_axis3_out_TREADY;
  wire [4:0]dcmac_packetizer_axis3_out_TUSER;
  wire dcmac_packetizer_axis3_out_TVALID;
  wire [127:0]dcmac_tx_2seg_tx_axis_tdata0;
  wire [127:0]dcmac_tx_2seg_tx_axis_tdata1;
  wire dcmac_tx_2seg_tx_axis_tuser_ena0;
  wire dcmac_tx_2seg_tx_axis_tuser_ena1;
  wire dcmac_tx_2seg_tx_axis_tuser_eop0;
  wire dcmac_tx_2seg_tx_axis_tuser_eop1;
  wire [3:0]dcmac_tx_2seg_tx_axis_tuser_mty0;
  wire [3:0]dcmac_tx_2seg_tx_axis_tuser_mty1;
  wire dcmac_tx_2seg_tx_axis_tuser_sop0;
  wire dcmac_tx_2seg_tx_axis_valid;
  wire m_axis_clk_1;
  wire m_resetn_1;
  wire s_axis_clk_1;
  wire s_resetn_1;

  assign axis_in_1_TDATA = axis_in_tdata[511:0];
  assign axis_in_1_TKEEP = axis_in_tkeep[63:0];
  assign axis_in_1_TLAST = axis_in_tlast;
  assign axis_in_1_TVALID = axis_in_tvalid;
  assign axis_in_tready = axis_in_1_TREADY;
  assign m_axis_clk_1 = m_axis_clk;
  assign m_resetn_1 = m_resetn;
  assign s_axis_clk_1 = s_axis_clk;
  assign s_resetn_1 = s_resetn;
  top_level_axis64_to_dcmac_0_0 axis64_to_dcmac
       (.axis0_out_tdata(axis64_to_dcmac_axis0_out_TDATA),
        .axis0_out_tlast(axis64_to_dcmac_axis0_out_TLAST),
        .axis0_out_tready(axis64_to_dcmac_axis0_out_TREADY),
        .axis0_out_tuser(axis64_to_dcmac_axis0_out_TUSER),
        .axis0_out_tvalid(axis64_to_dcmac_axis0_out_TVALID),
        .axis1_out_tdata(axis64_to_dcmac_axis1_out_TDATA),
        .axis1_out_tlast(axis64_to_dcmac_axis1_out_TLAST),
        .axis1_out_tready(axis64_to_dcmac_axis1_out_TREADY),
        .axis1_out_tuser(axis64_to_dcmac_axis1_out_TUSER),
        .axis1_out_tvalid(axis64_to_dcmac_axis1_out_TVALID),
        .axis2_out_tdata(axis64_to_dcmac_axis2_out_TDATA),
        .axis2_out_tlast(axis64_to_dcmac_axis2_out_TLAST),
        .axis2_out_tready(axis64_to_dcmac_axis2_out_TREADY),
        .axis2_out_tuser(axis64_to_dcmac_axis2_out_TUSER),
        .axis2_out_tvalid(axis64_to_dcmac_axis2_out_TVALID),
        .axis3_out_tdata(axis64_to_dcmac_axis3_out_TDATA),
        .axis3_out_tlast(axis64_to_dcmac_axis3_out_TLAST),
        .axis3_out_tready(axis64_to_dcmac_axis3_out_TREADY),
        .axis3_out_tuser(axis64_to_dcmac_axis3_out_TUSER),
        .axis3_out_tvalid(axis64_to_dcmac_axis3_out_TVALID),
        .axis_in_tdata(axis_in_1_TDATA),
        .axis_in_tkeep(axis_in_1_TKEEP),
        .axis_in_tlast(axis_in_1_TLAST),
        .axis_in_tready(axis_in_1_TREADY),
        .axis_in_tvalid(axis_in_1_TVALID),
        .m_axis_clk(m_axis_clk_1),
        .s_axis_clk(s_axis_clk_1),
        .s_resetn(s_resetn_1));
  top_level_data_consumer_0_5 data_consumer_0
       (.AXIS_RX_TDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXIS_RX_TLAST(1'b0),
        .AXIS_RX_TREADY(data_consumer_0_AXIS_RX_TREADY),
        .AXIS_RX_TUSER({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXIS_RX_TVALID(dcmac_tx_2seg_tx_axis_valid),
        .clk(m_axis_clk_1),
        .resetn(m_resetn_1));
  top_level_dcmac_packetizer_0_0 dcmac_packetizer
       (.axis0_in_tdata(axis64_to_dcmac_axis0_out_TDATA),
        .axis0_in_tlast(axis64_to_dcmac_axis0_out_TLAST),
        .axis0_in_tready(axis64_to_dcmac_axis0_out_TREADY),
        .axis0_in_tuser(axis64_to_dcmac_axis0_out_TUSER),
        .axis0_in_tvalid(axis64_to_dcmac_axis0_out_TVALID),
        .axis0_out_tdata(dcmac_packetizer_axis0_out_TDATA),
        .axis0_out_tlast(dcmac_packetizer_axis0_out_TLAST),
        .axis0_out_tready(dcmac_packetizer_axis0_out_TREADY),
        .axis0_out_tuser(dcmac_packetizer_axis0_out_TUSER),
        .axis0_out_tvalid(dcmac_packetizer_axis0_out_TVALID),
        .axis1_in_tdata(axis64_to_dcmac_axis1_out_TDATA),
        .axis1_in_tlast(axis64_to_dcmac_axis1_out_TLAST),
        .axis1_in_tready(axis64_to_dcmac_axis1_out_TREADY),
        .axis1_in_tuser(axis64_to_dcmac_axis1_out_TUSER),
        .axis1_in_tvalid(axis64_to_dcmac_axis1_out_TVALID),
        .axis1_out_tdata(dcmac_packetizer_axis1_out_TDATA),
        .axis1_out_tlast(dcmac_packetizer_axis1_out_TLAST),
        .axis1_out_tready(dcmac_packetizer_axis1_out_TREADY),
        .axis1_out_tuser(dcmac_packetizer_axis1_out_TUSER),
        .axis1_out_tvalid(dcmac_packetizer_axis1_out_TVALID),
        .axis2_in_tdata(axis64_to_dcmac_axis2_out_TDATA),
        .axis2_in_tlast(axis64_to_dcmac_axis2_out_TLAST),
        .axis2_in_tready(axis64_to_dcmac_axis2_out_TREADY),
        .axis2_in_tuser(axis64_to_dcmac_axis2_out_TUSER),
        .axis2_in_tvalid(axis64_to_dcmac_axis2_out_TVALID),
        .axis2_out_tdata(dcmac_packetizer_axis2_out_TDATA),
        .axis2_out_tlast(dcmac_packetizer_axis2_out_TLAST),
        .axis2_out_tready(dcmac_packetizer_axis2_out_TREADY),
        .axis2_out_tuser(dcmac_packetizer_axis2_out_TUSER),
        .axis2_out_tvalid(dcmac_packetizer_axis2_out_TVALID),
        .axis3_in_tdata(axis64_to_dcmac_axis3_out_TDATA),
        .axis3_in_tlast(axis64_to_dcmac_axis3_out_TLAST),
        .axis3_in_tready(axis64_to_dcmac_axis3_out_TREADY),
        .axis3_in_tuser(axis64_to_dcmac_axis3_out_TUSER),
        .axis3_in_tvalid(axis64_to_dcmac_axis3_out_TVALID),
        .axis3_out_tdata(dcmac_packetizer_axis3_out_TDATA),
        .axis3_out_tlast(dcmac_packetizer_axis3_out_TLAST),
        .axis3_out_tready(dcmac_packetizer_axis3_out_TREADY),
        .axis3_out_tuser(dcmac_packetizer_axis3_out_TUSER),
        .axis3_out_tvalid(dcmac_packetizer_axis3_out_TVALID),
        .clk(m_axis_clk_1),
        .resetn(m_resetn_1));
  top_level_dcmac_tx_2seg_0_0 dcmac_tx_2seg
       (.axis0_in_tdata(dcmac_packetizer_axis0_out_TDATA),
        .axis0_in_tlast(dcmac_packetizer_axis0_out_TLAST),
        .axis0_in_tready(dcmac_packetizer_axis0_out_TREADY),
        .axis0_in_tuser(dcmac_packetizer_axis0_out_TUSER),
        .axis0_in_tvalid(dcmac_packetizer_axis0_out_TVALID),
        .axis1_in_tdata(dcmac_packetizer_axis1_out_TDATA),
        .axis1_in_tlast(dcmac_packetizer_axis1_out_TLAST),
        .axis1_in_tready(dcmac_packetizer_axis1_out_TREADY),
        .axis1_in_tuser(dcmac_packetizer_axis1_out_TUSER),
        .axis1_in_tvalid(dcmac_packetizer_axis1_out_TVALID),
        .axis2_in_tdata(dcmac_packetizer_axis2_out_TDATA),
        .axis2_in_tlast(dcmac_packetizer_axis2_out_TLAST),
        .axis2_in_tready(dcmac_packetizer_axis2_out_TREADY),
        .axis2_in_tuser(dcmac_packetizer_axis2_out_TUSER),
        .axis2_in_tvalid(dcmac_packetizer_axis2_out_TVALID),
        .axis3_in_tdata(dcmac_packetizer_axis3_out_TDATA),
        .axis3_in_tlast(dcmac_packetizer_axis3_out_TLAST),
        .axis3_in_tready(dcmac_packetizer_axis3_out_TREADY),
        .axis3_in_tuser(dcmac_packetizer_axis3_out_TUSER),
        .axis3_in_tvalid(dcmac_packetizer_axis3_out_TVALID),
        .clk(m_axis_clk_1),
        .resetn(m_resetn_1),
        .tx_axis_ready(data_consumer_0_AXIS_RX_TREADY),
        .tx_axis_tdata0(dcmac_tx_2seg_tx_axis_tdata0),
        .tx_axis_tdata1(dcmac_tx_2seg_tx_axis_tdata1),
        .tx_axis_tuser_ena0(dcmac_tx_2seg_tx_axis_tuser_ena0),
        .tx_axis_tuser_ena1(dcmac_tx_2seg_tx_axis_tuser_ena1),
        .tx_axis_tuser_eop0(dcmac_tx_2seg_tx_axis_tuser_eop0),
        .tx_axis_tuser_eop1(dcmac_tx_2seg_tx_axis_tuser_eop1),
        .tx_axis_tuser_mty0(dcmac_tx_2seg_tx_axis_tuser_mty0),
        .tx_axis_tuser_mty1(dcmac_tx_2seg_tx_axis_tuser_mty1),
        .tx_axis_tuser_sop0(dcmac_tx_2seg_tx_axis_tuser_sop0),
        .tx_axis_valid(dcmac_tx_2seg_tx_axis_valid));
  top_level_system_ila_0_2 system_ila_0
       (.clk(m_axis_clk_1),
        .probe0(m_resetn_1),
        .probe1(dcmac_tx_2seg_tx_axis_valid),
        .probe10(dcmac_tx_2seg_tx_axis_tuser_mty0[0]),
        .probe11(dcmac_tx_2seg_tx_axis_tuser_mty1[0]),
        .probe12(1'b0),
        .probe13(1'b0),
        .probe14(1'b0),
        .probe2(dcmac_tx_2seg_tx_axis_tuser_ena0),
        .probe3(dcmac_tx_2seg_tx_axis_tuser_ena1),
        .probe4(dcmac_tx_2seg_tx_axis_tdata0[0]),
        .probe5(dcmac_tx_2seg_tx_axis_tdata1[0]),
        .probe6(dcmac_tx_2seg_tx_axis_tuser_sop0),
        .probe7(data_consumer_0_AXIS_RX_TREADY),
        .probe8(dcmac_tx_2seg_tx_axis_tuser_eop0),
        .probe9(dcmac_tx_2seg_tx_axis_tuser_eop1));
endmodule

module data_consumer_1_imp_G29F40
   (axis_in_tdata,
    axis_in_tkeep,
    axis_in_tlast,
    axis_in_tready,
    axis_in_tvalid,
    m_axis_clk,
    m_resetn,
    s_axis_clk,
    s_resetn);
  input [511:0]axis_in_tdata;
  input [63:0]axis_in_tkeep;
  input axis_in_tlast;
  output axis_in_tready;
  input axis_in_tvalid;
  input m_axis_clk;
  input m_resetn;
  input s_axis_clk;
  input s_resetn;

  wire [127:0]axis64_to_dcmac_axis0_out_TDATA;
  wire axis64_to_dcmac_axis0_out_TLAST;
  wire axis64_to_dcmac_axis0_out_TREADY;
  wire [4:0]axis64_to_dcmac_axis0_out_TUSER;
  wire axis64_to_dcmac_axis0_out_TVALID;
  wire [127:0]axis64_to_dcmac_axis1_out_TDATA;
  wire axis64_to_dcmac_axis1_out_TLAST;
  wire axis64_to_dcmac_axis1_out_TREADY;
  wire [4:0]axis64_to_dcmac_axis1_out_TUSER;
  wire axis64_to_dcmac_axis1_out_TVALID;
  wire [127:0]axis64_to_dcmac_axis2_out_TDATA;
  wire axis64_to_dcmac_axis2_out_TLAST;
  wire axis64_to_dcmac_axis2_out_TREADY;
  wire [4:0]axis64_to_dcmac_axis2_out_TUSER;
  wire axis64_to_dcmac_axis2_out_TVALID;
  wire [127:0]axis64_to_dcmac_axis3_out_TDATA;
  wire axis64_to_dcmac_axis3_out_TLAST;
  wire axis64_to_dcmac_axis3_out_TREADY;
  wire [4:0]axis64_to_dcmac_axis3_out_TUSER;
  wire axis64_to_dcmac_axis3_out_TVALID;
  wire [511:0]axis_in_1_TDATA;
  wire [63:0]axis_in_1_TKEEP;
  wire axis_in_1_TLAST;
  wire axis_in_1_TREADY;
  wire axis_in_1_TVALID;
  wire data_consumer_0_AXIS_RX_TREADY;
  wire [127:0]dcmac_packetizer_axis0_out_TDATA;
  wire dcmac_packetizer_axis0_out_TLAST;
  wire dcmac_packetizer_axis0_out_TREADY;
  wire [4:0]dcmac_packetizer_axis0_out_TUSER;
  wire dcmac_packetizer_axis0_out_TVALID;
  wire [127:0]dcmac_packetizer_axis1_out_TDATA;
  wire dcmac_packetizer_axis1_out_TLAST;
  wire dcmac_packetizer_axis1_out_TREADY;
  wire [4:0]dcmac_packetizer_axis1_out_TUSER;
  wire dcmac_packetizer_axis1_out_TVALID;
  wire [127:0]dcmac_packetizer_axis2_out_TDATA;
  wire dcmac_packetizer_axis2_out_TLAST;
  wire dcmac_packetizer_axis2_out_TREADY;
  wire [4:0]dcmac_packetizer_axis2_out_TUSER;
  wire dcmac_packetizer_axis2_out_TVALID;
  wire [127:0]dcmac_packetizer_axis3_out_TDATA;
  wire dcmac_packetizer_axis3_out_TLAST;
  wire dcmac_packetizer_axis3_out_TREADY;
  wire [4:0]dcmac_packetizer_axis3_out_TUSER;
  wire dcmac_packetizer_axis3_out_TVALID;
  wire dcmac_tx_2seg_tx_axis_valid;
  wire [127:0]dcmac_tx_4seg_0_tx_axis_tdata0;
  wire [127:0]dcmac_tx_4seg_0_tx_axis_tdata1;
  wire [127:0]dcmac_tx_4seg_0_tx_axis_tdata2;
  wire [127:0]dcmac_tx_4seg_0_tx_axis_tdata3;
  wire dcmac_tx_4seg_0_tx_axis_tuser_ena0;
  wire dcmac_tx_4seg_0_tx_axis_tuser_ena1;
  wire dcmac_tx_4seg_0_tx_axis_tuser_ena2;
  wire dcmac_tx_4seg_0_tx_axis_tuser_ena3;
  wire dcmac_tx_4seg_0_tx_axis_tuser_eop0;
  wire dcmac_tx_4seg_0_tx_axis_tuser_eop1;
  wire dcmac_tx_4seg_0_tx_axis_tuser_eop2;
  wire dcmac_tx_4seg_0_tx_axis_tuser_eop3;
  wire [3:0]dcmac_tx_4seg_0_tx_axis_tuser_mty0;
  wire [3:0]dcmac_tx_4seg_0_tx_axis_tuser_mty1;
  wire [3:0]dcmac_tx_4seg_0_tx_axis_tuser_mty2;
  wire [3:0]dcmac_tx_4seg_0_tx_axis_tuser_mty3;
  wire dcmac_tx_4seg_0_tx_axis_tuser_sop0;
  wire m_axis_clk_1;
  wire m_resetn_1;
  wire s_axis_clk_1;
  wire s_resetn_1;

  assign axis_in_1_TDATA = axis_in_tdata[511:0];
  assign axis_in_1_TKEEP = axis_in_tkeep[63:0];
  assign axis_in_1_TLAST = axis_in_tlast;
  assign axis_in_1_TVALID = axis_in_tvalid;
  assign axis_in_tready = axis_in_1_TREADY;
  assign m_axis_clk_1 = m_axis_clk;
  assign m_resetn_1 = m_resetn;
  assign s_axis_clk_1 = s_axis_clk;
  assign s_resetn_1 = s_resetn;
  top_level_axis64_to_dcmac_1 axis64_to_dcmac
       (.axis0_out_tdata(axis64_to_dcmac_axis0_out_TDATA),
        .axis0_out_tlast(axis64_to_dcmac_axis0_out_TLAST),
        .axis0_out_tready(axis64_to_dcmac_axis0_out_TREADY),
        .axis0_out_tuser(axis64_to_dcmac_axis0_out_TUSER),
        .axis0_out_tvalid(axis64_to_dcmac_axis0_out_TVALID),
        .axis1_out_tdata(axis64_to_dcmac_axis1_out_TDATA),
        .axis1_out_tlast(axis64_to_dcmac_axis1_out_TLAST),
        .axis1_out_tready(axis64_to_dcmac_axis1_out_TREADY),
        .axis1_out_tuser(axis64_to_dcmac_axis1_out_TUSER),
        .axis1_out_tvalid(axis64_to_dcmac_axis1_out_TVALID),
        .axis2_out_tdata(axis64_to_dcmac_axis2_out_TDATA),
        .axis2_out_tlast(axis64_to_dcmac_axis2_out_TLAST),
        .axis2_out_tready(axis64_to_dcmac_axis2_out_TREADY),
        .axis2_out_tuser(axis64_to_dcmac_axis2_out_TUSER),
        .axis2_out_tvalid(axis64_to_dcmac_axis2_out_TVALID),
        .axis3_out_tdata(axis64_to_dcmac_axis3_out_TDATA),
        .axis3_out_tlast(axis64_to_dcmac_axis3_out_TLAST),
        .axis3_out_tready(axis64_to_dcmac_axis3_out_TREADY),
        .axis3_out_tuser(axis64_to_dcmac_axis3_out_TUSER),
        .axis3_out_tvalid(axis64_to_dcmac_axis3_out_TVALID),
        .axis_in_tdata(axis_in_1_TDATA),
        .axis_in_tkeep(axis_in_1_TKEEP),
        .axis_in_tlast(axis_in_1_TLAST),
        .axis_in_tready(axis_in_1_TREADY),
        .axis_in_tvalid(axis_in_1_TVALID),
        .m_axis_clk(m_axis_clk_1),
        .s_axis_clk(s_axis_clk_1),
        .s_resetn(s_resetn_1));
  top_level_data_consumer_0_6 data_consumer_0
       (.AXIS_RX_TDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXIS_RX_TLAST(1'b0),
        .AXIS_RX_TREADY(data_consumer_0_AXIS_RX_TREADY),
        .AXIS_RX_TUSER({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .AXIS_RX_TVALID(dcmac_tx_2seg_tx_axis_valid),
        .clk(m_axis_clk_1),
        .resetn(m_resetn_1));
  top_level_dcmac_packetizer_1 dcmac_packetizer
       (.axis0_in_tdata(axis64_to_dcmac_axis0_out_TDATA),
        .axis0_in_tlast(axis64_to_dcmac_axis0_out_TLAST),
        .axis0_in_tready(axis64_to_dcmac_axis0_out_TREADY),
        .axis0_in_tuser(axis64_to_dcmac_axis0_out_TUSER),
        .axis0_in_tvalid(axis64_to_dcmac_axis0_out_TVALID),
        .axis0_out_tdata(dcmac_packetizer_axis0_out_TDATA),
        .axis0_out_tlast(dcmac_packetizer_axis0_out_TLAST),
        .axis0_out_tready(dcmac_packetizer_axis0_out_TREADY),
        .axis0_out_tuser(dcmac_packetizer_axis0_out_TUSER),
        .axis0_out_tvalid(dcmac_packetizer_axis0_out_TVALID),
        .axis1_in_tdata(axis64_to_dcmac_axis1_out_TDATA),
        .axis1_in_tlast(axis64_to_dcmac_axis1_out_TLAST),
        .axis1_in_tready(axis64_to_dcmac_axis1_out_TREADY),
        .axis1_in_tuser(axis64_to_dcmac_axis1_out_TUSER),
        .axis1_in_tvalid(axis64_to_dcmac_axis1_out_TVALID),
        .axis1_out_tdata(dcmac_packetizer_axis1_out_TDATA),
        .axis1_out_tlast(dcmac_packetizer_axis1_out_TLAST),
        .axis1_out_tready(dcmac_packetizer_axis1_out_TREADY),
        .axis1_out_tuser(dcmac_packetizer_axis1_out_TUSER),
        .axis1_out_tvalid(dcmac_packetizer_axis1_out_TVALID),
        .axis2_in_tdata(axis64_to_dcmac_axis2_out_TDATA),
        .axis2_in_tlast(axis64_to_dcmac_axis2_out_TLAST),
        .axis2_in_tready(axis64_to_dcmac_axis2_out_TREADY),
        .axis2_in_tuser(axis64_to_dcmac_axis2_out_TUSER),
        .axis2_in_tvalid(axis64_to_dcmac_axis2_out_TVALID),
        .axis2_out_tdata(dcmac_packetizer_axis2_out_TDATA),
        .axis2_out_tlast(dcmac_packetizer_axis2_out_TLAST),
        .axis2_out_tready(dcmac_packetizer_axis2_out_TREADY),
        .axis2_out_tuser(dcmac_packetizer_axis2_out_TUSER),
        .axis2_out_tvalid(dcmac_packetizer_axis2_out_TVALID),
        .axis3_in_tdata(axis64_to_dcmac_axis3_out_TDATA),
        .axis3_in_tlast(axis64_to_dcmac_axis3_out_TLAST),
        .axis3_in_tready(axis64_to_dcmac_axis3_out_TREADY),
        .axis3_in_tuser(axis64_to_dcmac_axis3_out_TUSER),
        .axis3_in_tvalid(axis64_to_dcmac_axis3_out_TVALID),
        .axis3_out_tdata(dcmac_packetizer_axis3_out_TDATA),
        .axis3_out_tlast(dcmac_packetizer_axis3_out_TLAST),
        .axis3_out_tready(dcmac_packetizer_axis3_out_TREADY),
        .axis3_out_tuser(dcmac_packetizer_axis3_out_TUSER),
        .axis3_out_tvalid(dcmac_packetizer_axis3_out_TVALID),
        .clk(m_axis_clk_1),
        .resetn(m_resetn_1));
  top_level_dcmac_tx_4seg_0_0 dcmac_tx_4seg_0
       (.axis0_in_tdata(dcmac_packetizer_axis0_out_TDATA),
        .axis0_in_tlast(dcmac_packetizer_axis0_out_TLAST),
        .axis0_in_tready(dcmac_packetizer_axis0_out_TREADY),
        .axis0_in_tuser(dcmac_packetizer_axis0_out_TUSER),
        .axis0_in_tvalid(dcmac_packetizer_axis0_out_TVALID),
        .axis1_in_tdata(dcmac_packetizer_axis1_out_TDATA),
        .axis1_in_tlast(dcmac_packetizer_axis1_out_TLAST),
        .axis1_in_tready(dcmac_packetizer_axis1_out_TREADY),
        .axis1_in_tuser(dcmac_packetizer_axis1_out_TUSER),
        .axis1_in_tvalid(dcmac_packetizer_axis1_out_TVALID),
        .axis2_in_tdata(dcmac_packetizer_axis2_out_TDATA),
        .axis2_in_tlast(dcmac_packetizer_axis2_out_TLAST),
        .axis2_in_tready(dcmac_packetizer_axis2_out_TREADY),
        .axis2_in_tuser(dcmac_packetizer_axis2_out_TUSER),
        .axis2_in_tvalid(dcmac_packetizer_axis2_out_TVALID),
        .axis3_in_tdata(dcmac_packetizer_axis3_out_TDATA),
        .axis3_in_tlast(dcmac_packetizer_axis3_out_TLAST),
        .axis3_in_tready(dcmac_packetizer_axis3_out_TREADY),
        .axis3_in_tuser(dcmac_packetizer_axis3_out_TUSER),
        .axis3_in_tvalid(dcmac_packetizer_axis3_out_TVALID),
        .clk(m_axis_clk_1),
        .resetn(m_resetn_1),
        .tx_axis_ready(data_consumer_0_AXIS_RX_TREADY),
        .tx_axis_tdata0(dcmac_tx_4seg_0_tx_axis_tdata0),
        .tx_axis_tdata1(dcmac_tx_4seg_0_tx_axis_tdata1),
        .tx_axis_tdata2(dcmac_tx_4seg_0_tx_axis_tdata2),
        .tx_axis_tdata3(dcmac_tx_4seg_0_tx_axis_tdata3),
        .tx_axis_tuser_ena0(dcmac_tx_4seg_0_tx_axis_tuser_ena0),
        .tx_axis_tuser_ena1(dcmac_tx_4seg_0_tx_axis_tuser_ena1),
        .tx_axis_tuser_ena2(dcmac_tx_4seg_0_tx_axis_tuser_ena2),
        .tx_axis_tuser_ena3(dcmac_tx_4seg_0_tx_axis_tuser_ena3),
        .tx_axis_tuser_eop0(dcmac_tx_4seg_0_tx_axis_tuser_eop0),
        .tx_axis_tuser_eop1(dcmac_tx_4seg_0_tx_axis_tuser_eop1),
        .tx_axis_tuser_eop2(dcmac_tx_4seg_0_tx_axis_tuser_eop2),
        .tx_axis_tuser_eop3(dcmac_tx_4seg_0_tx_axis_tuser_eop3),
        .tx_axis_tuser_mty0(dcmac_tx_4seg_0_tx_axis_tuser_mty0),
        .tx_axis_tuser_mty1(dcmac_tx_4seg_0_tx_axis_tuser_mty1),
        .tx_axis_tuser_mty2(dcmac_tx_4seg_0_tx_axis_tuser_mty2),
        .tx_axis_tuser_mty3(dcmac_tx_4seg_0_tx_axis_tuser_mty3),
        .tx_axis_tuser_sop0(dcmac_tx_4seg_0_tx_axis_tuser_sop0),
        .tx_axis_valid(dcmac_tx_2seg_tx_axis_valid));
  top_level_system_ila_0_3 system_ila_0
       (.clk(m_axis_clk_1),
        .probe0(data_consumer_0_AXIS_RX_TREADY),
        .probe1(dcmac_tx_2seg_tx_axis_valid),
        .probe10(dcmac_tx_4seg_0_tx_axis_tuser_sop0),
        .probe11(dcmac_tx_4seg_0_tx_axis_tuser_eop0),
        .probe12(dcmac_tx_4seg_0_tx_axis_tuser_eop1),
        .probe13(dcmac_tx_4seg_0_tx_axis_tuser_eop2),
        .probe14(dcmac_tx_4seg_0_tx_axis_tuser_eop3),
        .probe15(dcmac_tx_4seg_0_tx_axis_tuser_mty0[0]),
        .probe16(dcmac_tx_4seg_0_tx_axis_tuser_mty1[0]),
        .probe17(dcmac_tx_4seg_0_tx_axis_tuser_mty2[0]),
        .probe18(dcmac_tx_4seg_0_tx_axis_tuser_mty3[0]),
        .probe2(dcmac_tx_4seg_0_tx_axis_tdata0[0]),
        .probe3(dcmac_tx_4seg_0_tx_axis_tdata1[0]),
        .probe4(dcmac_tx_4seg_0_tx_axis_tdata2[0]),
        .probe5(dcmac_tx_4seg_0_tx_axis_tdata3[0]),
        .probe6(dcmac_tx_4seg_0_tx_axis_tuser_ena0),
        .probe7(dcmac_tx_4seg_0_tx_axis_tuser_ena1),
        .probe8(dcmac_tx_4seg_0_tx_axis_tuser_ena2),
        .probe9(dcmac_tx_4seg_0_tx_axis_tuser_ena3));
endmodule

module source_50mhz_imp_1DU1HTR
   (clk_in,
    fast_clk,
    generic_resetn,
    resetn_in,
    sys_clk,
    sys_resetn);
  input clk_in;
  output fast_clk;
  output [0:0]generic_resetn;
  input resetn_in;
  output sys_clk;
  output [0:0]sys_resetn;

  wire clk_in1_0_1;
  wire ext_reset_in_0_1;
  wire [0:0]generic_resetn_dout;
  wire system_clock_clk_100mhz;
  wire system_clock_fast_clk;
  wire [0:0]system_reset_peripheral_aresetn;

  assign clk_in1_0_1 = clk_in;
  assign ext_reset_in_0_1 = resetn_in;
  assign fast_clk = system_clock_fast_clk;
  assign generic_resetn[0] = generic_resetn_dout;
  assign sys_clk = system_clock_clk_100mhz;
  assign sys_resetn[0] = system_reset_peripheral_aresetn;
  top_level_xlconstant_0_1 generic_resetn_RnM
       (.dout(generic_resetn_dout));
  top_level_clk_wiz_0_0 system_clock
       (.clk_in1(clk_in1_0_1),
        .fast_clk(system_clock_fast_clk),
        .sys_clk(system_clock_clk_100mhz));
  top_level_proc_sys_reset_0_0 system_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_0_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(system_reset_peripheral_aresetn),
        .slowest_sync_clk(system_clock_clk_100mhz));
endmodule

(* CORE_GENERATION_INFO = "top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_level,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=28,numReposBlks=22,numNonXlnxBlks=0,numHierBlks=6,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=15,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "top_level.hwdef" *) 
module top_level
   (CLK100MHZ,
    CPU_RESETN,
    UART_rxd,
    UART_txd,
    eth0_aligned,
    eth1_aligned,
    status_led);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK100MHZ, CLK_DOMAIN top_level_CLK100MHZ, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK100MHZ;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CPU_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CPU_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input CPU_RESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART RxD" *) input UART_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART TxD" *) output UART_txd;
  input eth0_aligned;
  input eth1_aligned;
  output [3:0]status_led;

  wire axi_uartlite_UART_RxD;
  wire axi_uartlite_UART_TxD;
  wire [511:0]axis_in_1_TDATA;
  wire [63:0]axis_in_1_TKEEP;
  wire axis_in_1_TLAST;
  wire axis_in_1_TREADY;
  wire axis_in_1_TVALID;
  wire [511:0]channel_0_axis_out_TDATA;
  wire [63:0]channel_0_axis_out_TKEEP;
  wire channel_0_axis_out_TLAST;
  wire channel_0_axis_out_TREADY;
  wire channel_0_axis_out_TVALID;
  wire channel_0_busy;
  wire channel_1_busy;
  wire clk_in1_0_1;
  wire eth0_aligned_1;
  wire eth1_aligned_1;
  wire ext_reset_in_0_1;
  wire source_100mhz_sys_clk;
  wire [0:0]source_100mhz_sys_resetn;
  wire source_50mhz_fast_clk;
  wire [0:0]source_50mhz_generic_resetn;
  wire [3:0]status_0_status_led;
  wire system_interconnect_M00_AXI_ARADDR;
  wire [2:0]system_interconnect_M00_AXI_ARPROT;
  wire system_interconnect_M00_AXI_ARREADY;
  wire [0:0]system_interconnect_M00_AXI_ARVALID;
  wire system_interconnect_M00_AXI_AWADDR;
  wire [2:0]system_interconnect_M00_AXI_AWPROT;
  wire system_interconnect_M00_AXI_AWREADY;
  wire [0:0]system_interconnect_M00_AXI_AWVALID;
  wire [0:0]system_interconnect_M00_AXI_BREADY;
  wire [1:0]system_interconnect_M00_AXI_BRESP;
  wire system_interconnect_M00_AXI_BVALID;
  wire [31:0]system_interconnect_M00_AXI_RDATA;
  wire [0:0]system_interconnect_M00_AXI_RREADY;
  wire [1:0]system_interconnect_M00_AXI_RRESP;
  wire system_interconnect_M00_AXI_RVALID;
  wire system_interconnect_M00_AXI_WDATA;
  wire system_interconnect_M00_AXI_WREADY;
  wire system_interconnect_M00_AXI_WSTRB;
  wire [0:0]system_interconnect_M00_AXI_WVALID;
  wire system_interconnect_M01_AXI_ARADDR;
  wire [2:0]system_interconnect_M01_AXI_ARPROT;
  wire system_interconnect_M01_AXI_ARREADY;
  wire [0:0]system_interconnect_M01_AXI_ARVALID;
  wire system_interconnect_M01_AXI_AWADDR;
  wire [2:0]system_interconnect_M01_AXI_AWPROT;
  wire system_interconnect_M01_AXI_AWREADY;
  wire [0:0]system_interconnect_M01_AXI_AWVALID;
  wire [0:0]system_interconnect_M01_AXI_BREADY;
  wire [1:0]system_interconnect_M01_AXI_BRESP;
  wire system_interconnect_M01_AXI_BVALID;
  wire [31:0]system_interconnect_M01_AXI_RDATA;
  wire [0:0]system_interconnect_M01_AXI_RREADY;
  wire [1:0]system_interconnect_M01_AXI_RRESP;
  wire system_interconnect_M01_AXI_RVALID;
  wire system_interconnect_M01_AXI_WDATA;
  wire system_interconnect_M01_AXI_WREADY;
  wire system_interconnect_M01_AXI_WSTRB;
  wire [0:0]system_interconnect_M01_AXI_WVALID;
  wire system_interconnect_M02_AXI_ARADDR;
  wire [2:0]system_interconnect_M02_AXI_ARPROT;
  wire system_interconnect_M02_AXI_ARREADY;
  wire [0:0]system_interconnect_M02_AXI_ARVALID;
  wire system_interconnect_M02_AXI_AWADDR;
  wire [2:0]system_interconnect_M02_AXI_AWPROT;
  wire system_interconnect_M02_AXI_AWREADY;
  wire [0:0]system_interconnect_M02_AXI_AWVALID;
  wire [0:0]system_interconnect_M02_AXI_BREADY;
  wire [1:0]system_interconnect_M02_AXI_BRESP;
  wire system_interconnect_M02_AXI_BVALID;
  wire [31:0]system_interconnect_M02_AXI_RDATA;
  wire [0:0]system_interconnect_M02_AXI_RREADY;
  wire [1:0]system_interconnect_M02_AXI_RRESP;
  wire system_interconnect_M02_AXI_RVALID;
  wire system_interconnect_M02_AXI_WDATA;
  wire system_interconnect_M02_AXI_WREADY;
  wire system_interconnect_M02_AXI_WSTRB;
  wire [0:0]system_interconnect_M02_AXI_WVALID;
  wire system_interconnect_M03_AXI_ARADDR;
  wire [2:0]system_interconnect_M03_AXI_ARPROT;
  wire system_interconnect_M03_AXI_ARREADY;
  wire [0:0]system_interconnect_M03_AXI_ARVALID;
  wire system_interconnect_M03_AXI_AWADDR;
  wire [2:0]system_interconnect_M03_AXI_AWPROT;
  wire system_interconnect_M03_AXI_AWREADY;
  wire [0:0]system_interconnect_M03_AXI_AWVALID;
  wire [0:0]system_interconnect_M03_AXI_BREADY;
  wire [1:0]system_interconnect_M03_AXI_BRESP;
  wire system_interconnect_M03_AXI_BVALID;
  wire [31:0]system_interconnect_M03_AXI_RDATA;
  wire [0:0]system_interconnect_M03_AXI_RREADY;
  wire [1:0]system_interconnect_M03_AXI_RRESP;
  wire system_interconnect_M03_AXI_RVALID;
  wire system_interconnect_M03_AXI_WDATA;
  wire system_interconnect_M03_AXI_WREADY;
  wire system_interconnect_M03_AXI_WSTRB;
  wire [0:0]system_interconnect_M03_AXI_WVALID;
  wire uart_axi_bridge_M_AXI_ARADDR;
  wire [0:0]uart_axi_bridge_M_AXI_ARREADY;
  wire [0:0]uart_axi_bridge_M_AXI_ARVALID;
  wire uart_axi_bridge_M_AXI_AWADDR;
  wire [0:0]uart_axi_bridge_M_AXI_AWREADY;
  wire [0:0]uart_axi_bridge_M_AXI_AWVALID;
  wire [0:0]uart_axi_bridge_M_AXI_BREADY;
  wire [1:0]uart_axi_bridge_M_AXI_BRESP;
  wire [0:0]uart_axi_bridge_M_AXI_BVALID;
  wire uart_axi_bridge_M_AXI_RDATA;
  wire [0:0]uart_axi_bridge_M_AXI_RREADY;
  wire [1:0]uart_axi_bridge_M_AXI_RRESP;
  wire [0:0]uart_axi_bridge_M_AXI_RVALID;
  wire uart_axi_bridge_M_AXI_WDATA;
  wire [0:0]uart_axi_bridge_M_AXI_WREADY;
  wire uart_axi_bridge_M_AXI_WSTRB;
  wire [0:0]uart_axi_bridge_M_AXI_WVALID;

  assign UART_txd = axi_uartlite_UART_TxD;
  assign axi_uartlite_UART_RxD = UART_rxd;
  assign clk_in1_0_1 = CLK100MHZ;
  assign eth0_aligned_1 = eth0_aligned;
  assign eth1_aligned_1 = eth1_aligned;
  assign ext_reset_in_0_1 = CPU_RESETN;
  assign status_led[3:0] = status_0_status_led;
  top_level_axi_revision_0_0 axi_revision
       (.AXI_ACLK(source_100mhz_sys_clk),
        .AXI_ARESETN(source_100mhz_sys_resetn),
        .S_AXI_ARADDR({system_interconnect_M00_AXI_ARADDR,system_interconnect_M00_AXI_ARADDR,system_interconnect_M00_AXI_ARADDR,system_interconnect_M00_AXI_ARADDR,system_interconnect_M00_AXI_ARADDR}),
        .S_AXI_ARPROT(system_interconnect_M00_AXI_ARPROT),
        .S_AXI_ARREADY(system_interconnect_M00_AXI_ARREADY),
        .S_AXI_ARVALID(system_interconnect_M00_AXI_ARVALID),
        .S_AXI_AWADDR({system_interconnect_M00_AXI_AWADDR,system_interconnect_M00_AXI_AWADDR,system_interconnect_M00_AXI_AWADDR,system_interconnect_M00_AXI_AWADDR,system_interconnect_M00_AXI_AWADDR}),
        .S_AXI_AWPROT(system_interconnect_M00_AXI_AWPROT),
        .S_AXI_AWREADY(system_interconnect_M00_AXI_AWREADY),
        .S_AXI_AWVALID(system_interconnect_M00_AXI_AWVALID),
        .S_AXI_BREADY(system_interconnect_M00_AXI_BREADY),
        .S_AXI_BRESP(system_interconnect_M00_AXI_BRESP),
        .S_AXI_BVALID(system_interconnect_M00_AXI_BVALID),
        .S_AXI_RDATA(system_interconnect_M00_AXI_RDATA),
        .S_AXI_RREADY(system_interconnect_M00_AXI_RREADY),
        .S_AXI_RRESP(system_interconnect_M00_AXI_RRESP),
        .S_AXI_RVALID(system_interconnect_M00_AXI_RVALID),
        .S_AXI_WDATA({system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA}),
        .S_AXI_WREADY(system_interconnect_M00_AXI_WREADY),
        .S_AXI_WSTRB({system_interconnect_M00_AXI_WSTRB,system_interconnect_M00_AXI_WSTRB,system_interconnect_M00_AXI_WSTRB,system_interconnect_M00_AXI_WSTRB}),
        .S_AXI_WVALID(system_interconnect_M00_AXI_WVALID));
  channel_0_imp_3EIWA1 channel_0
       (.S_AXI_araddr(system_interconnect_M01_AXI_ARADDR),
        .S_AXI_arprot(system_interconnect_M01_AXI_ARPROT),
        .S_AXI_arready(system_interconnect_M01_AXI_ARREADY),
        .S_AXI_arvalid(system_interconnect_M01_AXI_ARVALID),
        .S_AXI_awaddr(system_interconnect_M01_AXI_AWADDR),
        .S_AXI_awprot(system_interconnect_M01_AXI_AWPROT),
        .S_AXI_awready(system_interconnect_M01_AXI_AWREADY),
        .S_AXI_awvalid(system_interconnect_M01_AXI_AWVALID),
        .S_AXI_bready(system_interconnect_M01_AXI_BREADY),
        .S_AXI_bresp(system_interconnect_M01_AXI_BRESP),
        .S_AXI_bvalid(system_interconnect_M01_AXI_BVALID),
        .S_AXI_rdata(system_interconnect_M01_AXI_RDATA),
        .S_AXI_rready(system_interconnect_M01_AXI_RREADY),
        .S_AXI_rresp(system_interconnect_M01_AXI_RRESP),
        .S_AXI_rvalid(system_interconnect_M01_AXI_RVALID),
        .S_AXI_wdata(system_interconnect_M01_AXI_WDATA),
        .S_AXI_wready(system_interconnect_M01_AXI_WREADY),
        .S_AXI_wstrb(system_interconnect_M01_AXI_WSTRB),
        .S_AXI_wvalid(system_interconnect_M01_AXI_WVALID),
        .axis_out_tdata(channel_0_axis_out_TDATA),
        .axis_out_tkeep(channel_0_axis_out_TKEEP),
        .axis_out_tlast(channel_0_axis_out_TLAST),
        .axis_out_tready(channel_0_axis_out_TREADY),
        .axis_out_tvalid(channel_0_axis_out_TVALID),
        .busy(channel_0_busy),
        .clk(source_100mhz_sys_clk),
        .resetn(source_100mhz_sys_resetn));
  channel_1_imp_1R4OFYV channel_1
       (.S_AXI_araddr(system_interconnect_M02_AXI_ARADDR),
        .S_AXI_arprot(system_interconnect_M02_AXI_ARPROT),
        .S_AXI_arready(system_interconnect_M02_AXI_ARREADY),
        .S_AXI_arvalid(system_interconnect_M02_AXI_ARVALID),
        .S_AXI_awaddr(system_interconnect_M02_AXI_AWADDR),
        .S_AXI_awprot(system_interconnect_M02_AXI_AWPROT),
        .S_AXI_awready(system_interconnect_M02_AXI_AWREADY),
        .S_AXI_awvalid(system_interconnect_M02_AXI_AWVALID),
        .S_AXI_bready(system_interconnect_M02_AXI_BREADY),
        .S_AXI_bresp(system_interconnect_M02_AXI_BRESP),
        .S_AXI_bvalid(system_interconnect_M02_AXI_BVALID),
        .S_AXI_rdata(system_interconnect_M02_AXI_RDATA),
        .S_AXI_rready(system_interconnect_M02_AXI_RREADY),
        .S_AXI_rresp(system_interconnect_M02_AXI_RRESP),
        .S_AXI_rvalid(system_interconnect_M02_AXI_RVALID),
        .S_AXI_wdata(system_interconnect_M02_AXI_WDATA),
        .S_AXI_wready(system_interconnect_M02_AXI_WREADY),
        .S_AXI_wstrb(system_interconnect_M02_AXI_WSTRB),
        .S_AXI_wvalid(system_interconnect_M02_AXI_WVALID),
        .axis_out_tdata(axis_in_1_TDATA),
        .axis_out_tkeep(axis_in_1_TKEEP),
        .axis_out_tlast(axis_in_1_TLAST),
        .axis_out_tready(axis_in_1_TREADY),
        .axis_out_tvalid(axis_in_1_TVALID),
        .busy(channel_1_busy),
        .clk(source_100mhz_sys_clk),
        .resetn(source_100mhz_sys_resetn));
  data_consumer_0_imp_1NF301Q data_consumer_0
       (.axis_in_tdata(channel_0_axis_out_TDATA),
        .axis_in_tkeep(channel_0_axis_out_TKEEP),
        .axis_in_tlast(channel_0_axis_out_TLAST),
        .axis_in_tready(channel_0_axis_out_TREADY),
        .axis_in_tvalid(channel_0_axis_out_TVALID),
        .m_axis_clk(source_50mhz_fast_clk),
        .m_resetn(source_50mhz_generic_resetn),
        .s_axis_clk(source_100mhz_sys_clk),
        .s_resetn(source_100mhz_sys_resetn));
  data_consumer_1_imp_G29F40 data_consumer_1
       (.axis_in_tdata(axis_in_1_TDATA),
        .axis_in_tkeep(axis_in_1_TKEEP),
        .axis_in_tlast(axis_in_1_TLAST),
        .axis_in_tready(axis_in_1_TREADY),
        .axis_in_tvalid(axis_in_1_TVALID),
        .m_axis_clk(source_50mhz_fast_clk),
        .m_resetn(source_50mhz_generic_resetn),
        .s_axis_clk(source_100mhz_sys_clk),
        .s_resetn(source_100mhz_sys_resetn));
  source_50mhz_imp_1DU1HTR source_50mhz
       (.clk_in(clk_in1_0_1),
        .fast_clk(source_50mhz_fast_clk),
        .generic_resetn(source_50mhz_generic_resetn),
        .resetn_in(ext_reset_in_0_1),
        .sys_clk(source_100mhz_sys_clk),
        .sys_resetn(source_100mhz_sys_resetn));
  top_level_status_0_0 status_reporter
       (.S_AXI_ARADDR({system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR,system_interconnect_M03_AXI_ARADDR}),
        .S_AXI_ARPROT(system_interconnect_M03_AXI_ARPROT),
        .S_AXI_ARREADY(system_interconnect_M03_AXI_ARREADY),
        .S_AXI_ARVALID(system_interconnect_M03_AXI_ARVALID),
        .S_AXI_AWADDR({system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR,system_interconnect_M03_AXI_AWADDR}),
        .S_AXI_AWPROT(system_interconnect_M03_AXI_AWPROT),
        .S_AXI_AWREADY(system_interconnect_M03_AXI_AWREADY),
        .S_AXI_AWVALID(system_interconnect_M03_AXI_AWVALID),
        .S_AXI_BREADY(system_interconnect_M03_AXI_BREADY),
        .S_AXI_BRESP(system_interconnect_M03_AXI_BRESP),
        .S_AXI_BVALID(system_interconnect_M03_AXI_BVALID),
        .S_AXI_RDATA(system_interconnect_M03_AXI_RDATA),
        .S_AXI_RREADY(system_interconnect_M03_AXI_RREADY),
        .S_AXI_RRESP(system_interconnect_M03_AXI_RRESP),
        .S_AXI_RVALID(system_interconnect_M03_AXI_RVALID),
        .S_AXI_WDATA({system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA,system_interconnect_M03_AXI_WDATA}),
        .S_AXI_WREADY(system_interconnect_M03_AXI_WREADY),
        .S_AXI_WSTRB({system_interconnect_M03_AXI_WSTRB,system_interconnect_M03_AXI_WSTRB,system_interconnect_M03_AXI_WSTRB,system_interconnect_M03_AXI_WSTRB}),
        .S_AXI_WVALID(system_interconnect_M03_AXI_WVALID),
        .ch0_busy(channel_0_busy),
        .ch1_busy(channel_1_busy),
        .clk(source_100mhz_sys_clk),
        .eth0_aligned(eth0_aligned_1),
        .eth1_aligned(eth1_aligned_1),
        .led_green(status_0_status_led),
        .resetn(source_100mhz_sys_resetn));
  top_level_smartconnect_0_0 system_interconnect
       (.M00_AXI_araddr(system_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arprot(system_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arready(system_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(system_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(system_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awprot(system_interconnect_M00_AXI_AWPROT),
        .M00_AXI_awready(system_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(system_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bid(1'b0),
        .M00_AXI_bready(system_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(system_interconnect_M00_AXI_BRESP),
        .M00_AXI_buser(1'b0),
        .M00_AXI_bvalid(system_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(system_interconnect_M00_AXI_RDATA[0]),
        .M00_AXI_rid(1'b0),
        .M00_AXI_rlast(1'b0),
        .M00_AXI_rready(system_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(system_interconnect_M00_AXI_RRESP),
        .M00_AXI_ruser(1'b0),
        .M00_AXI_rvalid(system_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(system_interconnect_M00_AXI_WDATA),
        .M00_AXI_wready(system_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(system_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(system_interconnect_M00_AXI_WVALID),
        .M01_AXI_araddr(system_interconnect_M01_AXI_ARADDR),
        .M01_AXI_arprot(system_interconnect_M01_AXI_ARPROT),
        .M01_AXI_arready(system_interconnect_M01_AXI_ARREADY),
        .M01_AXI_arvalid(system_interconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(system_interconnect_M01_AXI_AWADDR),
        .M01_AXI_awprot(system_interconnect_M01_AXI_AWPROT),
        .M01_AXI_awready(system_interconnect_M01_AXI_AWREADY),
        .M01_AXI_awvalid(system_interconnect_M01_AXI_AWVALID),
        .M01_AXI_bid(1'b0),
        .M01_AXI_bready(system_interconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(system_interconnect_M01_AXI_BRESP),
        .M01_AXI_buser(1'b0),
        .M01_AXI_bvalid(system_interconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(system_interconnect_M01_AXI_RDATA[0]),
        .M01_AXI_rid(1'b0),
        .M01_AXI_rlast(1'b0),
        .M01_AXI_rready(system_interconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(system_interconnect_M01_AXI_RRESP),
        .M01_AXI_ruser(1'b0),
        .M01_AXI_rvalid(system_interconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(system_interconnect_M01_AXI_WDATA),
        .M01_AXI_wready(system_interconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(system_interconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(system_interconnect_M01_AXI_WVALID),
        .M02_AXI_araddr(system_interconnect_M02_AXI_ARADDR),
        .M02_AXI_arprot(system_interconnect_M02_AXI_ARPROT),
        .M02_AXI_arready(system_interconnect_M02_AXI_ARREADY),
        .M02_AXI_arvalid(system_interconnect_M02_AXI_ARVALID),
        .M02_AXI_awaddr(system_interconnect_M02_AXI_AWADDR),
        .M02_AXI_awprot(system_interconnect_M02_AXI_AWPROT),
        .M02_AXI_awready(system_interconnect_M02_AXI_AWREADY),
        .M02_AXI_awvalid(system_interconnect_M02_AXI_AWVALID),
        .M02_AXI_bid(1'b0),
        .M02_AXI_bready(system_interconnect_M02_AXI_BREADY),
        .M02_AXI_bresp(system_interconnect_M02_AXI_BRESP),
        .M02_AXI_buser(1'b0),
        .M02_AXI_bvalid(system_interconnect_M02_AXI_BVALID),
        .M02_AXI_rdata(system_interconnect_M02_AXI_RDATA[0]),
        .M02_AXI_rid(1'b0),
        .M02_AXI_rlast(1'b0),
        .M02_AXI_rready(system_interconnect_M02_AXI_RREADY),
        .M02_AXI_rresp(system_interconnect_M02_AXI_RRESP),
        .M02_AXI_ruser(1'b0),
        .M02_AXI_rvalid(system_interconnect_M02_AXI_RVALID),
        .M02_AXI_wdata(system_interconnect_M02_AXI_WDATA),
        .M02_AXI_wready(system_interconnect_M02_AXI_WREADY),
        .M02_AXI_wstrb(system_interconnect_M02_AXI_WSTRB),
        .M02_AXI_wvalid(system_interconnect_M02_AXI_WVALID),
        .M03_AXI_araddr(system_interconnect_M03_AXI_ARADDR),
        .M03_AXI_arprot(system_interconnect_M03_AXI_ARPROT),
        .M03_AXI_arready(system_interconnect_M03_AXI_ARREADY),
        .M03_AXI_arvalid(system_interconnect_M03_AXI_ARVALID),
        .M03_AXI_awaddr(system_interconnect_M03_AXI_AWADDR),
        .M03_AXI_awprot(system_interconnect_M03_AXI_AWPROT),
        .M03_AXI_awready(system_interconnect_M03_AXI_AWREADY),
        .M03_AXI_awvalid(system_interconnect_M03_AXI_AWVALID),
        .M03_AXI_bid(1'b0),
        .M03_AXI_bready(system_interconnect_M03_AXI_BREADY),
        .M03_AXI_bresp(system_interconnect_M03_AXI_BRESP),
        .M03_AXI_buser(1'b0),
        .M03_AXI_bvalid(system_interconnect_M03_AXI_BVALID),
        .M03_AXI_rdata(system_interconnect_M03_AXI_RDATA[0]),
        .M03_AXI_rid(1'b0),
        .M03_AXI_rlast(1'b0),
        .M03_AXI_rready(system_interconnect_M03_AXI_RREADY),
        .M03_AXI_rresp(system_interconnect_M03_AXI_RRESP),
        .M03_AXI_ruser(1'b0),
        .M03_AXI_rvalid(system_interconnect_M03_AXI_RVALID),
        .M03_AXI_wdata(system_interconnect_M03_AXI_WDATA),
        .M03_AXI_wready(system_interconnect_M03_AXI_WREADY),
        .M03_AXI_wstrb(system_interconnect_M03_AXI_WSTRB),
        .M03_AXI_wvalid(system_interconnect_M03_AXI_WVALID),
        .S00_AXI_araddr(uart_axi_bridge_M_AXI_ARADDR),
        .S00_AXI_arburst({1'b0,1'b1}),
        .S00_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S00_AXI_arid(1'b0),
        .S00_AXI_arlen(1'b0),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot({1'b0,1'b0,1'b0}),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(uart_axi_bridge_M_AXI_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize({1'b0,1'b1,1'b0}),
        .S00_AXI_aruser(1'b0),
        .S00_AXI_arvalid(uart_axi_bridge_M_AXI_ARVALID),
        .S00_AXI_awaddr(uart_axi_bridge_M_AXI_AWADDR),
        .S00_AXI_awburst({1'b0,1'b1}),
        .S00_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S00_AXI_awid(1'b0),
        .S00_AXI_awlen(1'b0),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot({1'b0,1'b0,1'b0}),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(uart_axi_bridge_M_AXI_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize({1'b0,1'b1,1'b0}),
        .S00_AXI_awuser(1'b0),
        .S00_AXI_awvalid(uart_axi_bridge_M_AXI_AWVALID),
        .S00_AXI_bready(uart_axi_bridge_M_AXI_BREADY),
        .S00_AXI_bresp(uart_axi_bridge_M_AXI_BRESP),
        .S00_AXI_bvalid(uart_axi_bridge_M_AXI_BVALID),
        .S00_AXI_rdata(uart_axi_bridge_M_AXI_RDATA),
        .S00_AXI_rready(uart_axi_bridge_M_AXI_RREADY),
        .S00_AXI_rresp(uart_axi_bridge_M_AXI_RRESP),
        .S00_AXI_rvalid(uart_axi_bridge_M_AXI_RVALID),
        .S00_AXI_wdata(uart_axi_bridge_M_AXI_WDATA),
        .S00_AXI_wid(1'b0),
        .S00_AXI_wlast(1'b0),
        .S00_AXI_wready(uart_axi_bridge_M_AXI_WREADY),
        .S00_AXI_wstrb(uart_axi_bridge_M_AXI_WSTRB),
        .S00_AXI_wuser(1'b0),
        .S00_AXI_wvalid(uart_axi_bridge_M_AXI_WVALID),
        .aclk(source_100mhz_sys_clk),
        .aresetn(source_100mhz_sys_resetn));
  uart_axi_bridge_imp_1TNTD43 uart_axi_bridge
       (.M_AXI_araddr(uart_axi_bridge_M_AXI_ARADDR),
        .M_AXI_arready(uart_axi_bridge_M_AXI_ARREADY),
        .M_AXI_arvalid(uart_axi_bridge_M_AXI_ARVALID),
        .M_AXI_awaddr(uart_axi_bridge_M_AXI_AWADDR),
        .M_AXI_awready(uart_axi_bridge_M_AXI_AWREADY),
        .M_AXI_awvalid(uart_axi_bridge_M_AXI_AWVALID),
        .M_AXI_bready(uart_axi_bridge_M_AXI_BREADY),
        .M_AXI_bresp(uart_axi_bridge_M_AXI_BRESP),
        .M_AXI_bvalid(uart_axi_bridge_M_AXI_BVALID),
        .M_AXI_rdata(uart_axi_bridge_M_AXI_RDATA),
        .M_AXI_rready(uart_axi_bridge_M_AXI_RREADY),
        .M_AXI_rresp(uart_axi_bridge_M_AXI_RRESP),
        .M_AXI_rvalid(uart_axi_bridge_M_AXI_RVALID),
        .M_AXI_wdata(uart_axi_bridge_M_AXI_WDATA),
        .M_AXI_wready(uart_axi_bridge_M_AXI_WREADY),
        .M_AXI_wstrb(uart_axi_bridge_M_AXI_WSTRB),
        .M_AXI_wvalid(uart_axi_bridge_M_AXI_WVALID),
        .UART_rxd(axi_uartlite_UART_RxD),
        .UART_txd(axi_uartlite_UART_TxD),
        .s_axi_aclk(source_100mhz_sys_clk),
        .s_axi_aresetn(source_100mhz_sys_resetn));
endmodule

module uart_axi_bridge_imp_1TNTD43
   (M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    UART_rxd,
    UART_txd,
    s_axi_aclk,
    s_axi_aresetn);
  output M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input UART_rxd;
  output UART_txd;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire [63:0]axi_uart_bridge_M_AXI_ARADDR;
  wire [0:0]axi_uart_bridge_M_AXI_ARREADY;
  wire axi_uart_bridge_M_AXI_ARVALID;
  wire [63:0]axi_uart_bridge_M_AXI_AWADDR;
  wire [0:0]axi_uart_bridge_M_AXI_AWREADY;
  wire axi_uart_bridge_M_AXI_AWVALID;
  wire axi_uart_bridge_M_AXI_BREADY;
  wire [1:0]axi_uart_bridge_M_AXI_BRESP;
  wire [0:0]axi_uart_bridge_M_AXI_BVALID;
  wire axi_uart_bridge_M_AXI_RDATA;
  wire axi_uart_bridge_M_AXI_RREADY;
  wire [1:0]axi_uart_bridge_M_AXI_RRESP;
  wire [0:0]axi_uart_bridge_M_AXI_RVALID;
  wire [31:0]axi_uart_bridge_M_AXI_WDATA;
  wire [0:0]axi_uart_bridge_M_AXI_WREADY;
  wire [3:0]axi_uart_bridge_M_AXI_WSTRB;
  wire axi_uart_bridge_M_AXI_WVALID;
  wire [31:0]axi_uart_bridge_M_UART_ARADDR;
  wire axi_uart_bridge_M_UART_ARREADY;
  wire axi_uart_bridge_M_UART_ARVALID;
  wire [31:0]axi_uart_bridge_M_UART_AWADDR;
  wire axi_uart_bridge_M_UART_AWREADY;
  wire axi_uart_bridge_M_UART_AWVALID;
  wire axi_uart_bridge_M_UART_BREADY;
  wire [1:0]axi_uart_bridge_M_UART_BRESP;
  wire axi_uart_bridge_M_UART_BVALID;
  wire [31:0]axi_uart_bridge_M_UART_RDATA;
  wire axi_uart_bridge_M_UART_RREADY;
  wire [1:0]axi_uart_bridge_M_UART_RRESP;
  wire axi_uart_bridge_M_UART_RVALID;
  wire [31:0]axi_uart_bridge_M_UART_WDATA;
  wire axi_uart_bridge_M_UART_WREADY;
  wire [3:0]axi_uart_bridge_M_UART_WSTRB;
  wire axi_uart_bridge_M_UART_WVALID;
  wire axi_uartlite_UART_RxD;
  wire axi_uartlite_UART_TxD;
  wire axi_uartlite_interrupt;
  wire source_100mhz_sys_clk;
  wire source_100mhz_sys_resetn;

  assign M_AXI_araddr = axi_uart_bridge_M_AXI_ARADDR[0];
  assign M_AXI_arvalid[0] = axi_uart_bridge_M_AXI_ARVALID;
  assign M_AXI_awaddr = axi_uart_bridge_M_AXI_AWADDR[0];
  assign M_AXI_awvalid[0] = axi_uart_bridge_M_AXI_AWVALID;
  assign M_AXI_bready[0] = axi_uart_bridge_M_AXI_BREADY;
  assign M_AXI_rready[0] = axi_uart_bridge_M_AXI_RREADY;
  assign M_AXI_wdata = axi_uart_bridge_M_AXI_WDATA[0];
  assign M_AXI_wstrb = axi_uart_bridge_M_AXI_WSTRB[0];
  assign M_AXI_wvalid[0] = axi_uart_bridge_M_AXI_WVALID;
  assign UART_txd = axi_uartlite_UART_TxD;
  assign axi_uart_bridge_M_AXI_ARREADY = M_AXI_arready[0];
  assign axi_uart_bridge_M_AXI_AWREADY = M_AXI_awready[0];
  assign axi_uart_bridge_M_AXI_BRESP = M_AXI_bresp[1:0];
  assign axi_uart_bridge_M_AXI_BVALID = M_AXI_bvalid[0];
  assign axi_uart_bridge_M_AXI_RDATA = M_AXI_rdata;
  assign axi_uart_bridge_M_AXI_RRESP = M_AXI_rresp[1:0];
  assign axi_uart_bridge_M_AXI_RVALID = M_AXI_rvalid[0];
  assign axi_uart_bridge_M_AXI_WREADY = M_AXI_wready[0];
  assign axi_uartlite_UART_RxD = UART_rxd;
  assign source_100mhz_sys_clk = s_axi_aclk;
  assign source_100mhz_sys_resetn = s_axi_aresetn;
  top_level_axi_uart_bridge_0_0 axi_uart_bridge
       (.M_AXI_ARADDR(axi_uart_bridge_M_AXI_ARADDR),
        .M_AXI_ARREADY(axi_uart_bridge_M_AXI_ARREADY),
        .M_AXI_ARVALID(axi_uart_bridge_M_AXI_ARVALID),
        .M_AXI_AWADDR(axi_uart_bridge_M_AXI_AWADDR),
        .M_AXI_AWREADY(axi_uart_bridge_M_AXI_AWREADY),
        .M_AXI_AWVALID(axi_uart_bridge_M_AXI_AWVALID),
        .M_AXI_BREADY(axi_uart_bridge_M_AXI_BREADY),
        .M_AXI_BRESP(axi_uart_bridge_M_AXI_BRESP),
        .M_AXI_BVALID(axi_uart_bridge_M_AXI_BVALID),
        .M_AXI_RDATA({axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA}),
        .M_AXI_RREADY(axi_uart_bridge_M_AXI_RREADY),
        .M_AXI_RRESP(axi_uart_bridge_M_AXI_RRESP),
        .M_AXI_RVALID(axi_uart_bridge_M_AXI_RVALID),
        .M_AXI_WDATA(axi_uart_bridge_M_AXI_WDATA),
        .M_AXI_WREADY(axi_uart_bridge_M_AXI_WREADY),
        .M_AXI_WSTRB(axi_uart_bridge_M_AXI_WSTRB),
        .M_AXI_WVALID(axi_uart_bridge_M_AXI_WVALID),
        .M_UART_ARADDR(axi_uart_bridge_M_UART_ARADDR),
        .M_UART_ARREADY(axi_uart_bridge_M_UART_ARREADY),
        .M_UART_ARVALID(axi_uart_bridge_M_UART_ARVALID),
        .M_UART_AWADDR(axi_uart_bridge_M_UART_AWADDR),
        .M_UART_AWREADY(axi_uart_bridge_M_UART_AWREADY),
        .M_UART_AWVALID(axi_uart_bridge_M_UART_AWVALID),
        .M_UART_BREADY(axi_uart_bridge_M_UART_BREADY),
        .M_UART_BRESP(axi_uart_bridge_M_UART_BRESP),
        .M_UART_BVALID(axi_uart_bridge_M_UART_BVALID),
        .M_UART_RDATA(axi_uart_bridge_M_UART_RDATA),
        .M_UART_RREADY(axi_uart_bridge_M_UART_RREADY),
        .M_UART_RRESP(axi_uart_bridge_M_UART_RRESP),
        .M_UART_RVALID(axi_uart_bridge_M_UART_RVALID),
        .M_UART_WDATA(axi_uart_bridge_M_UART_WDATA),
        .M_UART_WREADY(axi_uart_bridge_M_UART_WREADY),
        .M_UART_WSTRB(axi_uart_bridge_M_UART_WSTRB),
        .M_UART_WVALID(axi_uart_bridge_M_UART_WVALID),
        .UART_INT(axi_uartlite_interrupt),
        .aclk(source_100mhz_sys_clk),
        .aresetn(source_100mhz_sys_resetn));
  top_level_axi_uartlite_0_0 axi_uartlite
       (.interrupt(axi_uartlite_interrupt),
        .rx(axi_uartlite_UART_RxD),
        .s_axi_aclk(source_100mhz_sys_clk),
        .s_axi_araddr(axi_uart_bridge_M_UART_ARADDR[3:0]),
        .s_axi_aresetn(source_100mhz_sys_resetn),
        .s_axi_arready(axi_uart_bridge_M_UART_ARREADY),
        .s_axi_arvalid(axi_uart_bridge_M_UART_ARVALID),
        .s_axi_awaddr(axi_uart_bridge_M_UART_AWADDR[3:0]),
        .s_axi_awready(axi_uart_bridge_M_UART_AWREADY),
        .s_axi_awvalid(axi_uart_bridge_M_UART_AWVALID),
        .s_axi_bready(axi_uart_bridge_M_UART_BREADY),
        .s_axi_bresp(axi_uart_bridge_M_UART_BRESP),
        .s_axi_bvalid(axi_uart_bridge_M_UART_BVALID),
        .s_axi_rdata(axi_uart_bridge_M_UART_RDATA),
        .s_axi_rready(axi_uart_bridge_M_UART_RREADY),
        .s_axi_rresp(axi_uart_bridge_M_UART_RRESP),
        .s_axi_rvalid(axi_uart_bridge_M_UART_RVALID),
        .s_axi_wdata(axi_uart_bridge_M_UART_WDATA),
        .s_axi_wready(axi_uart_bridge_M_UART_WREADY),
        .s_axi_wstrb(axi_uart_bridge_M_UART_WSTRB),
        .s_axi_wvalid(axi_uart_bridge_M_UART_WVALID),
        .tx(axi_uartlite_UART_TxD));
endmodule
