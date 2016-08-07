%{
#include<stdio.h>
#include "scanner_rules.h"
%}

NUMBER [0-9]+
INTEGER int
IDENTIFIER [a-zA-Z][a-zA-Z0-9]*
%%
{NUMBER}+ { 
           return NUMBER;
          }
{INTEGER}+ { 
            return INTEGER;
          }
{IDENTIFIER}+ {
           return IDENTIFIER;
          }

.           ;
%%
int yywrap()
{
  return 1;
}
