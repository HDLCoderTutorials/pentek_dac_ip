-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\pentek_dac_ip_test\DAC_NCO_4_ip_src_For_Each_Subsystem.vhd
-- Created: 2020-09-15 17:55:20
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: DAC_NCO_4_ip_src_For_Each_Subsystem
-- Source Path: pentek_dac_ip_test/DAC_NCO_4xSampling_IQ/Vector NCO/For Each Subsystem
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY DAC_NCO_4_ip_src_For_Each_Subsystem IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        inc                               :   IN    std_logic_vector(31 DOWNTO 0);  -- uint32
        offset                            :   IN    std_logic_vector(31 DOWNTO 0);  -- uint32
        dataOut_re                        :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
        dataOut_im                        :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
        validOut                          :   OUT   std_logic
        );
END DAC_NCO_4_ip_src_For_Each_Subsystem;


ARCHITECTURE rtl OF DAC_NCO_4_ip_src_For_Each_Subsystem IS

  -- Component Declarations
  COMPONENT DAC_NCO_4_ip_src_NCO_HDL_Optimized4
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          inc                             :   IN    std_logic_vector(31 DOWNTO 0);  -- uint32
          offset                          :   IN    std_logic_vector(31 DOWNTO 0);  -- uint32
          validIn                         :   IN    std_logic;
          complexexp_re                   :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
          complexexp_im                   :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
          validOut                        :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : DAC_NCO_4_ip_src_NCO_HDL_Optimized4
    USE ENTITY work.DAC_NCO_4_ip_src_NCO_HDL_Optimized4(rtl);

  -- Signals
  SIGNAL Constant_out1                    : std_logic;
  SIGNAL NCO_HDL_Optimized4_out1_re       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL NCO_HDL_Optimized4_out1_im       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL NCO_HDL_Optimized4_out2          : std_logic;

BEGIN
  u_NCO_HDL_Optimized4 : DAC_NCO_4_ip_src_NCO_HDL_Optimized4
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              inc => inc,  -- uint32
              offset => offset,  -- uint32
              validIn => Constant_out1,
              complexexp_re => NCO_HDL_Optimized4_out1_re,  -- sfix16_En15
              complexexp_im => NCO_HDL_Optimized4_out1_im,  -- sfix16_En15
              validOut => NCO_HDL_Optimized4_out2
              );

  Constant_out1 <= '1';

  dataOut_re <= NCO_HDL_Optimized4_out1_re;

  dataOut_im <= NCO_HDL_Optimized4_out1_im;

  validOut <= NCO_HDL_Optimized4_out2;

END rtl;

