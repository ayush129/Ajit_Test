#include <stdio.h>
float *saxpyf(int N,float alpha,float *X, int incX,float *Y,int incY)
{
	if (incX == 1 && incY == 1)
	{
    		const int m = N % 4;
		int i=0;
    		for (;i<m;i++){
      			Y[i] += alpha * X[i];
    		}
    		for (i = m; i + 3 < N; i += 4) {
      			Y[i] += alpha * X[i];
      			Y[i + 1] += alpha * X[i + 1];
      			Y[i + 2] += alpha * X[i + 2];
      			Y[i + 3] += alpha * X[i + 3];
    		}
  	}
	return Y;
}
unsigned char *u8axpyf(int N,unsigned char alpha,unsigned char *X,int incX,unsigned char *Y,int incY)
{
	if (incX == 1 && incY == 1)
	{
    		const int m = N % 4;
		int i;
    		for (i = 0; i < m; i++){
      		Y[i] += alpha * X[i];
    		}

    		for (i = m; i + 3 < N; i += 4) {
      			Y[i] += alpha * X[i];
      			Y[i + 1] += alpha * X[i + 1];
      			Y[i + 2] += alpha * X[i + 2];
      			Y[i + 3] += alpha * X[i + 3];
    		}
		
  	}
	return Y;
}
unsigned short int *u16axpyf(int N,unsigned int alpha,unsigned short int *X,int incX,unsigned short int *Y,int incY)
{
	if (incX == 1 && incY == 1)
	{
    		const int m = N % 4;
		int i;
    		for (i = 0; i < m; i++){
      		Y[i] += alpha * X[i];
    		}

    		for (i = m; i + 3 < N; i += 4) {
      			Y[i] += alpha * X[i];
      			Y[i + 1] += alpha * X[i + 1];
      			Y[i + 2] += alpha * X[i + 2];
      			Y[i + 3] += alpha * X[i + 3];
    		}
		
  	}
	return Y;
}
unsigned int *u32axpyf(int N,unsigned int alpha,unsigned int *X,int incX,unsigned int *Y,int incY)
{
	if (incX == 1 && incY == 1)
	{
    		const int m = N % 4;
		int i;
    		for (i = 0; i < m; i++){
      		Y[i] += alpha * X[i];
    		}

    		for (i = m; i + 3 < N; i += 4) {
      			Y[i] += alpha * X[i];
      			Y[i + 1] += alpha * X[i + 1];
      			Y[i + 2] += alpha * X[i + 2];
      			Y[i + 3] += alpha * X[i + 3];
    		}
  	}
	return Y;	
}

float *saxpy(int N,float alpha,float *X, int incX,float *Y,int incY);
unsigned char *u8axpy(int n,unsigned char alpha,unsigned char *x,int incx,unsigned char *y,int incy);
unsigned short int *u16axpy(int n,unsigned int alpha,unsigned short int *x,int incx,unsigned short int *y,int incy);
unsigned int *u32axpy(int N,unsigned int alpha,unsigned int *X,int incX,unsigned int *Y,int incY);

int* genxd();
int* genyd();
float* genxf();
float* genyf();

float* main()
{

	int length = 200;
	int *arrxd =genxd();
	float *arrxf=genxf();

	unsigned char *arru8x = (unsigned char*) arrxd;
	unsigned short int *arru16x = (unsigned short int*) arrxd;
	unsigned int *arru32x = (unsigned int*) arrxd;

	int *arryd =genyd();
	float *arryf=genyf();

	unsigned char *arru8y = (unsigned char*)arryd;
	unsigned short int *arru16y = (unsigned short int*)arryd;
	unsigned int *arru32y = (unsigned int*)arryd;

	float* temp=0;
	unsigned char*  tempc=0;
	unsigned short int* temp16=0;
	unsigned int* temp32=0;

	float alpha=1.5;
	unsigned char alpha1=3;
	unsigned int alpha2=5;
	unsigned int alpha3=100;


	int t1=0,t2=0;

	__ajit_write_serial_control_register__ ( TX_ENABLE | RX_ENABLE);

	for(length=200;length<=3200;length=length+600)
	{

		//xxxxxxxxxx saxpyxxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		temp = saxpy(length,alpha, &arrxf[0],1,&arryf[0],1);
		t2=ajit_barebones_clock();

		ee_printf("saxpy vector : length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		temp = saxpyf(length,alpha, &arrxf[0],1,&arryf[0],1);
		t2=ajit_barebones_clock();

		ee_printf("saxpy normal : length = %d, %u\n",length,(t2 - t1));


		//xxxxxxxxxx u8axpy xxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		tempc= u8axpy(length,alpha1,&arru8x[0],1,&arru8y[0],1);
		t2=ajit_barebones_clock();

		ee_printf("u8axpy vector : length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		tempc= u8axpyf(length,alpha1,&arru8x[0],1,&arru8y[0],1);
		t2=ajit_barebones_clock();

		ee_printf("u8axpy normal : length = %d, %u\n",length,(t2 - t1));



		//xxxxxxxxxx u16axpy xxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		temp16 = u16axpy(length, alpha2, &arru16x[0], 1,&arru16y[0], 1);
		t2=ajit_barebones_clock();

		ee_printf("u16axpy vector : length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		temp16 = u16axpyf(length, alpha2, &arru16x[0], 1,&arru16y[0], 1);
		t2=ajit_barebones_clock();

		ee_printf("u16axpy normal : length = %d, %u\n",length,(t2 - t1));


		//xxxxxxxxxx u32axpy xxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		temp32 = u32axpy(length, alpha3,&arru32x[0],1,&arru32y[0],1);
		t2=ajit_barebones_clock();

		ee_printf("u32axpy vector : length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		temp32 = u32axpyf(length, alpha3,&arru32x[0],1,&arru32y[0],1);
		t2=ajit_barebones_clock();

		ee_printf("u32axpy normal : length = %d, %u\n",length,(t2 - t1));
	}

	tempc=tempc+4;	
	temp16=temp16+4;
	temp32=temp32+4;	
	return temp;
}
