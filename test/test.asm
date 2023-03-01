INCLUDE "dmglib.inc"

SECTION ".text", ROM0[$100]
	jp	main
	ds $150 - @, 0
move_sprite:
; %bb.0:                                ; %entry
	push	hl
	ld	d, a
	ld	l, c
	ld	h, b
	ld	a, [hl]
	ld	b, a
	ld	a, d
	add	a, b
	ld	b, a
	ld	[hl], b
	pop	hl
	ret
main:
; %bb.0:                                ; %entry
	push	hl
	ld	b, 32
	ld	hl, -256
	ld	[hl], b
	ld	bc, 0
	pop	hl
	ret
.data:
	LOAD ".data", WRAM0
mysprite:                               ; @mysprite
db 34                                   ; 0x22
db 45                                   ; 0x2d
db 1                                    ; 0x1
db 0                                    ; 0x0

mysprite2:                              ; @mysprite2
db 34                                   ; 0x22
db 45                                   ; 0x2d
db 0                                    ; 0x0
db 0                                    ; 0x0

