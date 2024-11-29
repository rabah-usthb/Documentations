#include<stdio.h>
#include<time.h>
#include<math.h>

int main() {

int i = 1;
int cmpt = 0;
int n;

clock_t start_time = clock();

printf("Input Integer N>1 : ");
scanf("%d",&n);

double limit = sqrt(n);

while (i<=limit) {
 if (n%i==0) {
   ++cmpt;
 }

 ++i;

}

if ( cmpt == 1 ) {
printf("\nprime number");
} 
else {
printf("\nNot a prime number");
}

clock_t end_time = clock();
double execution_time = (double) (end_time - start_time)/CLOCKS_PER_SEC;
printf("\nExecution Time %f seconds\n",execution_time);

return 0;
}
