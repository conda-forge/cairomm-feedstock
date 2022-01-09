# Get an updated config.sub and config.guess
cp ${BUILD_PREFIX}/share/gnuconfig/config.* build

./configure --prefix=${PREFIX} \
            --enable-static=yes \
            --enable-shared=yes \
|| { cat config.log; exit 1; }

make
make check
make install
