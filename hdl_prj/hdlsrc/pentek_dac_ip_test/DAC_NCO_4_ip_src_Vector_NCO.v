// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\pentek_dac_ip_test\DAC_NCO_4_ip_src_Vector_NCO.v
// Created: 2020-09-15 17:49:42
// 
// Generated by MATLAB 9.7 and HDL Coder 3.15
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DAC_NCO_4_ip_src_Vector_NCO
// Source Path: pentek_dac_ip_test/DAC_NCO_4xSampling_IQ/Vector NCO
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DAC_NCO_4_ip_src_Vector_NCO
          (clk,
           reset,
           enb,
           inc,
           dataOut_re_0,
           dataOut_re_1,
           dataOut_re_2,
           dataOut_re_3,
           dataOut_im_0,
           dataOut_im_1,
           dataOut_im_2,
           dataOut_im_3,
           validOut);


  input   clk;
  input   reset;
  input   enb;
  input   [31:0] inc;  // uint32
  output  signed [15:0] dataOut_re_0;  // sfix16_En15
  output  signed [15:0] dataOut_re_1;  // sfix16_En15
  output  signed [15:0] dataOut_re_2;  // sfix16_En15
  output  signed [15:0] dataOut_re_3;  // sfix16_En15
  output  signed [15:0] dataOut_im_0;  // sfix16_En15
  output  signed [15:0] dataOut_im_1;  // sfix16_En15
  output  signed [15:0] dataOut_im_2;  // sfix16_En15
  output  signed [15:0] dataOut_im_3;  // sfix16_En15
  output  validOut;


  wire [63:0] Gain_cast;  // ufix64
  wire [31:0] Gain_out1;  // uint32
  wire [63:0] Gain1_cast;  // ufix64
  wire [63:0] Gain1_mul_temp;  // ufix64
  wire [63:0] Gain1_1;  // ufix64
  wire [63:0] Gain1_2;  // ufix64
  wire [31:0] Gain1_out1 [0:3];  // uint32 [4]
  wire signed [15:0] For_Each_Subsystem_out1_re [0:3];  // sfix16_En15 [4]
  wire signed [15:0] For_Each_Subsystem_out1_im [0:3];  // sfix16_En15 [4]
  wire [0:3] For_Each_Subsystem_out2;  // boolean [4]


  assign Gain_cast = {30'b0, {inc, 2'b00}};
  assign Gain_out1 = Gain_cast[31:0];



  assign Gain1_out1[0] = 32'b00000000000000000000000000000000;
  assign Gain1_out1[1] = inc;
  assign Gain1_cast = {31'b0, {inc, 1'b0}};
  assign Gain1_out1[2] = Gain1_cast[31:0];
  // CSD Encoding (3) : 011; Cost (Adders) = 1
  assign Gain1_1 = {31'b0, {inc, 1'b0}};
  assign Gain1_2 = {32'b0, inc};
  assign Gain1_mul_temp = Gain1_1 + Gain1_2;
  assign Gain1_out1[3] = Gain1_mul_temp[31:0];



  generate
    genvar k;
    for(k = 0; k < 4; k = k + 1) begin : GEN_LABEL
        DAC_NCO_4_ip_src_For_Each_Subsystem u_For_Each_Subsystem (.clk(clk),
                                                                  .reset(reset),
                                                                  .enb(enb),
                                                                  .inc(Gain_out1),  // uint32
                                                                  .offset(Gain1_out1[k]),  // uint32
                                                                  .dataOut_re(For_Each_Subsystem_out1_re[k]),  // sfix16_En15
                                                                  .dataOut_im(For_Each_Subsystem_out1_im[k]),  // sfix16_En15
                                                                  .validOut(For_Each_Subsystem_out2[k])
                                                                  );
    end
  endgenerate

  assign dataOut_re_0 = For_Each_Subsystem_out1_re[0];

  assign dataOut_re_1 = For_Each_Subsystem_out1_re[1];

  assign dataOut_re_2 = For_Each_Subsystem_out1_re[2];

  assign dataOut_re_3 = For_Each_Subsystem_out1_re[3];

  assign dataOut_im_0 = For_Each_Subsystem_out1_im[0];

  assign dataOut_im_1 = For_Each_Subsystem_out1_im[1];

  assign dataOut_im_2 = For_Each_Subsystem_out1_im[2];

  assign dataOut_im_3 = For_Each_Subsystem_out1_im[3];

  assign validOut = For_Each_Subsystem_out2[0];

endmodule  // DAC_NCO_4_ip_src_Vector_NCO
