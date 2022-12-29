	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0
.set __tmp_reg__, 0
.set __zero_reg__, 1
.set __SREG__, 63
.set __SP_H__, 62
.set __SP_L__, 61
	.file	"callconv.c"
	.text
	.globl	func3                           ; -- Begin function func3
	.p2align	1
	.type	func3,@function
func3:                                  ; @func3
; %bb.0:
	LD	r22, 255
	LD	r23, 255
	sts	e+3, r23
	sts	e+2, r22
	sts	e+1, r23
	sts	e, r22
	LD	SP, HL
	ret
.Lfunc_end0:
	.size	func3, .Lfunc_end0-func3
                                        ; -- End function
	.globl	func                            ; -- Begin function func
	.p2align	1
	.type	func,@function
func:                                   ; @func
; %bb.0:
	PUSH	AF
	PUSH	BC
	LD	SP, HL
	lds	r24, b
	lds	r22, a
	rcall	__mulqi3
	add	r24, r17
	mov	r25, r24
	lsl	r25
	sbc	r25, r25
	POP	BC
	POP	AF
	ret
.Lfunc_end1:
	.size	func, .Lfunc_end1-func
                                        ; -- End function
	.globl	func2                           ; -- Begin function func2
	.p2align	1
	.type	func2,@function
func2:                                  ; @func2
; %bb.0:
	lds	r24, a
	mov	r25, r24
	lsl	r25
	sbc	r25, r25
	ret
.Lfunc_end2:
	.size	func2, .Lfunc_end2-func2
                                        ; -- End function
	.globl	main                            ; -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   ; @main
; %bb.0:
	LD	r24, 0
	LD	r25, 0
	sts	f+3, r25
	sts	f+2, r24
	LD	r24, 4
	LD	r25, 0
	sts	f+1, r25
	sts	f, r24
	LD	r22, 255
	LD	r23, 255
	sts	e+3, r23
	sts	e+2, r22
	sts	e+1, r23
	sts	e, r22
	LD	D, 3
	LD	SP, HL
	sts	zz, r24
	LD	SP, HL
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
                                        ; -- End function
	; Declaring this symbol tells the CRT that it should
	;copy all variables from program memory to RAM on startup
	.globl	__do_copy_data
	; Declaring this symbol tells the CRT that it should
	;clear the zeroed data section on startup
	.globl	__do_clear_bss
	.type	zz,@object                      ; @zz
	.data
	.globl	zz
zz:
	.byte	8                               ; 0x8
	.size	zz, 1

