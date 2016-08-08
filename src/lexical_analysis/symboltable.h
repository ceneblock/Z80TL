#ifndef _Z80TL
#define _Z80TL
struct Z80TL_symboltable{
  char *identifier;
  int   value;
  int   scope;
  struct Z80_symboltable *next;

/*  
  Z80TL_symboltable()
  {
    identifier = NULL;
    value = 0;
    scope = 0;
    next = NULL
  };
*/
};
#endif
