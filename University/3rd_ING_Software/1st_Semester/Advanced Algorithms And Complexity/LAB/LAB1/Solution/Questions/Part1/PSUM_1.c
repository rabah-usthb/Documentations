#include <stdio.h>


int main () {

long N;
long sum = 0;
int index = 1;

printf("Input Integer N >= 1 : ");
scanf("%ld",&N);

while(index<=N){
sum = sum +index;
++index;
}

printf("Sum is %ld\n",sum);

return 0;

}


