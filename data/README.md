# Yeast and osmotic stress (HOG) pathway data files

SGD_features.tab: yeast genome annotations, including a mapping from systematic
(ORF) ids to gene symbols.  Downloaded on August 2, 2016 from
http://www.yeastgenome.org/download-data/sequence  Based on based on Genome
Version R64-2-1.

## sources
Source proteins (receptors) in the pathway:
- osmotic-sources-sdrem.txt: the five sources used in the SDREM paper
http://genome.cshlp.org/content/23/2/365.abstract
- osmotic-sources-kegg.txt: source proteins from KEGG
http://www.genome.jp/kegg-bin/show_pathway?sce04011
- osmotic-sources-kegg-sdrem.txt: the union of the sources from the above
two references

## evaluation
HOG pathway references and osmotic stress screens used in the SDREM evaluation.
Many of these are stale and need to be updated:
- goldStandard: these files are a summary of multiple reference pathway
databases and HOG pathway reviews
- Hillenmeyer: an osmotic stress chemical screen
- SGD osmotic stress.txt: genes from the SGD database annotated with
osmotic stress-related screening phenotypes
- Kitano2016_data.xls: from http://www.nature.com/articles/npjsba201518
- Kitano2016_Genes.txt: created from Kitano2016_data.xls by
a notebook in this repository
- Kitano2016_ORFs.txt: created from Kitano2016_data.xls by
a notebook in this repository

There are also yeast kinase target validation datasets from Matthew Macgilvray:
- Kanshin_Cdc28_Targets_TG.xlsx
- Holt_Cdc28_Targets_TG.xlsx
- TableS2_Romanov.xlsx
His description of these files is:
> I've attached 3 documents to this email; two lists of Cdc28 likely targets - one from Kanshin et al and one from Holt et al, and the Rck2 table from Romanov, with important columns highlighted in green. I couldn't find the Rck2 target file I produced for the life of me, sorry about that. 
In regards to Rck2, Here is the workflow I used to identify Rck2 targets in the past. 
1) The first green column (to the left) contains peptides that are responding to salt in the WT at 5 minutes compared to the WT untreated. I filtered this column to retain only peptides with at least a 2-fold increase. 
2) The second column highlighted in green (to the right of the file) contains peptides that are defective in the Rck2 mutant 5 minutes after salt compared to the WT 5 minutes after salt. I subtracted the values in this column from the filtered values from step (1). I only retained peptides that had at least a 2-fold change in the WT responding to salt, and a 1.5-fold defect in the rck2 mutant. The reason I didn't simply use this second column for my overall analysis is that it doesn't capture the untreated condition; in other words, we could have peptides with defective phosphorylation in rck2 compared to WT 5 minutes after salt due to the absence of rck2 alone. 
3) Some of the Rck2 target peptides are di- or tri-phosphorylated. After identifying them as targets, I split the peptides to be mono-phosphorylated so I could match them to your phospho-sites. 
