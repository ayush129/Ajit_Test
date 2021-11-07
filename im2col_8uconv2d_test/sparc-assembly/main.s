	.file	"main.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 4
	.global conv
	.type	conv, #function
	.proc	0114
conv:
.LFB0:
	.file 1 "main.c"
	.loc 1 7 0
	.cfi_startproc
	save	%sp, -136, %sp
.LCFI0:
	.cfi_window_save
	.cfi_register 15, 31
	.cfi_def_cfa_register 30
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	st	%i5, [%fp+88]
	.loc 1 8 0
	ld	[%fp+68], %g2
	ld	[%fp+80], %g1
	sub	%g2, %g1, %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-24]
	ld	[%fp+72], %g2
	ld	[%fp+84], %g1
	sub	%g2, %g1, %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-28]
	.loc 1 10 0
	st	%g0, [%fp-20]
	.loc 1 11 0
	st	%g0, [%fp-12]
	b	.L2
	 nop
.L9:
	.loc 1 13 0
	ld	[%fp+72], %g2
	ld	[%fp-12], %g1
	smul	%g2, %g1, %g1
	st	%g1, [%fp-32]
	.loc 1 14 0
	st	%g0, [%fp-16]
	b	.L3
	 nop
.L8:
	.loc 1 16 0
	ld	[%fp-32], %g2
	ld	[%fp-16], %g1
	add	%g2, %g1, %g1
	st	%g1, [%fp-36]
	.loc 1 17 0
	st	%g0, [%fp-8]
	b	.L4
	 nop
.L7:
	.loc 1 18 0
	st	%g0, [%fp-4]
	b	.L5
	 nop
.L6:
	.loc 1 19 0 discriminator 2
	ld	[%fp-20], %g1
	ld	[%fp+92], %g2
	add	%g2, %g1, %g1
	ld	[%fp-20], %g2
	ld	[%fp+92], %g3
	add	%g3, %g2, %g2
	ldub	[%g2], %g3
	ld	[%fp+80], %g4
	ld	[%fp-8], %g2
	smul	%g4, %g2, %g4
	ld	[%fp-4], %g2
	add	%g4, %g2, %g2
	ld	[%fp+88], %g4
	add	%g4, %g2, %g2
	ldub	[%g2], %g4
	ld	[%fp+72], %i5
	ld	[%fp-8], %g2
	smul	%i5, %g2, %i5
	ld	[%fp-36], %g2
	add	%i5, %g2, %i5
	ld	[%fp-4], %g2
	add	%i5, %g2, %g2
	ld	[%fp+76], %i5
	add	%i5, %g2, %g2
	ldub	[%g2], %g2
	smul	%g4, %g2, %g2
	add	%g3, %g2, %g2
	stb	%g2, [%g1]
	.loc 1 18 0 discriminator 2
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L5:
	.loc 1 18 0 is_stmt 0 discriminator 1
	ld	[%fp-4], %g2
	ld	[%fp+84], %g1
	cmp	%g2, %g1
	bl	.L6
	 nop
	.loc 1 17 0 is_stmt 1
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L4:
	.loc 1 17 0 is_stmt 0 discriminator 1
	ld	[%fp-8], %g2
	ld	[%fp+80], %g1
	cmp	%g2, %g1
	bl	.L7
	 nop
	.loc 1 20 0 is_stmt 1
	ld	[%fp-20], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-20]
	.loc 1 14 0
	ld	[%fp-16], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-16]
.L3:
	.loc 1 14 0 is_stmt 0 discriminator 1
	ld	[%fp-16], %g2
	ld	[%fp-28], %g1
	cmp	%g2, %g1
	bl	.L8
	 nop
	.loc 1 11 0 is_stmt 1
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
.L2:
	.loc 1 11 0 is_stmt 0 discriminator 1
	ld	[%fp-12], %g2
	ld	[%fp-24], %g1
	cmp	%g2, %g1
	bl	.L9
	 nop
	.loc 1 23 0 is_stmt 1
	ld	[%fp+92], %g1
	.loc 1 24 0
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.cfi_endproc
.LFE0:
	.size	conv, .-conv
	.align 4
	.global im2col
	.type	im2col, #function
	.proc	0114
im2col:
.LFB1:
	.loc 1 34 0
	.cfi_startproc
	sethi	%hi(-177152), %g1
	or	%g1, 624, %g1
	save	%sp, %g1, %sp
