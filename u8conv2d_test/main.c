#include <stdio.h>

//3x3 fixed kernel convolution for 8 bit unsigned integer

//non vector implementation for comparison
unsigned char* conv(int row_num, int col_num, unsigned char *x, unsigned char *ker, unsigned char *res)
{
	int k=3,compi=row_num-k+1,compj=col_num-k+1;
	int temp,temp1,w,h;
	int i,j,pos=0;
	for (i=0; i<compi ; i++)
        {
	    temp=col_num*i;
	    for (j=0; j<compj ; j++)
            {	
		temp1=temp+j;
		for (h=0 ; h<k ; h++)
                    for (w=0 ; w<k ; w++)
                        res[pos] = res[pos] + (ker[k*h+w])*x[col_num*h+temp1+w];		//ker[k*(h-i)+(w-j)]
		pos++;
	    }
	}
	return &res[0];
}

//vector implementation
unsigned char* conv_vect(int row_num, int col_num, unsigned char *X,unsigned char *ker, unsigned char *res);

unsigned char* genx();
unsigned char* geny();

unsigned char* main()
{
	//address of first element of each row must be double word aligned
	int row_num=5,col_num=48;		//number of rows and columns of 2d matrix

	unsigned char *x=genx();		//assigning input from datax.s file
	unsigned char *ker=geny();		//assigning kernel values from datay.s file
	
	//for a 3x3 kernel, create a 3x4 matrix and put 4th col. values as 0 (kernel can be assigned here or in datay.s file)		
	/*
	unsigned char ker[12];
	ker[0]=1;  ker[1]=1;  ker[2]=1;  ker[3]=0;
	ker[4]=1;  ker[5]=2;  ker[6]=1;  ker[7]=0;
	ker[8]=1;  ker[9]=1;  ker[10]=1; ker[11]=0;
	*/

	unsigned char res[3120];		//result will be stored here
	unsigned char* temp=0;

	int t1=0,t2=0;

	__ajit_write_serial_control_register__ ( TX_ENABLE | RX_ENABLE);

	for(row_num=5;row_num<=65;row_num=row_num+10)
	{
		//vector implementation
		t1=ajit_barebones_clock();
		temp=conv_vect(row_num,col_num,&x[0],&ker[0],&res[0]);
		t2=ajit_barebones_clock();
		
		ee_printf("u8 int convolution (vector):\nno. of rows = %d\nno. of cols = %d\nno. of elements = %d\nTicks = %u\n",row_num, col_num, (row_num*col_num), (t2 - t1));
		
		
		//non-vector implementation
		t1=ajit_barebones_clock();
		temp=conv(row_num,col_num,&x[0],&ker[0],&res[0]);
		t2=ajit_barebones_clock();
		
		ee_printf("u8 int convolution (non-vector):\nno. of rows = %d\nno. of cols = %d\nno. of elements = %d\nTicks = %u\n",row_num, col_num, (row_num*col_num), (t2 - t1));	
				
		
	}

	
	return temp;
}


