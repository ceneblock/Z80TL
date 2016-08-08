%{
#include "y.tab.h"
%}

NUMBER [0-9]+
INTEGER int
IDENTIFIER [a-zA-Z][a-zA-Z0-9_]*
RBRACE "{"
LBRACE "}"
COLON  ":"
ASSIGNMENT [=]
DOUBLEASSIGNMENT "=="+[ASSIGNMENT][DOUBLEASSIGNMENT]*
BINARYOP   ["+""\-""/""*"] 
NEWLINE    \n
%%
{NUMBER}+           return number;
{INTEGER}           return integer;
{IDENTIFIER}        return identifier;
{RBRACE}            return rbrace;
{LBRACE}            return lbrace;
{COLON}             return colon;
{DOUBLEASSIGNMENT}+ printf("Error!\n");
{BINARYOP}          return yytext[0];
{NEWLINE}+          return '\n';
.                 ;
%%
int yywrap()
{
  return 1;
}
