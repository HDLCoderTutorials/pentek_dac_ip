-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\pentek_dac_ip_test\DAC_NCO_4_ip_src_Pack_Complex_Vector.vhd
-- Created: 2020-09-15 17:55:20
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: DAC_NCO_4_ip_src_Pack_Complex_Vector
-- Source Path: pentek_dac_ip_test/DAC_NCO_4xSampling_IQ/Pack Complex Vector
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.DAC_NCO_4_ip_src_DAC_NCO_4xSampling_IQ_pkg.ALL;

ENTITY DAC_NCO_4_ip_src_Pack_Complex_Vector IS
  PORT( u_re                              :   IN    vector_of_std_logic_vector16(0 TO 3);  -- sfix16_En15 [4]
        u_im                              :   IN    vector_of_std_logic_vector16(0 TO 3);  -- sfix16_En15 [4]
        y                                 :   OUT   std_logic_vector(127 DOWNTO 0)  -- ufix128
        );
END DAC_NCO_4_ip_src_Pack_Complex_Vector;


ARCHITECTURE rtl OF DAC_NCO_4_ip_src_Pack_Complex_Vector IS

  -- Component Declarations
  COMPONENT DAC_NCO_4_ip_src_pack_vector_complex
    PORT( u_re                            :   IN    vector_of_std_logic_vector16(0 TO 3);  -- sfix16_En15 [4]
          u_im                            :   IN    vector_of_std_logic_vector16(0 TO 3);  -- sfix16_En15 [4]
          y                               :   OUT   std_logic_vector(127 DOWNTO 0)  -- ufix128
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : DAC_NCO_4_ip_src_pack_vector_complex
    USE ENTITY work.DAC_NCO_4_ip_src_pack_vector_complex(rtl);

  -- Signals
  SIGNAL y_tmp                            : std_logic_vector(127 DOWNTO 0);  -- ufix128

BEGIN
  u_pack_vector_complex : DAC_NCO_4_ip_src_pack_vector_complex
    PORT MAP( u_re => u_re,  -- sfix16_En15 [4]
              u_im => u_im,  -- sfix16_En15 [4]
              y => y_tmp  -- ufix128
              );

  y <= y_tmp;

END rtl;

