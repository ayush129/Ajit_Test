#include <stdio.h>
#include<math.h>


 float __attribute__ ((noinline)) sasumf(int n, float *arr, int incx)
{
	int i=0;
	float r=0;
	for (; i < n; i++) {
    	r += fabs(arr[i]);
  	}
	
  	return r;
}

char __attribute__ ((noinline)) u8asumf(int n, char *arr, int incx)
{
	
	int i=0;
	char sum=0;
	 for (;i<n; ++i)
          {
            
            if (arr[i] >= 0)
              sum +=arr[i];
            else
              sum += -arr[i];
          }

	return sum;

}

short int u16asumf(int n, short int *arr, int incx)
{
	int i=0;
	short int sum=0;
	 for (;i <n; ++i)
          {
            
            if (arr[i] >= 0)
              sum +=arr[i];
            else
              sum += -arr[i];
          }

	return sum;
}

int u32asumf(int n, int *arr, int incx)
{
	
	int i=0;
	int sum=0;
	 for (;i <n; ++i)
          {
           	if (arr[i]>=0)
			sum+=arr[i];
		else sum+= -arr[i];
          }

	return sum;

}




float sasum(int n, float *arr, int incx);
char u8asum(int n, char *arr, int incx);
int u32asum(int n, int *arr, int incx);
short int u16asum(int n, short int *arr, int incx);


int *gend(void);
float *genf(void);

int main()
{
	int length = 200;
	int *arrd =gend();
	float *arrf=genf();

	char *arru8sum = (char*)arrd;
	short int *arru16sum = (short int *)arrd;
	int *arru32sum = (int*)arrd;


	float temp=0;
	char  tempc=0;
	short int temp16=0;
	int temp32=0;



	int t1=0,t2=0;

	__ajit_write_serial_control_register__ ( TX_ENABLE | RX_ENABLE);

	

	for(length=200;length<=3200;length=length+600)
	{

		//xxxxxxxxxx sasum xxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		temp = sasum(length, &arrf[0] ,1);
		t2=ajit_barebones_clock();

		ee_printf("sasum vector length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		temp = sasumf(length, &arrf[0] ,1);
		t2=ajit_barebones_clock();

		ee_printf("sasum normal length = %d, %u\n",length,(t2 - t1));


		//xxxxxxxxxx u8asum xxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		tempc = u8asum(length, &arru8sum[0] ,1);
		t2=ajit_barebones_clock();

		ee_printf("u8asum vector length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		tempc = u8asumf(length, &arru8sum[0] ,1);
		t2=ajit_barebones_clock();

		ee_printf("u8asum normal length = %d, %u\n",length,(t2 - t1));



		//xxxxxxxxxx u16asum xxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		temp16 = u16asum(length, &arru16sum[0] ,1);
		t2=ajit_barebones_clock();

		ee_printf("u16asum vector length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		temp16 = u16asumf(length, &arru16sum[0] ,1);
		t2=ajit_barebones_clock();

		ee_printf("u16asum normal length = %d, %u\n",length,(t2 - t1));


		//xxxxxxxxxx u32asum xxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		temp32 = u32asum(length, &arru32sum[0] ,1);
		t2=ajit_barebones_clock();

		ee_printf("u32asum vector length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		temp32 = u32asumf(length, &arru32sum[0] ,1);
		t2=ajit_barebones_clock();

		ee_printf("u32asum normal length = %d, %u\n",length,(t2 - t1));


	}

	
	return tempc+temp+temp16+temp32;
}
