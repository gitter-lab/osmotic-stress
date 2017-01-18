import sys, os, csv, glob
import SummarizeSif, KSHVUtil

resultsDir = r'Z:/NoisePCSF-080116'#os.path.join('..','..', 'results')
prizeFile = r'Z:/Yeast/prizes.txt'#os.path.join('..','..','data','prizes','101515','combined','maxProteinScores2KM_tfPrizes.txt')

indir = r'Z:/NoisePCSF-080116'#os.path.join(resultsDir, 'NoisePCSF')
runname = 'prizes'
pattern = '*optimalForest.sif'
outfile = r'Z:/NoisePCSF-080116' #os.path.join(indir, runname + '_ForestSummary')

errFiles = glob.glob(os.path.join(indir, '*.err'))
print '%d non-empty error files' % len([f for f in errFiles if os.path.getsize(f) > 0])

args = ['--indir', indir, '--pattern', pattern, '--prizefile', prizeFile, '--outfile', outfile, '--hubnode', 'UBC']
SummarizeSif.main(args)
indir = r'Z:/NoisePCSF-080116'#os.path.join(resultsDir, 'NoisePCSF')
runname = 'prizes'
pattern = '*optimalForest.sif'
outfile = r'Z:/NoisePCSF-080116' #os.path.join(indir, runname + '_ForestSummary')

errFiles = glob.glob(os.path.join(indir, '*.err'))
print '%d non-empty error files' % len([f for f in errFiles if os.path.getsize(f) > 0])

args = ['--indir', indir, '--pattern', pattern, '--prizefile', prizeFile, '--outfile', outfile, '--hubnode', 'UBC']
SummarizeSif.main(args)

with open(outfile + '_size.txt') as sizeFile:
    reader = csv.DictReader(sizeFile, delimiter = '\t')
    sizeContents = list(reader)
forestSizes = [int(row['Forest size']) for row in sizeContents]
