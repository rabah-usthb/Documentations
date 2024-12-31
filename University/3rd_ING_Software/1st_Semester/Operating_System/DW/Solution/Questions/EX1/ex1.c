#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<ctype.h>
#include<sys/wait.h>

 
int descriptor[2];

void child_1() {

 close(descriptor[0]);

 char car;

 printf("Input Char In CHILD 1\n");

 while ((car = getchar()) != '0') {
 if(car>='a' && car<='z'){
  car = toupper(car);
  write(descriptor[1],&car,1);
 }

 else if (car>='A' && car <='Z'){
  write(descriptor[1],&car,1);
 }
 
 }

 close(descriptor[1]);
 exit(0);

}


void child_2() {

  printf("\nPrinting Inputed Chars From CHILD1 in CHILD2 : ");

  char car;

  while(read(descriptor[0],&car,1) > 0){
   printf("%c",car);
  }
  
  printf("\n");
 
  close(descriptor[0]);
  exit(0);
}


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
