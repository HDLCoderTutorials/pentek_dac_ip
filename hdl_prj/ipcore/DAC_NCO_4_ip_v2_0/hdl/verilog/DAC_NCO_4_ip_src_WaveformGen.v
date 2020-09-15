// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\pentek_dac_ip_test\DAC_NCO_4_ip_src_WaveformGen.v
// Created: 2020-09-15 17:49:42
// 
// Generated by MATLAB 9.7 and HDL Coder 3.15
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DAC_NCO_4_ip_src_WaveformGen
// Source Path: pentek_dac_ip_test/DAC_NCO_4xSampling_IQ/Vector NCO/For Each Subsystem/NCO HDL Optimized4/WaveformGen
// Hierarchy Level: 4
// 
// Wave form Generation Component
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DAC_NCO_4_ip_src_WaveformGen
          (clk,
           reset,
           enb,
           phaseIdx,
           exp_re,
           exp_im);


  input   clk;
  input   reset;
  input   enb;
  input   [15:0] phaseIdx;  // ufix16
  output  signed [15:0] exp_re;  // sfix16_En15
  output  signed [15:0] exp_im;  // sfix16_En15


  wire selsign;  // ufix1
  wire seladdr;  // ufix1
  wire selsign_cos;  // ufix1
  reg  [0:3] SelsignCosRegister_reg;  // ufix1 [4]
  wire [0:3] SelsignCosRegister_reg_next;  // ufix1 [4]
  wire selsign_cosreg;  // ufix1
  wire [14:0] lutaddrexd;  // ufix15
  wire addreqzero;  // ufix1
  reg  validcnt;  // ufix1
  wire validEnb;  // ufix1
  wire enbreg;  // ufix1
  wire addrOverFcos;  // ufix1
  reg  [0:3] AddrOverFcosRegister_reg;  // ufix1 [4]
  wire [0:3] AddrOverFcosRegister_reg_next;  // ufix1 [4]
  wire addrOverFcosreg;  // ufix1
  wire [14:0] lutaddrmax;  // ufix15
  wire [13:0] lutaddr1;  // ufix14
  wire [15:0] subtractor_sub_temp;  // ufix16
  wire [15:0] subtractor_1;  // ufix16
  wire [15:0] subtractor_2;  // ufix16
  wire [13:0] lutaddr2;  // ufix14
  wire [13:0] lutaddrcos;  // ufix14
  wire signed [15:0] lutoutcos;  // sfix16_En15
  wire signed [15:0] ampOne;  // sfix16_En15
  wire signed [15:0] lutoutcos_ampOne;  // sfix16_En15
  wire signed [16:0] uminus_cast;  // sfix17_En15
  wire signed [16:0] uminus_cast_1;  // sfix17_En15
  wire signed [15:0] lutoutcos_ampOne_inv;  // sfix16_En15
  wire signed [15:0] cosout;  // sfix16_En15
  reg  [0:3] SelsignRegister_reg;  // ufix1 [4]
  wire [0:3] SelsignRegister_reg_next;  // ufix1 [4]
  wire selsignreg;  // ufix1
  wire addrOverFsin;  // ufix1
  reg  [0:3] AddrOverFsinRegister_reg;  // ufix1 [4]
  wire [0:3] AddrOverFsinRegister_reg_next;  // ufix1 [4]
  wire addrOverFsinreg;  // ufix1
  wire [13:0] lutaddrsin;  // ufix14
  wire signed [15:0] lutoutsin;  // sfix16_En15
  wire signed [15:0] lutoutsin_ampOne;  // sfix16_En15
  wire signed [16:0] uminus_cast_2;  // sfix17_En15
  wire signed [16:0] uminus_cast_3;  // sfix17_En15
  wire signed [15:0] lutoutsin_ampOne_inv;  // sfix16_En15
  wire signed [15:0] sinout;  // sfix16_En15


  // Sine sign selection signal
  assign selsign = phaseIdx[15];



  assign seladdr = phaseIdx[14];



  // Cosine sign selection signal
  assign selsign_cos = selsign ^ seladdr;



  always @(posedge clk)
    begin : SelsignCosRegister_process
      if (reset == 1'b1) begin
        SelsignCosRegister_reg[0] <= 1'b0;
        SelsignCosRegister_reg[1] <= 1'b0;
        SelsignCosRegister_reg[2] <= 1'b0;
        SelsignCosRegister_reg[3] <= 1'b0;
      end
      else begin
        if (enb) begin
          SelsignCosRegister_reg[0] <= SelsignCosRegister_reg_next[0];
          SelsignCosRegister_reg[1] <= SelsignCosRegister_reg_next[1];
          SelsignCosRegister_reg[2] <= SelsignCosRegister_reg_next[2];
          SelsignCosRegister_reg[3] <= SelsignCosRegister_reg_next[3];
        end
      end
    end

  assign selsign_cosreg = SelsignCosRegister_reg[3];
  assign SelsignCosRegister_reg_next[0] = selsign_cos;
  assign SelsignCosRegister_reg_next[1] = SelsignCosRegister_reg[0];
  assign SelsignCosRegister_reg_next[2] = SelsignCosRegister_reg[1];
  assign SelsignCosRegister_reg_next[3] = SelsignCosRegister_reg[2];



  // Get extended LUT address for overflow handling
  assign lutaddrexd = phaseIdx[14:0];



  // Detect cosine overflow
  assign addreqzero = lutaddrexd == 15'b000000000000000;



  assign validEnb = validcnt < 1'b1;



  // Count limited, Unsigned Counter
  //  initial value   = 0
  //  step value      = 1
  //  count to value  = 1
  always @(posedge clk)
    begin : counter_process
      if (reset == 1'b1) begin
        validcnt <= 1'b0;
      end
      else begin
        if (enb && validEnb) begin
          validcnt <=  ~ validcnt;
        end
      end
    end



  assign enbreg = validcnt == 1'b1;



  assign addrOverFcos = addreqzero & enbreg;



  always @(posedge clk)
    begin : AddrOverFcosRegister_process
      if (reset == 1'b1) begin
        AddrOverFcosRegister_reg[0] <= 1'b0;
        AddrOverFcosRegister_reg[1] <= 1'b0;
        AddrOverFcosRegister_reg[2] <= 1'b0;
        AddrOverFcosRegister_reg[3] <= 1'b0;
      end
      else begin
        if (enb) begin
          AddrOverFcosRegister_reg[0] <= AddrOverFcosRegister_reg_next[0];
          AddrOverFcosRegister_reg[1] <= AddrOverFcosRegister_reg_next[1];
          AddrOverFcosRegister_reg[2] <= AddrOverFcosRegister_reg_next[2];
          AddrOverFcosRegister_reg[3] <= AddrOverFcosRegister_reg_next[3];
        end
      end
    end

  assign addrOverFcosreg = AddrOverFcosRegister_reg[3];
  assign AddrOverFcosRegister_reg_next[0] = addrOverFcos;
  assign AddrOverFcosRegister_reg_next[1] = AddrOverFcosRegister_reg[0];
  assign AddrOverFcosRegister_reg_next[2] = AddrOverFcosRegister_reg[1];
  assign AddrOverFcosRegister_reg_next[3] = AddrOverFcosRegister_reg[2];



  // Map LUT address in correct phase
  assign lutaddrmax = 15'b100000000000000;



  assign lutaddr1 = phaseIdx[13:0];



  assign subtractor_1 = {1'b0, lutaddrmax};
  assign subtractor_2 = {2'b0, lutaddr1};
  assign subtractor_sub_temp = subtractor_1 - subtractor_2;
  assign lutaddr2 = subtractor_sub_temp[13:0];



  assign lutaddrcos = (seladdr == 1'b0 ? lutaddr2 :
              lutaddr1);



  DAC_NCO_4_ip_src_LookUpTableGen u_CosineWave_inst (.clk(clk),
                                                     .reset(reset),
                                                     .enb(enb),
                                                     .lutaddr(lutaddrcos),  // ufix14
                                                     .lutoutput(lutoutcos)  // sfix16_En15
                                                     );

  assign ampOne = 16'sb0111111111111111;



  // Assign cosine amplitude One
  assign lutoutcos_ampOne = (addrOverFcosreg == 1'b0 ? lutoutcos :
              ampOne);



  assign uminus_cast = {lutoutcos_ampOne[15], lutoutcos_ampOne};
  assign uminus_cast_1 =  - (uminus_cast);
  assign lutoutcos_ampOne_inv = uminus_cast_1[15:0];



  // Select sign of cosine output
  assign cosout = (selsign_cosreg == 1'b0 ? lutoutcos_ampOne :
              lutoutcos_ampOne_inv);



  assign exp_re = cosout;

  always @(posedge clk)
    begin : SelsignRegister_process
      if (reset == 1'b1) begin
        SelsignRegister_reg[0] <= 1'b0;
        SelsignRegister_reg[1] <= 1'b0;
        SelsignRegister_reg[2] <= 1'b0;
        SelsignRegister_reg[3] <= 1'b0;
      end
      else begin
        if (enb) begin
          SelsignRegister_reg[0] <= SelsignRegister_reg_next[0];
          SelsignRegister_reg[1] <= SelsignRegister_reg_next[1];
          SelsignRegister_reg[2] <= SelsignRegister_reg_next[2];
          SelsignRegister_reg[3] <= SelsignRegister_reg_next[3];
        end
      end
    end

  assign selsignreg = SelsignRegister_reg[3];
  assign SelsignRegister_reg_next[0] = selsign;
  assign SelsignRegister_reg_next[1] = SelsignRegister_reg[0];
  assign SelsignRegister_reg_next[2] = SelsignRegister_reg[1];
  assign SelsignRegister_reg_next[3] = SelsignRegister_reg[2];



  // Detect sine overflow
  assign addrOverFsin = lutaddrexd == 15'b100000000000000;



  always @(posedge clk)
    begin : AddrOverFsinRegister_process
      if (reset == 1'b1) begin
        AddrOverFsinRegister_reg[0] <= 1'b0;
        AddrOverFsinRegister_reg[1] <= 1'b0;
        AddrOverFsinRegister_reg[2] <= 1'b0;
        AddrOverFsinRegister_reg[3] <= 1'b0;
      end
      else begin
        if (enb) begin
          AddrOverFsinRegister_reg[0] <= AddrOverFsinRegister_reg_next[0];
          AddrOverFsinRegister_reg[1] <= AddrOverFsinRegister_reg_next[1];
          AddrOverFsinRegister_reg[2] <= AddrOverFsinRegister_reg_next[2];
          AddrOverFsinRegister_reg[3] <= AddrOverFsinRegister_reg_next[3];
        end
      end
    end

  assign addrOverFsinreg = AddrOverFsinRegister_reg[3];
  assign AddrOverFsinRegister_reg_next[0] = addrOverFsin;
  assign AddrOverFsinRegister_reg_next[1] = AddrOverFsinRegister_reg[0];
  assign AddrOverFsinRegister_reg_next[2] = AddrOverFsinRegister_reg[1];
  assign AddrOverFsinRegister_reg_next[3] = AddrOverFsinRegister_reg[2];



  assign lutaddrsin = (seladdr == 1'b0 ? lutaddr1 :
              lutaddr2);



  DAC_NCO_4_ip_src_LookUpTableGen u_SineWave_inst (.clk(clk),
                                                   .reset(reset),
                                                   .enb(enb),
                                                   .lutaddr(lutaddrsin),  // ufix14
                                                   .lutoutput(lutoutsin)  // sfix16_En15
                                                   );

  // Assign sine amplitude One
  assign lutoutsin_ampOne = (addrOverFsinreg == 1'b0 ? lutoutsin :
              ampOne);



  assign uminus_cast_2 = {lutoutsin_ampOne[15], lutoutsin_ampOne};
  assign uminus_cast_3 =  - (uminus_cast_2);
  assign lutoutsin_ampOne_inv = uminus_cast_3[15:0];



  // Select sign of Sine output
  assign sinout = (selsignreg == 1'b0 ? lutoutsin_ampOne :
              lutoutsin_ampOne_inv);



  assign exp_im = sinout;

endmodule  // DAC_NCO_4_ip_src_WaveformGen

