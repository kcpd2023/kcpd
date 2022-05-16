%{
#include<stdio.h>
int count=0,ch=0,wd=0,sp=0,ln=0;
%}
digit [0-9]
letter [a-zA-Z_]
%%
{letter}({letter}|{digit})* {count++;}
.+ {;}
\n {;}
%%
int main()
{
yyin=fopen("ab.txt","r");
yylex();
printf("count=%d\n",count);
return 0;
}
int yywrap()
{
return 1;
}
