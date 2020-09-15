// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\pentek_dac_ip_test\DAC_NCO_4_ip_fifo_data_OUT.v
// Created: 2020-09-15 17:49:48
// 
// Generated by MATLAB 9.7 and HDL Coder 3.15
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: DAC_NCO_4_ip_fifo_data_OUT
// Source Path: DAC_NCO_4_ip/DAC_NCO_4_ip_axi4_stream_master/DAC_NCO_4_ip_fifo_data_OUT
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module DAC_NCO_4_ip_fifo_data_OUT
          (clk,
           reset,
           enb,
           In,
           Push,
           Pop,
           Out,
           Empty,
           AFull);


  input   clk;
  input   reset;
  input   enb;
  input   [127:0] In;  // ufix128
  input   Push;  // ufix1
  input   Pop;  // ufix1
  output  [127:0] Out;  // ufix128
  output  Empty;  // ufix1
  output  AFull;  // ufix1


  wire R_x;  // ufix1
  wire cache_wr_en;  // ufix1
  wire out_wr_en;  // ufix1
  wire fwft_wr_en;  // ufix1
  wire R_x_1;  // ufix1
  reg  fifo_valid;  // ufix1
  wire Q_keep;  // ufix1
  reg  out_valid;  // ufix1
  wire fifo_and_out_valid;  // ufix1
  wire R_x_2;  // ufix1
  reg  cache_valid;  // ufix1
  wire Q_keep_1;  // ufix1
  wire relop_relop1;
  wire Q_next;  // ufix1
  wire all_valid;  // ufix1
  wire Full;  // ufix1
  wire fifo_nfull;  // ufix1
  wire fifo_push;  // ufix1
  wire fifo_pop;  // ufix1
  reg [1:0] fifo_front_indx;  // ufix2
  reg [1:0] fifo_front_dir;  // ufix2
  reg [1:0] fifo_back_indx;  // ufix2
  reg [1:0] fifo_back_dir;  // ufix2
  reg [2:0] fifo_sample_count;  // ufix3
  wire [1:0] fifo_front_indx_next;  // ufix2
  wire [1:0] fifo_front_dir_next;  // ufix2
  wire [1:0] fifo_back_indx_next;  // ufix2
  wire [1:0] fifo_back_dir_next;  // ufix2
  wire [2:0] fifo_sample_count_next;  // ufix3
  wire fifo_out3;
  wire fifo_out4;
  wire fifo_write_enable;
  wire fifo_read_enable;
  wire [1:0] fifo_front_indx_temp;  // ufix2
  wire [1:0] fifo_back_indx_temp;  // ufix2
  wire [1:0] w_waddr;  // ufix2
  wire w_we;  // ufix1
  wire [1:0] w_raddr;  // ufix2
  wire Empty_1;  // ufix1
  wire [2:0] Num;  // ufix3
  wire Q_next_1;  // ufix1
  wire int_valid;  // ufix1
  wire Q_keep_2;  // ufix1
  wire Q_next_2;  // ufix1
  wire data_flow;  // ufix1
  wire w_cz;
  wire w_const;  // ufix1
  wire w_mux1;  // ufix1
  reg  w_d1;  // ufix1
  wire [127:0] w_waddr_1;  // ufix128
  reg [127:0] w_d2;  // ufix128
  wire [127:0] w_out;  // ufix128
  reg [127:0] cache_data;  // ufix128
  wire [127:0] data_out_next;  // ufix128
  reg [127:0] Out_1;  // ufix128
  wire [2:0] afull_num;  // ufix3
  wire relop_relop1_1;


  assign R_x =  ~ Pop;



  assign fwft_wr_en = cache_wr_en | out_wr_en;



  assign R_x_1 =  ~ fwft_wr_en;



  assign Q_keep = R_x_1 & fifo_valid;



  assign fifo_and_out_valid = fifo_valid & out_valid;



  assign R_x_2 =  ~ out_wr_en;



  assign Q_keep_1 = R_x_2 & cache_valid;



  assign relop_relop1 = cache_valid == out_wr_en;



  assign cache_wr_en = relop_relop1 & fifo_valid;



  assign Q_next = cache_wr_en | Q_keep_1;



  always @(posedge clk)
    begin : Q_reg_process
      if (reset == 1'b1) begin
        cache_valid <= 1'b0;
      end
      else begin
        if (enb) begin
          cache_valid <= Q_next;
        end
      end
    end



  assign all_valid = cache_valid & fifo_and_out_valid;



  assign fifo_nfull =  ~ Full;



  // us2: Upsample by 1, Sample offset 0 
  assign fifo_push = Push & fifo_nfull;



  // FIFO logic controller
  always @(posedge clk)
    begin : fifo_process
      if (reset == 1'b1) begin
        fifo_front_indx <= 2'b00;
        fifo_front_dir <= 2'b01;
        fifo_back_indx <= 2'b00;
        fifo_back_dir <= 2'b01;
        fifo_sample_count <= 3'b000;
      end
      else begin
        if (enb) begin
          fifo_front_indx <= fifo_front_indx_next;
          fifo_front_dir <= fifo_front_dir_next;
          fifo_back_indx <= fifo_back_indx_next;
          fifo_back_dir <= fifo_back_dir_next;
          fifo_sample_count <= fifo_sample_count_next;
        end
      end
    end

  assign fifo_out4 = fifo_sample_count == 3'b100;
  assign fifo_out3 = fifo_sample_count == 3'b000;
  assign fifo_write_enable = fifo_push && (fifo_pop || ( ! fifo_out4));
  assign fifo_read_enable = fifo_pop && ( ! fifo_out3);
  assign fifo_front_indx_temp = (fifo_read_enable ? fifo_front_indx + fifo_front_dir :
              fifo_front_indx);
  assign fifo_front_dir_next = (fifo_front_indx_temp == 2'b11 ? 2'b01 :
              2'b01);
  assign fifo_back_indx_temp = (fifo_write_enable ? fifo_back_indx + fifo_back_dir :
              fifo_back_indx);
  assign fifo_back_dir_next = (fifo_back_indx_temp == 2'b11 ? 2'b01 :
              2'b01);
  assign fifo_sample_count_next = (fifo_write_enable && ( ! fifo_read_enable) ? fifo_sample_count + 3'b001 :
              (( ! fifo_write_enable) && fifo_read_enable ? fifo_sample_count + 3'b111 :
              fifo_sample_count));
  assign w_waddr = fifo_back_indx;
  assign w_we = fifo_write_enable;
  assign w_raddr = fifo_front_indx;
  assign Empty_1 = fifo_out3;
  assign Full = fifo_out4;
  assign Num = fifo_sample_count;
  assign fifo_front_indx_next = fifo_front_indx_temp;
  assign fifo_back_indx_next = fifo_back_indx_temp;



  // us3: Upsample by 1, Sample offset 0 
  assign fifo_pop =  ~ (Empty_1 | all_valid);



  assign Q_next_1 = fifo_pop | Q_keep;



  always @(posedge clk)
    begin : Q_reg_1_process
      if (reset == 1'b1) begin
        fifo_valid <= 1'b0;
      end
      else begin
        if (enb) begin
          fifo_valid <= Q_next_1;
        end
      end
    end



  assign int_valid = fifo_valid | cache_valid;



  assign Q_keep_2 = R_x & out_valid;



  assign Q_next_2 = out_wr_en | Q_keep_2;



  always @(posedge clk)
    begin : Q_reg_2_process
      if (reset == 1'b1) begin
        out_valid <= 1'b0;
      end
      else begin
        if (enb) begin
          out_valid <= Q_next_2;
        end
      end
    end



  assign Empty =  ~ out_valid;



  assign data_flow = Pop | Empty;



  assign out_wr_en = data_flow & int_valid;



  assign w_cz = Num > 3'b000;



  assign w_const = 1'b0;



  assign w_mux1 = (w_cz == 1'b0 ? w_const :
              fifo_pop);



  always @(posedge clk)
    begin : f_d1_process
      if (reset == 1'b1) begin
        w_d1 <= 1'b0;
      end
      else begin
        if (enb) begin
          w_d1 <= w_mux1;
        end
      end
    end



  // us1: Upsample by 1, Sample offset 0 
  DAC_NCO_4_ip_SimpleDualPortRAM_generic #(.AddrWidth(2),
                                           .DataWidth(128)
                                           )
                                         u_DAC_NCO_4_ip_fifo_data_OUT_classic_ram_generic (.clk(clk),
                                                                                           .enb(enb),
                                                                                           .wr_din(In),
                                                                                           .wr_addr(w_waddr),
                                                                                           .wr_en(w_we),  // ufix1
                                                                                           .rd_addr(w_raddr),
                                                                                           .rd_dout(w_waddr_1)
                                                                                           );

  always @(posedge clk)
    begin : f_d2_process
      if (reset == 1'b1) begin
        w_d2 <= 128'h00000000000000000000000000000000;
      end
      else begin
        if (enb && w_d1) begin
          w_d2 <= w_waddr_1;
        end
      end
    end



  assign w_out = (w_d1 == 1'b0 ? w_d2 :
              w_waddr_1);



  always @(posedge clk)
    begin : cache_data_reg_process
      if (reset == 1'b1) begin
        cache_data <= 128'h00000000000000000000000000000000;
      end
      else begin
        if (enb && cache_wr_en) begin
          cache_data <= w_out;
        end
      end
    end



  assign data_out_next = (cache_valid == 1'b0 ? w_out :
              cache_data);



  always @(posedge clk)
    begin : out_data_reg_process
      if (reset == 1'b1) begin
        Out_1 <= 128'h00000000000000000000000000000000;
      end
      else begin
        if (enb && out_wr_en) begin
          Out_1 <= data_out_next;
        end
      end
    end



  assign afull_num = 3'b011;



  assign relop_relop1_1 = Num >= afull_num;



  assign AFull = relop_relop1_1;

  assign Out = Out_1;

endmodule  // DAC_NCO_4_ip_fifo_data_OUT

