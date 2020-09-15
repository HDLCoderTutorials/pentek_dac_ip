-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\pentek_dac_ip_test\DAC_NCO_4_ip_axi4_stream_slave.vhd
-- Created: 2020-09-15 17:55:25
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: DAC_NCO_4_ip_axi4_stream_slave
-- Source Path: DAC_NCO_4_ip/DAC_NCO_4_ip_axi4_stream_slave
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY DAC_NCO_4_ip_axi4_stream_slave IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        AXI4_Stream_Slave_TDATA           :   IN    std_logic_vector(127 DOWNTO 0);  -- ufix128
        AXI4_Stream_Slave_TVALID          :   IN    std_logic;  -- ufix1
        auto_ready                        :   IN    std_logic;  -- ufix1
        AXI4_Stream_Slave_TREADY          :   OUT   std_logic;  -- ufix1
        user_data                         :   OUT   std_logic_vector(127 DOWNTO 0);  -- ufix128
        user_valid                        :   OUT   std_logic  -- ufix1
        );
END DAC_NCO_4_ip_axi4_stream_slave;


ARCHITECTURE rtl OF DAC_NCO_4_ip_axi4_stream_slave IS

  -- Component Declarations
  COMPONENT DAC_NCO_4_ip_fifo_data
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In_rsvd                         :   IN    std_logic_vector(127 DOWNTO 0);  -- ufix128
          Push                            :   IN    std_logic;  -- ufix1
          Pop                             :   IN    std_logic;  -- ufix1
          Out_rsvd                        :   OUT   std_logic_vector(127 DOWNTO 0);  -- ufix128
          Empty                           :   OUT   std_logic;  -- ufix1
          Full                            :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : DAC_NCO_4_ip_fifo_data
    USE ENTITY work.DAC_NCO_4_ip_fifo_data(rtl);

  -- Signals
  SIGNAL fifo_rd_ack                      : std_logic;  -- ufix1
  SIGNAL stream_in_user_data              : std_logic_vector(127 DOWNTO 0);  -- ufix128
  SIGNAL fifo_empty                       : std_logic;  -- ufix1
  SIGNAL fifo_full                        : std_logic;  -- ufix1
  SIGNAL fifo_empty_neg                   : std_logic;  -- ufix1
  SIGNAL stream_in_user_valid             : std_logic;  -- ufix1

BEGIN
  u_DAC_NCO_4_ip_fifo_data_inst : DAC_NCO_4_ip_fifo_data
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In_rsvd => AXI4_Stream_Slave_TDATA,  -- ufix128
              Push => AXI4_Stream_Slave_TVALID,  -- ufix1
              Pop => fifo_rd_ack,  -- ufix1
              Out_rsvd => stream_in_user_data,  -- ufix128
              Empty => fifo_empty,  -- ufix1
              Full => fifo_full  -- ufix1
              );

  intdelay_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        fifo_rd_ack <= '0';
      ELSIF enb = '1' THEN
        fifo_rd_ack <= auto_ready;
      END IF;
    END IF;
  END PROCESS intdelay_process;


  AXI4_Stream_Slave_TREADY <=  NOT fifo_full;

  fifo_empty_neg <=  NOT fifo_empty;

  stream_in_user_valid <= fifo_empty_neg AND fifo_rd_ack;

  user_valid <= stream_in_user_valid;

  user_data <= stream_in_user_data;

END rtl;
