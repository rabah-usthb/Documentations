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
