./configure --prefix=${PREFIX} \
            --enable-static=yes \
            --enable-shared=yes \
|| { cat config.log; exit 1; }

make
make check
make install
