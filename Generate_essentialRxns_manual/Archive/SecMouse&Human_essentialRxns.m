%Mouse Essential Rxns
%Draft 1, 8/20/2018

%% Translation
T0={'TRANSLATION_protein'; 'TRANSLATION_component'};
Trans={T0};
%% Translocation

%Post-translational Translocation
T1={'TRAP'};
T2={'SEC61C'};
T3={'ASNA1_formation'; 'ASNA1_atp'; 'ASNA1_adp_degradation'};
T4={'BiP_atp_formation'; 'BiP_ATPase'; 'BiP_NEF'; 'BiP_adp_degradation'}';
T5={'post_TRANSLOC_1'; 'post_TRANSLOC_2'; 'post_TRANSLOC_3A_1'; 'post_TRANSLOC_3A_2'; 'post_TRANSLOC_3B_1'; 'post_TRANSLOC_3B_2'; 'post_TRANSLOC_3B_3'};
T6={'co_TRANSLOC_7'};
T7={'TRAP_degradation'};
PT_Translocation={T1, T2, T3, T4, T5, T6, T7};

%Co-translational Translocation
T8={'TRAP'};
T9={'SEC61C'};
T10={'SRP'};
T11={'SRPR'};
T12={'SPC'};
T13={'BiP_atp_formation'; 'BiP_ATPase'; 'BiP_NEF'; 'BiP_adp_degradation'};
T14={'co_TRANSLOC_1'; 'co_TRANSLOC_2'; 'co_TRANSLOC_3'; 'co_TRANSLOC_4'; 'co_TRANSLOC_5'; 'co_TRANSLOC_6'; 'BiP_release'; 'SP_degradation'};
T15={'SPC_degradation'};
T16={'co_TRANSLOC_7'};
T17={'TRAP_degradation'};
CT_Translocation={T8, T9, T10, T11, T12, T13, T14, T15, T15, T17};

Translocation=[PT_Translocation, CT_Translocation];
%% Post-translational Modifications

% ER N-linked glycosylation
T18={'OST_complex'};
T19={'ERNG'};
%GPI
T20={'GPI_Transfer_A1'; 'GPI_Transfer_A2'};

PTM={T18, T19, T20};   
%% Protein Folding

%Glucose trimming in N-linked core oligosaccharide
T21={'Glucosidase_1'};
T22={'Glucosidase_2'};
T23={'Glucosidase_3'};
%Calnexin Cycle
T24={'Glucosidase_3_misfolded'};
T25={'UGGT_Refolding_1'; 'UGGT_Refolding_2'};
T26={'CAATPaser'; 'CALR_Ca2'; 'CALR_CANX_folding'; 'CALR_CANX_release'};
T27={'CALR_Ca2_degradation'};
%PDI formation of disulfide bonds
T28={'PDI_reoxidation_ERO1A'};
T29={'PDI_reoxidation_ERO1LB'};
T30={'GTHOX_CtoR_transport';'PDI_reoxidation_GSSG'};
T31={'PDI_reoxidation_H2O2'; 'H2O2ter'};
T32={'PDI_1'};
T33={'PDI_2'};
T34={'ERO1LB_reoxidation_1'};
T35={'ERO1A_reoxidation_1'};
%Mannose trimming
T36={'Mannosidase_1B'};

Protein_Folding={T21, T22, T23, T24, T25, T26, T27, T28, T29, T30, T31, T32, T33, T34, T35, T36};
%% ERAD

%Recognition of misfolded protein
T37={'Mannosidase_1C'; 'Mannosidase_1B_misfold'; 'Mannosidase_1A_misfold'; 'Mannosidase_1D_misfold'};
T38={'BiP_atp_formation'; 'BiP_ATPase'; 'BiP_NEF'};
T39={'OS9_recognition'};
T40={'OS9_binding_SEL1'};
T41={'OS9_transfer_SYVN1'};
%Retro-translocation (ER to cytosol)
T42={'retro_TRANSLOC_1'};
T43={'Ubiquitination_lumped'};
T44={'retro_TRANSLOC_2'};
%Proteasome degradation
T45={'PROTA_formation'; 'PROTB_formation'; 'Proteasome_complex'};
T46={'Ubiquitination_deglycosylation'; 'Ubiquitination_removal'};
T47={'Ubiquitination_degradation'; 'Proteasome_degradation'};

