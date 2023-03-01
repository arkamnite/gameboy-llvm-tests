SECTION "dmglib", ROM0
; will set the contents of memory
; starting at value $bc, and with length
; $de, to value $a
memset::
    ld h, b
    ld l, c
    inc de ; make range inclusive
    inc d
    inc e
    dec e
    dec d
    jr .loop
.setByte
    ld [hli], a
.loop
    ; happens if de = 0 on entry
    jr z, .earlyRet
    ; see if we have exhausted the range
    dec e
    jr nz, .setByte
    
    ; need to handle edge case where d = 0 before the decrement
     dec d
    jr nz, .setByte
    ret
.earlyRet
    ret