%% Combine met and sec essential rxns

% CHO essentialRxns
load("../CellFie/input/essentialRxns/essentialRxnsbyTask_MT_iCHOv1_final.mat")
sec = load("../CellFie/input/essentialRxns/essentialRxnsbyTask_MT_iCHOv1_final_sec.mat");
essentialRxns_met_sec = [essentialRxns, sec.essentialRxns];
essentialRxns=essentialRxns_met_sec;
save("../CellFie/input/essentialRxns/essentialRxnsbyTask_MT_iCHOv1_final_met_sec.mat", "essentialRxns")

% Mouse essentialRxns
load("../CellFie/input/essentialRxns/essentialRxnsbyTask_MT_iMM1415.mat")
sec = load("../CellFie/input/essentialRxns/essentialRxnsbyTask_MT_iMM1415_sec.mat");
essentialRxns_met_sec = [essentialRxns, sec.essentialRxns];
essentialRxns=essentialRxns_met_sec;
save("../CellFie/input/essentialRxns/essentialRxnsbyTask_MT_MT_iMM1415_met_sec.mat", "essentialRxns")

% Human essentialRxns
load("../CellFie/input/essentialRxns/essentialRxnsbyTask_MT_recon_2_2_entrez.mat")
sec = load("../CellFie/input/essentialRxns/essentialRxnsbyTask_MT_recon_2_2_entrez_sec.mat");
essentialRxns_met_sec = [essentialRxns, sec.essentialRxns];
essentialRxns=essentialRxns_met_sec;
save("../CellFie/input/essentialRxns/essentialRxnsbyTask_MT_recon_2_2_entrez_met_sec.mat", "essentialRxns")

%% Combine met and sec taskInfo

% Metabolic task info
load("../CellFie/input/taskStructure.mat")
taskInfos=struct2cell(taskStructure);
taskInfos=taskInfos';
taskInfos(:,5:end)=[];

% Secretory Pathway task info
[sec_taskInfo_num, sec_taskInfo_txt, sec_taskInfo_raw] = xlsread("essentialRxn_notebook2022.xlsx","TaskInfo");
%taskInfos_sec = [cellstr(num2str(sec_taskInfo_num)), sec_taskInfo_txt(2:end,2:4)];
taskInfos_sec = sec_taskInfo_txt(2:end,:);
% Combine and save
taskInfos_met_sec = [taskInfos; taskInfos_sec];
% save
taskInfos=taskInfos_met_sec;
save("../CellFie/input/taskStructure_met_sec.mat", "taskInfos")
taskInfos=taskInfos_sec;
save("../CellFie/input/taskStructure_sec.mat", "taskInfos")

