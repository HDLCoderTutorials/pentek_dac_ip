// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\pentek_dac_ip_test\DAC_NCO_4_ip_reset_sync.v
// Created: 2020-09-15 17:49:48
// 
// Generated by MATLAB 9.7 and HDL Coder 3.15
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DAC_NCO_4_ip_reset_sync
// Source Path: DAC_NCO_4_ip/DAC_NCO_4_ip_reset_sync
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DAC_NCO_4_ip_reset_sync
          (clk,
           reset_in,
           reset_out);


  input   clk;
  input   reset_in;  // ufix1
  output  reset_out;  // ufix1


  wire enb;
  wire const_0;  // ufix1
  wire const_1;  // ufix1
  reg  reset_pipe;  // ufix1
  reg  reset_out_1;  // ufix1


  assign const_0 = 1'b0;



  assign const_1 = 1'b1;



  assign enb = const_1;

  always @(posedge clk)
    begin : reg_reset_pipe_process
      if (reset_in == 1'b1) begin
        reset_pipe <= 1'b1;
      end
      else begin
        if (enb) begin
          reset_pipe <= const_0;
        end
      end
    end



  always @(posedge clk)
    begin : reg_reset_delay_process
      if (reset_in == 1'b1) begin
        reset_out_1 <= 1'b1;
      end
      else begin
        if (enb) begin
          reset_out_1 <= reset_pipe;
        end
      end
    end



  assign reset_out = reset_out_1;

endmodule  // DAC_NCO_4_ip_reset_sync

