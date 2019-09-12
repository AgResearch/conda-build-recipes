./autogen.sh
./configure --with-boost=${BUILD_PREFIX}/include --prefix=${PREFIX} CXXFLAGS="-Wall -Wextra -Werror -std=c++0x -Wno-unused-result" LDFLAGS="-L$BUILD_PREFIX/lib"
make install AR=$AR

cp -r ./Examples $PREFIX/

cat > $PREFIX/bin/arks-make<< "EOF"
#!/bin/bash
DIRECTORY=$(cd `dirname $0` && pwd)
make -f $DIRECTORY/../Examples/arks-make "$@"
EOF