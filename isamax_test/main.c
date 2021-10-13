#include <stdio.h>
#include <math.h>

int isamaxf(int N,float *X,int incX)
{
	float max=0.0;
	int ix=0,result=0,i=0;
	if (incX <= 0)
    		return 0;

  	for (; i < N; i++){
    		if (fabs(X[ix]) > max){
      			max = fabs(X[ix]);
      			result = i;
    		}
    		ix += incX;
  	}

	return result+1;
}

int isamax(int N,float *X,int incX);

float* genx();

int main()
{
	int length = 200;
	float* arrxf=genx();	

	int temp=0;

	int t1=0,t2=0;

	__ajit_write_serial_control_register__ ( TX_ENABLE | RX_ENABLE);

	for(length=200;length<=3200;length=length+600)
	{
		//xxxxxxxxxx isamax xxxxxxxxxxxxxxxxxxxxxx
		t1=ajit_barebones_clock();	
		temp = isamax(length,&arrxf[0],1);
		t2=ajit_barebones_clock();

		ee_printf("isamax vector : length = %d, %u\n",length,(t2 - t1));

		t1=ajit_barebones_clock();	
		temp = isamaxf(length,&arrxf[0],1);
		t2=ajit_barebones_clock();

		ee_printf("isamax normal : length = %d, %u\n",length,(t2 - t1));
	}
	
	return temp;
}
