%% Run HPA immune cell data 

addpath(genpath('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/usingGeM/CellFie'))
nSamp = '103';

%% nTPM
exp = "109_nTPM";
fname = strcat("HPAblood_", exp, "expression");
data_file = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/Output/', fname, '.csv');

% Combined pathways (met & sec)
outFolder.mean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/metabolism_secretion/mean/', exp);
outFolder.minmaxmean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/metabolism_secretion/minmaxmean/', exp);
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'mean','25','75', outFolder.mean, "metabolism_secretion")
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'minmaxmean','25','75', outFolder.minmaxmean, "metabolism_secretion")

%% pTPM
exp = "109_pTPM";
fname = strcat("HPAblood_", exp, "expression");
data_file = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/Output/', fname, '.csv');

% Combined pathways (met & sec)
outFolder.mean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/metabolism_secretion/mean/', exp);
outFolder.minmaxmean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/metabolism_secretion/minmaxmean/', exp);
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'mean','25','75', outFolder.mean, "metabolism_secretion")
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'minmaxmean','25','75', outFolder.minmaxmean, "metabolism_secretion")

%% TPM
exp = "109_TPM";
fname = strcat("HPAblood_", exp, "expression");
data_file = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/Output/', fname, '.csv');

% Combined pathways (met & sec)
outFolder.mean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/metabolism_secretion/mean/', exp);
outFolder.minmaxmean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/metabolism_secretion/minmaxmean/', exp);
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'mean','25','75', outFolder.mean, "metabolism_secretion")
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'minmaxmean','25','75', outFolder.minmaxmean, "metabolism_secretion")
