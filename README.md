# astrometry.net-lite

Just a script to download and install just the bare minimum of [astrometry.net](http://astrometry.net/use.html). The neat thing is that you don't need to use python2, which is great if your code calls astrometry.net in a python3 script.

*Note it requires that you give astrometry.net a binary fits file of the star locations. You won't be able to find stars using the built-in astrometry.net search tool.

## Getting Started

Building and installation of the required astrometry.net binaries is decribed below. Once these are installed, from python3 you can run the following command, for example:

`solve-field --overwrite --uniformize 0 --no-remove-lines --no-plots --config [/path/to/astrometry.cfg]  -o [basefilename] -X X -Y Y --sort-column FLUX --width 3352 --height 2532 [basefilename].xyls`

where `[basefilename]` is just the base name for the input binary fits file (described [here](http://astrometry.net/doc/build-index.html#prepare-fits)) and the basename for all the output files. Also [/path/to/astrometry.cfg] points to where you'd like a default config file for running solve-field.

### Prerequisites

You might need to install stuff described [here](http://astrometry.net/doc/build.html#mac-os-x-using-homebrew). But go ahead and try running it first to see if anything fails during compilation.

Download some astronomy.net index files for wide-field images [here](http://broiler.astrometry.net/~dstn/4100/). Or for all angular sizes [here](http://broiler.astrometry.net/~dstn/4200/).

### Installing

You should just be able to run the following on your command-line:

```
git clone https://github.com/lspitler/astrometry.net-lite.git
cd astrometry.net-lite
bash install.bash /path/to/binaries /path/to/astrometry.cfg/folder
```

Replace `/path/to/binaries` with where you want the executable files to live.


## Acknowledgments

* The astrometry.net team.
