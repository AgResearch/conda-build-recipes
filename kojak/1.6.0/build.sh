# Build mstools
cd MSToolkit
make CC=$CXX GCC=$CC
cd ..

# Build hardlor
cd Hardklor
make C=$CC CC=$CXX
cd ..

# Build kojak
cd kojak
make C=$CC CC=$CXX
mkdir -p $PREFIX/bin
cp kojak $PREFIX/bin/