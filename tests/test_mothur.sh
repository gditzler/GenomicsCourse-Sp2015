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
module load proteus-openmpi/gcc/64/1.8.1-mlnx-ofed
module load mothur/gcc/1.25.0-mpi

echo "Mothur loaded"
