#include <stdio.h>
#include <stdlib.h>

int yyparse();

int main(){
  yyparse();
  return 0;
}

void yyerror(char *s) {
  fprintf(stderr, "%s\n", s);
  exit(1);
}