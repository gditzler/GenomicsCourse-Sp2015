# NSF TUES Project -- BASH CONFIGURATION FILE
#
# Written by: Gregory Ditzler (gregory.ditzler@gmail.com) 

# course specific paths for convienence 
export tues=/mnt/HA/groups/nsftuesGrp/

# setup the extras in the python path 
export PYTHONPATH=${tues}/.local/lib/python2.7/site-packages/:${PYTHONPATH}

# add out local bin path and qiime externals
export PATH=${tues}/.local/bin:${PATH}
export PATH=${tues}/.local/bin/FastQC:${PATH}

# export LD_LIBRARY_PATH=/mnt/HA/opt/python/2.7.7/lib/:$LD_LIBRARY_PATH
# export LD_LIBRARY_PATH=$tues/.local/lib/:$LD_LIBRARY_PATH

# setting up the r-paths
export R_LIBRARY_PATH=${tues}/.local/R/x86_64-redhat-linux-gnu-library/3.1/optparse/:${R_LIBRARY_PATH}
export R_LIBRARY_PATH=${tues}/.local/R/x86_64-redhat-linux-gnu-library/3.1/getopt/:${R_LIBRARY_PATH}
export R_LIBRARY_PATH=${tues}/.local/R/x86_64-redhat-linux-gnu-library/3.1/lattice:${R_LIBRARY_PATH}
export R_LIBRARY_PATH=${tues}/.local/R/x86_64-redhat-linux-gnu-library/3.1/permute/:${R_LIBRARY_PATH}
export R_LIBRARY_PATH=${tues}/.local/R/x86_64-redhat-linux-gnu-library/3.1/vegan:${R_LIBRARY_PATH}
export R_LIBRARY_PATH=${tues}/.local/R/x86_64-redhat-linux-gnu-library/3.1/ShotgunFunctionalizeR:${R_LIBRARY_PATH}

