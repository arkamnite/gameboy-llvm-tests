	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0
.set __tmp_reg__, 0
.set __zero_reg__, 1
.set __SREG__, 63
.set __SP_H__, 62
.set __SP_L__, 61
	.file	"load.c"
	.text
	.globl	main                            ; -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   ; @main
; %bb.0:
	ldi	r22, 80
	ldi	r23, 0
	ldi	r24, 0
	ldi	r25, 0
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        ; -- End function
	.globl	addition_test                   ; -- Begin function addition_test
	.p2align	1
	.type	addition_test,@function
addition_test:                          ; @addition_test
; %bb.0:
	lsl	r24
	rol	r25
	mov	r18, r22
	mov	r19, r23
	mov	r18, r19
	swap	r18
	andi	r18, 15
	clr	r19
	lsr	r18
	lsr	r18
	lsr	r18
	or	r24, r18
	or	r25, r19
	lsl	r22
	rol	r23
	ret
.Lfunc_end1:
	.size	addition_test, .Lfunc_end1-addition_test
                                        ; -- End function
	; Declaring this symbol tells the CRT that it should
	;copy all variables from program memory to RAM on startup
	.globl	__do_copy_data
	; Declaring this symbol tells the CRT that it should
	;clear the zeroed data section on startup
	.globl	__do_clear_bss
