#ifndef _Z80TL
#define _Z80TL
typedef struct {
  char *identifier;
  int   value;
  int   scope;
  struct Z80_symboltable *next;

}Z80TL_symboltable;

Z80TL_symboltable *symboltable;

void print_table()
{
  Z80TL_symboltable *temp = symboltable -> next;
  while(temp)
  {
    printf("scope: %i identifier: %s value %i\n", temp -> scope, temp ->
        identifier, temp -> value);
    temp = temp -> next;
  }
}

void insert_entry(Z80TL_symboltable *new_entry)
{
  Z80TL_symboltable *temp = symboltable -> next;
  if(symboltable -> next == NULL)
  {
    symboltable -> next = new_entry;
  }
  else
  {
    while(temp -> next)
    {
      temp = temp -> next;
    }
    temp -> next = new_entry;
  }
}
#endif
