%{
#include<stdio.h>
#include<stdlib.h>
%}
%token A B
%%
Str:S'\n'{return 0;}
S: A S B;
| ;
%%
int main()
{
printf("Type the input String\n");
if(!yyparse())
printf("Valid Stirng\n");
return 0;
}
int yyerror()
{
printf("Invalid String\n");
exit(0);
}
