#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<ctype.h>
#include<sys/wait.h>

int descriptor1[2];
int descriptor2[2];

int n;

void child_1(){
printf("\n\n");

while(read(descriptor1[0],&n,sizeof(int)) > 0){
 printf("Print Number Of Parent From Child %d\n",n);
 n= 2*n;
 write(descriptor2[1],&n,sizeof(int));
}

close(descriptor1[0]);
close(descriptor2[1]);

exit(0);

}

void write_int(){

 for(int i = 0 ; i<5;i++){
  printf("\nInput Number From Parent ");
  scanf("%d",&n);
  write(descriptor1[1],&n,sizeof(int));
}

 close(descriptor1[1]);
}

void read_int() {
 close(descriptor2[1]);
 printf("\n\n");
while(read(descriptor2[0],&n,sizeof(int)) > 0){
 printf("Print Number Of Child From Parent %d\n",n);
 }

 close(descriptor2[0]);
}

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
