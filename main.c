#include <stdlib.h>

int main() {
	void * ptr = malloc(1024*1024);
	free(ptr);

	return EXIT_SUCCESS;
}
