# GenomicsCourse-Sp2015
Collection of Course Materials

# Setting up the QIIME configuration 

```bash
cp qiime_config ~/.qiime_config 
```

# Configuring `R`

Invoke `R` at the command line. Since you do not have root access, we'll install the packages for `R` locally. Run
```bash 
[gcd34@proteusi01 ~]$ R

R version 3.1.2 (2014-10-31) -- "Pumpkin Helmet"
Copyright (C) 2014 The R Foundation for Statistical Computing
Platform: x86_64-redhat-linux-gnu (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.
```
to open the R terminal window. Then run
```
install.packages("lattice")
install.packages("permute")
install.packages("optparse")
install.packages("vegan")
```
Note that you will need to choose mirror to download the packages from.

This course will also require that you install `shotgunfunctionalizeR`; however, the current version of R on Protues does not allow you to install this from the R command line. Therefore we shall install this packge through the command line.
```
cd ~
wget http://shotgun.math.chalmers.se/ShotgunFunctionalizeR_1.2-9.tar.gz
tar -xvf ShotgunFunctionalizeR_1.2-9.tar.gz
mkdir ${HOME}/R/x86_64-redhat-linux-gnu-library/3.1/ShotgunFunctionalizeR
cd ${HOME}/ShotgunFunctionalizeR
cp -R . ${HOME}/R/x86_64-redhat-linux-gnu-library/3.1/ShotgunFunctionalizeR
cd ~
rm -Rf ${HOME}/ShotgunFunctionalizeR/
rm ShotgunFunctionalizeR_1.2-9.tar.gz
```

Then to every Protues script you write that uses R, make sure you add the following variable definition to the script. 
```
R_LIBRARY_PATH=/mnt/HA/groups/nsftuesGrp/.local/R/x86_64-redhat-linux-gnu-library/3.1/optparse/:/mnt/HA/groups/nsftuesGrp/.local/R/x86_64-redhat-linux-gnu-library/3.1/getopt/:/mnt/HA/groups/nsftuesGrp/.local/R/x86_64-redhat-linux-gnu-library/3.1/lattice:/mnt/HA/groups/nsftuesGrp/.local/R/R/x86_64-redhat-linux-gnu-library/3.1/permute/:/mnt/HA/groups/nsftuesGrp/.local/R/R/x86_64-redhat-linux-gnu-library/3.1/vegan:/mnt/HA/groups/nsftuesGrp/.local/R/R/x86_64-redhat-linux-gnu-library/3.1/ShotgunFunctionalizeR:${R_LIBRARY_PATH}
``` 

The alternative is to `source bashrc` in the Protues script. 

