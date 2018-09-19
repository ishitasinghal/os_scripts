#include<stdio.h>
#include<stdlib.h>
int f=1;
int fact(int num)
{
	if(num>=1)
	{
		return(num*fact(num-1));
	}
	else
	{
		return(1);
	}

}
int main(int argc, char *argv[])
{
	printf("Program name is %s\n", argv[0]);
	if(argc>2)
	{
		printf("Too many arguments");
	}
	else
	{
		int x=atoi(argv[1]);
	printf("The factorial is %d", fact(x));
	}
}
