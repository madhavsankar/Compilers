%{
    int yylineno;
%}

%%
^(.*)\n    printf("%4d\t%s", ++yylineno, yytext);
%%

int main(int argc, char *argv[]) {
    yyin = fopen(argv[1], "r");
    yylex();
    fclose(yyin);
}
