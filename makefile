all:
	cd deps/jemalloc && ./autogen.sh
	cd deps/jemalloc && ./configure --enable-cc-silence --with-jemalloc-prefix=""
	cd deps/jemalloc && make
	$(CC) -Ideps/jemalloc/include main.c deps/jemalloc/lib/libjemalloc.a -lpthread -o main
