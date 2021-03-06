// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
// Date        : Fri Feb  7 14:23:48 2020
// Host        : ThinkPad-L560 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_PL_0_0/design_ps_pl_PL_0_0_sim_netlist.v
// Design      : design_ps_pl_PL_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_ps_pl_PL_0_0,PL,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "PL,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module design_ps_pl_PL_0_0
   (clk_125MHz,
    BRAM_PORTB_0_dout,
    BRAM_PORTB_0_en,
    BRAM_PORTB_0_rst,
    BRAM_PORTB_0_din,
    BRAM_PORTB_0_addr,
    BRAM_PORTB_0_we,
    toggle_in,
    led_out,
    pwm_out);
  input clk_125MHz;
  input [31:0]BRAM_PORTB_0_dout;
  output BRAM_PORTB_0_en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 BRAM_PORTB_0_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB_0_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output BRAM_PORTB_0_rst;
  output [31:0]BRAM_PORTB_0_din;
  output [31:0]BRAM_PORTB_0_addr;
  output [3:0]BRAM_PORTB_0_we;
  input toggle_in;
  output [3:0]led_out;
  output [13:0]pwm_out;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:3]\^BRAM_PORTB_0_addr ;
  wire [31:0]BRAM_PORTB_0_dout;
  wire [3:0]led_out;
  wire [13:0]pwm_out;
  wire toggle_in;

  assign BRAM_PORTB_0_addr[31] = \<const0> ;
  assign BRAM_PORTB_0_addr[30] = \<const1> ;
  assign BRAM_PORTB_0_addr[29] = \<const0> ;
  assign BRAM_PORTB_0_addr[28] = \<const0> ;
  assign BRAM_PORTB_0_addr[27] = \<const0> ;
  assign BRAM_PORTB_0_addr[26] = \<const0> ;
  assign BRAM_PORTB_0_addr[25] = \<const0> ;
  assign BRAM_PORTB_0_addr[24] = \<const0> ;
  assign BRAM_PORTB_0_addr[23] = \<const0> ;
  assign BRAM_PORTB_0_addr[22] = \<const0> ;
  assign BRAM_PORTB_0_addr[21] = \<const0> ;
  assign BRAM_PORTB_0_addr[20] = \<const0> ;
  assign BRAM_PORTB_0_addr[19] = \<const0> ;
  assign BRAM_PORTB_0_addr[18] = \<const0> ;
  assign BRAM_PORTB_0_addr[17] = \<const0> ;
  assign BRAM_PORTB_0_addr[16] = \<const0> ;
  assign BRAM_PORTB_0_addr[15] = \<const0> ;
  assign BRAM_PORTB_0_addr[14] = \<const0> ;
  assign BRAM_PORTB_0_addr[13] = \<const0> ;
  assign BRAM_PORTB_0_addr[12] = \<const0> ;
  assign BRAM_PORTB_0_addr[11] = \<const0> ;
  assign BRAM_PORTB_0_addr[10] = \<const0> ;
  assign BRAM_PORTB_0_addr[9] = \<const0> ;
  assign BRAM_PORTB_0_addr[8] = \<const0> ;
  assign BRAM_PORTB_0_addr[7] = \<const0> ;
  assign BRAM_PORTB_0_addr[6] = \<const0> ;
  assign BRAM_PORTB_0_addr[5] = \<const0> ;
  assign BRAM_PORTB_0_addr[4] = \<const0> ;
  assign BRAM_PORTB_0_addr[3] = \^BRAM_PORTB_0_addr [3];
  assign BRAM_PORTB_0_addr[2] = toggle_in;
  assign BRAM_PORTB_0_addr[1] = \<const0> ;
  assign BRAM_PORTB_0_addr[0] = \<const0> ;
  assign BRAM_PORTB_0_din[31] = \<const0> ;
  assign BRAM_PORTB_0_din[30] = \<const0> ;
  assign BRAM_PORTB_0_din[29] = \<const0> ;
  assign BRAM_PORTB_0_din[28] = \<const0> ;
  assign BRAM_PORTB_0_din[27] = \<const0> ;
  assign BRAM_PORTB_0_din[26] = \<const0> ;
  assign BRAM_PORTB_0_din[25] = \<const0> ;
  assign BRAM_PORTB_0_din[24] = \<const0> ;
  assign BRAM_PORTB_0_din[23] = \<const0> ;
  assign BRAM_PORTB_0_din[22] = \<const0> ;
  assign BRAM_PORTB_0_din[21] = \<const0> ;
  assign BRAM_PORTB_0_din[20] = \<const0> ;
  assign BRAM_PORTB_0_din[19] = \<const0> ;
  assign BRAM_PORTB_0_din[18] = \<const0> ;
  assign BRAM_PORTB_0_din[17] = \<const0> ;
  assign BRAM_PORTB_0_din[16] = \<const0> ;
  assign BRAM_PORTB_0_din[15] = \<const0> ;
  assign BRAM_PORTB_0_din[14] = \<const0> ;
  assign BRAM_PORTB_0_din[13] = \<const0> ;
  assign BRAM_PORTB_0_din[12] = \<const0> ;
  assign BRAM_PORTB_0_din[11] = \<const0> ;
  assign BRAM_PORTB_0_din[10] = \<const0> ;
  assign BRAM_PORTB_0_din[9] = \<const0> ;
  assign BRAM_PORTB_0_din[8] = \<const0> ;
  assign BRAM_PORTB_0_din[7] = \<const0> ;
  assign BRAM_PORTB_0_din[6] = \<const0> ;
  assign BRAM_PORTB_0_din[5] = \<const0> ;
  assign BRAM_PORTB_0_din[4] = \<const0> ;
  assign BRAM_PORTB_0_din[3] = \<const0> ;
  assign BRAM_PORTB_0_din[2] = \<const0> ;
  assign BRAM_PORTB_0_din[1] = \<const0> ;
  assign BRAM_PORTB_0_din[0] = \<const0> ;
  assign BRAM_PORTB_0_en = \<const1> ;
  assign BRAM_PORTB_0_rst = \<const0> ;
  assign BRAM_PORTB_0_we[3] = \<const0> ;
  assign BRAM_PORTB_0_we[2] = \<const0> ;
  assign BRAM_PORTB_0_we[1] = \<const0> ;
  assign BRAM_PORTB_0_we[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_ps_pl_PL_0_0_PL U0
       (.BRAM_PORTB_0_addr(\^BRAM_PORTB_0_addr ),
        .BRAM_PORTB_0_dout(BRAM_PORTB_0_dout[13:0]),
        .led_out(led_out),
        .pwm_out(pwm_out),
        .toggle_in(toggle_in));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "PL" *) 
