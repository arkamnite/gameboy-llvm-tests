	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0
.set __tmp_reg__, 0
.set __zero_reg__, 1
.set __SREG__, 63
.set __SP_H__, 62
.set __SP_L__, 61
	.file	"math.c"
	.text
	.globl	main                            ; -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   ; @main
; %bb.0:
	ldi	r22, 0
	ldi	r23, 0
	mov	r24, r22
	mov	r25, r23
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        ; -- End function
	.globl	add                             ; -- Begin function add
	.p2align	1
	.type	add,@function
add:                                    ; @add
; %bb.0:
	add	r22, r18
	adc	r23, r19
	adc	r24, r20
	adc	r25, r21
	ret
.Lfunc_end1:
	.size	add, .Lfunc_end1-add
                                        ; -- End function
	.globl	subtract                        ; -- Begin function subtract
	.p2align	1
	.type	subtract,@function
subtract:                               ; @subtract
; %bb.0:
	sub	r18, r10
	sbc	r19, r11
	mov	r30, r20
	mov	r31, r21
	sbc	r30, r12
	sbc	r31, r13
	mov	r26, r22
	mov	r27, r23
	sbc	r26, r14
	sbc	r27, r15
	sbc	r24, r16
	sbc	r25, r17
	mov	r20, r30
	mov	r21, r31
	mov	r22, r26
	mov	r23, r27
	ret
.Lfunc_end2:
	.size	subtract, .Lfunc_end2-subtract
                                        ; -- End function
	; Declaring this symbol tells the CRT that it should
	;copy all variables from program memory to RAM on startup
	.globl	__do_copy_data
	; Declaring this symbol tells the CRT that it should
	;clear the zeroed data section on startup
	.globl	__do_clear_bss
