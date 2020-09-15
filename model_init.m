%% RFSoC Parameters
% RF ADC/DAC Sample rate
ConverterSamplingRate = 4e9;

% Digital Up/Down Conversion factor
DDC_DUC_factor = 2;

% Effective sampling rate after decimation
Fs = ConverterSamplingRate/DDC_DUC_factor;
Ts = 1/Fs;

% Samples per clock cycle
VectorSamplingFactor = 4;

% FPGA clock rate / sample time
fpga_clk_rate = Fs/VectorSamplingFactor;
fpga_Ts = 1/fpga_clk_rate;

%% Application parameters

% Center frequency
fc = 1.25e9;

% NCO
NCO_WL = 16;
NCO_f0 = 251e6;
NCO_phase_inc = round (((NCO_f0*2^NCO_WL)/fpga_clk_rate)/VectorSamplingFactor);