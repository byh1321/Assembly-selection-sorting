#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#define N 30000

int selection(int *data,int n);

int main () {
	int i,*data1,*data2;
	data1 = (int *)malloc(N*sizeof (int));
	data2 = (int *)malloc(N*sizeof (int));
	srand(time(NULL));
	for (i=0;i<N;i++) data1[i]=data2[i]=rand()%10;
	selection(data2,N);
	printf("Unsorted dataset\n");
	for (i=0;i<N;i++)
		printf("%d ",(data1[i]));
	printf("\nSorted dataset\n");
    for (i=0;i<N;i++)
         printf("%d ",(data2[i]));
	printf("\n");
	return 1;
}
