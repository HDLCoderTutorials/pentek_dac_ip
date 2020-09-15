-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\pentek_dac_ip_test\DAC_NCO_4_ip_src_Vector_NCO.vhd
-- Created: 2020-09-15 17:55:20
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: DAC_NCO_4_ip_src_Vector_NCO
-- Source Path: pentek_dac_ip_test/DAC_NCO_4xSampling_IQ/Vector NCO
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.DAC_NCO_4_ip_src_DAC_NCO_4xSampling_IQ_pkg.ALL;

ENTITY DAC_NCO_4_ip_src_Vector_NCO IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        inc                               :   IN    std_logic_vector(31 DOWNTO 0);  -- uint32
        dataOut_re                        :   OUT   vector_of_std_logic_vector16(0 TO 3);  -- sfix16_En15 [4]
        dataOut_im                        :   OUT   vector_of_std_logic_vector16(0 TO 3);  -- sfix16_En15 [4]
        validOut                          :   OUT   std_logic
        );
END DAC_NCO_4_ip_src_Vector_NCO;


ARCHITECTURE rtl OF DAC_NCO_4_ip_src_Vector_NCO IS

  -- Component Declarations
  COMPONENT DAC_NCO_4_ip_src_For_Each_Subsystem
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          inc                             :   IN    std_logic_vector(31 DOWNTO 0);  -- uint32
          offset                          :   IN    std_logic_vector(31 DOWNTO 0);  -- uint32
          dataOut_re                      :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
          dataOut_im                      :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
          validOut                        :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : DAC_NCO_4_ip_src_For_Each_Subsystem
    USE ENTITY work.DAC_NCO_4_ip_src_For_Each_Subsystem(rtl);

  -- Signals
  SIGNAL inc_unsigned                     : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Gain_cast                        : unsigned(63 DOWNTO 0);  -- ufix64
  SIGNAL Gain_out1                        : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Gain1_cast                       : unsigned(63 DOWNTO 0);  -- ufix64
  SIGNAL Gain1_mul_temp                   : unsigned(63 DOWNTO 0);  -- ufix64
  SIGNAL Gain1_out1                       : vector_of_unsigned32(0 TO 3);  -- uint32 [4]
  SIGNAL Gain1_out1_1                     : vector_of_std_logic_vector32(0 TO 3);  -- ufix32 [4]
  SIGNAL For_Each_Subsystem_out1_re       : vector_of_std_logic_vector16(0 TO 3);  -- ufix16 [4]
  SIGNAL For_Each_Subsystem_out1_im       : vector_of_std_logic_vector16(0 TO 3);  -- ufix16 [4]
  SIGNAL For_Each_Subsystem_out2          : std_logic_vector(0 TO 3);  -- boolean [4]

BEGIN
  inc_unsigned <= unsigned(inc);

  Gain_cast <= resize(inc_unsigned & '0' & '0', 64);
  Gain_out1 <= Gain_cast(31 DOWNTO 0);

  Gain1_out1(0) <= to_unsigned(0, 32);
  Gain1_out1(1) <= inc_unsigned;
  Gain1_cast <= resize(inc_unsigned & '0', 64);
  Gain1_out1(2) <= Gain1_cast(31 DOWNTO 0);
  -- CSD Encoding (3) : 011; Cost (Adders) = 1
  Gain1_mul_temp <= resize(inc_unsigned & '0', 64) + resize(inc_unsigned, 64);
  Gain1_out1(3) <= resize(Gain1_mul_temp, 32);

  outputgen: FOR k1 IN 0 TO 3 GENERATE
    Gain1_out1_1(k1) <= std_logic_vector(Gain1_out1(k1));
  END GENERATE;

  GEN_LABEL: FOR k IN 0 TO 3 GENERATE
    u_For_Each_Subsystem : DAC_NCO_4_ip_src_For_Each_Subsystem
      PORT MAP( clk => clk,
                reset => reset,
                enb => enb,
                inc => std_logic_vector(Gain_out1),  -- uint32
                offset => Gain1_out1_1(k),  -- uint32
                dataOut_re => For_Each_Subsystem_out1_re(k),  -- sfix16_En15
                dataOut_im => For_Each_Subsystem_out1_im(k),  -- sfix16_En15
                validOut => For_Each_Subsystem_out2(k)
                );
  END GENERATE;

  dataOut_re <= For_Each_Subsystem_out1_re;

  dataOut_im <= For_Each_Subsystem_out1_im;

  validOut <= For_Each_Subsystem_out2(0);

END rtl;

