import sys, os, csv
#sys.path.append(os.path.join('..','scripts'))
import SummarizeSif

#resultsDir = os.path.join('..','..', 'results')
#prizeFile = os.path.join('..','..','data','prizes','101515','combined','maxProteinScores2KM_tfPrizes.txt')

#resultsDir = r'/mnt/ws/home/dcronin/'
USERPATH = r'/mnt/ws/home/dcronin/'
NOTEBOOK = r'osmotic-stress/Notebooks/'
prizeFile = USERPATH + NOTEBOOK + 'PrizesNotebook/prizes.txt'
#prizeFile = r'/mnt/ws/home/dcronin/osmotic-stress/Notebooks/PrizesNotebook/prizes.txt'

indir = r'/mnt/ws/home/dcronin/PCSF-06_30_17/'#os.path.join(resultsDir, '122815')
runname = 'prizes'
pattern = runname + '*optimalForest.sif'
outfile = r'./' #os.path.join(indir, runname + '_ForestSummary')

args = ['--indir', indir, '--pattern', pattern, '--prizefile', prizeFile, '--outfile', outfile, '--hubnode', 'UBC']
SummarizeSif.main(args)

with open(outfile + '_size.txt') as sizeFile:
    reader = csv.DictReader(sizeFile, delimiter = '\t')
    sizeContents = list(reader)
