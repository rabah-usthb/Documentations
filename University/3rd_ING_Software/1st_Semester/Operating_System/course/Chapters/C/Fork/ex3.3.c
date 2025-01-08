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
