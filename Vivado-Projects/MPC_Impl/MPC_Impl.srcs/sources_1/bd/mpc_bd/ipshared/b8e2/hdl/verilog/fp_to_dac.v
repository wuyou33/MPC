// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fp_to_dac,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7a100tcsg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.180000,HLS_SYN_LAT=1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=1,HLS_SYN_FF=19,HLS_SYN_LUT=38,HLS_VERSION=2018_2}" *)

module fp_to_dac (
        ap_clk,
        ap_rst,
        i_data_V,
        o_data_V,
        o_data_V_ap_vld
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input  [15:0] i_data_V;
output  [15:0] o_data_V;
output   o_data_V_ap_vld;

reg o_data_V_ap_vld;

reg   [15:0] p_Val2_1_reg_84;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [0:0] tmp_reg_89;
wire    ap_CS_fsm_state2;
wire  signed [27:0] p_Val2_s_fu_76_p2;
wire   [15:0] tmp_4_fu_67_p1;
wire   [11:0] p_Val2_s_fu_76_p1;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
end

fp_to_dac_mul_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 28 ))
fp_to_dac_mul_mulbkb_U1(
    .din0(i_data_V),
    .din1(p_Val2_s_fu_76_p1),
    .dout(p_Val2_s_fu_76_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        p_Val2_1_reg_84 <= {{p_Val2_s_fu_76_p2[23:8]}};
        tmp_reg_89 <= p_Val2_s_fu_76_p2[32'd7];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        o_data_V_ap_vld = 1'b1;
    end else begin
        o_data_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign o_data_V = (p_Val2_1_reg_84 + tmp_4_fu_67_p1);

assign p_Val2_s_fu_76_p1 = 28'd1239;

assign tmp_4_fu_67_p1 = tmp_reg_89;

endmodule //fp_to_dac
