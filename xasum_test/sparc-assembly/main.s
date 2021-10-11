	.file	"main.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	0
	.section	".text"
	.align 4
	.global sasumf
	.type	sasumf, #function
	.proc	06
sasumf:
	cmp	%o0, 0
	ble	.L4
	 sethi	%hi(.LC0), %g2
	sll	%o0, 2, %o0
	mov	0, %g1
	ld	[%g2+%lo(.LC0)], %f0
.L3:
	ld	[%o1+%g1], %f8
	fstod	%f0, %f0
	add	%g1, 4, %g1
	fstod	%f8, %f8
	cmp	%g1, %o0
	fabss	%f8, %f8
	faddd	%f0, %f8, %f0
	bne	.L3
	 fdtos	%f0, %f0
	jmp	%o7+8
	 nop
.L4:
	sethi	%hi(.LC0), %g1
	jmp	%o7+8
	 ld	[%g1+%lo(.LC0)], %f0
	.size	sasumf, .-sasumf
	.align 4
	.global u8asumf
	.type	u8asumf, #function
	.proc	02
u8asumf:
	cmp	%o0, 0
	ble	.L8
	 mov	0, %g2
	add	%o1, %o0, %o0
	ldub	[%o1], %g1
.L14:
	add	%g1, %g2, %g3
	sub	%g2, %g1, %g2
	sll	%g1, 24, %g1
	cmp	%g1, 0
	bge,a	.L10
	 mov	%g3, %g2
.L10:
	add	%o1, 1, %o1
	cmp	%o1, %o0
	bne,a	.L14
	 ldub	[%o1], %g1
.L8:
	sll	%g2, 24, %o0
	jmp	%o7+8
	 sra	%o0, 24, %o0
	.size	u8asumf, .-u8asumf
	.align 4
	.global u16asumf
	.type	u16asumf, #function
	.proc	03
u16asumf:
	cmp	%o0, 0
	ble	.L16
	 mov	0, %g3
	add	%o0, %o0, %o0
	mov	0, %g1
	lduh	[%o1+%g1], %g2
.L22:
	add	%g2, %g3, %g4
	sub	%g3, %g2, %g3
	sll	%g2, 16, %g2
	cmp	%g2, 0
	bge,a	.L18
	 mov	%g4, %g3
.L18:
	add	%g1, 2, %g1
	cmp	%g1, %o0
	bne,a	.L22
	 lduh	[%o1+%g1], %g2
.L16:
	sll	%g3, 16, %o0
	jmp	%o7+8
	 sra	%o0, 16, %o0
	.size	u16asumf, .-u16asumf
	.align 4
	.global u32asumf
	.type	u32asumf, #function
	.proc	04
u32asumf:
	cmp	%o0, 0
	ble	.L28
	 sll	%o0, 2, %g4
	mov	0, %g1
	mov	0, %o0
	ld	[%o1+%g1], %g2
.L30:
	add	%o0, %g2, %g3
	cmp	%g2, 0
	bl	.L26
	 sub	%o0, %g2, %o0
	mov	%g3, %o0
.L26:
	add	%g1, 4, %g1
	cmp	%g1, %g4
	bne,a	.L30
	 ld	[%o1+%g1], %g2
	jmp	%o7+8
	 nop
.L28:
	jmp	%o7+8
	 mov	0, %o0
	.size	u32asumf, .-u32asumf
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	04
main:
	save	%sp, -104, %sp
	call	gend, 0
	 nop
	call	genf, 0
	 mov	%o0, %i4
	mov	1, %o2
	mov	%o0, %i5
	mov	1000, %o0
	call	sasum, 0
	 mov	%i5, %o1
	mov	1000, %o0
	mov	%i5, %o1
	call	sasumf, 0
	 mov	1, %o2
	mov	%i4, %o1
	st	%f0, [%fp-4]
	mov	1, %o2
	call	u8asum, 0
	 mov	1000, %o0
	mov	%i4, %o1
	mov	1, %o2
	call	u8asumf, 0
	 mov	1000, %o0
	mov	%i4, %o1
	mov	%o0, %i2
	mov	1, %o2
	call	u16asum, 0
	 mov	1000, %o0
	mov	0, %g1
	mov	0, %g3
.L34:
	lduh	[%i4+%g1], %g2
	add	%g2, %g3, %g4
	sub	%g3, %g2, %i5
	sll	%g2, 16, %g2
	cmp	%g2, 0
	bge,a	.L33
	 mov	%g4, %i5
.L33:
	add	%g1, 2, %g1
	cmp	%g1, 2000
	bne	.L34
	 mov	%i5, %g3
	mov	1000, %o0
	mov	%i4, %o1
	call	u32asum, 0
	 mov	1, %o2
	mov	0, %g1
	mov	0, %g3
.L37:
	ld	[%i4+%g1], %g2
	add	%g2, %g3, %i3
	cmp	%g2, 0
	bl	.L36
	 sub	%g3, %g2, %g4
	mov	%i3, %g4
.L36:
	add	%g1, 4, %g1
	cmp	%g1, 4000
	bne	.L37
	 mov	%g4, %g3
	sll	%i2, 24, %i2
	sra	%i2, 24, %i2
	st	%i2, [%fp-8]
	sll	%i5, 16, %i5
	ld	[%fp-8], %f8
	sra	%i5, 16, %i5
	st	%i5, [%fp-8]
	ld	[%fp-4], %f11
	ld	[%fp-8], %f9
	st	%g4, [%fp-8]
	fitos	%f9, %f10
	fitos	%f8, %f8
	fadds	%f11, %f8, %f8
	ld	[%fp-8], %f11
	fadds	%f8, %f10, %f8
	fitos	%f11, %f9
	fadds	%f8, %f9, %f8
	fstoi	%f8, %f8
	st	%f8, [%fp-8]
	ld	[%fp-8], %i0
	jmp	%i7+8
	 restore
	.size	main, .-main
	.ident	"GCC: (Buildroot 2014.08-g03a6b53) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
