#include <stdio.h>

//im2col approach - rearranging the matrix to optimize accessing of elements

//non vector implementation for comparison
unsigned char* conv(int row_num, int col_num, unsigned char *x, int ker_row, int ker_col, unsigned char *ker, unsigned char *res)
{
	int compi=row_num-ker_row+1,compj=col_num-ker_col+1;
	int temp,temp1,w,h;
	int i,j,pos=0;
	for (i=0; i<compi ; i++)
        {
	    temp=col_num*i;
	    for (j=0; j<compj ; j++)
            {	
		temp1=temp+j;
		for (h=0 ; h<ker_row ; h++)
                    for (w=0 ; w<ker_col ; w++)
                        res[pos] = res[pos] + (ker[ker_row*h+w])*x[col_num*h+temp1+w];		//ker[k*(h-i)+(w-j)]
		pos++;
	    }
	}
	return &res[0];
}

//vector implementation
unsigned char* conv_vect(int num_ker, int num_input, unsigned char *X,unsigned char *ker, unsigned char *res);

unsigned char* genx();
unsigned char* geny();

//function to rearrange the input 2d matrix in im2col form
unsigned char* im2col(int row_num, int col_num, unsigned char *x,int ker_row, int ker_col, unsigned char *ker, unsigned char *res)
{
	
	int i,j,h,w,pos=0;
	int new_rows=(row_num-ker_row+1)*(col_num-ker_col+1);
	int compi=(row_num-ker_row+1),compj=(col_num-ker_col+1);
	unsigned char col[124400];
	//int k=0;
	for (i=0; i<compi ; i++)
            for (j=0; j<compj ; j++)
            {
		for (h=i ; h<i+ker_row ; h++)
                    for (w=j ; w<j+ker_col ; w++)
                    {
			col[pos]=x[col_num*h+w];
			pos++;
		    }
		/*for(k=0;k<7;k++)
		{
			col[pos]=0;
			pos++;
		}*/
	    	
	    }
	return conv_vect((ker_col*ker_row),new_rows,&col[0],&ker[0],&res[0]);

}
unsigned char* main()
{
	//address of first element must be double word aligned
	int row_num=5,col_num=48;		//size of input matrix
	int ker_row=3,ker_col=3;		//size of kernels
		
	unsigned char *x=genx();		//assigning input from datax.s file
	unsigned char *ker=geny();		//assigning kernal values from datay.s file	

	//kernel can be assigned here or in datay.s file
	/*
	unsigned char ker[16];
	ker[0]=1;  ker[1]=1;  ker[2]=1;  ker[3]=1;
	ker[4]=1;  ker[5]=1;  ker[6]=1;  ker[7]=1;
	ker[8]=1;  ker[9]=1;  ker[10]=1; ker[11]=1;
	ker[12]=1; ker[13]=1; ker[14]=1; ker[15]=1;
	*/

	
	unsigned char res[3600];	//result will be stored here
	unsigned char* temp=0;

	/*
	unsigned char x[64];	//input array
	int i=0;
	for(;i<64;i++)
		x[i]=i;		//assigning value to input array
	*/
	
	int t1=0,t2=0;

	__ajit_write_serial_control_register__ ( TX_ENABLE | RX_ENABLE);

	for(row_num=5;row_num<=65;row_num=row_num+10)	
	{
		//im2col vector implementation 3x3
		t1=ajit_barebones_clock();
		temp=im2col(row_num,col_num,&x[0],ker_row,ker_col,&ker[0],&res[0]);
		t2=ajit_barebones_clock();

		ee_printf("u8 int im2col convolution (vector):\nno. of rows = %d\nno. of cols = %d\nno. of elements = %d\nno. of kernel rows = %d\nno. of kernel cols = %d\nno. of kernel elements = %d\nTicks = %u\n",row_num, col_num,(row_num*col_num), ker_row, ker_col, (ker_row*ker_col), (t2 - t1));

		//non-vector implementation 3x3
		t1=ajit_barebones_clock();
		temp=conv(row_num,col_num,&x[0],ker_row,ker_col,&ker[0],&res[0]);
		t2=ajit_barebones_clock();

		ee_printf("u8 int convolution (non-vector):\nno. of rows = %d\nno. of cols = %d\nno. of elements = %d\nno. of kernel rows = %d\nno. of kernel cols = %d\nno. of kernel elements = %d\nTicks = %u\n",row_num, col_num,(row_num*col_num), ker_row, ker_col, (ker_row*ker_col), (t2 - t1));
	}
	
	ker_row=5,ker_col=5;		//size of kernels 5x5
	//varying the size of the kernel (5x5)
	for(row_num=5;row_num<=65;row_num=row_num+10)
	{
		//im2col vector implementation for 5x5
		t1=ajit_barebones_clock();
		temp=im2col(row_num,col_num,&x[0],ker_row,ker_col,&ker[0],&res[0]);
		t2=ajit_barebones_clock();
		ee_printf("u8 int im2col convolution (vector):\nno. of rows = %d\nno. of cols = %d\nno. of elements = %d\nno. of kernel rows = %d\nno. of kernel cols = %d\nno. of kernel elements = %d\nTicks = %u\n",row_num, col_num,(row_num*col_num), ker_row, ker_col, (ker_row*ker_col), (t2 - t1));
		
		//non-vector implementation for 5x5
		t1=ajit_barebones_clock();
		temp=conv(row_num,col_num,&x[0],ker_row,ker_col,&ker[0],&res[0]);
		t2=ajit_barebones_clock();
		ee_printf("u8 int convolution (non-vector):\nno. of rows = %d\nno. of cols = %d\nno. of elements = %d\nno. of kernel rows = %d\nno. of kernel cols = %d\nno. of kernel elements = %d\nTicks = %u\n",row_num, col_num,(row_num*col_num), ker_row, ker_col, (ker_row*ker_col), (t2 - t1));
		
	}


	ker_row=7,ker_col=7;		//size of kernels 7x7
	//varying the size of the kernel (7x7)
	for(row_num=15;row_num<=35;row_num=row_num+10)
	{
		//im2col vector implementation for 7x7
		t1=ajit_barebones_clock();
		temp=im2col(row_num,col_num,&x[0],ker_row,ker_col,&ker[0],&res[0]);
		t2=ajit_barebones_clock();
		ee_printf("u8 int im2col convolution (vector):\nno. of rows = %d\nno. of cols = %d\nno. of elements = %d\nno. of kernel rows = %d\nno. of kernel cols = %d\nno. of kernel elements = %d\nTicks = %u\n",row_num, col_num,(row_num*col_num), ker_row, ker_col, (ker_row*ker_col), (t2 - t1));
		
		//non-vector implementation for 7x7
		t1=ajit_barebones_clock();
		temp=conv(row_num,col_num,&x[0],ker_row,ker_col,&ker[0],&res[0]);
		t2=ajit_barebones_clock();
		ee_printf("u8 int convolution (non-vector):\nno. of rows = %d\nno. of cols = %d\nno. of elements = %d\nno. of kernel rows = %d\nno. of kernel cols = %d\nno. of kernel elements = %d\nTicks = %u\n",row_num, col_num,(row_num*col_num), ker_row, ker_col, (ker_row*ker_col), (t2 - t1));
		
	}
	return temp;
}


