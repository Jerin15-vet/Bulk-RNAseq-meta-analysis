# install cran packages

install.packages("pak")

CRAN_REQUIRED <- c(
  "tidyverse", "rio", "ggplot2", "ggrepel", "ggpubr", "pheatmap", "patchwork",
  "igraph", "ggraph", "scales", "httr", "jsonlite", "Matrix", "metafor",
  "survival", "survminer", "glmnet", "randomForest", "pROC", "caret",
  "VennDiagram", "ggVennDiagram", "msigdbr", "gridExtra",
  "circlize", "future"
)
pak::pkg_install(CRAN_REQUIRED)

#Bioconductor Packages

BIOC_REQUIRED <- c(
  "DESeq2", "sva", "edgeR", "limma", "RUVSeq", "clusterProfiler", "enrichplot",
  "org.Hs.eg.db", "ReactomePA", "GSVA", "recount3", "SummarizedExperiment",
  "MultiAssayExperiment", "curatedTCGAData", "ComplexHeatmap",
  "genekitr", "TCGAbiolinks", "biomaRt", "GEOquery", "ExperimentHub"
)
pak::pkg_install(BIOC_REQUIRED)
pkgbuild::check_build_tools(debug = TRUE)


# Install BiocManager if not already installed
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BIOC_REQUIRED <- c(
  "DESeq2", "sva", "edgeR", "limma", "RUVSeq", "clusterProfiler", "enrichplot",
  "org.Hs.eg.db", "ReactomePA", "GSVA", "recount3", "SummarizedExperiment",
  "MultiAssayExperiment", "curatedTCGAData", "ComplexHeatmap",
  "genekitr", "TCGAbiolinks", "biomaRt", "GEOquery", "ExperimentHub"
)

BiocManager::install(BIOC_REQUIRED, update = FALSE, ask = FALSE)

#Github packages
#Meta volcanoR
install.packages("devtools")
devtools::install_github("iza-mcac/MetaVolcanoR")


#optional packeges
BIOC_OPTIONAL <- c(
  "decoupleR",   # 18: TF activity via run_ulm instead of the built-in estimator
  "multiMiR",    # 17: experimentally validated miRNA-target pairs
  "depmap",      # 19: DepMap CRISPR dependencies through ExperimentHub
  "cBioPortalData",
  "SingleR", "celldex",   # 16: reference-based cell-type labels
  "slingshot",            # 16: pseudotime
  "AUCell"
)

pak::pkg_install(BIOC_OPTIONAL)

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BIOC_OPTIONAL <- c(
  "decoupleR",   # 18: TF activity via run_ulm instead of the built-in estimator
  "multiMiR",    # 17: experimentally validated miRNA-target pairs
  "depmap",      # 19: DepMap CRISPR dependencies through ExperimentHub
  "cBioPortalData",
  "SingleR", "celldex",   # 16: reference-based cell-type labels
  "slingshot",            # 16: pseudotime
  "AUCell"
)

BiocManager::install(BIOC_OPTIONAL, update = FALSE, ask = FALSE)



