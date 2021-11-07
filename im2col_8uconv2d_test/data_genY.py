import random 
import struct 

sum=0;
f= open("datay.s",'w')
f.write(".section "".text"" \n .align 4\n .global geny \n .type geny, #function\n geny:\n \t save  %sp, -120, %sp\n \t set datay,%i0\n \t restore \n \t retl \n \t nop \n .section "".data""\n .align 8\n .global datay \n datay: \n")

for i in range(0,49):
	f.write(".byte	")

	y=random.randint(1,10)
	f.write(hex(y))

	f.write('\n')

f.close()
