#include <stdlib.h>
#include <jemalloc/jemalloc.h>

int main() {
	void * ptr = je_malloc(2*1024*1024);

	je_malloc_stats_print(NULL,NULL,NULL);

	je_free(ptr);

	return EXIT_SUCCESS;
}
