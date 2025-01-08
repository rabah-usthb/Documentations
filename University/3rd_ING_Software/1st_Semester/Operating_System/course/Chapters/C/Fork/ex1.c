#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>

int main() {

pid_t pid = fork();

if (pid == -1) {
printf("Error Fork Failed");
exit(-1);
}

else if(pid == 0){
printf("\nHey From Child Process");
exit(0);
}

else {
printf("\nHey From Parent Process");
}

return 0;
}