.LCFI1:
	.cfi_window_save
	.cfi_register 15, 31
	.cfi_def_cfa_register 30
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	st	%i5, [%fp+88]
	.loc 1 36 0
	st	%g0, [%fp-20]
	.loc 1 37 0
	ld	[%fp+68], %g2
	ld	[%fp+80], %g1
	sub	%g2, %g1, %g1
	add	%g1, 1, %g2
	ld	[%fp+72], %g3
	ld	[%fp+84], %g1
	sub	%g3, %g1, %g1
	add	%g1, 1, %g1
	smul	%g2, %g1, %g1
	st	%g1, [%fp-24]
	.loc 1 38 0
	ld	[%fp+68], %g2
	ld	[%fp+80], %g1
	sub	%g2, %g1, %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-28]
	ld	[%fp+72], %g2
	ld	[%fp+84], %g1
	sub	%g2, %g1, %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-32]
	.loc 1 41 0
	st	%g0, [%fp-4]
	b	.L12
	 nop
.L19:
	.loc 1 42 0
	st	%g0, [%fp-8]
	b	.L13
	 nop
.L18:
	.loc 1 44 0
	ld	[%fp-4], %g1
	st	%g1, [%fp-12]
	b	.L14
	 nop
.L17:
	.loc 1 45 0
	ld	[%fp-8], %g1
	st	%g1, [%fp-16]
	b	.L15
	 nop
.L16:
	.loc 1 47 0 discriminator 2
	ld	[%fp+72], %g2
	ld	[%fp-12], %g1
	smul	%g2, %g1, %g2
	ld	[%fp-16], %g1
	add	%g2, %g1, %g1
	ld	[%fp+76], %g2
	add	%g2, %g1, %g1
	ldub	[%g1], %g2
	sethi	%hi(-177152), %g1
	or	%g1, 720, %g1
	add	%fp, %g1, %g3
	ld	[%fp-20], %g1
	add	%g3, %g1, %g1
	stb	%g2, [%g1]
	.loc 1 48 0 discriminator 2
	ld	[%fp-20], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-20]
	.loc 1 45 0 discriminator 2
	ld	[%fp-16], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-16]
.L15:
	.loc 1 45 0 is_stmt 0 discriminator 1
	ld	[%fp-8], %g2
	ld	[%fp+84], %g1
	add	%g2, %g1, %g2
	ld	[%fp-16], %g1
	cmp	%g2, %g1
	bg	.L16
	 nop
	.loc 1 44 0 is_stmt 1
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
.L14:
	.loc 1 44 0 is_stmt 0 discriminator 1
	ld	[%fp-4], %g2
	ld	[%fp+80], %g1
	add	%g2, %g1, %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bg	.L17
	 nop
	.loc 1 42 0 is_stmt 1
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L13:
	.loc 1 42 0 is_stmt 0 discriminator 1
	ld	[%fp-8], %g2
	ld	[%fp-32], %g1
	cmp	%g2, %g1
	bl	.L18
	 nop
	.loc 1 41 0 is_stmt 1
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L12:
	.loc 1 41 0 is_stmt 0 discriminator 1
	ld	[%fp-4], %g2
	ld	[%fp-28], %g1
	cmp	%g2, %g1
	bl	.L19
	 nop
	.loc 1 57 0 is_stmt 1
	ld	[%fp+84], %g2
	ld	[%fp+80], %g1
	smul	%g2, %g1, %g2
	sethi	%hi(-177152), %g1
	or	%g1, 720, %g1
	add	%fp, %g1, %g1
	mov	%g2, %o0
	ld	[%fp-24], %o1
	mov	%g1, %o2
	ld	[%fp+88], %o3
	ld	[%fp+92], %o4
	call	conv_vect, 0
	 nop
	mov	%o0, %g1
	.loc 1 59 0
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.cfi_endproc
.LFE1:
	.size	im2col, .-im2col
	.align 4
	.global main
	.type	main, #function
	.proc	0114
main:
.LFB2:
	.loc 1 61 0
	.cfi_startproc
	save	%sp, -3736, %sp
.LCFI2:
	.cfi_window_save
	.cfi_register 15, 31
	.cfi_def_cfa_register 30
	.loc 1 63 0
	mov	5, %g1
	st	%g1, [%fp-4]
	mov	48, %g1
	st	%g1, [%fp-12]
	.loc 1 64 0
	mov	3, %g1
	st	%g1, [%fp-16]
	mov	3, %g1
	st	%g1, [%fp-20]
	.loc 1 66 0
	call	genx, 0
	 nop
	st	%o0, [%fp-24]
	.loc 1 67 0
	call	geny, 0
	 nop
	st	%o0, [%fp-28]
	.loc 1 80 0
	st	%g0, [%fp-8]
	.loc 1 110 0
	mov	5, %g1
	st	%g1, [%fp-16]
	mov	5, %g1
	st	%g1, [%fp-20]
	.loc 1 112 0
	mov	65, %g1
	st	%g1, [%fp-4]
	b	.L22
	 nop
