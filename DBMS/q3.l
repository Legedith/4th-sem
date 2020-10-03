%option noyywrap
%%
"hello" printf("Good Bye!");
.* ;
%%
int main()
{
yylex();
}

