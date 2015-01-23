#!/bin/bash -l
#$ -cwd 
#$ -q all.q
#$ -j y
#$ -M gcd34@drexel.edu
#$ -P rosenPrj
#$ -S /bin/bash
 
# boiler plate module loading
. /etc/profile.d/modules.sh
module load shared 
module load proteus 
module load sge/univa

# load biopython 
module load python/2.7.8

# test 
python -c "import Bio"

echo "Finished without errors"
