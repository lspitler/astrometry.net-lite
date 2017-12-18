# astrometry.net-lite

Just a script to download and install just the bare minimum of [astrometry.net](http://astrometry.net/use.html).

**Note it requires that you give astrometry.net a binary fits file of the star locations. You won't be able to find stars using the built-in astrometry.net search tool.**

## Getting Started

Building and installation of the required astrometry.net binaries is decribed below. Once these are installed, from python you can run the following command, for example:

`solve-field --overwrite --uniformize 0 --no-remove-lines --no-plots -o [basefilename] -X X -Y Y --sort-column FLUX --width 3352 --height 2532 [basefilename].xyls`

where `[basefilename]` is just the base name for the input binary fits file (described [here](http://astrometry.net/doc/build-index.html#prepare-fits)) and the basename for all the output files.

### Prerequisites

You'll need to install the following packages on a relatively fresh install (here shown for OSX homebrew):
```
brew install pkg-config
brew install md5sha1sum
brew install cfitsio
```

You might need to install stuff described [here](http://astrometry.net/doc/build.html#mac-os-x-using-homebrew). But go ahead and try running it first to see if anything fails during compilation.

Download some astronomy.net index files for wide-field images [here](http://broiler.astrometry.net/~dstn/4100/). Or for all angular sizes [here](http://broiler.astrometry.net/~dstn/4200/).

### Installing

You should just be able to run the following on your command-line:

```
git clone https://github.com/lspitler/astrometry.net-no-python.git
cd astrometry.net-no-python
bash install.bash /path/to/binaries /path/to/astrometry.net/index/files
```

Replace `/path/to/binaries` with where you want the executable (and astrometry.cfg) files to live and replace `/path/to/astrometry.net/index/files` with path where the astrometry.net index files are located.


## Acknowledgments

* The astrometry.net team.
