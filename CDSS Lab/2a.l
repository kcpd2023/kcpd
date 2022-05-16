%{
#include<stdio.h>
int ml=0;
int sl=0;
%}
%%
"/*"[a-zA-Z0-9' '\t\n] {ml++;}
"//".* sl++;
%%
int main()
{
yyin = fopen("aa.txt","r");
yyout = fopen("b.txt","w");
yylex();
fclose(yyin);
fclose(yyout);
printf("number of single line comments = %d\n",sl);
printf("number of multiline comments = %d\n",ml);
}