.L23:
	.loc 1 112 0 is_stmt 0 discriminator 2
	ld	[%fp-4], %g1
	add	%g1, 10, %g1
	st	%g1, [%fp-4]
.L22:
	.loc 1 112 0 discriminator 1
	ld	[%fp-4], %g1
	cmp	%g1, 65
	ble	.L23
	 nop
	.loc 1 130 0 is_stmt 1
	mov	7, %g1
	st	%g1, [%fp-16]
	mov	7, %g1
	st	%g1, [%fp-20]
	.loc 1 132 0
	mov	35, %g1
	st	%g1, [%fp-4]
	b	.L24
	 nop
.L25:
	.loc 1 137 0 discriminator 2
	add	%fp, -3632, %g1
	st	%g1, [%sp+92]
	ld	[%fp-4], %o0
	ld	[%fp-12], %o1
	ld	[%fp-24], %o2
	ld	[%fp-16], %o3
	ld	[%fp-20], %o4
	ld	[%fp-28], %o5
	call	im2col, 0
	 nop
	st	%o0, [%fp-8]
	.loc 1 132 0 discriminator 2
	ld	[%fp-4], %g1
	add	%g1, 10, %g1
	st	%g1, [%fp-4]
.L24:
	.loc 1 132 0 is_stmt 0 discriminator 1
	ld	[%fp-4], %g1
	cmp	%g1, 35
	ble	.L25
	 nop
	.loc 1 150 0 is_stmt 1
	ld	[%fp-8], %g1
	.loc 1 151 0
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.cfi_endproc
.LFE2:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x323
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.uaword	.LASF22
	.byte	0x1
	.uaword	.LASF23
	.uaword	.LASF24
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.uaword	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.uaword	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.uaword	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.uaword	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.uaword	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.uaword	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.asciz	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.uaword	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.uaword	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.uaword	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.uaword	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.uaword	.LASF10
	.uleb128 0x4
	.byte	0x1
	.uaword	.LASF19
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.uaword	0x175
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x175
	.uleb128 0x5
	.uaword	.LASF11
	.byte	0x1
	.byte	0x6
	.uaword	0x4f
	.byte	0x3
	.byte	0x91
	.sleb128 68
	.uleb128 0x5
	.uaword	.LASF12
	.byte	0x1
	.byte	0x6
	.uaword	0x4f
	.byte	0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x6
	.asciz	"x"
	.byte	0x1
	.byte	0x6
	.uaword	0x175
	.byte	0x3
	.byte	0x91
	.sleb128 76
	.uleb128 0x5
	.uaword	.LASF13
	.byte	0x1
	.byte	0x6
	.uaword	0x4f
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x5
	.uaword	.LASF14
	.byte	0x1
	.byte	0x6
	.uaword	0x4f
	.byte	0x3
	.byte	0x91
	.sleb128 84
	.uleb128 0x6
	.asciz	"ker"
	.byte	0x1
	.byte	0x6
	.uaword	0x175
	.byte	0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0x6
	.asciz	"res"
	.byte	0x1
	.byte	0x6
	.uaword	0x175
	.byte	0x3
	.byte	0x91
	.sleb128 92
	.uleb128 0x7
	.uaword	.LASF15
	.byte	0x1
	.byte	0x8
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.uaword	.LASF16
	.byte	0x1
	.byte	0x8
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.uaword	.LASF17
	.byte	0x1
	.byte	0x9
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x7
	.uaword	.LASF18
	.byte	0x1
	.byte	0x9
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.asciz	"w"
	.byte	0x1
	.byte	0x9
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x8
	.asciz	"h"
	.byte	0x1
	.byte	0x9
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x8
	.asciz	"i"
	.byte	0x1
	.byte	0xa
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.asciz	"j"
	.byte	0x1
	.byte	0xa
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x8
	.asciz	"pos"
	.byte	0x1
	.byte	0xa
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x2c
	.uleb128 0xa
	.byte	0x1
	.uaword	.LASF20
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.uaword	0x175
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LLST1
	.byte	0x1
	.uaword	0x279
	.uleb128 0x5
	.uaword	.LASF11
	.byte	0x1
	.byte	0x21
	.uaword	0x4f
	.byte	0x3
	.byte	0x91
	.sleb128 68
	.uleb128 0x5
	.uaword	.LASF12
	.byte	0x1
	.byte	0x21
	.uaword	0x4f
	.byte	0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x6
	.asciz	"x"
	.byte	0x1
	.byte	0x21
	.uaword	0x175
	.byte	0x3
	.byte	0x91
	.sleb128 76
	.uleb128 0x5
	.uaword	.LASF13
	.byte	0x1
	.byte	0x21
	.uaword	0x4f
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x5
	.uaword	.LASF14
	.byte	0x1
	.byte	0x21
	.uaword	0x4f
	.byte	0x3
	.byte	0x91
	.sleb128 84
	.uleb128 0x6
	.asciz	"ker"
	.byte	0x1
	.byte	0x21
	.uaword	0x175
	.byte	0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0x6
	.asciz	"res"
	.byte	0x1
	.byte	0x21
	.uaword	0x175
	.byte	0x3
	.byte	0x91
	.sleb128 92
	.uleb128 0x8
	.asciz	"i"
	.byte	0x1
	.byte	0x24
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x8
	.asciz	"j"
	.byte	0x1
	.byte	0x24
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x8
	.asciz	"h"
	.byte	0x1
	.byte	0x24
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.asciz	"w"
	.byte	0x1
	.byte	0x24
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x8
	.asciz	"pos"
	.byte	0x1
	.byte	0x24
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.uaword	.LASF21
	.byte	0x1
	.byte	0x25
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.uaword	.LASF15
	.byte	0x1
	.byte	0x26
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.uaword	.LASF16
	.byte	0x1
	.byte	0x26
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.asciz	"col"
	.byte	0x1
	.byte	0x27
	.uaword	0x279
	.byte	0x4
	.byte	0x91
	.sleb128 -176432
	.byte	0
	.uleb128 0xb
	.uaword	0x2c
	.uaword	0x28c
	.uleb128 0xc
	.uaword	0x6b
	.uaword	0x2b10f
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.uaword	.LASF25
	.byte	0x1
	.byte	0x3c
	.uaword	0x175
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LLST2
	.byte	0x1
	.uaword	0x319
	.uleb128 0x7
	.uaword	.LASF11
	.byte	0x1
	.byte	0x3f
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x7
	.uaword	.LASF12
	.byte	0x1
	.byte	0x3f
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.uaword	.LASF13
	.byte	0x1
	.byte	0x40
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x7
	.uaword	.LASF14
	.byte	0x1
	.byte	0x40
	.uaword	0x4f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.asciz	"x"
	.byte	0x1
	.byte	0x42
	.uaword	0x175
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.asciz	"ker"
	.byte	0x1
	.byte	0x43
	.uaword	0x175
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.asciz	"res"
	.byte	0x1
	.byte	0x4f
	.uaword	0x319
	.byte	0x3
	.byte	0x91
	.sleb128 -3632
	.uleb128 0x7
	.uaword	.LASF17
	.byte	0x1
	.byte	0x50
	.uaword	0x175
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0xe
	.uaword	0x2c
	.uleb128 0xf
	.uaword	0x6b
	.uahalf	0xe0f
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB0-.Ltext0
	.uaword	.LCFI0-.Ltext0
	.uahalf	0x2
	.byte	0x7e
	.sleb128 0
	.uaword	.LCFI0-.Ltext0
	.uaword	.LFE0-.Ltext0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LFB1-.Ltext0
	.uaword	.LCFI1-.Ltext0
	.uahalf	0x2
	.byte	0x7e
	.sleb128 0
	.uaword	.LCFI1-.Ltext0
	.uaword	.LFE1-.Ltext0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LFB2-.Ltext0
	.uaword	.LCFI2-.Ltext0
	.uahalf	0x2
	.byte	0x7e
	.sleb128 0
	.uaword	.LCFI2-.Ltext0
	.uaword	.LFE2-.Ltext0
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
	.section	.debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.asciz	"ker_col"
