% Expand metabolic models to include all secretory pathway reactions
% NOTE: You need to run 'initCobraToolbox' first!

%% Mouse: MT_iMM1415
load('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/usingGeM/CellFie/input/MT_iMM1415.mat');
rxnFile = 'rxnFiles/rxnFile_Mouse.txt';
rxnNames = 'rxnNames/rxnNames_Mouse.txt';
rxnGPRs = 'rxnGPRs/rxnGPRs_Mouse.txt';
geneList = 'geneLists/geneList_Mouse.txt';

model = addSecretionReactions(model, rxnFile, rxnNames, rxnGPRs, geneList);
save("../CellFie/input/MT_iMM1415_sec.mat", "model")

%% CHO: MT_iCHOv1_final
load('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/usingGeM/CellFie/input/MT_iCHOv1_final.mat');
rxnFile = 'rxnFiles/rxnFile_CHO.txt';
rxnNames = 'rxnNames/rxnNames_CHO.txt';
rxnGPRs = 'rxnGPRs/rxnGPRs_CHO.txt';
geneList = 'geneLists/geneList_CHO.txt';

model= addSecretionReactions(model, rxnFile, rxnNames, rxnGPRs, geneList);
save("../CellFie/input/MT_iCHOv1_final_sec.mat", "model")

%% Human: MT_recon_2_2_entrez
load('/Users/helenmasson/Desktop/SenateExam/Aim2_CellFie/SecPathway.CellFIE/usingGeM/CellFie/input/MT_recon_2_2_entrez.mat');
rxnFile = 'rxnFiles/rxnFile_Human.txt';
rxnNames = 'rxnNames/rxnNames_Human.txt';
rxnGPRs = 'rxnGPRs/rxnGPRs_Human.txt';
geneList = 'geneLists/geneList_Human.txt';

model= addSecretionReactions(model, rxnFile, rxnNames, rxnGPRs, geneList);
save("../CellFie/input/MT_recon_2_2_entrez_sec.mat", "model")
