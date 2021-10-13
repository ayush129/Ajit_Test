import random 
import struct 

f= open("datax.s",'w')
f.write('.section ".text" \n.align 4\n.global genxd \n.type genxd, #function\ngenxd:\n\tsave  %sp, -120, %sp\n\tset datax,%i0\n\trestore\n\tretl\n\tnop\n.section ".data"\n.align 8\n.global datax\ndatax:\n')

for i in range(0,3200):
	f.write(".word	")
	x=random.randrange(0, 500, 3)
	f.write(str(x))
	f.write('\n')
	

f.write('\n')

f.write('.section ".text" \n.align 4\n.global genxf \n.type genxf, #function\ngenxf:\n\tsave  %sp, -120, %sp\n\tset dataxf,%i0\n\trestore\n\tretl\n\tnop\n.section ".data"\n.align 8\n.global dataxf\ndataxf:\n')

for i in range(0,3200):
	f.write(".word	")
	x=random.uniform(-2.56,0)
	s = struct.pack('>f', x)
	i = struct.unpack('>I', s)[0]
	f.write(hex(i))
	f.write('\n')
	
	
f.close()
