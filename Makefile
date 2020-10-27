CC = gcc
CFLAGS = -lfl
YACCFLAGS = -d

build: y.tab.c lex.yy.c
	$(CC) $(CFLAGS) lex.yy.c y.tab.c main.c

y.tab.c:
	yacc parser.y $(YACCFLAGS)

lex.yy.c: y.tab.h
	flex lexer.l

clean:
	rm y.tab.c y.tab.h y.tab.h.gch lex.yy.c a.out