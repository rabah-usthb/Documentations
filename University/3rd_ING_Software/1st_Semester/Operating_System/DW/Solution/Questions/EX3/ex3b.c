#include <stdio.h>
#include <stdlib.h>
#include <semaphore.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>

int value1 = 1;
int value2 = 5;

int getRandom() {
    return rand() % (value2 - value1 + 1) + value1;
}

int main() {
    // Initialize semaphores for Track A and Track B (initially available)
    sem_t *semaphoreA = sem_open("/semaphoreA", O_CREAT, 0644, 1);
    sem_t *semaphoreB = sem_open("/semaphoreB", O_CREAT, 0644, 1);

    if (semaphoreA == SEM_FAILED || semaphoreB == SEM_FAILED) {
        printf("Failed to create semaphore\n");
        exit(-1);
    }

    pid_t pid = fork();

    if (pid == -1) {
        printf("Failed to create TrainB child\n");
        exit(-1);
    } else if (pid == 0) { // Child (TrainB)
        printf("TrainB\n");
        fflush(stdout);

        while (1) {
            sleep(getRandom());

            // TrainB wants to go from B to A (block TrainA going to B)
            printf("TrainB Ask To Go To A\n");
            sem_wait(semaphoreA);  // Lock Track A (for B to A)
            
            // Both trains can be on the same track if they are going in the same direction
            printf("TrainB Going To A\n");
            sleep(10);
            printf("TrainB Arrived To A\n");

            sem_post(semaphoreA);  // Release Track A (for TrainA to use)
        }

    } else { // Parent (TrainA)
        printf("TrainA\n");

        while (1) {
            sleep(getRandom());

            // TrainA wants to go from A to B (block TrainB going to A)
            printf("TrainA Ask To Go To B\n");
            sem_wait(semaphoreB);  // Lock Track B (for A to B)
            
            // Both trains can be on the same track if they are going in the same direction
            printf("TrainA Going To B\n");
            sleep(5);
            printf("TrainA Arrived To B\n");

            sem_post(semaphoreB);  // Release Track B (for TrainB to use)
        }
    }

    return 0;
}
