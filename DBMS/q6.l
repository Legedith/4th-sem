%option noyywrap
%{
    void display(int);
%}
%%
[a-zA-Z]+ {display(1);return 1;}
[0-9]+ {display(0);return 1;}
%%
void display(int flag)
{
    if(flag==1)
        printf("The given input is a word");
    else
        printf("the given input is a number");
}
int main()
{
    printf("Provide Input ");
    yylex();
}