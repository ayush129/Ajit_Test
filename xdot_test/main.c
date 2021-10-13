#include <stdio.h>

float sdotf(int N,float *X,int incX,float *Y,int incY)
{
	int i=0,ix=0,iy=0;
	float r=0;
	for (i = 0; i < N; i++) {
    		r += X[ix] * Y[iy];
    		ix += incX;
    		iy += incY;
  	}
	return r;
}
unsigned char u8dotf(int N,unsigned char *X,int incX,unsigned char *Y,int incY)
{
	int i=0,ix=0,iy=0;
	int r=0;
	for (i = 0; i < N; i++) {
    		r += X[ix] * Y[iy];
    		ix += incX;
    		iy += incY;
  	}
	return r;
}
unsigned short int u16dotf(int N,unsigned short int *X,int incX,unsigned short int *Y,int incY)
{
	int i=0,ix=0,iy=0;
	int r=0;
	for (i = 0; i < N; i++) {
    		r += X[ix] * Y[iy];
    		ix += incX;
    		iy += incY;
  	}
	return r;
}
unsigned int  u32dotf(int N,unsigned int *X,int incX,unsigned int *Y,int incY)
{
	int i=0,ix=0,iy=0;
	int r=0;
	for (i = 0; i < N; i++) {
    		r += X[ix] * Y[iy];
    		ix += incX;
    		iy += incY;
  	}
	return r;
}

float sdot(int N,float *X,int incX,float *Y,int incY);
unsigned char u8dot(int N,unsigned char *X,int incX,unsigned char *Y,int incY);
unsigned short int u16dot(int N,unsigned short int *X,int incX,unsigned short int *Y,int incY);
unsigned int  u32dot(int N,unsigned int *X,int incX,unsigned int *Y,int incY);

int* genxd();
int* genyd();
float* genxf();
float* genyf();

unsigned char main()
{

	int length = 200;
	int *arrxd =genxd();
	float *arrxf=genxf();

	unsigned char *arru8x = (unsigned char*) arrxd;
	unsigned short int *arru16x = (unsigned short int*) arrxd;
	unsigned int *arru32x = (unsigned int*) arrxd;

	int *arryd =genyd();
	float *arryf=genyf();

	unsigned char *arru8y = (unsigned char*) arryd;
	unsigned short int *arru16y = (unsigned short int*)arryd;
	unsigned int *arru32y = (unsigned int*)arryd;

	float temp=0;
	unsigned char  tempc=0;
	unsigned short int temp16=0;
	unsigned int temp32=0;

	int t1=0,t2=0;

	__ajit_write_serial_control_register__ ( TX_ENABLE | RX_ENABLE);

	for(length=200;length<=3200;length=length+600)
	{

		//xxxxxxxxxx sdotxxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		temp = sdot(length,&arrxf[0],1,&arryf[0],1);
		t2=ajit_barebones_clock();

		ee_printf("sdot vector : length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		temp = sdotf(length,&arrxf[0],1,&arryf[0],1);
		t2=ajit_barebones_clock();

		ee_printf("sdot normal : length = %d, %u\n",length,(t2 - t1));

		
		//xxxxxxxxxx u8dot xxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		tempc= u8dot(length,&arru8x[0],1,&arru8y[0],1);
		t2=ajit_barebones_clock();

		ee_printf("u8dot vector : length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		tempc= u8dotf(length,&arru8x[0],1,&arru8y[0],1);
		t2=ajit_barebones_clock();

		ee_printf("u8dot normal : length = %d, %u\n",length,(t2 - t1));


		//xxxxxxxxxx u16dot xxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		temp16 = u16dot(length, &arru16x[0], 1,&arru16y[0], 1);
		t2=ajit_barebones_clock();

		ee_printf("u16dot vector : length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		temp16 = u16dotf(length, &arru16x[0], 1,&arru16y[0], 1);
		t2=ajit_barebones_clock();

		ee_printf("u16dot normal : length = %d, %u\n",length,(t2 - t1));

		//xxxxxxxxxx u32dot xxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		temp32 = u32dot(length,&arru32x[0],1,&arru32y[0],1);
		t2=ajit_barebones_clock();

		ee_printf("u32dot vector : length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		temp32 = u32dotf(length,&arru32x[0],1,&arru32y[0],1);
		t2=ajit_barebones_clock();

		ee_printf("u32dot normal : length = %d, %u\n",length,(t2 - t1));
	}

	temp=tempc+temp+temp16+temp32;
	return temp;
}
