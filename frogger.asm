jmp main
mapFis: var #1200
mapEnemy: var #1200 
frogPosition : var #1

main:
    loadn r0, #1180
    store frogPosition, r0 
    loadn r1, #mapFis
    add r1

    call fn_printMap
mainLoop:
    call fn_moveFrog
    load r0, frogPosition
    loadn r1, #83
    outchar r1, r0
    jmp mainLoop
    halt





fn_moveFrog:
    push r0
    push r1
    inchar r0
    loadn r1, #87; W
    cmp r1, r0
    jeq case_W
    loadn r1, #65; A
    cmp r1, r0
    jeq case_A
    loadn r1, #83; S
    cmp r1, r0
    jeq case_S
    loadn r1, #68; D
    cmp r1, r0
    jeq case_D
    pop r1
    pop r0
    rts

case_W:


case_A:
    load r0, frogPosition
    loadn r1, #1
    sub r0, r0, r1
    store frogPosition, r0
    pop r1
    pop r0
    rts

case_S:

case_D:
    load r0, frogPosition
    loadn r1, #1
    add r0, r0, r1
    store frogPosition, r0
    pop r1
    pop r0
    rts


fn_printMap:
    push r0
    push r1
    push r2
    push r4
    loadn r2, #1200
    loadn r0, #mapFis
    loadn r1, #0
loop_printMap:
    loadi r4, r0
    ;add r4, r6, r4
    outchar r4, r1
    inc r1
    inc r0
    cmp r1, r2
    jne loop_printMap
    breakp
    pop r4
    pop r2
    pop r1
    pop r0
    rts


; ;args =  None / ret = None
; fn_printMap: 
;     push r0
;     push r1
;     push r2
;     push r3
;     push r4
;     loadn r1, #0;position
;     loadn r3, #40;sum
;     loadn r0, #mapFis ;adress
;     loadn r5, #29 ;counter
; loop_printMap:
;     push r1
;     call fn_printLine
;     pop r1
;     inc r1
;     ;add r0, r0, r3
;     dec r5
;     ;breakp
;     cmp r5, r7
;     jnz loop_printMap
;     breakp
;     rts




; ;args = r0 : adress of line, r1 : line [0 - 29]
; ;prints a full 40 char line
; fn_printLine:
;     push r2
;     push r3
;     push r7
;     loadn r7, #0
;     loadn r2, #40
;     mul r1, r1, r2 ;r1 has the adress to write
;     dec r2
; ;prints each char
; loop_PrintLine: 
;     loadi r3, r0
;     add r3, r3, r6
;     outchar r3, r1
;     inc r1
;     inc r0
;     dec r2
;     cmp r2, r7
;     jnz loop_PrintLine ;exits when done with 40 chars
;     breakp
;     pop r7
;     pop r2
;     pop r3
;     rts