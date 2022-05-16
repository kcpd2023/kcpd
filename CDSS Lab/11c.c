#include<stdio.h>
#include <time.h>

void main()
{
	clock_t start, end;
	double cpu_time_used;
	
	int n,i=1,f=1;
	printf("\n Enter The Number:");
	scanf("%d",&n);
	do
	{
		f=f*i;
		i++;
	}
	while(i<=n);
	
	start = clock();
	end = clock();
	cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;
	
	printf("\n The Factorial of %d is %d\n",n,f);
	
	printf("The elapsed time is %d seconds\n", (end - start));  
}
