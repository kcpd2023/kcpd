%{ 
  #include<stdio.h>
  int valid;
%}
%%
[a-zA-Z]*[](and|or|but|however)[][a-zA-Z]* {valid =1;}
 .|[\n];
%%
int main() {
  printf("Enter the text\n ");
  yylex();
  if(valid)
   {
   printf("\nCompound Statement\n");
  }
  else
  {
   printf("\nSimple Statement\n");
  }
  return 0;
}
