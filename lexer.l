%{
  #include <stdio.h>
  #include "y.tab.h"
%}
%option noyywrap
%%
[0-9]+  { yylval=atoi(yytext); return NUMBER; }
"+"     { return PLUS; }
"-"     { return MINUS; }
"\n"    { return EOL; }
%%