%{
  #include <stdio.h>
  #include <math.h>

  int yylex (void);
  void yyerror(char *s);
%}
%token NUMBER
%token PLUS
%token MINUS
%token EOL
%%
input:
  | line input
  | line
  ;
line:
  | expr EOL { printf("%d\n", $1); }
  ;
expr:
  | expr PLUS NUMBER  { $$ = $1 + $3; }
  | expr MINUS NUMBER { $$ = $1 - $3; }
  | NUMBER            { $$ = $1; }
  ;