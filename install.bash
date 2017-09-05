
# give full path of folder where you store binary executables (e.g. /usr/local/bin )

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    exit 1
fi

echo "About to install the required binaries in $1"

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
echo "Astrometry.net-lite installation all DONE!"
echo
echo "If anything fails, make sure supporting libraries are installed here:"
echo "http://astrometry.net/doc/build.html#mac-os-x-using-homebrew"
echo
echo

