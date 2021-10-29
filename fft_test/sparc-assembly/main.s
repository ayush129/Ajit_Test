	.file	"main.c"
	.section	".text"
	.align 4
	.global Bit_Reversenv
	.type	Bit_Reversenv, #function
	.proc	0106
Bit_Reversenv:
	save	%sp, -96, %sp
	sra	%i1, 1, %i5
	cmp	%i5, 0
	ble	.L34
	 sra	%i1, 2, %o7
	cmp	%i5, 1
	ble	.L29
	 mov	1, %i2
.L3:
	sll	%i1, 3, %i3
	add	%i0, 8, %i4
	add	%i0, %i3, %i3
	mov	0, %g2
	mov	0, %g4
	and	%i2, 0xff, %i2
.L4:
	cmp	%i5, %g2
	ble	.L9
	 mov	1, %g1
	mov	0, %g1
.L9:
	andcc	%g1, 0xff, %g0
	be	.L8
	 mov	%i5, %g1
	cmp	%i2, 0
	bne,a	.L31
	 sub	%g2, %g1, %g2
	b	.L30
	 add	%g4, 1, %g4
.L13:
	andcc	%g3, 0xff, %g0
	be,a	.L32
	 add	%g4, 1, %g4
	sub	%g2, %g1, %g2
.L31:
	sra	%g1, 1, %g1
	cmp	%g2, %g1
	bge	.L12
	 mov	1, %g3
	mov	0, %g3
.L12:
	andcc	%g3, 0xff, %g0
	be	.L8
	 cmp	%g1, 1
	bg	.L13
	 mov	1, %g3
	mov	0, %g3
	andcc	%g3, 0xff, %g0
	bne,a	.L31
	 sub	%g2, %g1, %g2
.L8:
	add	%g4, 1, %g4
.L30:
.L32:
	cmp	%g4, %i5
	be	.L34
	 add	%g2, %g1, %g2
	cmp	%g2, %g4
	ble,a	.L33
	 add	%i3, -8, %i3
	sll	%g2, 3, %g1
	ldd	[%i4], %f8
	ldd	[%i0+%g1], %f10
	std	%f8, [%i0+%g1]
	srl	%g2, 31, %g1
	add	%g1, %g2, %g1
	sra	%g1, 1, %g1
	cmp	%o7, %g1
	ble	.L6
	 std	%f10, [%i4]
	ldd	[%i3-16], %f10
	xnor	%g0, %g2, %g1
	add	%g1, %i1, %g1
	sll	%g1, 3, %g1
	ldd	[%i0+%g1], %f8
	std	%f8, [%i3-16]
	std	%f10, [%i0+%g1]
.L6:
	add	%i3, -8, %i3
.L33:
	b	.L4
	 add	%i4, 8, %i4
.L34:
	jmp	%i7+8
	 restore
.L29:
	b	.L3
	 mov	0, %i2
	.size	Bit_Reversenv, .-Bit_Reversenv
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	0
	.align 4
.LC1:
	.long	1065353216
	.align 4
.LC2:
	.long	1086918618
	.align 4
.LC3:
	.long	1056964608
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	-1073741824
	.long	0
	.section	".text"
	.align 4
	.global FFTnv
	.type	FFTnv, #function
	.proc	0106
FFTnv:
	save	%sp, -128, %sp
	mov	%i0, %o0
	call	Bit_Reversenv, 0
	 mov	%i1, %o1
	add	%i1, %i1, %i3
	cmp	%i3, 2
	ble	.L50
	 mov	%o0, %i0
	st	%i2, [%fp-24]
	mov	2, %i5
	ld	[%fp-24], %f8
	sethi	%hi(.LC3), %i2
	fitos	%f8, %f8
	or	%i2, %lo(.LC3), %i2
	st	%f8, [%fp-8]
	sethi	%hi(.LC4), %l2
	sethi	%hi(.LC0), %l1
	b	.L36
	 sethi	%hi(.LC1), %l0
.L38:
	cmp	%i3, %g4
	ble	.L50
	 mov	%g4, %i5
