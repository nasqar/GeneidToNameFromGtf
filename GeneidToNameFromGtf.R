# install packages refGenome and dplyr

if(require("refGenome"))
{
  install.packages("refGenome", repos = "https://CRAN.R-project.org/")
}

if(require("dplyr"))
{
  install.packages("dplyr", repos = "https://CRAN.R-project.org/")
}

library(refGenome)
library(dplyr)

# input gtf file path
gtfFilePath = "Drosophila_melanogaster.BDGP6.81.gtf"

# output .csv file path. This file can be used with nasqar/GeneCountMerger to rename genes in counts file
csvOutputFilePath = "drosoph.csv"

# create ensemblGenome object for storing Ensembl genomic annotation data
ens <- ensemblGenome()

# read GTF file into ensemblGenome object
read.gtf(ens, gtfFilePath)

my_gene <- getGenePositions(ens)

# extract gene ids and names
geneid2name = my_gene %>% select(gene_id,gene_name)

write.csv(geneid2name, file = csvOutputFilePath, row.names = F)
