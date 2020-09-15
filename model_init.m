%% RFSoC Parameters
% RF ADC/DAC Sample rate
RFConverterSampleRate = 4e9;

% Digital Up/Down Conversion factor
DDC_DUC_Factor = 8;

% Effective sampling rate after decimation
fs = RFConverterSampleRate/DDC_DUC_Factor;
Ts = 1/fs;

% Samples per clock cycle
SamplesPerClockCycle = 4;

% FPGA clock rate / sample time
FPGAClkRate = fs/SamplesPerClockCycle;
FPGATs = 1/FPGAClkRate;

%% Application parameters

% Center frequency
fc = 1.25e9;

% NCO
NCO_WL = 16;
NCO_f0 = 2e6;
NCO_phase_inc = round(NCO_f0 * 2^NCO_WL / fs);