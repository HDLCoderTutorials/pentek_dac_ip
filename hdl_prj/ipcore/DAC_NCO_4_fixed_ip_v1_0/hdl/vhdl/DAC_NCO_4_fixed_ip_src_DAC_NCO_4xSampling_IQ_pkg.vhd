-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\pentek_dac_ip_test\DAC_NCO_4_fixed_ip_src_DAC_NCO_4xSampling_IQ_pkg.vhd
-- Created: 2020-09-08 13:47:15
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- -------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

PACKAGE DAC_NCO_4_fixed_ip_src_DAC_NCO_4xSampling_IQ_pkg IS
  TYPE vector_of_std_logic_vector16 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(15 DOWNTO 0);
  TYPE vector_of_signed16 IS ARRAY (NATURAL RANGE <>) OF signed(15 DOWNTO 0);
  TYPE vector_of_unsigned10 IS ARRAY (NATURAL RANGE <>) OF unsigned(9 DOWNTO 0);
  TYPE vector_of_unsigned4 IS ARRAY (NATURAL RANGE <>) OF unsigned(3 DOWNTO 0);
  TYPE vector_of_unsigned9 IS ARRAY (NATURAL RANGE <>) OF unsigned(8 DOWNTO 0);
  TYPE vector_of_unsigned32 IS ARRAY (NATURAL RANGE <>) OF unsigned(31 DOWNTO 0);
  TYPE vector_of_std_logic_vector32 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(31 DOWNTO 0);
END DAC_NCO_4_fixed_ip_src_DAC_NCO_4xSampling_IQ_pkg;

