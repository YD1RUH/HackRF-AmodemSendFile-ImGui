# Install GNUradio 3.10 instead your GNUradio default version
refference : [link](https://wiki.gnuradio.org/index.php?title=CondaInstall)
if you need install GNUradio 3.10 instead your version and not break your environtment, Please follow this step

## Install conda and create gnuradio environtment
1. download conda installation file: [link](https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh)
2. run the conda installation Script using command \
   `bash Miniforge3-Linux-x86_64.sh`
4. after finished run the installation conda, create gnuradio environtment using command \
   `conda create -n gnuradio`
6. next, run the terminal as gnuradio environtment using comand \
   `conda activate gnuradio`
8. makesure there is no error with your gnuradio environtment by running this command \
   `conda config --env --add channels conda-forge`\
   and \
   `conda config --env --set channel_priority strict`

## Install gnuradio
1. install gnuradio on your conda gnuradio environtment using command \
   `conda install gnuradio python=3.10`
3. upgrade every module on gnuradio to newest module \
   `conda upgrade --all`
5. after finished upgrade module, now we can run gnuradio3.10 by command \
   `conda activate gnuradio` and `gnuradio-companion`

## Install optional module on gnuradio
here's the optional module list:
- gnuradio-iridium
- gnuradio-osmosdr
- gnuradio-satellites
- gqrx
- limesuite
- rtl-sdr
- soapysdr-module-airspy
- soapysdr-module-airspyhf
- soapysdr-module-hackrf
- soapysdr-module-lms7
- soapysdr-module-plutosdr
- soapysdr-module-remote
- soapysdr-module-rtlsdr
- soapysdr-module-uhd
- uhd
- volk
To install the module, just run: \
`conda install [you desire gnuradio module]` \
example: \
`conda install gnuradio-osmosdr`.

**Remember**, before you install module, you must on **gnuradio environtment**

## Install OOT module or build from source
1. activate conda gnuradio environtment \
   `conda activate gnuradio`
3. install packaging tools on gnuradio environtment \
   `conda install gnuradio-build-deps`
5. then, if you want to install OOT module just download the source and extract then run: \
   `cd [the source you've extract]`\
   `mkdir build`\
   `cd build`\
   `cmake ..`\
   `make`\
   `make test`\
   `sudo make install`\
   `sudo ldconfig`
6. now run the `gnuradio-companion`
7. your build OOT module ready to use

**Remember**, before you install OOT module, you must on **gnuradio environtment**
