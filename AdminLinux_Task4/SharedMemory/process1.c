#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <string.h>

#define SHM_NAME "/shared_buffer"
#define SHM_SIZE 1024

int main() {
    // Create shared memory object
    int shm_fd = shm_open(SHM_NAME, O_CREAT | O_RDWR, 0666);
    if (shm_fd == -1) {
        perror("shm_open");
        return 1;
    }

    // Set size of shared memory
    if (ftruncate(shm_fd, SHM_SIZE) == -1) {
        perror("ftruncate");
        return 1;
    }

    // Map shared memory
    void *shared_memory = mmap(NULL, SHM_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, shm_fd, 0);
    if (shared_memory == MAP_FAILED) {
        perror("mmap");
        return 1;
    }

    // Read message from user input
    printf("Enter a message to write to shared memory: ");
    char message[SHM_SIZE];
    if (fgets(message, sizeof(message), stdin) == NULL) {
        perror("fgets");
        return 1;
    }

    // Write the message to shared memory
    strncpy((char *)shared_memory, message, SHM_SIZE - 1);
    ((char *)shared_memory)[SHM_SIZE - 1] = '\0'; // Ensure null-termination

    printf("Process 1: Written to shared memory: %s\n", message);


    return 0;
}
