# GeneidToNameFromGtf

R script for extracting gene ids and names from gtf file to csv
---
## How to use

You can run this script in R in order to produce .csv file of your gene ids/names from your .gtf file.
You can use this file in [nasqar/GeneCountMerger](https://github.com/nasqar/GeneCountMerger) [nasqar.abudhabi.nyu.edu/GeneCountMerger](nasqar.abudhabi.nyu.edu/GeneCountMerger) if you genome/version is not listed there.

Make sure to change the file paths in the script.

`# input gtf file path`

`gtfFilePath = "Drosophila_melanogaster.BDGP6.81.gtf"`

`# output .csv file path. This file can be used with nasqar/GeneCountMerger to rename genes in counts file`
`csvOutputFilePath = "drosoph.csv"`

run as follows from the directory of the script:

`source("GeneidToNameFromGtf.R")`
