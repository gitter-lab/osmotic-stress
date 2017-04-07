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
- Kitano2016_Genes_Proteins.txt: created from Kitano2016_data.xls by
a notebook in this repository
