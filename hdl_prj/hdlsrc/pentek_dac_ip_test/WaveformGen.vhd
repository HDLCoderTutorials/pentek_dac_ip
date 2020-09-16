-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\pentek_dac_ip_test\WaveformGen.vhd
-- Created: 2020-09-08 13:38:39
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: WaveformGen
-- Source Path: pentek_dac_ip_test/DAC_NCO_4xSampling_IQ/Vector NCO/For Each Subsystem/NCO HDL Optimized4/WaveformGen
-- Hierarchy Level: 4
-- 
-- Wave form Generation Component
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY WaveformGen IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        phaseIdx                          :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
        exp_re                            :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En15
        exp_im                            :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En15
        );
END WaveformGen;


ARCHITECTURE rtl OF WaveformGen IS

  -- Component Declarations
  COMPONENT LookUpTableGen
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          lutaddr                         :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
          lutoutput                       :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En15
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : LookUpTableGen
    USE ENTITY work.LookUpTableGen(rtl);

  -- Signals
  SIGNAL phaseIdx_unsigned                : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL selsign                          : std_logic;  -- ufix1
  SIGNAL seladdr                          : std_logic;  -- ufix1
  SIGNAL selsign_cos                      : std_logic;  -- ufix1
  SIGNAL SelsignCosRegister_reg           : std_logic_vector(0 TO 3);  -- ufix1 [4]
  SIGNAL selsign_cosreg                   : std_logic;  -- ufix1
  SIGNAL lutaddrexd                       : unsigned(14 DOWNTO 0);  -- ufix15
  SIGNAL addreqzero                       : std_logic;  -- ufix1
  SIGNAL validcnt                         : std_logic;  -- ufix1
  SIGNAL validEnb                         : std_logic;  -- ufix1
  SIGNAL enbreg                           : std_logic;  -- ufix1
  SIGNAL addrOverFcos                     : std_logic;  -- ufix1
  SIGNAL lutaddrmax                       : unsigned(14 DOWNTO 0);  -- ufix15
  SIGNAL lutaddr1                         : unsigned(13 DOWNTO 0);  -- ufix14
  SIGNAL lutaddr2                         : unsigned(13 DOWNTO 0);  -- ufix14
  SIGNAL lutaddrcos                       : unsigned(13 DOWNTO 0);  -- ufix14
  SIGNAL AddrOverFcosRegister_reg         : std_logic_vector(0 TO 3);  -- ufix1 [4]
  SIGNAL addrOverFcosreg                  : std_logic;  -- ufix1
  SIGNAL lutoutcos                        : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL lutoutcos_signed                 : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL ampOne                           : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL lutoutcos_ampOne                 : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL uminus_cast                      : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL uminus_cast_1                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL lutoutcos_ampOne_inv             : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL cosout                           : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL SelsignRegister_reg              : std_logic_vector(0 TO 3);  -- ufix1 [4]
  SIGNAL selsignreg                       : std_logic;  -- ufix1
  SIGNAL addrOverFsin                     : std_logic;  -- ufix1
  SIGNAL lutaddrsin                       : unsigned(13 DOWNTO 0);  -- ufix14
  SIGNAL AddrOverFsinRegister_reg         : std_logic_vector(0 TO 3);  -- ufix1 [4]
  SIGNAL addrOverFsinreg                  : std_logic;  -- ufix1
  SIGNAL lutoutsin                        : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL lutoutsin_signed                 : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL lutoutsin_ampOne                 : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL uminus_cast_2                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL uminus_cast_3                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL lutoutsin_ampOne_inv             : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL sinout                           : signed(15 DOWNTO 0);  -- sfix16_En15

