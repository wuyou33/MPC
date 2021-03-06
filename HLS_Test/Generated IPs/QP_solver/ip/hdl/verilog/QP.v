// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="QP,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7a100tcsg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.460000,HLS_SYN_LAT=2801,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=4,HLS_SYN_FF=341,HLS_SYN_LUT=1012,HLS_VERSION=2018_2}" *)

module QP (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x_in_V,
        z_1_V,
        z_1_V_ap_vld,
        z_2_V,
        z_2_V_ap_vld
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] x_in_V;
output  [15:0] z_1_V;
output   z_1_V_ap_vld;
output  [15:0] z_2_V;
output   z_2_V_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg z_1_V_ap_vld;
reg z_2_V_ap_vld;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire  signed [16:0] tmp_1_fu_194_p1;
reg  signed [16:0] tmp_1_reg_856;
wire   [7:0] k_1_fu_214_p2;
reg   [7:0] k_1_reg_864;
wire    ap_CS_fsm_state2;
wire  signed [26:0] p_shl1_cast_fu_228_p1;
reg  signed [26:0] p_shl1_cast_reg_869;
wire   [0:0] exitcond_fu_208_p2;
wire   [25:0] p_shl_fu_232_p3;
reg   [25:0] p_shl_reg_874;
wire   [1:0] i_fu_246_p2;
reg   [1:0] i_reg_882;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond1_fu_240_p2;
wire   [0:0] tmp_32_fu_252_p1;
reg   [0:0] tmp_32_reg_899;
wire   [16:0] p_Val2_2_fu_448_p2;
reg   [16:0] p_Val2_2_reg_907;
reg   [15:0] p_Val2_22_0_1_reg_912;
reg   [0:0] tmp_22_reg_917;
wire   [17:0] p_Val2_3_fu_576_p2;
reg   [17:0] p_Val2_3_reg_922;
wire    ap_CS_fsm_state4;
wire   [15:0] tmp_17_fu_610_p2;
reg   [15:0] tmp_17_reg_928;
wire   [15:0] Z_1_V_1_fu_696_p3;
reg   [15:0] Z_1_V_1_reg_933;
wire    ap_CS_fsm_state5;
wire   [15:0] Z_1_V_2_fu_702_p3;
reg   [15:0] Z_1_V_2_reg_938;
wire   [16:0] r_V_1_fu_728_p2;
reg   [16:0] r_V_1_reg_943;
wire    ap_CS_fsm_state7;
reg   [0:0] tmp_28_reg_948;
wire   [67:0] mul_fu_752_p2;
reg   [67:0] mul_reg_954;
wire    ap_CS_fsm_state8;
reg   [22:0] tmp_30_reg_959;
reg   [15:0] p_Val2_11_reg_964;
wire    ap_CS_fsm_state9;
reg   [0:0] tmp_31_reg_969;
wire   [15:0] p_Val2_13_fu_836_p2;
wire    ap_CS_fsm_state10;
reg   [15:0] LAMBDA_reg_152;
reg   [7:0] k_reg_164;
reg   [1:0] p_Val2_7_reg_175;
wire    ap_CS_fsm_state6;
reg   [15:0] Z_1_V_fu_124;
reg   [15:0] Z_1_V_3_fu_128;
wire   [23:0] p_shl1_fu_220_p3;
wire   [24:0] tmp_26_fu_256_p3;
wire  signed [25:0] st2_fu_264_p1;
wire   [25:0] sf3_fu_268_p3;
wire   [25:0] p_Val2_4_fu_276_p3;
wire   [0:0] tmp_34_fu_292_p3;
wire   [0:0] tmp_33_fu_284_p3;
wire   [24:0] tmp_27_fu_324_p3;
wire   [25:0] st_fu_316_p3;
wire  signed [25:0] sf_fu_332_p1;
wire   [14:0] tmp_6_fu_306_p4;
wire   [0:0] tmp_5_fu_300_p2;
wire   [23:0] tmp_12_1_fu_344_p4;
wire   [25:0] p_Val2_4_1_fu_336_p3;
wire   [26:0] tmp_13_cast_fu_358_p1;
wire   [26:0] tmp_12_1_cast_cast_fu_354_p1;
wire   [26:0] p_Val2_5_1_fu_362_p2;
wire   [0:0] tmp_35_fu_378_p3;
wire   [15:0] tmp_15_1_fu_386_p1;
wire   [15:0] p_Val2_6_1_fu_368_p4;
wire   [25:0] p_Val2_11_v_fu_396_p3;
wire  signed [26:0] p_Val2_11_v_cast_fu_403_p1;
wire   [26:0] p_Val2_s_fu_407_p2;
wire   [0:0] tmp_36_fu_422_p3;
wire   [15:0] tmp_7_fu_430_p1;
wire   [15:0] p_Val2_8_fu_412_p4;
wire   [15:0] p_Val2_1_fu_390_p2;
wire   [15:0] p_Val2_9_fu_434_p2;
wire  signed [16:0] tmp_s_fu_440_p1;
wire  signed [16:0] tmp_8_fu_444_p1;
wire   [25:0] p_shl3_fu_454_p3;
wire   [23:0] p_shl4_fu_466_p3;
wire  signed [26:0] p_shl3_cast_fu_462_p1;
wire  signed [26:0] p_shl4_cast_fu_474_p1;
wire   [26:0] p_Val2_10_fu_478_p2;
wire   [0:0] tmp_4_fu_494_p3;
wire   [15:0] tmp_2_fu_502_p1;
wire   [15:0] p_Val2_14_fu_484_p4;
wire   [23:0] p_shl5_fu_512_p3;
wire  signed [24:0] p_shl5_cast_fu_520_p1;
wire   [15:0] p_Val2_15_fu_506_p2;
wire   [24:0] p_Val2_19_0_1_fu_524_p2;
wire   [23:0] tmp_13_fu_538_p1;
wire   [23:0] tmp_44_0_1_fu_530_p3;
wire   [23:0] p_Val2_21_0_1_fu_542_p2;
wire  signed [17:0] tmp_9_fu_566_p1;
wire   [17:0] tmp_10_cast_cast_fu_569_p3;
wire   [25:0] tmp_11_fu_582_p3;
wire   [26:0] tmp_37_tr_fu_590_p1;
wire   [26:0] p_neg_fu_594_p2;
wire   [15:0] tmp_14_fu_600_p4;
wire   [0:0] tmp_37_fu_616_p3;
wire   [15:0] tmp_16_fu_623_p4;
wire   [15:0] p_Val2_6_fu_639_p3;
wire   [15:0] p_Val2_5_fu_632_p3;
wire  signed [16:0] tmp_18_fu_644_p1;
wire  signed [16:0] tmp_19_fu_648_p1;
wire   [16:0] p_Val2_s_65_fu_652_p2;
wire   [0:0] tmp_20_fu_658_p2;
wire   [0:0] tmp_21_fu_664_p2;
wire   [0:0] tmp_23_fu_682_p2;
wire   [15:0] p_tmp_cast_fu_674_p3;
wire   [15:0] tmp_38_fu_670_p1;
wire   [15:0] Z_0_V_fu_688_p3;
wire   [15:0] tmp_47_0_1_fu_716_p1;
wire   [15:0] p_Val2_36_0_1_fu_719_p2;
wire  signed [16:0] tmp_3_fu_724_p1;
wire   [32:0] tmp_fu_741_p3;
wire  signed [32:0] mul_fu_752_p1;
wire   [67:0] neg_mul_fu_768_p2;
wire   [22:0] tmp_29_fu_773_p4;
wire  signed [33:0] tmp_10_fu_783_p1;
wire  signed [33:0] tmp_12_fu_787_p1;
wire   [33:0] tmp_15_fu_790_p3;
wire   [33:0] neg_ti_fu_797_p2;
wire   [33:0] tmp_24_fu_803_p3;
wire   [15:0] tmp_25_fu_828_p1;
wire   [15:0] p_Val2_12_fu_831_p2;
reg   [9:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        LAMBDA_reg_152 <= p_Val2_13_fu_836_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        LAMBDA_reg_152 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        Z_1_V_3_fu_128 <= Z_1_V_1_reg_933;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        Z_1_V_3_fu_128 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        Z_1_V_fu_124 <= Z_1_V_2_reg_938;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        Z_1_V_fu_124 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        k_reg_164 <= k_1_reg_864;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        k_reg_164 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_208_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        p_Val2_7_reg_175 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        p_Val2_7_reg_175 <= i_reg_882;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        Z_1_V_1_reg_933 <= Z_1_V_1_fu_696_p3;
        Z_1_V_2_reg_938 <= Z_1_V_2_fu_702_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_882 <= i_fu_246_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        k_1_reg_864 <= k_1_fu_214_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_reg_954[67 : 16] <= mul_fu_752_p2[67 : 16];
        tmp_30_reg_959 <= {{mul_fu_752_p2[67:45]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        p_Val2_11_reg_964 <= {{tmp_24_fu_803_p3[23:8]}};
        tmp_31_reg_969 <= tmp_24_fu_803_p3[32'd7];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_240_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        p_Val2_22_0_1_reg_912 <= {{p_Val2_21_0_1_fu_542_p2[23:8]}};
        tmp_22_reg_917 <= p_Val2_19_0_1_fu_524_p2[32'd7];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_240_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        p_Val2_2_reg_907 <= p_Val2_2_fu_448_p2;
        tmp_32_reg_899 <= tmp_32_fu_252_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_Val2_3_reg_922 <= p_Val2_3_fu_576_p2;
        tmp_17_reg_928 <= tmp_17_fu_610_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_208_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        p_shl1_cast_reg_869[26 : 8] <= p_shl1_cast_fu_228_p1[26 : 8];
        p_shl_reg_874[25 : 10] <= p_shl_fu_232_p3[25 : 10];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        r_V_1_reg_943 <= r_V_1_fu_728_p2;
        tmp_28_reg_948 <= r_V_1_fu_728_p2[32'd16];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp_1_reg_856 <= tmp_1_fu_194_p1;
    end
end

always @ (*) begin
    if (((exitcond_fu_208_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_208_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_208_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        z_1_V_ap_vld = 1'b1;
    end else begin
        z_1_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_208_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        z_2_V_ap_vld = 1'b1;
    end else begin
        z_2_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond_fu_208_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond1_fu_240_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Z_0_V_fu_688_p3 = ((tmp_23_fu_682_p2[0:0] === 1'b1) ? p_tmp_cast_fu_674_p3 : tmp_38_fu_670_p1);

assign Z_1_V_1_fu_696_p3 = ((tmp_32_reg_899[0:0] === 1'b1) ? Z_1_V_3_fu_128 : Z_0_V_fu_688_p3);

assign Z_1_V_2_fu_702_p3 = ((tmp_32_reg_899[0:0] === 1'b1) ? Z_0_V_fu_688_p3 : Z_1_V_fu_124);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign exitcond1_fu_240_p2 = ((p_Val2_7_reg_175 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond_fu_208_p2 = ((k_reg_164 == 8'd200) ? 1'b1 : 1'b0);

assign i_fu_246_p2 = (p_Val2_7_reg_175 + 2'd1);

assign k_1_fu_214_p2 = (k_reg_164 + 8'd1);

assign mul_fu_752_p1 = tmp_fu_741_p3;

assign mul_fu_752_p2 = ($signed({{1'b0}, {68'd31754848456}}) * $signed(mul_fu_752_p1));

assign neg_mul_fu_768_p2 = (68'd0 - mul_reg_954);

assign neg_ti_fu_797_p2 = (34'd0 - tmp_15_fu_790_p3);

assign p_Val2_10_fu_478_p2 = ($signed(p_shl3_cast_fu_462_p1) - $signed(p_shl4_cast_fu_474_p1));

assign p_Val2_11_v_cast_fu_403_p1 = $signed(p_Val2_11_v_fu_396_p3);

assign p_Val2_11_v_fu_396_p3 = ((tmp_32_fu_252_p1[0:0] === 1'b1) ? 26'd0 : p_shl_reg_874);

assign p_Val2_12_fu_831_p2 = (tmp_25_fu_828_p1 + p_Val2_11_reg_964);

assign p_Val2_13_fu_836_p2 = (LAMBDA_reg_152 - p_Val2_12_fu_831_p2);

assign p_Val2_14_fu_484_p4 = {{p_Val2_10_fu_478_p2[23:8]}};

assign p_Val2_15_fu_506_p2 = (tmp_2_fu_502_p1 + p_Val2_14_fu_484_p4);

assign p_Val2_19_0_1_fu_524_p2 = ($signed(25'd0) - $signed(p_shl5_cast_fu_520_p1));

assign p_Val2_1_fu_390_p2 = (tmp_15_1_fu_386_p1 + p_Val2_6_1_fu_368_p4);

assign p_Val2_21_0_1_fu_542_p2 = (tmp_13_fu_538_p1 + tmp_44_0_1_fu_530_p3);

assign p_Val2_2_fu_448_p2 = ($signed(tmp_s_fu_440_p1) - $signed(tmp_8_fu_444_p1));

assign p_Val2_36_0_1_fu_719_p2 = (tmp_47_0_1_fu_716_p1 + p_Val2_22_0_1_reg_912);

assign p_Val2_3_fu_576_p2 = ($signed(tmp_9_fu_566_p1) + $signed(tmp_10_cast_cast_fu_569_p3));

assign p_Val2_4_1_fu_336_p3 = ((tmp_32_fu_252_p1[0:0] === 1'b1) ? st_fu_316_p3 : sf_fu_332_p1);

assign p_Val2_4_fu_276_p3 = ((tmp_32_fu_252_p1[0:0] === 1'b1) ? st2_fu_264_p1 : sf3_fu_268_p3);

assign p_Val2_5_1_fu_362_p2 = (tmp_13_cast_fu_358_p1 + tmp_12_1_cast_cast_fu_354_p1);

assign p_Val2_5_fu_632_p3 = ((tmp_37_fu_616_p3[0:0] === 1'b1) ? tmp_17_reg_928 : tmp_16_fu_623_p4);

assign p_Val2_6_1_fu_368_p4 = {{p_Val2_5_1_fu_362_p2[23:8]}};

assign p_Val2_6_fu_639_p3 = ((tmp_32_reg_899[0:0] === 1'b1) ? Z_1_V_fu_124 : Z_1_V_3_fu_128);

assign p_Val2_8_fu_412_p4 = {{p_Val2_s_fu_407_p2[23:8]}};

assign p_Val2_9_fu_434_p2 = (tmp_7_fu_430_p1 + p_Val2_8_fu_412_p4);

assign p_Val2_s_65_fu_652_p2 = ($signed(tmp_18_fu_644_p1) - $signed(tmp_19_fu_648_p1));

assign p_Val2_s_fu_407_p2 = ($signed(p_Val2_11_v_cast_fu_403_p1) - $signed(p_shl1_cast_reg_869));

assign p_neg_fu_594_p2 = (27'd0 - tmp_37_tr_fu_590_p1);

assign p_shl1_cast_fu_228_p1 = $signed(p_shl1_fu_220_p3);

assign p_shl1_fu_220_p3 = {{LAMBDA_reg_152}, {8'd0}};

assign p_shl3_cast_fu_462_p1 = $signed(p_shl3_fu_454_p3);

assign p_shl3_fu_454_p3 = {{Z_1_V_3_fu_128}, {10'd0}};

assign p_shl4_cast_fu_474_p1 = $signed(p_shl4_fu_466_p3);

assign p_shl4_fu_466_p3 = {{Z_1_V_3_fu_128}, {8'd0}};

assign p_shl5_cast_fu_520_p1 = $signed(p_shl5_fu_512_p3);

assign p_shl5_fu_512_p3 = {{Z_1_V_fu_124}, {8'd0}};

assign p_shl_fu_232_p3 = {{LAMBDA_reg_152}, {10'd0}};

assign p_tmp_cast_fu_674_p3 = ((tmp_20_fu_658_p2[0:0] === 1'b1) ? 16'd64256 : 16'd1280);

assign r_V_1_fu_728_p2 = ($signed(tmp_3_fu_724_p1) - $signed(tmp_1_reg_856));

assign sf3_fu_268_p3 = {{Z_1_V_3_fu_128}, {10'd0}};

assign sf_fu_332_p1 = $signed(tmp_27_fu_324_p3);

assign st2_fu_264_p1 = $signed(tmp_26_fu_256_p3);

assign st_fu_316_p3 = {{Z_1_V_fu_124}, {10'd0}};

assign tmp_10_cast_cast_fu_569_p3 = ((tmp_32_reg_899[0:0] === 1'b1) ? 18'd261376 : 18'd261632);

assign tmp_10_fu_783_p1 = $signed(tmp_29_fu_773_p4);

assign tmp_11_fu_582_p3 = {{p_Val2_3_fu_576_p2}, {8'd0}};

assign tmp_12_1_cast_cast_fu_354_p1 = tmp_12_1_fu_344_p4;

assign tmp_12_1_fu_344_p4 = {{{tmp_6_fu_306_p4}, {tmp_5_fu_300_p2}}, {8'd0}};

assign tmp_12_fu_787_p1 = $signed(tmp_30_reg_959);

assign tmp_13_cast_fu_358_p1 = p_Val2_4_1_fu_336_p3;

assign tmp_13_fu_538_p1 = p_Val2_19_0_1_fu_524_p2[23:0];

assign tmp_14_fu_600_p4 = {{p_neg_fu_594_p2[25:10]}};

assign tmp_15_1_fu_386_p1 = tmp_35_fu_378_p3;

assign tmp_15_fu_790_p3 = ((tmp_28_reg_948[0:0] === 1'b1) ? tmp_10_fu_783_p1 : tmp_12_fu_787_p1);

assign tmp_16_fu_623_p4 = {{p_Val2_3_reg_922[17:2]}};

assign tmp_17_fu_610_p2 = (16'd0 - tmp_14_fu_600_p4);

assign tmp_18_fu_644_p1 = $signed(p_Val2_6_fu_639_p3);

assign tmp_19_fu_648_p1 = $signed(p_Val2_5_fu_632_p3);

assign tmp_1_fu_194_p1 = $signed(x_in_V);

assign tmp_20_fu_658_p2 = (($signed(p_Val2_s_65_fu_652_p2) < $signed(17'd129792)) ? 1'b1 : 1'b0);

assign tmp_21_fu_664_p2 = (($signed(p_Val2_s_65_fu_652_p2) > $signed(17'd1280)) ? 1'b1 : 1'b0);

assign tmp_23_fu_682_p2 = (tmp_21_fu_664_p2 | tmp_20_fu_658_p2);

assign tmp_24_fu_803_p3 = ((tmp_28_reg_948[0:0] === 1'b1) ? neg_ti_fu_797_p2 : tmp_12_fu_787_p1);

assign tmp_25_fu_828_p1 = tmp_31_reg_969;

assign tmp_26_fu_256_p3 = {{Z_1_V_3_fu_128}, {9'd0}};

assign tmp_27_fu_324_p3 = {{Z_1_V_fu_124}, {9'd0}};

assign tmp_29_fu_773_p4 = {{neg_mul_fu_768_p2[67:45]}};

assign tmp_2_fu_502_p1 = tmp_4_fu_494_p3;

assign tmp_32_fu_252_p1 = p_Val2_7_reg_175[0:0];

assign tmp_33_fu_284_p3 = p_Val2_4_fu_276_p3[32'd7];

assign tmp_34_fu_292_p3 = p_Val2_4_fu_276_p3[32'd8];

assign tmp_35_fu_378_p3 = p_Val2_4_1_fu_336_p3[32'd7];

assign tmp_36_fu_422_p3 = p_Val2_s_fu_407_p2[32'd7];

assign tmp_37_fu_616_p3 = p_Val2_3_reg_922[32'd17];

assign tmp_37_tr_fu_590_p1 = tmp_11_fu_582_p3;

assign tmp_38_fu_670_p1 = p_Val2_s_65_fu_652_p2[15:0];

assign tmp_3_fu_724_p1 = $signed(p_Val2_36_0_1_fu_719_p2);

assign tmp_44_0_1_fu_530_p3 = {{p_Val2_15_fu_506_p2}, {8'd0}};

assign tmp_47_0_1_fu_716_p1 = tmp_22_reg_917;

assign tmp_4_fu_494_p3 = p_Val2_10_fu_478_p2[32'd7];

assign tmp_5_fu_300_p2 = (tmp_34_fu_292_p3 | tmp_33_fu_284_p3);

assign tmp_6_fu_306_p4 = {{p_Val2_4_fu_276_p3[23:9]}};

assign tmp_7_fu_430_p1 = tmp_36_fu_422_p3;

assign tmp_8_fu_444_p1 = $signed(p_Val2_9_fu_434_p2);

assign tmp_9_fu_566_p1 = $signed(p_Val2_2_reg_907);

assign tmp_fu_741_p3 = {{r_V_1_reg_943}, {16'd0}};

assign tmp_s_fu_440_p1 = $signed(p_Val2_1_fu_390_p2);

assign z_1_V = Z_1_V_3_fu_128;

assign z_2_V = Z_1_V_fu_124;

always @ (posedge ap_clk) begin
    p_shl1_cast_reg_869[7:0] <= 8'b00000000;
    p_shl_reg_874[9:0] <= 10'b0000000000;
    mul_reg_954[15:0] <= 16'b0000000000000000;
end

endmodule //QP
