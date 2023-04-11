%% Run HPA immune cell data 

addpath(genpath('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/usingGeM/CellFie'))
nSamp = '103';

%% nTPM
exp = "109_nTPM";
fname = strcat("HPAblood_", exp, "expression");
data_file = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/Output/', fname, '.csv');

% secretory Pathway
outFolder.mean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/secretoryPathway/mean/', exp);
outFolder.minmaxmean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/secretoryPathway/minmaxmean/', exp);
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'mean','25','75', outFolder.mean, "secretion")
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'minmaxmean','25','75', outFolder.minmaxmean, "secretion")

% metabolic Pathway
outFolder.mean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/metabolicPathway/mean/', exp);
outFolder.minmaxmean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/metabolicPathway/minmaxmean/', exp);
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'mean','25','75', outFolder.mean, "metabolism")
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'minmaxmean','25','75', outFolder.minmaxmean, "metabolism")

%% nTPM
exp = "109_pTPM";
fname = strcat("HPAblood_", exp, "expression");
data_file = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/Output/', fname, '.csv');

% secretory Pathway
outFolder.mean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/secretoryPathway/mean/', exp);
outFolder.minmaxmean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/secretoryPathway/minmaxmean/', exp);
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'mean','25','75', outFolder.mean, "secretion")
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'minmaxmean','25','75', outFolder.minmaxmean, "secretion")

% metabolic Pathway
outFolder.mean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/metabolicPathway/mean/', exp);
outFolder.minmaxmean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/metabolicPathway/minmaxmean/', exp);
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'mean','25','75', outFolder.mean, "metabolism")
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'minmaxmean','25','75', outFolder.minmaxmean, "metabolism")

%% TPM
exp = "109_TPM";
fname = strcat("HPAblood_", exp, "expression");
data_file = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/Output/', fname, '.csv');

% secretory Pathway
outFolder.mean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/secretoryPathway/mean/', exp);
outFolder.minmaxmean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/secretoryPathway/minmaxmean/', exp);
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'mean','25','75', outFolder.mean, "secretion")
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'minmaxmean','25','75', outFolder.minmaxmean, "secretion")

% metabolic Pathway
outFolder.mean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/metabolicPathway/mean/', exp);
outFolder.minmaxmean = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/blood/metabolicPathway/minmaxmean/', exp);
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'mean','25','75', outFolder.mean, "metabolism")
execCellfie(data_file, nSamp , 'MT_recon_2_2_entrez','local','percentile',[],'minmaxmean','25','75', outFolder.minmaxmean, "metabolism")