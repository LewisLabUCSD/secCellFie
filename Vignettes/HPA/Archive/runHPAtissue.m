%% Run HPA immune cell data 

addpath(genpath('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/usingGeM/CellFie'))

fname = "HPAtissue_expression";
data_file = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/Output/', fname, '.csv');

%% secretory Pathway
outFolder.mean = '/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/tissue/secretoryPathway/mean';
outFolder.minmaxmean = '/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/tissue/secretoryPathway/minmaxmean';
execCellfie(data_file, '253' , 'MT_recon_2_2_entrez','local','percentile',[],'mean','25','75', outFolder.mean, "secretion")
execCellfie(data_file, '253' , 'MT_recon_2_2_entrez','local','percentile',[],'minmaxmean','25','75', outFolder.minmaxmean, "secretion")

%% metabolic Pathway
outFolder.mean = '/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/tissue/metabolicPathway/mean';
outFolder.minmaxmean = '/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/HPA/CellFie_output/tissue/metabolicPathway/minmaxmean';
execCellfie(data_file, '253' , 'MT_recon_2_2_entrez','local','percentile',[],'mean','25','75', outFolder.mean, "metabolism")
execCellfie(data_file, '253' , 'MT_recon_2_2_entrez','local','percentile',[],'minmaxmean','25','75', outFolder.minmaxmean, "metabolism")
