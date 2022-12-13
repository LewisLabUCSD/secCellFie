%% Task Info (task order)
[taskInfo_num, taskInfo_txt, taskInfo_raw] = xlsread("essentialRxn_notebook2022.xlsx","TaskInfo");
tasks = taskInfo_txt(2:end,2);
%% CHO essentialRxns

[CHO_num, CHO_txt, CHO_raw] = xlsread("essentialRxn_final2022.xlsx","CHO.tasks");
%CHO_task = uniqueStrCell(CHO_txt(2:end,1));

CHO_essentialRxns = {};
for i = 1:length(tasks)
    idx = strcmp(tasks{i}, CHO_txt(:,1)); % rows corresponding to task
    CHO_essentialRxns(i) = cat(1, {CHO_txt(idx,2)});
end

essentialRxns= CHO_essentialRxns;
save("../CellFie/input/essentialRxns/essentialRxnsbyTask_MT_iCHOv1_final_sec.mat", "essentialRxns")
%% Mouse essential Rxns

[Mouse_num, Mouse_txt, Mouse_raw] = xlsread("essentialRxn_final2022.xlsx","Mouse.tasks");
%Mouse_task = uniqueStrCell(Mouse_txt(2:end,1));

Mouse_essentialRxns = {};
for i = 1:length(tasks)
    idx = strcmp(tasks{i}, Mouse_txt(:,1)); % rows corresponding to task
    Mouse_essentialRxns(i) = cat(1, {Mouse_txt(idx,2)});
end

essentialRxns= Mouse_essentialRxns;
save("../CellFie/input/essentialRxns/essentialRxnsbyTask_MT_iMM1415_sec.mat", "essentialRxns")
%% Human essential Rxns

[Human_num, Human_txt, Human_raw] = xlsread("essentialRxn_final2022.xlsx","Human.tasks");
%Human_task = uniqueStrCell(Human_txt(2:end,1));

Human_essentialRxns = {};
for i = 1:length(tasks)
    idx = strcmp(tasks{i}, Human_txt(:,1)); % rows corresponding to task
    Human_essentialRxns(i) = cat(1, {Human_txt(idx,2)});
end

essentialRxns= Human_essentialRxns;
save("../CellFie/input/essentialRxns/essentialRxnsbyTask_MT_recon_2_2_entrez_sec.mat", "essentialRxns")

