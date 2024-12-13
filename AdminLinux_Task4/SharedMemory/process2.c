#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <string.h>

#define SHM_NAME "/shared_buffer"
#define SHM_SIZE 1024

int main() {
    // Open shared memory object
    int shm_fd = shm_open(SHM_NAME, O_RDONLY, 0666);
    if (shm_fd == -1) {
        perror("shm_open");
        return 1;
    }

    // Map shared memory
    void *shared_memory = mmap(NULL, SHM_SIZE, PROT_READ, MAP_SHARED, shm_fd, 0);
    if (shared_memory == MAP_FAILED) {
        perror("mmap");
        return 1;
    }

    // Read from shared memory
    printf("Process 2: Read from shared memory: %s\n", (char *)shared_memory);

    // Cleanup
    munmap(shared_memory, SHM_SIZE);
    close(shm_fd);

    return 0;
}
