Uses the thresholds provided from the original data to determine if proteins are significantly phosphorylated at each time point.

Input: - mmc2.xlsx - original dataset with time series
       - FC_thresholds.xlsx - originial dataset with thresholds for each time point
       - result_optimalForest.sif - no longer necessary need to refactor
Output: 
    - firstScores.tsv - first scores file comparing time point to first time point
    - prevScores.tsv - comparing this time point to previous time point
    - network.tsv - believed to be unnecessary file need to refactor code
    - timeSeries.tsv - file with the proteins and time series phosphorylation data
    - finalOptimalForest.sif - unnecessary file need to refactor
    - peptideMap.tsv - network input file with only sequences and identification