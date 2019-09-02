# Compile Scaff10X
cd src
make CC=$CC AR=$AR CFLAGS="-O2 -std=c11 -march=x86-64 -mtune=generic -I${BUILD_PREFIX}/include" LFLAGS="-L${BUILD_PREFIX}/lib -lm -pthread -lz"

# Copy Scaff10X's binaries to a sub directory in $PREFIX/bin
mkdir -p $PREFIX/bin/Scaff10X

cp break10x $PREFIX/bin/Scaff10X/
cp scaff10x $PREFIX/bin/Scaff10X/
cp scaff_reads $PREFIX/bin/Scaff10X/
cp -r scaff-bin/ $PREFIX/bin/Scaff10X/

# Create custom lanuch script, so scaff10x and break10x do not be called bia its full path
cat > $PREFIX/bin/scaff10x<< "EOF"
#!/bin/bash
DIRECTORY=$(cd `dirname $0` && pwd)
$DIRECTORY/Scaff10X/scaff10x "$@"
EOF

cat > $PREFIX/bin/break10x<< "EOF2"
#!/bin/bash
DIRECTORY=$(cd `dirname $0` && pwd)
$DIRECTORY/Scaff10X/break10x "$@"
EOF2

chmod +x $PREFIX/bin/scaff10x
chmod +x $PREFIX/bin/break10x