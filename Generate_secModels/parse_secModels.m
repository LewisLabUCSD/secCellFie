% Human
minSum=false;
load("../CellFie/input/MT_recon_2_2_entrez_sec.mat")
parsedGPR = GPRparser(model,minSum);
save("../CellFie/input/parsedGPR/parsedGPR_MT_recon_2_2_entrez_sec.mat", "parsedGPR")

% CHO
minSum=false;
load("../CellFie/input/MT_iCHOv1_final_sec.mat")
parsedGPR = GPRparser(model,minSum);
save("../CellFie/input/parsedGPR/parsedGPR_MT_iCHOv1_final_sec.mat", "parsedGPR")

% Mouse
minSum=false;
load("../CellFie/input/MT_iMM1415_sec.mat")
parsedGPR = GPRparser(model,minSum);
save("../CellFie/input/parsedGPR/parsedGPR_MT_iMM1415_sec.mat", "parsedGPR")

% Test old/met only mouse model
%minSum=false;
%load("../CellFie/input/MT_iMM1415.mat")
%parsedGPR = GPRparser(model,minSum);
