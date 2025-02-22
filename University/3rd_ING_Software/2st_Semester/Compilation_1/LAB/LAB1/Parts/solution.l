%{

#include<stdio.h>
int nb_line = 1; 

 int nb_line_comment(char *comment) {
   int count = 0;
   int i = 0;

   while (comment[i]!='\0') {
     if (comment[i] == '\n') {++count;}
     ++i;
    }
 return count;
 }

%}

Word [a-zA-Z_]
Digit [0-9]
IDF [a-zA-Z]({Word}|{Digit})*
NumberCst {Digit}+
StringCst '[^\n']*'
Cst {NumberCst}|{StringCst}
InlineComment ##[^\n]*
MultiLineComment "{ --"(.|\n)*"-- }"
Comment ({InlineComment}|{MultiLineComment})
ArithmeticOperation [+/*\-]
Separators (\(|\)|:=|;|\{|\}|:|,|{ArithmeticOperation})
KeyWords "Entier"|"Reel"|"MainProgram"|"Declaration"|"Body"|"Begin"|"end"

%%

{KeyWords}   printf("Matched Keyword : %s In Line %d\n",yytext,nb_line);
{IDF} {
    if(yyleng <=12){
    printf("Matched Identifier : %s In Line %d\n",yytext,nb_line);
    }
    else {
    printf("Error Identifier : %s Exceded Maximum Length Characters In Line %d\n",yytext,nb_line);
    }
      }

{Cst}        printf("Matched Constant : %s In Line %d\n",yytext,nb_line);
{Separators} printf("Matched Separator : %s In Line %d\n",yytext,nb_line);
{Comment}   { printf("Matched Comment : %s In Line %d\n",yytext,nb_line);
              nb_line = nb_line + nb_line_comment(yytext);
              }

[ \t] 
\n ++nb_line;
. {printf("Lexical Error At line %d \n",nb_line) ;}

%%
int main () 
{
    yylex () ;
    return 0;
}

int yywrap() { return 1; }
