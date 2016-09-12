setwd(/Volumes/2TB_black/bioinformatics/tardigrades)

library(CRISPRseek)
outputDir <- getwd()

inputFilePath <- system.file('extdata', 'nHd.2.3.abv500.fna', package = 'CRISPRseek')
REpatternFile <- system.file('extdata', 'HD-act-1.fa', package = 'CRISPRseek')

results <- offTargetAnalysis(inputFilePath, findgRNAsWithREcutOnly = TRUE, REpatternFile = REpatternFile, findPairedgRNAOnly = TRUE,chromToSearch = "", outputDir = outputDir, overwrite = TRUE)
# results <- offTargetAnalysis('nHd.2.3.abv500.fna', findgRNAsWithREcutOnly = TRUE, REpatternFile = 'HD-act-1.fa', findPairedgRNAOnly = TRUE,chromToSearch = "", outputDir = outputDir, overwrite = TRUE)