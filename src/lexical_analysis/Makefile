CC=gcc
CFLAGS=-g -Wall
NAME=scanner
all: lex.yy.c y.tab.c scanner.c
	$(CC) $(CFLAGS) lex.yy.c scanner.c -o $(NAME)
lex.yy.c: tokens.lex
	lex tokens.lex
y.tab.c: grammer.y
	yacc -d ./grammer.y

clean: 
	@rm lex.yy.c
	@rm y.tab.c
	@rm y.tab.h
	@rm $(NAME)
.PHONY : lex.yy.c y.tab.c clean
