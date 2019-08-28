./autogen.sh
#./configure --with-boost=${CONDA_PREFIX}/include --prefix=${CONDA_PREFIX} CXXFLAGS="-Wall -Wextra -Werror -std=c++0x -Wno-unused-result" LDFLAGS="-L$CONDA_PREFIX/lib"
./configure --with-boost=${BUILD_PREFIX}/include --prefix=${PREFIX} CXXFLAGS="-Wall -Wextra -Werror -std=c++0x -Wno-unused-result" LDFLAGS="-L$BUILD_PREFIX/lib"
make install AR=$AR

cp -r ./Examples $PREFIX/