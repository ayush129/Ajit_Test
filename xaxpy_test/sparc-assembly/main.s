	.file	"main.c"
	.section	".text"
	.align 4
	.global saxpyf
	.type	saxpyf, #function
	.proc	0106
saxpyf:
	add	%sp, -80, %sp
	st	%o1, [%sp+76]
	mov	%o0, %g4
	ld	[%sp+76], %f8
	cmp	%o5, 1
	bne	.L11
	 mov	%o4, %o0
	cmp	%o3, 1
	bne	.L11
	 sra	%g4, 31, %g2
	srl	%g2, 30, %g2
	mov	0, %g1
	add	%g4, %g2, %g3
	and	%g3, 3, %g3
	sub	%g3, %g2, %g3
	cmp	%g3, 0
	ble	.L8
	 sll	%g3, 2, %g2
	ld	[%o2+%g1], %f9
.L18:
	ld	[%o0+%g1], %f10
	fmuls	%f8, %f9, %f9
	fadds	%f10, %f9, %f9
	st	%f9, [%o0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g2
	bne,a	.L18
	 ld	[%o2+%g1], %f9
.L8:
	add	%g3, 3, %g1
	cmp	%g4, %g1
	ble	.L11
	 add	%g3, 1, %o5
	add	%o0, 20, %g2
	sll	%o5, 2, %o5
	add	%g4, -4, %g4
	add	%o0, %o5, %g1
	sub	%g4, %g3, %g4
	add	%o2, %o5, %o2
	and	%g4, -4, %g4
	add	%g3, %g4, %g3
	sll	%g3, 2, %g3
	add	%g2, %g3, %g2
.L9:
	ld	[%o2-4], %f9
	ld	[%g1-4], %f13
	fmuls	%f8, %f9, %f9
	fadds	%f13, %f9, %f9
	ld	[%g1], %f12
	st	%f9, [%g1-4]
	ld	[%o2], %f9
	fmuls	%f8, %f9, %f9
	fadds	%f12, %f9, %f9
	ld	[%g1+4], %f11
	st	%f9, [%g1]
	ld	[%o2+4], %f9
	fmuls	%f8, %f9, %f9
	fadds	%f11, %f9, %f9
	ld	[%g1+8], %f10
	st	%f9, [%g1+4]
	ld	[%o2+8], %f9
	fmuls	%f8, %f9, %f9
	fadds	%f10, %f9, %f9
	st	%f9, [%g1+8]
	add	%g1, 16, %g1
	cmp	%g1, %g2
	bne	.L9
	 add	%o2, 16, %o2
.L11:
	jmp	%o7+8
	 sub	%sp, -80, %sp
	.size	saxpyf, .-saxpyf
	.align 4
	.global u8axpyf
	.type	u8axpyf, #function
	.proc	0114
u8axpyf:
	save	%sp, -96, %sp
	mov	%i0, %o7
	cmp	%i5, 1
	bne	.L38
	 mov	%i4, %i0
	cmp	%i3, 1
	bne	.L38
	 sra	%o7, 31, %g2
	srl	%g2, 30, %g2
	add	%o7, %g2, %g4
	and	%g4, 3, %g4
	sub	%g4, %g2, %g4
	cmp	%g4, 0
	ble	.L25
	 mov	0, %g1
	ldub	[%i2+%g1], %g2
.L36:
	ldub	[%i0+%g1], %g3
	smul	%i1, %g2, %g2
	add	%g2, %g3, %g2
	stb	%g2, [%i0+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %g4
	bne,a	.L36
	 ldub	[%i2+%g1], %g2
.L25:
	add	%g4, 3, %g1
	cmp	%o7, %g1
	ble	.L38
	 add	%g4, 4, %i3
	add	%o7, -4, %o7
	add	%i0, %i3, %i3
	sub	%o7, %g4, %o7
	add	%i0, %g4, %g1
	and	%o7, -4, %o7
	add	%i2, %g4, %i2
	add	%i3, %o7, %i3
.L26:
	ldub	[%i2], %g2
	ldub	[%g1], %i4
	smul	%i1, %g2, %g2
	add	%g2, %i4, %g2
	ldub	[%g1+1], %i5
	stb	%g2, [%g1]
	ldub	[%i2+1], %g2
	smul	%i1, %g2, %g2
	add	%g2, %i5, %g2
	ldub	[%g1+2], %g4
	stb	%g2, [%g1+1]
	ldub	[%i2+2], %g2
	smul	%i1, %g2, %g2
	add	%g2, %g4, %g2
	ldub	[%g1+3], %g3
	stb	%g2, [%g1+2]
	ldub	[%i2+3], %g2
	smul	%i1, %g2, %g2
	add	%g2, %g3, %g2
	stb	%g2, [%g1+3]
	add	%g1, 4, %g1
	cmp	%g1, %i3
	bne	.L26
	 add	%i2, 4, %i2
.L38:
	jmp	%i7+8
	 restore
	.size	u8axpyf, .-u8axpyf
	.align 4
	.global u16axpyf
	.type	u16axpyf, #function
	.proc	0115
u16axpyf:
	save	%sp, -96, %sp
	mov	%i0, %o7
	cmp	%i5, 1
	bne	.L58
	 mov	%i4, %i0
	cmp	%i3, 1
	bne	.L58
	 sra	%o7, 31, %g2
	mov	%i1, %i5
	srl	%g2, 30, %g2
	mov	0, %g1
	add	%o7, %g2, %i4
	and	%i4, 3, %i4
	sub	%i4, %g2, %i4
	cmp	%i4, 0
	ble	.L46
	 add	%i4, %i4, %g4
	lduh	[%i2+%g1], %g2
.L56:
	lduh	[%i0+%g1], %g3
	smul	%g2, %i5, %g2
	add	%g2, %g3, %g2
	sth	%g2, [%i0+%g1]
	add	%g1, 2, %g1
	cmp	%g1, %g4
	bne,a	.L56
	 lduh	[%i2+%g1], %g2
.L46:
	add	%i4, 3, %g1
	cmp	%o7, %g1
	ble	.L58
	 add	%i4, %i4, %g2
	add	%i0, 8, %i3
	add	%o7, -4, %o7
	add	%i0, %g2, %g1
	sub	%o7, %i4, %o7
	add	%i2, %g2, %i2
	and	%o7, -4, %o7
	add	%i4, %o7, %i4
	add	%i4, %i4, %i4
	add	%i3, %i4, %i3
.L47:
	lduh	[%i2], %g2
	lduh	[%g1], %i4
	smul	%g2, %i1, %g2
	add	%g2, %i4, %g2
	lduh	[%g1+2], %i5
	sth	%g2, [%g1]
	lduh	[%i2+2], %g2
	smul	%g2, %i1, %g2
	add	%g2, %i5, %g2
	lduh	[%g1+4], %g4
	sth	%g2, [%g1+2]
	lduh	[%i2+4], %g2
	smul	%g2, %i1, %g2
	add	%g2, %g4, %g2
	lduh	[%g1+6], %g3
	sth	%g2, [%g1+4]
	lduh	[%i2+6], %g2
	smul	%g2, %i1, %g2
	add	%g2, %g3, %g2
	sth	%g2, [%g1+6]
	add	%g1, 8, %g1
	cmp	%g1, %i3
	bne	.L47
	 add	%i2, 8, %i2
.L58:
	jmp	%i7+8
	 restore
	.size	u16axpyf, .-u16axpyf
	.align 4
	.global u32axpyf
	.type	u32axpyf, #function
	.proc	0116
u32axpyf:
	save	%sp, -96, %sp
	mov	%i0, %o7
	cmp	%i5, 1
	bne	.L78
	 mov	%i4, %i0
	cmp	%i3, 1
	bne	.L78
	 sra	%o7, 31, %g2
	mov	0, %g1
	srl	%g2, 30, %g2
	add	%o7, %g2, %i5
	and	%i5, 3, %i5
	sub	%i5, %g2, %i5
	cmp	%i5, 0
	ble	.L66
	 sll	%i5, 2, %g4
	ld	[%i2+%g1], %g2
.L76:
	ld	[%i0+%g1], %g3
	smul	%i1, %g2, %g2
	add	%g3, %g2, %g2
	st	%g2, [%i0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g4
	bne,a	.L76
	 ld	[%i2+%g1], %g2
.L66:
	add	%i5, 3, %g1
	cmp	%o7, %g1
	ble	.L78
	 add	%i5, 1, %g2
	add	%i0, 20, %i3
	sll	%g2, 2, %g2
	add	%o7, -4, %o7
	add	%i0, %g2, %g1
	sub	%o7, %i5, %o7
	add	%i2, %g2, %i2
	and	%o7, -4, %o7
	add	%i5, %o7, %i5
	sll	%i5, 2, %i5
	add	%i3, %i5, %i3
.L67:
	ld	[%i2-4], %g2
	ld	[%g1-4], %i4
	smul	%i1, %g2, %g2
	add	%i4, %g2, %g2
	ld	[%g1], %i5
	st	%g2, [%g1-4]
	ld	[%i2], %g2
	smul	%i1, %g2, %g2
	add	%i5, %g2, %g2
	ld	[%g1+4], %g4
	st	%g2, [%g1]
	ld	[%i2+4], %g2
	smul	%i1, %g2, %g2
	add	%g4, %g2, %g2
	ld	[%g1+8], %g3
	st	%g2, [%g1+4]
	ld	[%i2+8], %g2
	smul	%i1, %g2, %g2
	add	%g3, %g2, %g2
	st	%g2, [%g1+8]
	add	%g1, 16, %g1
	cmp	%g1, %i3
	bne	.L67
	 add	%i2, 16, %i2
.L78:
	jmp	%i7+8
	 restore
	.size	u32axpyf, .-u32axpyf
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1069547520
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	0106
main:
	save	%sp, -96, %sp
	call	genxd, 0
	 sethi	%hi(.LC0), %i2
	call	genxf, 0
	 mov	%o0, %i4
	call	genyd, 0
	 mov	%o0, %l6
	call	genyf, 0
	 mov	%o0, %i5
	mov	%o0, %i0
	ld	[%i2+%lo(.LC0)], %o1
	mov	200, %o0
	mov	%l6, %o2
	mov	1, %o3
	mov	%i0, %o4
	mov	1, %o5
	call	saxpy, 0
	 mov	200, %l5
	mov	0, %i3
	add	%i0, 20, %l3
	mov	%i2, %l2
	add	%i5, 4, %l1
	add	%i5, 8, %l0
	add	%i5, 20, %i1
.L119:
	add	%i3, 3, %l4
.L122:
	cmp	%l4, %l5
	bge	.L88
	 add	%i3, 1, %g2
	add	%l5, -4, %g3
	sll	%g2, 2, %g2
	sub	%g3, %i3, %g3
	add	%i0, %g2, %g1
	and	%g3, -4, %g3
	add	%l6, %g2, %g2
	add	%i3, %g3, %g3
	ld	[%l2+%lo(.LC0)], %f8
	sll	%g3, 2, %g3
	add	%l3, %g3, %g3
.L87:
	ld	[%g2-4], %f9
	ld	[%g1-4], %f13
	fmuls	%f9, %f8, %f9
	fadds	%f13, %f9, %f9
	ld	[%g1], %f12
	st	%f9, [%g1-4]
	ld	[%g2], %f9
	fmuls	%f9, %f8, %f9
	fadds	%f12, %f9, %f9
	ld	[%g1+4], %f11
	st	%f9, [%g1]
	ld	[%g2+4], %f9
	fmuls	%f9, %f8, %f9
	fadds	%f11, %f9, %f9
	ld	[%g1+8], %f10
	st	%f9, [%g1+4]
	ld	[%g2+8], %f9
	fmuls	%f9, %f8, %f9
	fadds	%f10, %f9, %f9
	st	%f9, [%g1+8]
	add	%g1, 16, %g1
	cmp	%g1, %g3
	bne	.L87
	 add	%g2, 16, %g2
.L88:
	mov	%l5, %o0
	mov	3, %o1
	mov	%i4, %o2
	mov	1, %o3
	mov	%i5, %o4
	call	u8axpy, 0
	 mov	1, %o5
	cmp	%i3, 0
	be	.L86
	 mov	0, %g1
	ldub	[%i4+%g1], %g2
.L123:
	ldub	[%i5+%g1], %g3
	add	%g2, %g2, %g4
	add	%g4, %g2, %g2
	add	%g2, %g3, %g2
	stb	%g2, [%i5+%g1]
	add	%g1, 1, %g1
	cmp	%g1, %i3
	bne,a	.L123
	 ldub	[%i4+%g1], %g2
.L86:
	cmp	%l4, %l5
	bge	.L90
	 add	%i3, %l1, %g3
	add	%l5, -4, %o3
	add	%i5, %i3, %g1
	sub	%o3, %i3, %o3
	add	%i4, %i3, %g2
	and	%o3, -4, %o3
	add	%g3, %o3, %o3
.L93:
	ldub	[%g2], %o5
	ldub	[%g1], %o7
	add	%o5, %o5, %o2
	add	%o2, %o5, %o5
	add	%o5, %o7, %o5
	ldub	[%g1+1], %g4
	stb	%o5, [%g1]
	ldub	[%g2+1], %o7
	add	%o7, %o7, %o5
	add	%o5, %o7, %o7
	add	%o7, %g4, %o7
	ldub	[%g1+2], %g3
	stb	%o7, [%g1+1]
	ldub	[%g2+2], %g4
	add	%g4, %g4, %o7
	add	%o7, %g4, %g4
	add	%g4, %g3, %g4
	ldub	[%g1+3], %o4
	stb	%g4, [%g1+2]
	ldub	[%g2+3], %g3
	add	%g3, %g3, %g4
	add	%g4, %g3, %g3
	add	%g3, %o4, %g3
	stb	%g3, [%g1+3]
	add	%g1, 4, %g1
	cmp	%g1, %o3
	bne	.L93
	 add	%g2, 4, %g2
.L90:
	mov	%l5, %o0
	mov	5, %o1
	mov	%i4, %o2
	mov	1, %o3
	mov	%i5, %o4
	call	u16axpy, 0
	 mov	1, %o5
	cmp	%i3, 0
	add	%i3, %i3, %o7
	be	.L92
	 mov	0, %g1
	lduh	[%i4+%g1], %g2
.L124:
	lduh	[%i5+%g1], %g3
	sll	%g2, 2, %g4
	add	%g4, %g2, %g2
	add	%g2, %g3, %g2
	sth	%g2, [%i5+%g1]
	add	%g1, 2, %g1
	cmp	%g1, %o7
	bne,a	.L124
	 lduh	[%i4+%g1], %g2
.L92:
	cmp	%l4, %l5
	bge	.L95
	 add	%i3, %i3, %g2
	add	%l5, -4, %o3
	add	%i5, %g2, %g1
	sub	%o3, %i3, %o3
	add	%i4, %g2, %g2
	and	%o3, -4, %o3
	add	%i3, %o3, %o3
	add	%o3, %o3, %o3
	add	%l0, %o3, %o3
.L99:
	lduh	[%g2], %o5
	lduh	[%g1], %o7
	sll	%o5, 2, %o2
	add	%o2, %o5, %o5
	add	%o5, %o7, %o5
	lduh	[%g1+2], %g4
	sth	%o5, [%g1]
	lduh	[%g2+2], %o7
	sll	%o7, 2, %o5
	add	%o5, %o7, %o7
	add	%o7, %g4, %o7
	lduh	[%g1+4], %g3
	sth	%o7, [%g1+2]
	lduh	[%g2+4], %g4
	sll	%g4, 2, %o7
	add	%o7, %g4, %g4
	add	%g4, %g3, %g4
	lduh	[%g1+6], %o4
	sth	%g4, [%g1+4]
	lduh	[%g2+6], %g3
	sll	%g3, 2, %g4
	add	%g4, %g3, %g3
	add	%g3, %o4, %g3
	sth	%g3, [%g1+6]
	add	%g1, 8, %g1
	cmp	%g1, %o3
	bne	.L99
	 add	%g2, 8, %g2
.L95:
	mov	%l5, %o0
	mov	100, %o1
	mov	%i4, %o2
	mov	1, %o3
	mov	%i5, %o4
	call	u32axpy, 0
	 mov	1, %o5
	cmp	%i3, 0
	sll	%i3, 2, %g4
	be	.L98
	 mov	0, %g1
	ld	[%i4+%g1], %g2
.L125:
	ld	[%i5+%g1], %g3
	smul	%g2, 100, %g2
	add	%g3, %g2, %g2
	st	%g2, [%i5+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g4
	bne,a	.L125
	 ld	[%i4+%g1], %g2
.L98:
	cmp	%l4, %l5
	bge	.L101
	 add	%l5, -4, %g3
	add	%i3, 1, %g2
	sll	%g2, 2, %g2
	sub	%g3, %i3, %g3
	add	%i5, %g2, %g1
	and	%g3, -4, %g3
	add	%i4, %g2, %g2
	add	%i3, %g3, %i3
	sll	%i3, 2, %i3
	add	%i1, %i3, %i3
.L105:
	ld	[%g2-4], %g3
	ld	[%g1-4], %o4
	smul	%g3, 100, %g3
	add	%o4, %g3, %g3
	ld	[%g1], %o5
	st	%g3, [%g1-4]
	ld	[%g2], %g3
	smul	%g3, 100, %g3
	add	%o5, %g3, %g3
	ld	[%g1+4], %o7
	st	%g3, [%g1]
	ld	[%g2+4], %g3
	smul	%g3, 100, %g3
	add	%o7, %g3, %g3
	ld	[%g1+8], %g4
	st	%g3, [%g1+4]
	ld	[%g2+8], %g3
	smul	%g3, 100, %g3
	add	%g4, %g3, %g3
	st	%g3, [%g1+8]
	add	%g1, 16, %g1
	cmp	%g1, %i3
	bne	.L105
	 add	%g2, 16, %g2
.L101:
	add	%l5, 600, %l5
	cmp	%l5, 3800
	be	.L127
	 mov	%l5, %o0
	ld	[%i2+%lo(.LC0)], %o1
	mov	%l6, %o2
	mov	1, %o3
	mov	%i0, %o4
	call	saxpy, 0
	 mov	1, %o5
	and	%l5, 3, %i3
	mov	0, %g1
	sll	%i3, 2, %g2
	cmp	%i3, 0
	be	.L119
	 ld	[%i2+%lo(.LC0)], %f10
	ld	[%l6+%g1], %f8
.L126:
	ld	[%i0+%g1], %f9
	fmuls	%f8, %f10, %f8
	fadds	%f9, %f8, %f8
	st	%f8, [%i0+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g2
	bne,a	.L126
	 ld	[%l6+%g1], %f8
	b	.L122
	 add	%i3, 3, %l4
.L127:
	jmp	%i7+8
	 restore
	.size	main, .-main
	.ident	"GCC: (Buildroot 2014.08-g03a6b53-dirty) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
