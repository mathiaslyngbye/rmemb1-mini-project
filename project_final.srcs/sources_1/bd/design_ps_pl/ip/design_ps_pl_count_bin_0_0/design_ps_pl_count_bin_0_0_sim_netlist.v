// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1.3 (lin64) Build 2644227 Wed Sep  4 09:44:18 MDT 2019
// Date        : Fri Feb  7 14:20:38 2020
// Host        : ThinkPad-L560 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mal/Workspace/Vivado/project_final/project_final.srcs/sources_1/bd/design_ps_pl/ip/design_ps_pl_count_bin_0_0/design_ps_pl_count_bin_0_0_sim_netlist.v
// Design      : design_ps_pl_count_bin_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_ps_pl_count_bin_0_0,count_bin,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "count_bin,Vivado 2019.1.3" *) 
(* NotValidForBitStream *)
module design_ps_pl_count_bin_0_0
   (clk,
    count);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  output count;

  wire clk;
  wire count;

  design_ps_pl_count_bin_0_0_count_bin U0
       (.clk(clk),
        .count(count));
endmodule

(* ORIG_REF_NAME = "count_bin" *) 
module design_ps_pl_count_bin_0_0_count_bin
   (count,
    clk);
  output count;
  input clk;

  wire clk;
  wire count;
  wire \count_sig[0]_i_2_n_0 ;
  wire \count_sig_reg[0]_i_1_n_0 ;
  wire \count_sig_reg[0]_i_1_n_1 ;
  wire \count_sig_reg[0]_i_1_n_2 ;
  wire \count_sig_reg[0]_i_1_n_3 ;
  wire \count_sig_reg[0]_i_1_n_4 ;
  wire \count_sig_reg[0]_i_1_n_5 ;
  wire \count_sig_reg[0]_i_1_n_6 ;
  wire \count_sig_reg[0]_i_1_n_7 ;
  wire \count_sig_reg[15]_i_1_n_1 ;
  wire \count_sig_reg[15]_i_1_n_2 ;
  wire \count_sig_reg[15]_i_1_n_3 ;
  wire \count_sig_reg[15]_i_1_n_4 ;
  wire \count_sig_reg[15]_i_1_n_5 ;
  wire \count_sig_reg[15]_i_1_n_6 ;
  wire \count_sig_reg[15]_i_1_n_7 ;
  wire \count_sig_reg[4]_i_1_n_0 ;
  wire \count_sig_reg[4]_i_1_n_1 ;
  wire \count_sig_reg[4]_i_1_n_2 ;
  wire \count_sig_reg[4]_i_1_n_3 ;
  wire \count_sig_reg[4]_i_1_n_4 ;
  wire \count_sig_reg[4]_i_1_n_5 ;
  wire \count_sig_reg[4]_i_1_n_6 ;
  wire \count_sig_reg[4]_i_1_n_7 ;
  wire \count_sig_reg[8]_i_1_n_0 ;
  wire \count_sig_reg[8]_i_1_n_1 ;
  wire \count_sig_reg[8]_i_1_n_2 ;
  wire \count_sig_reg[8]_i_1_n_3 ;
  wire \count_sig_reg[8]_i_1_n_4 ;
  wire \count_sig_reg[8]_i_1_n_5 ;
  wire \count_sig_reg[8]_i_1_n_6 ;
  wire \count_sig_reg[8]_i_1_n_7 ;
  wire \count_sig_reg_n_0_[0] ;
  wire \count_sig_reg_n_0_[10] ;
  wire \count_sig_reg_n_0_[11] ;
  wire \count_sig_reg_n_0_[12] ;
  wire \count_sig_reg_n_0_[13] ;
  wire \count_sig_reg_n_0_[14] ;
  wire \count_sig_reg_n_0_[1] ;
  wire \count_sig_reg_n_0_[2] ;
  wire \count_sig_reg_n_0_[3] ;
  wire \count_sig_reg_n_0_[4] ;
  wire \count_sig_reg_n_0_[5] ;
  wire \count_sig_reg_n_0_[6] ;
  wire \count_sig_reg_n_0_[7] ;
  wire \count_sig_reg_n_0_[8] ;
  wire \count_sig_reg_n_0_[9] ;
  wire [3:3]\NLW_count_sig_reg[15]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_sig[0]_i_2 
       (.I0(\count_sig_reg_n_0_[0] ),
        .O(\count_sig[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_sig_reg[0]_i_1_n_7 ),
        .Q(\count_sig_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \count_sig_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_sig_reg[0]_i_1_n_0 ,\count_sig_reg[0]_i_1_n_1 ,\count_sig_reg[0]_i_1_n_2 ,\count_sig_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_sig_reg[0]_i_1_n_4 ,\count_sig_reg[0]_i_1_n_5 ,\count_sig_reg[0]_i_1_n_6 ,\count_sig_reg[0]_i_1_n_7 }),
        .S({\count_sig_reg_n_0_[3] ,\count_sig_reg_n_0_[2] ,\count_sig_reg_n_0_[1] ,\count_sig[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_sig_reg[8]_i_1_n_5 ),
        .Q(\count_sig_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_sig_reg[8]_i_1_n_4 ),
        .Q(\count_sig_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_sig_reg[15]_i_1_n_7 ),
        .Q(\count_sig_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_sig_reg[15]_i_1_n_6 ),
        .Q(\count_sig_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_sig_reg[15]_i_1_n_5 ),
        .Q(\count_sig_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_sig_reg[15]_i_1_n_4 ),
        .Q(count),
        .R(1'b0));
  CARRY4 \count_sig_reg[15]_i_1 
       (.CI(\count_sig_reg[8]_i_1_n_0 ),
        .CO({\NLW_count_sig_reg[15]_i_1_CO_UNCONNECTED [3],\count_sig_reg[15]_i_1_n_1 ,\count_sig_reg[15]_i_1_n_2 ,\count_sig_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[15]_i_1_n_4 ,\count_sig_reg[15]_i_1_n_5 ,\count_sig_reg[15]_i_1_n_6 ,\count_sig_reg[15]_i_1_n_7 }),
        .S({count,\count_sig_reg_n_0_[14] ,\count_sig_reg_n_0_[13] ,\count_sig_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_sig_reg[0]_i_1_n_6 ),
        .Q(\count_sig_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_sig_reg[0]_i_1_n_5 ),
        .Q(\count_sig_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_sig_reg[0]_i_1_n_4 ),
        .Q(\count_sig_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_sig_reg[4]_i_1_n_7 ),
        .Q(\count_sig_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \count_sig_reg[4]_i_1 
       (.CI(\count_sig_reg[0]_i_1_n_0 ),
        .CO({\count_sig_reg[4]_i_1_n_0 ,\count_sig_reg[4]_i_1_n_1 ,\count_sig_reg[4]_i_1_n_2 ,\count_sig_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[4]_i_1_n_4 ,\count_sig_reg[4]_i_1_n_5 ,\count_sig_reg[4]_i_1_n_6 ,\count_sig_reg[4]_i_1_n_7 }),
        .S({\count_sig_reg_n_0_[7] ,\count_sig_reg_n_0_[6] ,\count_sig_reg_n_0_[5] ,\count_sig_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_sig_reg[4]_i_1_n_6 ),
        .Q(\count_sig_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_sig_reg[4]_i_1_n_5 ),
        .Q(\count_sig_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_sig_reg[4]_i_1_n_4 ),
        .Q(\count_sig_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_sig_reg[8]_i_1_n_7 ),
        .Q(\count_sig_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \count_sig_reg[8]_i_1 
       (.CI(\count_sig_reg[4]_i_1_n_0 ),
        .CO({\count_sig_reg[8]_i_1_n_0 ,\count_sig_reg[8]_i_1_n_1 ,\count_sig_reg[8]_i_1_n_2 ,\count_sig_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[8]_i_1_n_4 ,\count_sig_reg[8]_i_1_n_5 ,\count_sig_reg[8]_i_1_n_6 ,\count_sig_reg[8]_i_1_n_7 }),
        .S({\count_sig_reg_n_0_[11] ,\count_sig_reg_n_0_[10] ,\count_sig_reg_n_0_[9] ,\count_sig_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_sig_reg[8]_i_1_n_6 ),
        .Q(\count_sig_reg_n_0_[9] ),
        .R(1'b0));
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
