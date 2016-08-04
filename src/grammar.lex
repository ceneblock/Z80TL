%{
#include<stdio.h>
#include <math.h>
%}

NUMBER [0-9]+
INTEGER int
IDENTIFIER [a-zA-Z][a-zA-Z0-9]*
%%
{NUMBER}+ { 
            printf("An integer %s (%d) \n", yytext, atoi(yytext));
          }
{INTEGER}+ { 
            printf("An integer %s (%d) \n", yytext, atoi(yytext));
          }
{IDENTIFIER}+ {
            printf("An identifier %s\n", yytext);
          }

%%
main(argc, argv)
int argc;
char **argv;
{
  ++argv, --argc; /* skip over program name */
  if(argc > 0)
  {
    yyin = fopen(argv[0], "r");
    yylex();
  }
  }
