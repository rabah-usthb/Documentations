#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<ctype.h>
#include<sys/wait.h>

 
int descriptor[2];

void child_1();

void child_2();


int main () {

 if (pipe(descriptor) == -1){
     printf("Error Pipe Creation Failed");
     exit(-1);
 }
  
 pid_t pid1;

 pid1 = fork();
 
 if(pid1 == -1){
     printf("Error Child 1 Processus Creation Failed");
     exit(-1);
  }

 else if(pid1==0){
 child_1();
 }

 else {
 
wait(NULL);

close(descriptor[1]);
 pid_t pid2;
 
 pid2 = fork();

 if(pid2 == -1){
   printf("Error Child 2 Processus Creation Failed");
   exit(-1);
 }

 else if (pid2==0){
  child_2();
 }

 else {
  wait(NULL);
  close(descriptor[0]);
  printf("\nEND EX1\n");
 }

 }

 return 0;
}
