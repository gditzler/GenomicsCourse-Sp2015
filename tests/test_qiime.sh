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

# load qiime  
[gcd34@proteusi01 tests]$ module load qiime/gcc/64/1.8.0
[gcd34@proteusi01 tests]$ print_qiime_config.py 

# do something
print_qiime_config.py

echo "Finished printing out the QIIME config"
