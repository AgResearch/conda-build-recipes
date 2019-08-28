cd src
make CC=$CC AR=$AR CFLAGS="-O2 -std=c11 -march=x86-64 -mtune=generic -I${BUILD_PREFIX}/include" LFLAGS="-L${BUILD_PREFIX}/lib -lm -pthread -lz"

mkdir -p $PREFIX/bin
mkdir -p $PREFIX/etc
cp break10x $PREFIX/bin/
cp scaff10x $PREFIX/bin/
cp scaff_reads $PREFIX/bin/
cp -r scaff-bin/ $PREFIX/bin/