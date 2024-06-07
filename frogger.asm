jmp main
mapFis: var #1200
mapEnemy: var #120 

main:
    ;loadn r0, #str
    call fn_printMap
    breakp
    halt


;args =  None / ret = None
fn_printMap: 
    push r0
    push r1
    push r2
    push r3
    push r4
    loadn r2, #0;position
    loadn r3, #40;sum
    loadn r0, #mapFis ;adress
    loadn r1, #29 ;counter
loop_printMap:
    push r1
    call fn_printLine
    pop r1
    add r0, r0, r3
    dec r1
    breakp
    jnz loop_printMap
    rts




;args = r0 : adress of line, r1 : line [0 - 29]
;prints a full 40 char line
fn_printLine:
    push r2
    push r3
    loadn r2, #39 
    mul r1, r1, r2 ;r1 has the adress to write
;prints each char
loop_PrintLine: 
    loadi r3, r0
    outchar r3, r1
    inc r1
    inc r0
    dec r2
    jnz loop_PrintLine ;exits when done with 40 chars
    pop r2
    pop r3
    rts