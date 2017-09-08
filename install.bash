

if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
    echo "Arg 1: give full path of folder where you store binary executables (e.g. /usr/local/bin )"
    echo "Arg 2: give full path of folder where you store astrometry.net index files"
    echo "exiting"
    exit 1
fi

echo "About to install the required binaries (and config file) in this folder: $1 .  And sets up your astrometry.cfg file so that it points to where your astrometry.net index files are located: $2"

echo "add_path $2" >> astrometry.cfg

cp astrometry.cfg $1

cd /tmp

git clone https://github.com/dstndstn/astrometry.net.git 

cd astrometry.net
make reconfig

cd catalogs
make libcatalogs.a

cd ../blind
make astrometry-engine
make solve-field

cp astrometry-engine $1
cp solve-field $1

echo
echo
echo "Astrometry.net-no-python installation all DONE!"
echo
echo "If anything fails, make sure supporting libraries are installed here:"
echo "http://astrometry.net/doc/build.html#mac-os-x-using-homebrew"
echo
echo

