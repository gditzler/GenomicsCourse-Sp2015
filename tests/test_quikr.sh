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

# you need to source the bashrc file. note that is file in on the courses github
# page. you will need to modify the source path accordingly. 
source ${HOME}/Git/GenomicsCourse-Sp2015/bashrc

quikr -h

echo "Finished printing out Quikr help."
