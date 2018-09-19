#include<stdio.h>
int main()
{
int num, i;
int fact=1;
printf("Enter number ");
scanf("%d",&num);
if(num<0)
printf("Error!!");
else
{
for(i=1;i<=num;i++)
{
fact=fact*i;
}
printf("Factorial of %d is %d ",num, fact);
}
return 0;
}

