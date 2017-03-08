# Course: Introduction to Open Data Science, spring 2017
# Author: Ashwini Kumar
# Date: March 07, 2107
# Final assignment: Data wrangling

# Read the data: the data is download from the The data is downloaded from the cBioPortal (http://www.cbioportal.org/index.do) for Cancer Genomics provides visualization, analysis and download of large-scale cancer genomics data sets. 

rpkm <- read.csv("/Users/ashkumar/OneDrive - University of Helsinki/Learnings/IODS-final/laml.rnaseq.179_v1.0_gaf2.0_rpkm_matrix.txt.tcgaID1.csv", row.names = 1)

dim(rpkm)
str(rpkm)
max(rpkm)
min(rpkm)

# Let's transform RPKM values to log2 values, 

rpkm_log2 <- log2(1+rpkm)

dim(rpkm_log2)
str(rpkm_log2)
max(rpkm_log2)
min(rpkm_log2)

# Now we have RNA-seq expression data of 19964 genes from 177 acute myeloid leukema patient samples, we will use this data for further analysis.
# let's write the log2 RPKM file for further analysis

write.csv(rpkm_log2, "/Users/ashkumar/OneDrive - University of Helsinki/Learnings/IODS-final/log2_rpkm_TCGA_aml.csv")
