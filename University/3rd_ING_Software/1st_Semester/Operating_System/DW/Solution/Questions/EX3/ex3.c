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

    sem_t *semaphoreA =sem_open("/semaphoreA", O_CREAT, 0644, 1);

    sem_t *semaphoreB =sem_open("/semaphoreB", O_CREAT, 0644, 1);

    if (semaphoreA == SEM_FAILED) {
        printf("Failed to create semaphoreA");
        exit(-1);
    }

    
    if (semaphoreB == SEM_FAILED) {
        printf("Failed to create semaphoreB");
        exit(-1);
    }

    pid_t pid = fork();

    if (pid == -1) {
        printf("Failed to create TrainB child\n");
        exit(-1);
    } else if (pid == 0) {
        printf("TrainB\n"); 

        while (1) {
            sleep(getRandom());
            
            printf("TrainB Ask To Go To A\n");
            sem_wait(semaphoreA);
            
            printf("TrainB Going To A\n");
            sleep(5);
            printf("TrainB Arrived To A\n");

            sem_post(semaphoreA);


            printf("TrainB Ask To Go To B\n");
            sem_wait(semaphoreB);

            printf("TrainB Going To B\n");
            sleep(5);
            printf("TrainB Arrived To B\n");

            sem_post(semaphoreB);

            }
            
                    
    } else {
        printf("TrainA\n");

        while (1) {
            sleep(getRandom());

            printf("TrainA Ask To Go To B\n");
            sem_wait(semaphoreB);
            
            printf("TrainA Going To B\n");
            
            sleep(5);

            printf("TrainA Arrived To B\n");
            
            sem_post(semaphoreB);


            
            printf("TrainA Ask To Go To A\n");
            sem_wait(semaphoreA);
            
            printf("TrainA Going To A\n");
            
            sleep(5);

            printf("TrainA Arrived To A\n");

            sem_post(semaphoreA);



            }
        }

  

    return 0;
}

