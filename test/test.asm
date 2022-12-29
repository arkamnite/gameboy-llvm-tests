	.text
.set __tmp_reg__, 0
.set __zero_reg__, 1
.set __SREG__, 63
.set __SP_H__, 62
.set __SP_L__, 61
	.file	"test.c"
	.globl	fib                             ; -- Begin function fib
	.p2align	1
	.type	fib,@function
fib:                                    ; @fib
; %bb.0:                                ; %entry
	ld	b, 2
	ld	c, a
	ld	a, b
	add	a, c
	ld	c, a
	ld	a, c
	ret
.Lfunc_end0:
	.size	fib, .Lfunc_end0-fib
                                        ; -- End function
	.globl	main                            ; -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   ; @main
; %bb.0:                                ; %entry
	ld	d, 2
	ld	a, d
	add	a, b
	ld	b, a
	ld	c, b
	ld	a, b
	add	a, a
	sbc	a, a
	ld	b, a
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        ; -- End function
	; Declaring this symbol tells the CRT that it should
	;copy all variables from program memory to RAM on startup
	.globl	__do_copy_data
	; Declaring this symbol tells the CRT that it should
	;clear the zeroed data section on startup
	.globl	__do_clear_bss
