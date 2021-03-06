-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\pentek_dac_ip_test\To_Data_Bus1.vhd
-- Created: 2020-09-08 13:38:39
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: To_Data_Bus1
-- Source Path: pentek_dac_ip_test/DAC_NCO_4xSampling_IQ/To Data Bus1
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY To_Data_Bus1 IS
  PORT( data                              :   IN    std_logic_vector(127 DOWNTO 0);  -- ufix128
        valid                             :   IN    std_logic;
        bus_data                          :   OUT   std_logic_vector(127 DOWNTO 0);  -- ufix128
        bus_valid                         :   OUT   std_logic
        );
END To_Data_Bus1;


ARCHITECTURE rtl OF To_Data_Bus1 IS

BEGIN
  bus_data <= data;

  bus_valid <= valid;

END rtl;

