%{
/************************************************************************
expr2.y
YACC file
Date: 2022/10/6
mqq <2010237@mail.nankai.edu.cn>
************************************************************************/
#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifndef YYSTYPE
#define YYSTYPE char* //定义求值结果类型
#endif 
char idStr[50];
char numStr[50];
char* yylex();
extern int yyparse();
FILE* yyin;
void yyerror(const char* s);

%}//定义段，用于添加头文件、函数定义、全局变量等

%token NUMBER
%token ID
%token ADD
%token SUB
%token MUL
%token DIV
%token LB
%token RB

%left ADD SUB
%left MUL DIV
%right UMINUS

%%

lines   :   lines expr ';' {printf("%s\n",$2);}
        |   lines ';' 
        |
        ;

expr    :   expr ADD expr {$$ = (char*)malloc(50*sizeof(char));strcpy($$,$1);strcat($$,$3);strcat($$,"+ ");}
        |   expr SUB expr {$$ = (char*)malloc(50*sizeof(char));strcpy($$,$1);strcat($$,$3);strcat($$,"- ");}
        |   expr MUL expr {$$ = (char*)malloc(50*sizeof(char));strcpy($$,$1);strcat($$,$3);strcat($$,"* ");}
        |   expr DIV expr {$$ = (char*)malloc(50*sizeof(char));strcpy($$,$1);strcat($$,$3);strcat($$,"/ ");}
        |   LB expr RB {$$ = (char*)malloc(50*sizeof(char));strcpy($$,$2);strcat($$," ");}
        |   NUMBER {$$ = (char*)malloc(50*sizeof(char));strcpy($$,$1);strcat($$," ");}
        |   ID {$$ = (char*)malloc(50*sizeof(char));strcpy($$,$1);strcat($$," ");}
        |   SUB expr %prec UMINUS {$$ = (char*)malloc(50*sizeof(char));strcpy($$,$2);strcat($$,"- ");}
        ;
%%

char* yylex() {
    char t;
    while(1) {
        t = getchar();
        if (t == ' ' || t== '\t' || t == '\n'){
            //do nothing
        }else if(t >= '0' && t <= '9') {
            int ti = 0;
            while(t >= '0' && t <= '9') {
                numStr[ti] = t;
                t = getchar();
                ti ++;
            }
            numStr[ti] = '\0';
            yylval = numStr;
            memset(numStr,0,50*sizeof(char));
            ungetc(t, stdin);
            return NUMBER;
        }else if((t >= 'a' && t <= 'z') || (t >= 'A' && t <= 'Z') || (t == '_')) {
            int ti = 0;
            while((t >= 'a' && t <= 'z') || (t >= 'A' && t <= 'Z') || (t == '_') || (t >= '0' && t <= '9')) {
                idStr[ti] = t;
                ti ++;
                t = getchar();
            }
            idStr[ti] = '\0';
            yylval = idStr;
            memset(idStr,0,50*sizeof(char));
            ungetc(t, stdin);
            return ID;
        }
        else if(t == '+') return ADD;
        else if(t == '-') return SUB;
        else if(t == '*') return MUL;
        else if(t == '/') return DIV;
        else if(t == '(') return LB;
        else if(t == ')') return RB;
        else return t;
    }
}

void yyerror(const char* s) {
    fprintf(stderr, "Parse error: %s\n", s);
    exit(1);
}

int main() {
    yyin = stdin;
    do {
        yyparse();
    }while(!feof(yyin));
    return 0;
}