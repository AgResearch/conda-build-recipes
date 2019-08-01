# Build mstools
cd MSToolkit
make CC=$CXX GCC=$CC
#mkdir -p $PREFIX/include
#mkdir -p $PREFIX/lib
#cp -r include/* $PREFIX/include
#cp lib* $PREFIX/lib
#cp msSingle* $PREFIX/lib
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