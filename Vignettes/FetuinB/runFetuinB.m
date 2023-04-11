% Run CellFIE on FetuinB tpm expression data
addpath(genpath('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/usingGeM/CellFie'))

%% Transcriptomics
fname = "TPM.FetuinB";
data_file = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/FetuinB/Output/', fname, '.csv');
nSamp = '6';

% Combined pathway (met & sec)
outFolder.mean = '/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/FetuinB/CellFie_output/transcriptome/local_mean';
outFolder.minmaxmean = '/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/FetuinB/CellFie_output/transcriptome/local_minmaxmean';
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'mean','25','75', outFolder.mean, "metabolism_secretion")
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'minmaxmean','25','75', outFolder.minmaxmean, "metabolism_secretion")

%% interactomics
fname = "FetuinB_interactomics";
data_file = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/FetuinB/Output/', fname, '.csv');
nSamp = '6';

% Combined pathway (met & sec)
outFolder.mean = '/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/FetuinB/CellFie_output/interactome/local_mean';
outFolder.minmaxmean = '/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/FetuinB/CellFie_output/interactome/local_minmaxmean';
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'mean','25','75', outFolder.mean, "metabolism_secretion")
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'minmaxmean','25','75', outFolder.minmaxmean, "metabolism_secretion")
