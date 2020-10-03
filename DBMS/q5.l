%option noyywrap
%{
    int count=0;
%}
%%
[AEIOUaeiou] {count++;}
.
\n {printf("There are %d vowels in this sentence",count);return 1;}
%%
int main()
{
    printf("Enter a sentence to check no. of vowels ");
    yylex();
}