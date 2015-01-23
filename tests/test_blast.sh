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

# load blast 
module load ncbi-blast/gcc/64/2.2.29

# test 
blastp -h

blastn -h

echo "Blast test done"