module design_ps_pl_PL_0_0_PL
   (led_out,
    BRAM_PORTB_0_addr,
    pwm_out,
    BRAM_PORTB_0_dout,
    toggle_in);
  output [3:0]led_out;
  output [0:0]BRAM_PORTB_0_addr;
  output [13:0]pwm_out;
  input [13:0]BRAM_PORTB_0_dout;
  input toggle_in;

  wire [0:0]BRAM_PORTB_0_addr;
  wire [13:0]BRAM_PORTB_0_dout;
  wire [3:0]led_out;
  wire [13:0]pwm_out;
  wire toggle_in;

  LUT1 #(
    .INIT(2'h1)) 
    \BRAM_PORTB_0_addr[3]_INST_0 
       (.I0(toggle_in),
        .O(BRAM_PORTB_0_addr));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_tmp_reg[0] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[0]),
        .G(BRAM_PORTB_0_addr),
        .GE(1'b1),
        .Q(led_out[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_tmp_reg[1] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[1]),
        .G(BRAM_PORTB_0_addr),
        .GE(1'b1),
        .Q(led_out[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_tmp_reg[2] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[2]),
        .G(BRAM_PORTB_0_addr),
        .GE(1'b1),
        .Q(led_out[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_tmp_reg[3] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[3]),
        .G(BRAM_PORTB_0_addr),
        .GE(1'b1),
        .Q(led_out[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_tmp_reg[0] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[0]),
        .G(toggle_in),
        .GE(1'b1),
        .Q(pwm_out[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_tmp_reg[10] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[10]),
        .G(toggle_in),
        .GE(1'b1),
        .Q(pwm_out[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_tmp_reg[11] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[11]),
        .G(toggle_in),
        .GE(1'b1),
        .Q(pwm_out[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_tmp_reg[12] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[12]),
        .G(toggle_in),
        .GE(1'b1),
        .Q(pwm_out[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_tmp_reg[13] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[13]),
        .G(toggle_in),
        .GE(1'b1),
        .Q(pwm_out[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_tmp_reg[1] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[1]),
        .G(toggle_in),
        .GE(1'b1),
        .Q(pwm_out[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_tmp_reg[2] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[2]),
        .G(toggle_in),
        .GE(1'b1),
        .Q(pwm_out[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_tmp_reg[3] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[3]),
        .G(toggle_in),
        .GE(1'b1),
        .Q(pwm_out[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_tmp_reg[4] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[4]),
        .G(toggle_in),
        .GE(1'b1),
        .Q(pwm_out[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_tmp_reg[5] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[5]),
        .G(toggle_in),
        .GE(1'b1),
        .Q(pwm_out[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_tmp_reg[6] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[6]),
        .G(toggle_in),
        .GE(1'b1),
        .Q(pwm_out[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_tmp_reg[7] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[7]),
        .G(toggle_in),
        .GE(1'b1),
        .Q(pwm_out[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_tmp_reg[8] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[8]),
        .G(toggle_in),
        .GE(1'b1),
        .Q(pwm_out[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \pwm_tmp_reg[9] 
       (.CLR(1'b0),
        .D(BRAM_PORTB_0_dout[9]),
        .G(toggle_in),
        .GE(1'b1),
        .Q(pwm_out[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
