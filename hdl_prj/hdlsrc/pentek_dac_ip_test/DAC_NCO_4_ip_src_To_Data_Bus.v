// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\pentek_dac_ip_test\DAC_NCO_4_ip_src_To_Data_Bus.v
// Created: 2020-09-15 17:49:42
// 
// Generated by MATLAB 9.7 and HDL Coder 3.15
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DAC_NCO_4_ip_src_To_Data_Bus
// Source Path: pentek_dac_ip_test/DAC_NCO_4xSampling_IQ/To Data Bus
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DAC_NCO_4_ip_src_To_Data_Bus
          (data,
           valid,
           bus_data,
           bus_valid);


  input   [127:0] data;  // ufix128
  input   valid;
  output  [127:0] bus_data;  // ufix128
  output  bus_valid;




  assign bus_data = data;

  assign bus_valid = valid;

endmodule  // DAC_NCO_4_ip_src_To_Data_Bus

