%{
#include<stdio.h>
#include<stdlib.h>
%}
%token L D 
%%
var: L E {printf("Valid Variable\n"); return 0 ;}
E:E L;
|E D ;
|;
%%

int main()
{
printf("type variable\n");
yyparse();
return 0 ;
}
int yyerror()
{
printf("invalid");
exit(0);
}
