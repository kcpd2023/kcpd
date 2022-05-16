#include<stdio.h>
#include <time.h>

long factorial(int n)
{
	if (n == 0)
	return 1;
	else
	return(n * factorial(n-1));
}

void main()
{
	clock_t start, end;
	double cpu_time_used;
	
	int number;
	long fact;
	printf("Enter a number: ");
	scanf("%d", &number);
	fact = factorial(number);
	
	start = clock();
	end = clock();
	cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
	
	printf("Factorial of %d is %ld\n", number, fact);
	
	printf("The elapsed time is %d seconds\n", (end - start));
	return 0;
}