.L36:
	ld	[%fp-8], %f10
	st	%i5, [%fp-24]
	ld	[%fp-24], %f9
	sethi	%hi(.LC2), %g1
	fitos	%f9, %f8
	ld	[%g1+%lo(.LC2)], %f9
	fdivs	%f9, %f8, %f8
	fmuls	%f10, %f8, %f8
	fstod	%f8, %f10
	st	%f8, [%fp-20]
	std	%f10, [%fp-32]
	call	sin, 0
	 ldd	[%fp-32], %o0
	ld	[%i2], %f9
	ld	[%fp-20], %f8
	fmuls	%f8, %f9, %f8
	fstod	%f8, %f10
	std	%f0, [%fp-16]
	std	%f10, [%fp-32]
	call	sin, 0
	 ldd	[%fp-32], %o0
	cmp	%i5, 1
	ble	.L38
	 add	%i5, %i5, %g4
	ldd	[%fp-16], %f10
	fdtos	%f0, %f0
	ldd	[%l2+%lo(.LC4)], %f8
	fstod	%f0, %f0
	sll	%i5, 2, %o5
	fmuld	%f0, %f8, %f8
	fdtos	%f10, %f15
	fmuld	%f0, %f8, %f0
	mov	%i0, %o7
	fdtos	%f0, %f0
	sll	%g4, 2, %i4
	ld	[%l1+%lo(.LC0)], %f14
	ld	[%l0+%lo(.LC1)], %f11
	mov	1, %i1
	add	%o5, 4, %o5
.L40:
	add	%o5, %o7, %g2
	mov	%o7, %g1
	cmp	%i3, %i1
	bl	.L42
	 mov	%i1, %g3
.L39:
	ld	[%g2], %f10
	ld	[%fp-4], %f16
	fmuls	%f10, %f16, %f9
	fmuls	%f11, %f10, %f10
	ld	[%g2-4], %f8
	ld	[%g1], %f12
	fmuls	%f8, %f11, %f13
	fmuls	%f14, %f8, %f8
	fadds	%f13, %f9, %f9
	fadds	%f8, %f10, %f8
	fsubs	%f12, %f9, %f12
	st	%f12, [%g2-4]
	ld	[%g1+4], %f10
	fsubs	%f10, %f8, %f10
	st	%f10, [%g2]
	ld	[%g1], %f12
	ld	[%g1+4], %f10
	fadds	%f12, %f9, %f9
	fadds	%f10, %f8, %f8
	st	%f9, [%g1]
	st	%f8, [%g1+4]
	add	%g3, %g4, %g3
	add	%g2, %i4, %g2
	cmp	%i3, %g3
	bge	.L39
	 add	%g1, %i4, %g1
.L42:
	ld	[%fp-4], %f9
	fmuls	%f14, %f0, %f10
	fmuls	%f9, %f15, %f8
	fmuls	%f11, %f15, %f9
	fadds	%f10, %f9, %f9
	fadds	%f14, %f9, %f14
	fnegs	%f14, %f10
	st	%f10, [%fp-4]
	fmuls	%f11, %f0, %f12
	add	%i1, 2, %i1
	fadds	%f12, %f8, %f8
	add	%o7, 8, %o7
	cmp	%i1, %i5
	bl	.L40
	 fadds	%f8, %f11, %f11
	cmp	%i3, %g4
	bg	.L36
	 mov	%g4, %i5
.L50:
	jmp	%i7+8
	 restore
	.size	FFTnv, .-FFTnv
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	0106
main:
	save	%sp, -96, %sp
	call	gen, 0
	 mov	0, %i0
	mov	512, %o1
	mov	%o0, %i5
	call	FFT, 0
	 mov	-1, %o2
	mov	%i5, %o0
	mov	512, %o1
	call	FFTnv, 0
	 mov	-1, %o2
	mov	%i5, %o0
	mov	1024, %o1
	call	FFT, 0
	 mov	-1, %o2
	mov	%i5, %o0
	mov	1024, %o1
	call	FFTnv, 0
	 mov	-1, %o2
	jmp	%i7+8
	 restore
	.size	main, .-main
	.ident	"GCC: (Buildroot 2014.08-g03a6b53) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
