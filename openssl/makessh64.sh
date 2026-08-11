cd openssl-4.0.1
perl Configure mingw64 no-docs no-module no-shared no-tests
mkdir -p /c/devprg/openssl464
export CC="ccache gcc"
export CXX="ccache g++"
./configure --prefix=/c/devprg/openssl464 --openssldir=/c/devprg/openssl464
make
make install
