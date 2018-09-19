#include<stdio.h>
int main(int argc, char *argv[])
{/*printing the argument at 0th index of array
   */
	printf("Program name %s\n",argv[0]);
	/*if the number of arguments is two print the first argument
	 */
	if(argc==2)
	{
		printf("The argument supplied is %s\n",argv[1]);
	}
	/*if the number of arguments is greater than
	 * 2, then printing the appropriate argument
	 */
	else if(argc>2)
	{
		printf("Too many argument supplied");
	}
	/*if no argument is passed
	 * then asking the user to enter an argument"
	 */
	else
	{
		printf("One argument is expected\n");
	}
}


