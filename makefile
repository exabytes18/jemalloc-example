all:
	cd deps/jemalloc && ./autogen.sh
	cd deps/jemalloc && ./configure --enable-cc-silence --with-jemalloc-prefix="je_"
	cd deps/jemalloc && make
	$(CC) -Ideps/jemalloc/include deps/jemalloc/lib/libjemalloc.a main.c -o main
