#include<stdio.h> //loop
#include <time.h>

int main()
{
	clock_t start, end;
	double cpu_time_used;
	
	int i,fact=1,number;
	printf("Enter a number: ");
	scanf("%d",&number);
	for(i=1;i<=number;i++)
	{
		fact=fact*i;
	}
	start = clock();
	end = clock();
	cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
	
	printf("Factorial of %d is: %d\n",number,fact);
	
	printf("The elapsed time is %d seconds\n", (end - start));     
     

	
	return 0;
}




     


