#include <stdio.h>
#include <time.h>

int main () {

clock_t start_time = clock();

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

clock_t end_time = clock();

double execution_time = (double) (end_time - start_time)/CLOCKS_PER_SEC;

printf("Execution Time %f seconds\n",execution_time);

return 0;

}
