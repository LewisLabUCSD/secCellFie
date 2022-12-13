## Mouse
Mouse.rxn <- openxlsx::read.xlsx("essentialRxn_final2022.xlsx", sheet="Mouse.rxns")
Mouse.genes <- openxlsx::read.xlsx("41467_2019_13867_MOESM3_ESM.xlsx", sheet="Components (Mouse)")
# new rxn lists
write.table(Mouse.rxn$Reaction.abbreviation , "../Generate_secModels/rxnNames/rxnNames_Mouse.txt", row.names=F, col.names=F, quote = FALSE)
write.table(Mouse.rxn$Template.Formula, "../Generate_secModels/rxnFiles/rxnFile_Mouse.txt", row.names=F, col.names=F, quote = FALSE)
write.table(Mouse.rxn$`Gene.Protein.Reaction.(GPR).association.(Entrez.Gene.IDs)`  %>% 
              replace(is.na(Mouse.rxn$`Gene.Protein.Reaction.(GPR).association.(Entrez.Gene.IDs)`), ""), "../Generate_secModels/rxnGPRs/rxnGPRs_Mouse.txt", row.names=F, col.names=F, quote = FALSE)
write.table(Mouse.genes$GeneID, "../Generate_secModels/geneLists/geneList_Mouse.txt", row.names=F, col.names=F, quote = FALSE)

## CHO
CHO.rxn <- openxlsx::read.xlsx("essentialRxn_final2022.xlsx", sheet="CHO.rxns")
CHO.genes <- openxlsx::read.xlsx("41467_2019_13867_MOESM3_ESM.xlsx", sheet="Components (Chinese hamster)")
# new rxn lists
write.table(CHO.rxn$Reaction.abbreviation, "../Generate_secModels/rxnNames/rxnNames_CHO.txt", row.names=F, col.names=F, quote = FALSE)
write.table(CHO.rxn$Template.Formula, "../Generate_secModels/rxnFiles/rxnFile_CHO.txt", row.names=F, col.names=F, quote = FALSE)
write.table(CHO.rxn$`Gene.Protein.Reaction.(GPR).association.(Entrez.Gene.IDs)` %>% 
              replace(is.na(CHO.rxn$`Gene.Protein.Reaction.(GPR).association.(Entrez.Gene.IDs)`), ""), "../Generate_secModels/rxnGPRs/rxnGPRs_CHO.txt", row.names=F, col.names=F, quote = FALSE)
write.table(CHO.genes$GeneID, "../Generate_secModels/geneLists/geneList_CHO.txt", row.names=F, col.names=F, quote = FALSE)

## Human
Human.rxn <- openxlsx::read.xlsx("essentialRxn_final2022.xlsx", sheet="Human.rxns")
Human.genes <- openxlsx::read.xlsx("41467_2019_13867_MOESM3_ESM.xlsx", sheet="Components (Human)")
# new rxn lists
write.table(Human.rxn$Reaction.abbreviation, "../Generate_secModels/rxnNames/rxnNames_Human.txt", row.names=F, col.names=F, quote = FALSE)
write.table(Human.rxn$Template.Formula, "../Generate_secModels/rxnFiles/rxnFile_Human.txt", row.names=F, col.names=F, quote = FALSE)
write.table(Human.rxn$`Gene.Protein.Reaction.(GPR).association.(Entrez.Gene.IDs)` %>% 
              replace(is.na(Human.rxn$`Gene.Protein.Reaction.(GPR).association.(Entrez.Gene.IDs)`), ""), "../Generate_secModels/rxnGPRs/rxnGPRs_Human.txt", row.names=F, col.names=F, quote = FALSE)
write.table(Human.genes$GeneID, "../Generate_secModels/geneLists/geneList_Human.txt", row.names=F, col.names=F, quote = FALSE)