BEGIN
  u_CosineWave_inst : LookUpTableGen
    PORT MAP( clk => clk,
              reset => reset,
              lutaddr => std_logic_vector(lutaddrcos),  -- ufix14
              lutoutput => lutoutcos  -- sfix16_En15
              );

  u_SineWave_inst : LookUpTableGen
    PORT MAP( clk => clk,
              reset => reset,
              lutaddr => std_logic_vector(lutaddrsin),  -- ufix14
              lutoutput => lutoutsin  -- sfix16_En15
              );

  phaseIdx_unsigned <= unsigned(phaseIdx);

  -- Sine sign selection signal
  selsign <= phaseIdx_unsigned(15);

  seladdr <= phaseIdx_unsigned(14);

  -- Cosine sign selection signal
  selsign_cos <= selsign XOR seladdr;

  SelsignCosRegister_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        SelsignCosRegister_reg <= (OTHERS => '0');
      ELSE 
        SelsignCosRegister_reg(0) <= selsign_cos;
        SelsignCosRegister_reg(1 TO 3) <= SelsignCosRegister_reg(0 TO 2);
      END IF;
    END IF;
  END PROCESS SelsignCosRegister_process;

  selsign_cosreg <= SelsignCosRegister_reg(3);

  -- Get extended LUT address for overflow handling
  lutaddrexd <= phaseIdx_unsigned(14 DOWNTO 0);

  -- Detect cosine overflow
  
  addreqzero <= '1' WHEN lutaddrexd = to_unsigned(16#0000#, 15) ELSE
      '0';

  
  validEnb <= '1' WHEN validcnt < '1' ELSE
      '0';

  -- Count limited, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  --  count to value  = 1
  counter_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        validcnt <= '0';
      ELSIF validEnb = '1' THEN
        validcnt <=  NOT validcnt;
      END IF;
    END IF;
  END PROCESS counter_process;


  
  enbreg <= '1' WHEN validcnt = '1' ELSE
      '0';

  addrOverFcos <= addreqzero AND enbreg;

  -- Map LUT address in correct phase
  lutaddrmax <= to_unsigned(16#4000#, 15);

  lutaddr1 <= phaseIdx_unsigned(13 DOWNTO 0);

  lutaddr2 <= resize(resize(lutaddrmax, 16) - resize(lutaddr1, 16), 14);

  
  lutaddrcos <= lutaddr2 WHEN seladdr = '0' ELSE
      lutaddr1;

  AddrOverFcosRegister_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        AddrOverFcosRegister_reg <= (OTHERS => '0');
      ELSE 
        AddrOverFcosRegister_reg(0) <= addrOverFcos;
        AddrOverFcosRegister_reg(1 TO 3) <= AddrOverFcosRegister_reg(0 TO 2);
      END IF;
    END IF;
  END PROCESS AddrOverFcosRegister_process;

  addrOverFcosreg <= AddrOverFcosRegister_reg(3);

  lutoutcos_signed <= signed(lutoutcos);

  ampOne <= to_signed(16#7FFF#, 16);

  -- Assign cosine amplitude One
  
  lutoutcos_ampOne <= lutoutcos_signed WHEN addrOverFcosreg = '0' ELSE
      ampOne;

  uminus_cast <= resize(lutoutcos_ampOne, 17);
  uminus_cast_1 <=  - (uminus_cast);
  lutoutcos_ampOne_inv <= uminus_cast_1(15 DOWNTO 0);

  -- Select sign of cosine output
  
  cosout <= lutoutcos_ampOne WHEN selsign_cosreg = '0' ELSE
      lutoutcos_ampOne_inv;

  exp_re <= std_logic_vector(cosout);

  SelsignRegister_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        SelsignRegister_reg <= (OTHERS => '0');
      ELSE 
        SelsignRegister_reg(0) <= selsign;
        SelsignRegister_reg(1 TO 3) <= SelsignRegister_reg(0 TO 2);
      END IF;
    END IF;
  END PROCESS SelsignRegister_process;

  selsignreg <= SelsignRegister_reg(3);

  -- Detect sine overflow
  
  addrOverFsin <= '1' WHEN lutaddrexd = to_unsigned(16#4000#, 15) ELSE
      '0';

  
  lutaddrsin <= lutaddr1 WHEN seladdr = '0' ELSE
      lutaddr2;

  AddrOverFsinRegister_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        AddrOverFsinRegister_reg <= (OTHERS => '0');
      ELSE 
        AddrOverFsinRegister_reg(0) <= addrOverFsin;
        AddrOverFsinRegister_reg(1 TO 3) <= AddrOverFsinRegister_reg(0 TO 2);
      END IF;
    END IF;
  END PROCESS AddrOverFsinRegister_process;

  addrOverFsinreg <= AddrOverFsinRegister_reg(3);

  lutoutsin_signed <= signed(lutoutsin);

  -- Assign sine amplitude One
  
  lutoutsin_ampOne <= lutoutsin_signed WHEN addrOverFsinreg = '0' ELSE
      ampOne;

  uminus_cast_2 <= resize(lutoutsin_ampOne, 17);
  uminus_cast_3 <=  - (uminus_cast_2);
  lutoutsin_ampOne_inv <= uminus_cast_3(15 DOWNTO 0);

  -- Select sign of Sine output
  
  sinout <= lutoutsin_ampOne WHEN selsignreg = '0' ELSE
      lutoutsin_ampOne_inv;

  exp_im <= std_logic_vector(sinout);

END rtl;
