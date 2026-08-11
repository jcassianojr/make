cd openssl-4.0.1
perl Configure mingw64 no-docs no-module no-shared no-tests
mkdir -p /c/devprg/openssl432
export CC="ccache gcc"
export CXX="ccache g++"
./configure --prefix=/c/devprg/openssl432 --openssldir=/c/devprg/openssl432
make
make install
