#include <stdio.h>
#include "y.tab.h"
extern int yylex();
extern int yylineno;
extern char* yytext;

char *names[] = {NULL, "NUMBER", "INTEGER", "IDENTIFIER"};

int main()
{
  int ntoken, vtoken;

  ntoken = yylex();
  while(ntoken)
  {
    printf("%i \n", ntoken);
    ntoken = yylex();
  }
  return 0;
}
