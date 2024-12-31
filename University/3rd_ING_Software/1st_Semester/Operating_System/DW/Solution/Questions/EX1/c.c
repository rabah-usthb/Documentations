#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <ctype.h>
#include <sys/wait.h>

int descriptor[2];

void child_1() {
    pid_t pid1 = fork();
    printf("\nPID (Child 1): %d\n", pid1);
    fflush(stdout);

    if (pid1 == -1) {
        perror("Error: Child 1 creation failed");
        exit(-1);
    } else if (pid1 == 0) { // Child 1 process
        close(descriptor[0]); // Close reading end of the pipe

        char car;
        printf("Input Char In CHILD 1\n");
        fflush(stdout);

        while ((car = getchar()) != '0') {
            if (car >= 'a' && car <= 'z') {
                car = toupper(car);
                write(descriptor[1], &car, 1);
            } else if (car >= 'A' && car <= 'Z') {
                write(descriptor[1], &car, 1);
            }
        }

        close(descriptor[1]); // Close writing end of the pipe
        exit(0);
    } else {
        wait(NULL); // Wait for child 1 to finish
    }
}

void child_2() {
    pid_t pid2 = fork();
    printf("\nPID (Child 2): %d\n", pid2);
    fflush(stdout);

    if (pid2 == -1) {
        perror("Error: Child 2 creation failed");
        exit(-1);
    } else if (pid2 == 0) { // Child 2 process

        printf("\nPrinting Inputted Chars From CHILD 1 in CHILD 2: ");
        fflush(stdout);

        char car;
        while (read(descriptor[0], &car, 1) > 0) {
            printf("%c", car);
            fflush(stdout);
        }

        printf("\nEND WHILE\n");

        fflush(stdout);
        close(descriptor[0]); // Close reading end of the pipe
        exit(0);
    } else {
        wait(NULL); // Wait for child 2 to finish
    }
}

int main() {
    if (pipe(descriptor) == -1) {
        perror("Error: Pipe creation failed");
        exit(-1);
    }

    child_1();

    close(descriptor[1]); // Close writing end of the pipe
    child_2();

    close(descriptor[0]); // Close unused ends of the pipe in the parent

    printf("\nEND EX1\n");
    
    fflush(stdout);
    return 0;
}
