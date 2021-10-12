#include <stdio.h>

float * __attribute__ ((noinline)) sscalf(int n , float alpha , float *arr, int incx)
{
	int i=0;	
	for (i = 0; i < n; i++) 
    		arr[i] *= alpha;

	return arr;
   
}


unsigned short int * __attribute__((noinline)) u16scalf(int n , unsigned short int alpha , unsigned short int *arr, int incx)
{
	int k=0;
	for (;k<n;k++)
	arr[k]*=alpha;
	
	return arr;
}

unsigned int * __attribute__((noinline)) u32scalf(int n , unsigned int alpha , unsigned int *arr, int incx)
{
	int k=0;
	for (;k<n;k++)
	arr[k]*=alpha;
	
	return arr;
}

unsigned char* __attribute__ ((noinline)) u8scalf(int n , unsigned char alpha , unsigned char *arr, int incx)
{
	int k=0;
	for (;k<n;k++)
	arr[k]*=alpha;
	
	return arr;
}




float *sscal(int n , float alpha , float *arr, int incx);
unsigned char *u8scal(int n , unsigned char alpha , unsigned char *arr, int incx);
unsigned short int *u16scal(int n , unsigned short int alpha , unsigned short int *arr, int incx);
unsigned int *u32scal(int n , unsigned int alpha , unsigned int *arr, int incx);


int *gend(void);
float *genf(void);

unsigned char * main()
{

	int length = 200;
	int *arrd =gend();
	float *arrf=genf();

	unsigned char *arru8sum = (unsigned char*)arrd;
	unsigned short int *arru16sum = (unsigned short int *)arrd;
	unsigned int *arru32sum = (unsigned int*)arrd;


	float *temp=0;
	unsigned char  *tempc=0;
	unsigned short int *temp16=0;
	unsigned int *temp32=0;


	float alpha=1.5;
	unsigned char alpha1=3;
	unsigned short int alpha2=5;
	unsigned int alpha3=100;



	int t1=0,t2=0;

	__ajit_write_serial_control_register__ ( TX_ENABLE | RX_ENABLE);


	for(length=200;length<=3200;length=length+600)
	{

		//xxxxxxxxxx sscal xxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		temp = sscal(length,alpha, &arrf[0],1);
		t2=ajit_barebones_clock();

		ee_printf("sscal vector length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		temp = sscalf(length,alpha, &arrf[0],1);
		t2=ajit_barebones_clock();

		ee_printf("sscal normal length = %d, %u\n",length,(t2 - t1));


		//xxxxxxxxxx u8scal xxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		tempc= u8scal(length,alpha1,&arru8sum[0],1);
		t2=ajit_barebones_clock();

		ee_printf("u8scal vector length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		tempc= u8scalf(length,alpha1,&arru8sum[0],1);
		t2=ajit_barebones_clock();

		ee_printf("u8scal normal length = %d, %u\n",length,(t2 - t1));



		//xxxxxxxxxx u16scal xxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		temp16 = u16scal(length, alpha2, &arru16sum[0], 1);
		t2=ajit_barebones_clock();

		ee_printf("u16scal vector length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		temp16 = u16scalf(length, alpha2, &arru16sum[0], 1);
		t2=ajit_barebones_clock();

		ee_printf("u16scal normal length = %d, %u\n",length,(t2 - t1));


		//xxxxxxxxxx u32scal xxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		temp32 = u32scal(length, alpha3,&arru32sum[0],1);
		t2=ajit_barebones_clock();

		ee_printf("u32scal vector length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		temp32 = u32scalf(length, alpha3,&arru32sum[0],1);
		t2=ajit_barebones_clock();

		ee_printf("u32scal normal length = %d, %u\n",length,(t2 - t1));


	}

	temp=temp+4;	
	temp16=temp16+4;
	temp32=temp32+4;

	return tempc;
}
