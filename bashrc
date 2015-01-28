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
export PATH=${tues}/.local/lib/python2.7/site-packages/bin/:${PATH}
export PATH=${tues}/.local/hdf5/bin:${PATH}
export PATH=${tues}/.local/metaphlan/:${PATH}
export PATH=${tues}/.local/metaphlan/blastdb/:${PATH}
export PATH=${tues}/.local/metaphlan/bowtie2db/:${PATH}
export PATH=${tues}/.local/metaphlan/conversion_scripts/:${PATH}
export PATH=${tues}/.local/metaphlan/galaxy_module/:${PATH}
export PATH=${tues}/.local/metaphlan/plotting_scripts/:${PATH}
export PATH=${tues}/.local/metaphlan/utils/:${PATH}

# set up the extra libraries 
export LD_LIBRARY_PATH=${tues}/.local/hdf5/lib/:$LD_LIBRARY_PATH

# setting up the r-paths
export R_LIBRARY_PATH=${tues}/.local/R/x86_64-redhat-linux-gnu-library/3.1/optparse/:${R_LIBRARY_PATH}
export R_LIBRARY_PATH=${tues}/.local/R/x86_64-redhat-linux-gnu-library/3.1/getopt/:${R_LIBRARY_PATH}
export R_LIBRARY_PATH=${tues}/.local/R/x86_64-redhat-linux-gnu-library/3.1/lattice:${R_LIBRARY_PATH}
export R_LIBRARY_PATH=${tues}/.local/R/x86_64-redhat-linux-gnu-library/3.1/permute/:${R_LIBRARY_PATH}
export R_LIBRARY_PATH=${tues}/.local/R/x86_64-redhat-linux-gnu-library/3.1/vegan:${R_LIBRARY_PATH}
export R_LIBRARY_PATH=${tues}/.local/R/x86_64-redhat-linux-gnu-library/3.1/ShotgunFunctionalizeR:${R_LIBRARY_PATH}

# set up the python path for external tools (not sure how this could conflict with other paths)
export PYTHONPATH=${tues}/.local/lib/python2.7/site-packages/:${PYTHONPATH}

# hdf5 
export HDF5_DIR=${tues}/.local/hdf5/
