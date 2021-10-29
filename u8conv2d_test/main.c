#include <stdio.h>

//3x3 fixed kernel convolution for 8 bit unsigned integer

//non vector implementation for comparison
unsigned char* conv(int nx, int ny, unsigned char *x, unsigned char *y, unsigned char *res)
{
	int k=3,compi=nx-k+1,compj=ny-k+1;
	int temp,temp1,w,h;
	int i,j,pos=0;
	for (i=0; i<compi ; i++)
        {
	    temp=ny*i;
	    for (j=0; j<compj ; j++)
            {	
		temp1=temp+j;
		for (h=0 ; h<k ; h++)
                    for (w=0 ; w<k ; w++)
                        res[pos] = res[pos] + (y[k*h+w])*x[ny*h+temp1+w];		//y[k*(h-i)+(w-j)]
		pos++;
	    }
	}
	return &res[0];
}

//vector implementation
unsigned char* conv_vect(int nx, int ny, unsigned char *X,unsigned char *Y, unsigned char *res);

unsigned char* genx();
unsigned char* geny();

unsigned char* main()
{
	//address of first element of each row must be double word aligned
	int row_num=5,col_num=48;		//number of rows and columns of 2d matrix

	unsigned char *x=genx();		//assigning input from datax.s file
	unsigned char *y=geny();		//assigning kernel values from datay.s file
	
	//for a 3x3 kernel, create a 3x4 matrix and put 4th col. values as 0 (kernel can be assigned here or in datay.s file)		
	/*
	unsigned char y[12];
	y[0]=1;	 y[1]=1;  y[2]=1;  y[3]=0;
	y[4]=1;  y[5]=2;  y[6]=1;  y[7]=0;
	y[8]=1;  y[9]=1;  y[10]=1; y[11]=0;
	*/

	unsigned char res[3120];		//result will be stored here
	unsigned char* temp=0;

	int t1=0,t2=0;

	__ajit_write_serial_control_register__ ( TX_ENABLE | RX_ENABLE);

	for(row_num=5;row_num<=65;row_num=row_num+10)
	{
		//vector implementation
		t1=ajit_barebones_clock();
		temp=conv_vect(row_num,col_num,&x[0],&y[0],&res[0]);
		t2=ajit_barebones_clock();
		
		ee_printf("u8 int convolution (vector):\nno. of rows = %d\nno. of cols = %d\nno. of elements = %d\nTicks = %u\n",row_num, col_num, (row_num*col_num), (t2 - t1));
		
		
		//non-vector implementation
		t1=ajit_barebones_clock();
		temp=conv(row_num,col_num,&x[0],&y[0],&res[0]);
		t2=ajit_barebones_clock();
		
		ee_printf("u8 int convolution (non-vector):\nno. of rows = %d\nno. of cols = %d\nno. of elements = %d\nTicks = %u\n",row_num, col_num, (row_num*col_num), (t2 - t1));	
				
		
	}

	
	return temp;
}