ERAD={T37, T38, T39, T40, T41, T42, T43, T44, T45, T46, T47};    
%% Golgi Processing
T48={'GOLGI_MGAT4B'; 'GOLGI_MGAT5'; 'GOLGI_FUT8_EPO'; 'GOLGI_GAL_EPO'; 'GOLGI_NEUAC_EPO'};
T49={'GOLGI_MAN1A'; 'GOLGI_MAN1B'; 'GOLGI_MAN1C'; 'GOLGI_MGAT1'; 'GOLGI_MAN2'; 'GOLGI_MAN3'; 'GOLGI_MGAT2'};
T50={'GOLGI_O_Gal'; 'GOLGI_O_Core1'; 'GOLGI_O_Core2'};
T51={'GOLGI_MGAT3'; 'GOLGI_MGAT4C'; 'GOLGI_FUT8'; 'GOLGI_B4GALT_1'; 'GOLGI_B4GALT_2'; 'GOLGI_ST6GAL_1'; 'GOLGI_ST6GAL_2'};

Golgi={T48, T49, T50, T51};
%% Vesicle Trafficking

%Trafficking to endosomes
T52={'ARF1_gdp_binding'; 'ARF1_activation'; 'ARF1_gdp_degradation'};
T53={'RAB6B_gdp_binding'; 'RAB6B_activation'; 'RAB6B_gdp_degradation'};
T54={'GOLGI_TO_ENDOSOME_1'; 'GOLGI_TO_ENDOSOME_2'; 'GOLGI_TO_ENDOSOME_3'; 'NSF-dissociation'};
%Golgi to ER trafficking (COPI)
T55={'ARF1_gdp_binding'; 'ARF1_activation'; 'ARF1_gdp_degradation'};
T56={'RAB1A_gdp_binding'; 'RAB1A_activation'; 'RAB1A_gdp_degradation'};
T57={'COPI_recruit'; 'COPI_maturation'; 'COPI_fusion'; 'COPI_recycling'; 'NSF-dissociation'};
%ER to Golgi trafficking (COPII)
T58={'SAR1B_gdp_binding'; 'SAR1B_activation'; 'SAR1B_gdp_degradation'};
T59={'RAB1A_gdp_binding'; 'RAB1A_activation'; 'RAB1A_gdp_degradation'};
T60={'LMAN1_recognition_Canonical'; 'COPII_recruit'; 'COPII_maturation'; 'COPII_fusion'; 'COPII_recycling'; 'NSF-dissociation'};
T61={'LMAN1_recognition_A'; 'COPII_recruit_A'; 'COPII_maturation_A'; 'COPII_fusion_A'; 'COPII_recycling'; 'NSF-dissociation'};
T62={'LMAN1_recognition_C'; 'COPII_recruit'; 'COPII_maturation'; 'COPII_fusion'; 'COPII_recycling'; 'NSF-dissociation'};
T63={'LMAN2_recognition_B'; 'COPII_recruit_B'; 'COPII_maturation_B'; 'COPII_fusion_B'; 'COPII_recycling'; 'NSF-dissociation'};
%Vesicle secretion
T64={'EXOCYST_COMPLEX'};
T65={'ARF1_gdp_binding'; 'ARF1_activation'; 'ARF1_gdp_degradation'};
T66={'RAB8B_gdp_binding'; 'RAB8B_activation'; 'RAB8B_gdp_degradation'};
T67={'SECRETION_1'; 'SECRETION_2'; 'SECRETION_3'; 'NSF-dissociation'};
T68={'EXOCYST_degradation'};

Vesicles={T52, T53, T54, T55, T56, T57, T58, T59, T60, T61, T62, T63, T64, T65, T66, T67, T68};

%% Essential Reactions

essentialRxns=[Trans, Translocation, PTM, Protein_Folding, ERAD, Golgi, Vesicles];
save('Mouse&Human_EssentialRxns.mat', 'essentialRxns')