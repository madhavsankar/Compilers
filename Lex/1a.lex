%{#include<stdio.h>
%}

%%

^k[a-zA-Z0-9]*[ \t\n]	printf("%s",yytext);
[ \t\n]k[a-zA-Z0-9]*[ \t\n]	printf("%s",yytext);
.	;

%%

int main(int argc,char *argv[]) {
	yyin=fopen(argv[1],"r");
	yylex();
	fclose(yyin);
}
