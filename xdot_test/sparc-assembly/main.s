	.file	"main.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	0
	.section	".text"
	.align 4
	.global sdotf
	.type	sdotf, #function
	.proc	06
sdotf:
	cmp	%o0, 0
	ble	.L4
	 sethi	%hi(.LC0), %g1
	sll	%o2, 2, %o2
	ld	[%g1+%lo(.LC0)], %f0
	sll	%o4, 2, %o4
	mov	0, %g1
.L3:
	ld	[%o1], %f9
	ld	[%o3], %f8
	add	%g1, 1, %g1
	fmuls	%f9, %f8, %f8
	add	%o1, %o2, %o1
	fadds	%f0, %f8, %f0
	cmp	%g1, %o0
	bne	.L3
	 add	%o3, %o4, %o3
	jmp	%o7+8
	 nop
.L4:
	jmp	%o7+8
	 ld	[%g1+%lo(.LC0)], %f0
	.size	sdotf, .-sdotf
	.align 4
	.global u8dotf
	.type	u8dotf, #function
	.proc	014
u8dotf:
	cmp	%o0, 0
	ble	.L10
	 mov	0, %g2
	mov	0, %g1
.L9:
	ldub	[%o1], %g4
	ldub	[%o3], %g3
	add	%g1, 1, %g1
	smul	%g4, %g3, %g3
	add	%o1, %o2, %o1
	add	%g2, %g3, %g2
	cmp	%g1, %o0
	bne	.L9
	 add	%o3, %o4, %o3
	mov	%g2, %o0
.L8:
	jmp	%o7+8
	 and	%o0, 0xff, %o0
.L10:
	b	.L8
	 mov	0, %o0
	.size	u8dotf, .-u8dotf
	.align 4
	.global u16dotf
	.type	u16dotf, #function
	.proc	015
u16dotf:
	cmp	%o0, 0
	ble	.L13
	 mov	0, %g2
	add	%o2, %o2, %o2
	add	%o4, %o4, %o4
	mov	0, %g2
	mov	0, %g1
.L14:
	lduh	[%o1], %g4
	lduh	[%o3], %g3
	add	%g1, 1, %g1
	smul	%g4, %g3, %g3
	add	%o1, %o2, %o1
	add	%g2, %g3, %g2
	cmp	%g1, %o0
	bne	.L14
	 add	%o3, %o4, %o3
.L13:
	sll	%g2, 16, %o0
	jmp	%o7+8
	 srl	%o0, 16, %o0
	.size	u16dotf, .-u16dotf
	.align 4
	.global u32dotf
	.type	u32dotf, #function
	.proc	016
u32dotf:
	cmp	%o0, 0
	ble	.L20
	 sll	%o2, 2, %o2
	sll	%o4, 2, %o4
	mov	0, %g2
	mov	0, %g1
.L19:
	ld	[%o3], %g4
	ld	[%o1], %g3
	add	%g1, 1, %g1
	smul	%g4, %g3, %g3
	add	%o1, %o2, %o1
	add	%g3, %g2, %g2
	cmp	%g1, %o0
	bne	.L19
	 add	%o3, %o4, %o3
	jmp	%o7+8
	 mov	%g2, %o0
.L20:
	jmp	%o7+8
	 mov	0, %o0
	.size	u32dotf, .-u32dotf
	.section	.rodata.cst4
	.align 4
.LC1:
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	1106247680
	.long	0
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	014
main:
	save	%sp, -104, %sp
	call	genxd, 0
	 nop
	call	genxf, 0
	 mov	%o0, %i4
	call	genyd, 0
	 mov	%o0, %i2
	call	genyf, 0
	 mov	%o0, %i5
	mov	%i2, %o1
	mov	%o0, %i3
	mov	1, %o2
	mov	1000, %o0
	mov	%i3, %o3
	call	sdot, 0
	 mov	1, %o4
	sethi	%hi(.LC1), %g2
	mov	0, %g1
	ld	[%g2+%lo(.LC1)], %f8
.L23:
	ld	[%i2+%g1], %f10
	ld	[%i3+%g1], %f9
	add	%g1, 4, %g1
	fmuls	%f10, %f9, %f9
	cmp	%g1, 4000
	bne	.L23
	 fadds	%f8, %f9, %f8
	st	%f8, [%fp-4]
	mov	1000, %o0
	mov	%i4, %o1
	mov	1, %o2
	mov	%i5, %o3
	call	u8dot, 0
	 mov	1, %o4
	mov	0, %i2
	mov	0, %g1
	ld	[%fp-4], %f8
.L24:
	ldub	[%i4+%g1], %g3
	ldub	[%i5+%g1], %g2
	add	%g1, 1, %g1
	smul	%g3, %g2, %g2
	cmp	%g1, 1000
	bne	.L24
	 add	%i2, %g2, %i2
	st	%f8, [%fp-4]
	mov	1000, %o0
	mov	%i4, %o1
	mov	1, %o2
	mov	%i5, %o3
	call	u16dot, 0
	 mov	1, %o4
	mov	0, %i3
	mov	0, %g1
	ld	[%fp-4], %f8
.L25:
	lduh	[%i4+%g1], %g3
	lduh	[%i5+%g1], %g2
	add	%g1, 2, %g1
	smul	%g3, %g2, %g2
	cmp	%g1, 2000
	bne	.L25
	 add	%i3, %g2, %i3
	st	%f8, [%fp-4]
	mov	1000, %o0
	mov	%i4, %o1
	mov	1, %o2
	mov	%i5, %o3
	call	u32dot, 0
	 mov	1, %o4
	mov	0, %g1
	mov	0, %g2
	ld	[%fp-4], %f8
.L26:
	ld	[%i5+%g1], %g4
	ld	[%i4+%g1], %g3
	add	%g1, 4, %g1
	smul	%g4, %g3, %g3
	cmp	%g1, 4000
	bne	.L26
	 add	%g3, %g2, %g2
	and	%i2, 255, %i2
	st	%i2, [%fp-8]
	ld	[%fp-8], %f12
	st	%g2, [%fp-8]
	sethi	%hi(64512), %g1
	ld	[%fp-8], %f10
	or	%g1, 1023, %g1
	and	%i3, %g1, %i3
	st	%i3, [%fp-8]
	fitos	%f12, %f12
	ld	[%fp-8], %f11
	fadds	%f12, %f8, %f12
	cmp	%g2, 0
	fitod	%f10, %f8
	fitos	%f11, %f10
	bl	.L32
	 fadds	%f12, %f10, %f12
.L27:
	fdtos	%f8, %f8
	fadds	%f12, %f8, %f8
	fstoi	%f8, %f8
	st	%f8, [%fp-8]
	ld	[%fp-8], %i0
	and	%i0, 0xff, %i0
	jmp	%i7+8
	 restore
.L32:
	sethi	%hi(.LC2), %g1
	ldd	[%g1+%lo(.LC2)], %f10
	b	.L27
	 faddd	%f8, %f10, %f8
	.size	main, .-main
	.ident	"GCC: (Buildroot 2014.08-g03a6b53-dirty) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
