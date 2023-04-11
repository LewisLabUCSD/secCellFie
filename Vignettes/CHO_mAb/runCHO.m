% Run CellFIE on SusanSharfstein count expression data

addpath(genpath('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/usingGeM/CellFie'))


%% 
fname = "count_clean";
data_file = strcat('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/SusanSharfstein_2017/Input/', fname, '.csv');
nSamp = '14';

% Combined pathway (met & sec)
outFolder.mean = '/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/SusanSharfstein_2017/CellFie_output/local_mean';
outFolder.minmaxmean = '/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/Vignettes/SusanSharfstein_2017/CellFie_output/local_minmaxmean';
execCellfie(data_file, nSamp , 'MT_iCHOv1_final','local','percentile',[],'mean','25','75', outFolder.mean, "metabolism_secretion")
execCellfie(data_file, nSamp , 'MT_iCHOv1_final','local','percentile',[],'minmaxmean','25','75', outFolder.minmaxmean, "metabolism_secretion")
