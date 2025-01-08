#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<sys/wait.h>

int main() {

pid_t pid = fork();

if (pid == -1) {
printf("Error Fork Failed");
exit(-1);
}

else if(pid == 0){
printf("\nChild Process First");
exit(0);
}

else {
wait(NULL);
printf("\nThen Parent Process\n");
}

return 0;
}
