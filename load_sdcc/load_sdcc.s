	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0
.set __tmp_reg__, 0
.set __zero_reg__, 1
.set __SREG__, 63
.set __SP_H__, 62
.set __SP_L__, 61
	.file	"load_sdcc.c"
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
	.globl	addition_two                    ; -- Begin function addition_two
	.p2align	1
	.type	addition_two,@function
addition_two:                           ; @addition_two
; %bb.0:
	push	C
	push	H
	mov	r16, r24
	mov	r17, r25
	mov	r14, r22
	mov	r15, r23
	ldi	r24, 0
	ldi	r25, 0
	mov	r12, r24
	mov	r13, r25
	mov	r24, r16
	mov	r25, r17
	mov	r18, r14
	mov	r19, r15
	mov	r20, r16
	mov	r21, r17
	rcall	__mulsi3
	add	r22, r14
	adc	r23, r15
	adc	r24, r16
	adc	r25, r17
	brne	.LBB1_2
; %bb.1:
	mov	r22, r12
	mov	r23, r13
.LBB1_2:
	brne	.LBB1_4
; %bb.3:
	mov	r24, r12
	mov	r25, r13
.LBB1_4:
	pop	H
	pop	C
	ret
.Lfunc_end1:
	.size	addition_two, .Lfunc_end1-addition_two
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
.Lfunc_end2:
	.size	addition_test, .Lfunc_end2-addition_test
                                        ; -- End function
	; Declaring this symbol tells the CRT that it should
	;copy all variables from program memory to RAM on startup
	.globl	__do_copy_data
	; Declaring this symbol tells the CRT that it should
	;clear the zeroed data section on startup
	.globl	__do_clear_bss
	.type	hello_global,@object            ; @hello_global
	.section	.bss,"aw",@nobits
	.globl	hello_global
	.p2align	2
hello_global:
	.long	0                               ; 0x0
	.size	hello_global, 4

