mapFis: var #1200
mapEnemy: var #1200
str: string "testeaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

jmp main

main:
    load r0, str
    loadn r1, #0
    call fn_printLine
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
    load r0, mapFis ;adress
    loadn r1, #0 ;counter
loop_printMap:
    add r2, r2, r3
    call fn_printLine





;args = r0 : adress of line, r1 : line [0 - 29]
;prints a full 40 char line
fn_printLine:
    push r2
    push r3
    loadn r2, #40 
    mul r1, r1, r2 ;r1 has the adress to write
;prints each char
loop_PrintLine: 
    loadi r3, r0
    outchar r1, r0
    inc r1
    inc r0
    dec r2
    jnz loop_PrintLine ;exits when done with 40 chars
    pop r2
    pop r3
    rts