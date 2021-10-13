	.file	"main.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	0
	.section	".text"
	.align 4
	.global isamaxf
	.type	isamaxf, #function
	.proc	04
isamaxf:
	cmp	%o2, 0
	ble	.L7
	 cmp	%o0, 0
	ble	.L8
	 sethi	%hi(.LC0), %g3
	sll	%o2, 2, %o2
	mov	0, %g1
	mov	0, %g2
	ld	[%g3+%lo(.LC0)], %f12
.L6:
	ld	[%o1], %f8
	fstod	%f12, %f10
	fstod	%f8, %f8
	fabss	%f8, %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L4
	 nop
	mov	%g1, %g2
	fdtos	%f8, %f12
.L4:
	add	%g1, 1, %g1
	cmp	%g1, %o0
	bne	.L6
	 add	%o1, %o2, %o1
	jmp	%o7+8
	 add	%g2, 1, %o0
.L7:
	jmp	%o7+8
	 mov	0, %o0
.L8:
	jmp	%o7+8
	 mov	1, %o0
	.size	isamaxf, .-isamaxf
	.section	.rodata.cst4
	.align 4
.LC1:
	.long	0
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	save	%sp, -96, %sp
	call	genx, 0
	 mov	0, %i0
	mov	1, %o2
	mov	%o0, %i5
	mov	1000, %o0
	call	isamax, 0
	 mov	%i5, %o1
	sethi	%hi(.LC1), %g1
	mov	%i5, %o0
	ld	[%g1+%lo(.LC1)], %f12
	mov	0, %g1
.L15:
	ld	[%o0], %f8
	fstod	%f12, %f10
	fstod	%f8, %f8
	fabss	%f8, %f8
	fcmped	%f8, %f10
	nop
	fbule	.L13
	 nop
	mov	%g1, %i0
	fdtos	%f8, %f12
.L13:
	add	%g1, 1, %g1
	cmp	%g1, 1000
	bne	.L15
	 add	%o0, 4, %o0
	jmp	%i7+8
	 restore %i0, 1, %o0
	.size	main, .-main
	.ident	"GCC: (Buildroot 2014.08-g03a6b53-dirty) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