.LASF17:
	.asciz	"temp"
.LASF5:
	.asciz	"short int"
.LASF9:
	.asciz	"sizetype"
.LASF25:
	.asciz	"main"
.LASF21:
	.asciz	"new_rows"
.LASF15:
	.asciz	"compi"
.LASF16:
	.asciz	"compj"
.LASF19:
	.asciz	"conv"
.LASF6:
	.asciz	"long long int"
.LASF8:
	.asciz	"long int"
.LASF13:
	.asciz	"ker_row"
.LASF12:
	.asciz	"col_num"
.LASF1:
	.asciz	"unsigned char"
.LASF4:
	.asciz	"signed char"
.LASF7:
	.asciz	"long long unsigned int"
.LASF0:
	.asciz	"unsigned int"
.LASF22:
	.asciz	"GNU C 4.7.4"
.LASF2:
	.asciz	"short unsigned int"
.LASF10:
	.asciz	"char"
.LASF23:
	.asciz	"main.c"
.LASF3:
	.asciz	"long unsigned int"
.LASF24:
	.asciz	"/home/krithik/Desktop/marshal/ajit-toolchain/final_test/Ajit_Test/im2col_8uconv2d_test"
.LASF18:
	.asciz	"temp1"
.LASF11:
	.asciz	"row_num"
.LASF20:
	.asciz	"im2col"
	.ident	"GCC: (Buildroot 2014.08-g03a6b53-dirty) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
