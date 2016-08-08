%{
  void yyerror(char *string);
  #include <stdio.h>
  #include <stdlib.h>
  #include <string.h>
  #include "symboltable"
  Z80TL_symboltable *table;
  void add_symbol(char *string);
  int lookup_symbol(char *string);
  void remove_symbol(char *string);
  int binary_search(char *string);
  unsigned int num_tokens = 0;
  unsigned int scope = 0;
%}
%start line
%token number
%token integer
%token identifier
%token rbrace
%token lbrace
%token colon
%token binaryop
%token newline
%%

line : assignment '\n'
     | '\n'
;

assignment : identifier '=' expression
;
term       : identifier 
           | number {$$ = $1;}
;

expression : term '+' expression '\n' {$$ = $1 + $3;}
           | term '-' expression '\n' {$$ = $1 - $3;}
           | term '\n' {$$ = $1;}
;
%%

//int binary_search(char *string)
//{
//  ///return values will be -1 for not found
//  ///and -2 for already defined
//  int index = -1;
//  int check = numtokens / 2;
//  int check_last = 0;
//  if(numtokens == 0)
//  {
//    return -1;
//  }
//  else
//  {
//    
//    while(index == -1)
//    {
//      int count = 0;
//      Z80TL_symboltable *temp = symboltable;
//      while(count != check);
//      {
//        temp = temp -> next;
//      }
//
//      if(count 
//    }
//  }
//  return index;
//}

/**
  @brief adds a symbol to the table
  @input string the name of the actual 
*/
void add_symbol(char *string)
{
  Z80TL_symboltable *new = malloc(sizeof(Z80TL_symboltable));
  new -> identifier = malloc(sizeof(char *strlen(string)));
  new -> &identifier = string;
  new -> scope = scope;

}
int lookup_symbol(char *string);
void remove_symbol(char *string);
