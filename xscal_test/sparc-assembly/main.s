	.file	"main.c"
	.section	".text"
	.align 4
	.global sscalf
	.type	sscalf, #function
	.proc	0106
sscalf:
	add	%sp, -80, %sp
	st	%o1, [%sp+76]
	sll	%o0, 2, %g2
	ld	[%sp+76], %f9
	cmp	%o0, 0
	ble	.L7
	 mov	0, %g1
	ld	[%o2+%g1], %f8
.L9:
	fmuls	%f8, %f9, %f8
	st	%f8, [%o2+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g2
	bne,a	.L9
	 ld	[%o2+%g1], %f8
.L7:
	mov	%o2, %o0
	jmp	%o7+8
	 sub	%sp, -80, %sp
	.size	sscalf, .-sscalf
	.align 4
	.global u16scalf
	.type	u16scalf, #function
	.proc	0115
u16scalf:
	add	%o0, %o0, %g3
	cmp	%o0, 0
	ble	.L16
	 mov	0, %g1
	lduh	[%o2+%g1], %g2
.L17:
	smul	%o1, %g2, %g2
	sth	%g2, [%o2+%g1]
	add	%g1, 2, %g1
	cmp	%g1, %g3
	bne,a	.L17
	 lduh	[%o2+%g1], %g2
.L16:
	jmp	%o7+8
	 mov	%o2, %o0
	.size	u16scalf, .-u16scalf
	.align 4
	.global u32scalf
	.type	u32scalf, #function
	.proc	0116
u32scalf:
	sll	%o0, 2, %g3
	cmp	%o0, 0
	ble	.L24
	 mov	0, %g1
	ld	[%o2+%g1], %g2
.L25:
	smul	%g2, %o1, %g2
	st	%g2, [%o2+%g1]
	add	%g1, 4, %g1
	cmp	%g1, %g3
	bne,a	.L25
	 ld	[%o2+%g1], %g2
.L24:
	jmp	%o7+8
	 mov	%o2, %o0
	.size	u32scalf, .-u32scalf
	.align 4
	.global u8scalf
	.type	u8scalf, #function
	.proc	0114
u8scalf:
	mov	%o2, %g1
	cmp	%o0, 0
	ble	.L32
	 add	%o2, %o0, %g3
	ldub	[%g1], %g2
.L33:
	smul	%o1, %g2, %g2
	stb	%g2, [%g1]
	add	%g1, 1, %g1
	cmp	%g1, %g3
	bne,a	.L33
	 ldub	[%g1], %g2
.L32:
	jmp	%o7+8
	 mov	%o2, %o0
	.size	u8scalf, .-u8scalf
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1069547520
	.section	.text.startup,"ax",@progbits
	.align 4
	.global main
	.type	main, #function
	.proc	0114
main:
	save	%sp, -96, %sp
	call	gend, 0
	 sethi	%hi(.LC0), %i3
	call	genf, 0
	 mov	%o0, %i5
	mov	%o0, %i4
	mov	%o0, %o2
	ld	[%i3+%lo(.LC0)], %o1
	mov	1, %o3
	call	sscal, 0
	 mov	1000, %o0
	ld	[%i3+%lo(.LC0)], %o1
	mov	%i4, %o2
	mov	1, %o3
	call	sscalf, 0
	 mov	1000, %o0
	mov	%i5, %o2
	mov	3, %o1
	mov	1, %o3
	call	u8scal, 0
	 mov	1000, %o0
	mov	%i5, %o2
	mov	3, %o1
	mov	1, %o3
	call	u8scalf, 0
	 mov	1000, %o0
	mov	%i5, %o2
	mov	%o0, %i0
	mov	5, %o1
	mov	1, %o3
	call	u16scal, 0
	 mov	1000, %o0
	mov	%i5, %o2
	mov	5, %o1
	mov	1, %o3
	call	u16scalf, 0
	 mov	1000, %o0
	mov	%i5, %o2
	mov	100, %o1
	mov	1, %o3
	call	u32scal, 0
	 mov	1000, %o0
	mov	100, %o1
	mov	%i5, %o2
	mov	1, %o3
	call	u32scalf, 0
	 mov	1000, %o0
	jmp	%i7+8
	 restore
	.size	main, .-main
	.ident	"GCC: (Buildroot 2014.08-g03a6b53) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
