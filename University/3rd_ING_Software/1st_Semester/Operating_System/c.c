#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<ctype.h>
#include<sys/wait.h>

 
int descriptor[2];
int i=5;

int main () {

pipe(descriptor);

//close(descriptor[0]);

char car = 'a';


while(i>=0){
write(descriptor[1],&car,1);
--i;
}

printf("ee");





return 0;
}
