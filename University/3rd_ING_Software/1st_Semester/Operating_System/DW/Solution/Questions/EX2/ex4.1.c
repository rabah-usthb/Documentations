#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/wait.h>

int descriptor1[2];
int descriptor2[2];

int n;

void child_1();


void write_int();

void read_int();


int main(){

if(pipe(descriptor1) == -1){
 printf("Failed To Create Pipe 1");
 exit(-1);
}

if(pipe(descriptor2) == -1){
 printf("Failed To Create Pipe 2");
 exit(-1);
}

write_int();

pid_t pid;
pid = fork();

if(pid == -1){
 printf("Failed To Create Child 1");
 exit(-1);
}

else if (pid == 0){
child_1();
}

else{
wait(NULL);
read_int();
}

return 0;
}
