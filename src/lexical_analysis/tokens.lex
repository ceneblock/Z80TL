%{
#include "y.tab.h"
#include <stdio.h>
#include <string.h>
%}

NUMBER [0-9]+
BINARYOP   [+-/*\n]
INTEGER int
IDENTIFIER [a-zA-z_][a-zA-Z_0-9]*
%%
{NUMBER}+           { 
                      yylval.num = atoi(yytext);
                      printf("Lex: %i\n", yylval.num);
                      return number;
                    }
{BINARYOP}          {
                      //yylval = atoi(yytext);
                      printf("Lex: %c\n", yytext[0]);
                      return *yytext;
                    }
{INTEGER}           {
                      return integer;
                    }
{IDENTIFIER}        {
                      yylval.string = yytext;
                      return identifier;
                    }
.                 ;
%%
int yywrap()
{
  return 1;
}

void yyerror(char *string)
{
  printf("Error: %s\n", string);
}
