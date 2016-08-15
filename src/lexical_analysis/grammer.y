%{
#include <stdio.h>
void yyerror(char *);
int yylex(void);
%}
%union { int num; char *string;};
%token <num> number
%token integer
%token <string> identifier
%start program
%left '+' '-'
%left '*' '/'
%type <num> program statement expression

%%
program:
        program statement '\n'
        | program '\n'
        | /* NULL */
        ;

statement:
        expression                      { printf("%d\n", $1); }
        | integer {printf("YACC: int\n");}
        ;

expression:
        number
        | expression '+' expression     { $$ = $1 + $3; }
        | expression '-' expression     { $$ = $1 - $3; }
        | expression '*' expression     { $$ = $1 * $3; }
        | expression '/' expression     { $$ = $1 / $3; }
        | '(' expression ')'            { $$ = $2; }
