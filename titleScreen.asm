jmp main

; NOTE: Data segment

; Constants

WIDTH : var #1
    static WIDTH, #40

HEIGHT : var #1
    static HEIGHT, #30

SCREENSIZE : var #1
    static SCREENSIZE, #1200

FILL : var #1
    static FILL, #66

; Loop count to make a 20 frames per second interval

INTERVAL_A : var #1
    static INTERVAL_A, #20

INTERVAL_B : var #1
    static INTERVAL_B, #7500

; Loop count to make a 3 second interval (approximately)

INTERVAL_C : var #1
    static INTERVAL_C, #1730

INTERVAL_D : var #1
    static INTERVAL_D, #1734

; Color definitions, remember white = 0

brown  : var #1
    static brown, #256
grass  : var #1
    static grass, #512
musk   : var #1
    static musk, #768
teal   : var #1
    static teal, #1536
gray   : var #1
    static gray, #1792
red    : var #1
    static red, #2304
yellow : var #1
    static yellow, #2816
blue   : var #1
    static blue, #3072
pink   : var #1
    static pink, #3328

; Title screen's variables
hiscore        : string "HISCORE "
press          : string "PRESS "
enter          : string "ENTER "
to_play        : string "TO PLAY"

title_length : var #1
    static title_length, #200

title : var #200
; Linha 6
  static title + #0  , #3138
  static title + #1  , #3138
  static title + #2  , #2626
  static title + #3  , #2626
  static title + #4  , #2626
  static title + #5  , #2626
  static title + #6  , #3138
  static title + #7  , #2626
  static title + #8  , #2626
  static title + #9  , #2626
  static title + #10  , #3138
  static title + #11  , #3138
  static title + #12  , #3138
  static title + #13  , #2626
  static title + #14  , #2626
  static title + #15  , #3138
  static title + #16  , #3138
  static title + #17  , #3138
  static title + #18  , #2626
  static title + #19  , #2626
  static title + #20  , #2626
  static title + #21  , #3138
  static title + #22  , #3138
  static title + #23  , #2626
  static title + #24  , #2626
  static title + #25  , #2626
  static title + #26  , #3138
  static title + #27  , #2626
  static title + #28  , #2626
  static title + #29  , #2626
  static title + #30  , #2626
  static title + #31  , #3138
  static title + #32  , #2626
  static title + #33  , #2626
  static title + #34  , #2626
  static title + #35  , #3138
  static title + #36  , #3138
  static title + #37  , #2626
  static title + #38  , #3138
  static title + #39  , #3138

  ;Linha 7
  static title + #40  , #3138
  static title + #41  , #3138
  static title + #42  , #2626
  static title + #43  , #3138
  static title + #44  , #3138
  static title + #45  , #3138
  static title + #46  , #3138
  static title + #47  , #2626
  static title + #48  , #3138
  static title + #49  , #3138
  static title + #40  , #2626
  static title + #51  , #3138
  static title + #52  , #2626
  static title + #53  , #3138
  static title + #54  , #3138
  static title + #55  , #2626
  static title + #56  , #3138
  static title + #57  , #2626
  static title + #58  , #3138
  static title + #59  , #3138
  static title + #60  , #3138
  static title + #61  , #3138
  static title + #62  , #2626
  static title + #63  , #3138
  static title + #64  , #3138
  static title + #65  , #3138
  static title + #66  , #3138
  static title + #67  , #2626
  static title + #68  , #3138
  static title + #69  , #3138
  static title + #70  , #3138
  static title + #71  , #3138
  static title + #72  , #2626
  static title + #73  , #3138
  static title + #74  , #3138
  static title + #75  , #2626
  static title + #76  , #3138
  static title + #77  , #2626
  static title + #78  , #3138
  static title + #79  , #3138

  ;Linha 8
  static title + #80  , #3138
  static title + #81  , #3138
  static title + #82  , #2626
  static title + #83  , #2626
  static title + #84  , #2626
  static title + #85  , #3138
  static title + #86  , #3138
  static title + #87  , #2626
  static title + #88  , #2626
  static title + #89  , #2626
  static title + #90  , #2626
  static title + #91  , #3138
  static title + #92  , #2626
  static title + #93  , #3138
  static title + #94  , #3138
  static title + #95  , #2626
  static title + #96  , #3138
  static title + #97  , #2626
  static title + #98  , #3138
  static title + #99  , #2626
  static title + #100  , #2626
  static title + #101  , #3138
  static title + #102  , #2626
  static title + #103  , #3138
  static title + #104  , #2626
  static title + #105  , #2626
  static title + #106  , #3138
  static title + #107  , #2626
  static title + #108  , #2626
  static title + #109  , #2626
  static title + #110  , #3138
  static title + #111  , #3138
  static title + #112  , #2626
  static title + #113  , #2626
  static title + #114  , #2626
  static title + #115  , #2626
  static title + #116  , #3138
  static title + #117  , #2626
  static title + #118  , #3138
  static title + #119  , #3138

  ;Linha 9
  static title + #120  , #3138
  static title + #121  , #3138
  static title + #122  , #2626
  static title + #123  , #3138
  static title + #124  , #3138
  static title + #125  , #3138
  static title + #126  , #3138
  static title + #127  , #2626
  static title + #128  , #3138
  static title + #129  , #2626
  static title + #130  , #3138
  static title + #131  , #3138
  static title + #132  , #2626
  static title + #133  , #3138
  static title + #134  , #3138
  static title + #135  , #2626
  static title + #136  , #3138
  static title + #137  , #2626
  static title + #138  , #3138
  static title + #139  , #3138
  static title + #140  , #2626
  static title + #141  , #3138
  static title + #142  , #2626
  static title + #143  , #3138
  static title + #144  , #3138
  static title + #145  , #2626
  static title + #146  , #3138
  static title + #147  , #2626
  static title + #148  , #3138
  static title + #149  , #3138
  static title + #150  , #3138
  static title + #151  , #3138
  static title + #152  , #2626
  static title + #153  , #3138
  static title + #154  , #2626
  static title + #155  , #3138
  static title + #156  , #3138
  static title + #157  , #3138
  static title + #158  , #3138
  static title + #159  , #3138

  ;Linha 10
  static title + #160  , #3138
  static title + #161  , #3138
  static title + #162  , #2626
  static title + #163  , #3138
  static title + #164  , #3138
  static title + #165  , #3138
  static title + #166  , #3138
  static title + #167  , #2626
  static title + #168  , #3138
  static title + #169  , #3138
  static title + #170  , #2626
  static title + #171  , #3138
  static title + #172  , #3138
  static title + #173  , #2626
  static title + #174  , #2626
  static title + #175  , #3138
  static title + #176  , #3138
  static title + #177  , #2626
  static title + #178  , #2626
  static title + #179  , #2626
  static title + #180  , #2626
  static title + #181  , #3138
  static title + #182  , #2626
  static title + #183  , #2626
  static title + #184  , #2626
  static title + #185  , #2626
  static title + #186  , #3138
  static title + #187  , #2626
  static title + #188  , #2626
  static title + #189  , #2626
  static title + #190  , #2626
  static title + #191  , #3138
  static title + #192  , #2626
  static title + #193  , #3138
  static title + #194  , #3138
  static title + #195  , #2626
  static title + #196  , #3138
  static title + #197  , #2626
  static title + #198  , #3138
  static title + #199  , #3138


; How to Score
how_to_score0  : string "HOW TO SCORE"
how_to_score1  : string "10 PTS "
how_to_score2  : string "FOR EVERY LEAP FORWARD"
how_to_score3  : string "50 PTS "
how_to_score4  : string "FOR EVERY FROG THAT CROSSED"
how_to_score5  : string "1000 PTS "
how_to_score6  : string "FOR CROSSING ALL FROGS"
how_to_score7  : string "10 PTS "
how_to_score8  : string "FOR EVERY REMAINING SECOND"

; How to play
how_to_play0   : string "HOW TO PLAY"
how_to_play1   : string "W - "
how_to_play2   : string "MOVE UP"
how_to_play3   : string "A - "
how_to_play4   : string "MOVE LEFT"
how_to_play5   : string "S - "
how_to_play6   : string "MOVE DOWN"
how_to_play7   : string "D - "
how_to_play8   : string "MOVE RIGHT"

; Matrices to store background and foreground info, respectively
background     : var #1200
foreground     : var #1200

;Variable to store the frog position
frogPosition   : var #1

; NOTE: Code segment

; NOTE: Functions to initialize and free memory or game objects

initRegisters:
    ; Boilerplate code to, at the start of every function, save the contents of the registers into the stack for later retrieval, and load the arguments of the current function to the registers. This function takes no arguments and returns nothing.

    push R1
    push R2
    push R3
    push R4
    push R5
    push R6
    push R7
    load R1, Arg1
    load R2, Arg2
    load R3, Arg3
    load R4, Arg4
    load R5, Arg5
    load R6, Arg6
    load R7, Arg7
    rts

restoreRegisters:
    ; Retrieves from the stack the stored register contents. This function complements the functionality of the previous "initRegisters" function, takes no arguments and returns nothing as well.

    pop R7
    pop R6
    pop R5
    pop R4
    pop R3
    pop R2
    pop R1
    rts

initTitleScreen:
    ; Prints the background of the title screen.
    ; Arguments:
    ; Arg0 = pointer to background map where to store printed characters

    ; Print Highscore indicator
    call initRegisters
    load R1, Arg0
    store Arg3, R1
    loadn R1, #hiscore
    loadn R2, #13
    store Arg0, R1
    store Arg1, R2
    call printString

    loadn R1, #'0'
    load R2, Arg0
    load R3, red
    loadn R4, #5
    store Arg0, R1
    store Arg1, R2
    store Arg3, R0
    store Arg4, R4
    call printPadding

    ; Print "Frogger!"
    load R1, FILL
    loadn R2, #80
    load R3, WIDTH
    loadn R4, #4
    mul R3, R3, R4
    load R4, blue
    store Arg0, R1
    store Arg1, R2
    store Arg4, R3
    call printPadding

    loadn R1, #title
    load R2, Arg0
    load R3, title_length
    store Arg0, R1
    store Arg1, R2
    store Arg2, R3
    call printVector

    load R1, FILL
    load R2, Arg0
    load R3, blue
    load R4, WIDTH
    store Arg0, R1
    store Arg1, R2
    store Arg2, R3
    store Arg4, R4
    call printPadding

    ; Print "Press enter to play"
    loadn R1, #press
    loadn R2, #1050
    store Arg0, R1
    store Arg1, R2
    store Arg2, R0
    call printString

    loadn R1, #enter
    load R2, Arg0
    load R3, yellow
    store Arg0, R1
    store Arg1, R2
    store Arg2, R3
    call printString

    loadn R1, #to_play
    load R2, Arg0
    store Arg0, R1
    store Arg1, R2
    store Arg2, R0
    call printString

; NOTE: Functions to delay game and read input

delay:
    ; A delay function set to take approximately 3 seconds. When the user presses ENTER the delay is interrupted.
    ; Arguments: None
    ; Returns:
    ; Arg0: 0, if ENTER was not pressed, '\n' otherwise

    call initRegisters
    load R1, INTERVAL_C
    loadn R3, #'\n'
    store Arg0, R0

    delay_A:
        load R2, INTERVAL_D
        delay_B:
            inchar R4
            cmp R3, R4
            jeq delayContinue
            store Arg0, R4
            jmp delayEnd
    delayContinue:
        dec R2
        jnz delay_B
        dec R1
        jnz delay_A
    delayEnd:
    call restoreRegisters
    rts

takeInput:
    ; A function that gives the player an interval to make an input. The last input made during this interval is returned by the end of the function. The duration of the interval is given solely by the product of INTERVAL_A * INTERVAL_B * ClockSpeed.
    ; Arguments: None
    ; Returns:
    ; Arg0 = 255, if no key was pressed, ASCII value of the key pressed otherwise

    call initRegisters
    load R1, INTERVAL_A
    loadn R3, #255 ; Default value returned by inchar when no key was pressed
    store Arg0, R3

    loop_A:
        load R2, INTERVAL_B
        loop_B:
            inchar R4
            cmp R3, R4
            jeq takeInput_continue
            store Arg0, R4
    takeInput_continue:
        dec R2
        jnz loop_B
        dec R1
        jnz loop_A
    call restoreRegisters
    rts

; NOTE: Functions for printing on screen

printPadding:
    ; Prints the same character repetitively
    ; Arguments:
    ; Arg1 = character to be printed
    ; Arg2 = position to start printing
    ; Arg3 = color value to print character
    ; Arg4 = map to save printed characters
    ; Arg5 = Whether printing is animated and can be interrupted by the user's input. 0 implies false
    ; Arg6 = number of characters to print
    ; Returns:
    ; Arg0 = position immediately after last character printed

    call initRegisters
    add R6, R6, R2  ; position where to stop printing
    add R4, R4, R2  ; position where to start storing
    add R1, R1, R3  ; character to print added to its color value
    loadn R3, #'\n'

    cmp R5, R0
    jne ppInterruptable

    ppUniterruptable:
        cmp R2, R6
        jeq ppUninterrupted
        outchar R1, R2
        storei R4, R1
        inc R2
        inc R4
        jmp ppUniterruptable

    ppInterruptable:
        cmp R2, R6
        jeq ppUninterrupted
        call takeInput
        load R7, Arg0
        cmp R3, R7
        jeq ppInterrupted
        outchar R1, R2
        storei R4, R1
        inc R2
        inc R4
        jmp ppInterruptable

    ppUninterrupted:
        store Arg0, R2
        jmp ppEnd

    ppInterrupted:
        store Arg0, R0

    ppEnd:
        call restoreRegisters
        rts


printInt:
    ; Prints a right-aligned integer value on screen.
    ; Arguments:
    ; Arg1 = integer value to be printed
    ; Arg2 = right-aligned position in the screen from where to start printing
    ; Arg3 = color value to print number
    ; Arg4 = pointer to map where  to save printed characters
    ; Returns: Nothing

    call initRegisters
    add R4, R4, R2 ; Get location in map where to start storing
    loadn R5, #10  ; load the value 10 to apply the mod operation

    printIntLoop:
        cmp R1, R0
        jeq printIntEnd
        loadn R6, #'0' ; load index value of the character 0
        mod R7, R1, R5 ; get least significant digit from R1
        add R6, R6, R7 ; apply it as an offset to the character map
        add R6, R6, R3 ; apply color value
        outchar R6, R2
        storei R4, R6
        dec R2
        dec R4
        div R1, R1, R5
        jmp printIntLoop

    printIntEnd:
        call restoreRegisters
        rts


printVector:
    ; Prints the contents of a vector as characters on the screen.
    ; Arguments:
    ; Arg1 = pointer to the start of the vector
    ; Arg2 = index of the position at the screen where to start printing
    ; Arg3 = vector length
    ; Arg4 = map to save printed characters
    ; Returns:
    ; Arg0 = position immediately after last character printed

    add R2, R2, R3

    pvLoop:
        cmp R1, R2
        jeq pvEnd
        loadi R3, R1
        outchar R3, R1
        inc R1
        jmp pvLoop
    pvEnd:
        store Arg0, R2
        call restoreRegisters
        rts


printString:
    ; Prints a string of text. Printing can be animated and interrupted by the user.
    ; Arguments:
    ; Arg1 = pointer to the string to be printed
    ; Arg2 = index of the position at the screen where to start printing
    ; Arg3 = color to be assigned to printed characters
    ; Arg4 = map to save printed characters
    ; Arg5 = Whether printing is animated and can be interrupted by the user's input. 0 implies false.
    ; Returns:
    ; Arg0 = 0 if printing was interrupted by the user, otherwise the position immediately after last character printed.

    call initRegisters
    loadn R6, #'\n'               ; ENTER

    cmp R5, R0
    jne psInterruptable

    psUninterruptable:
        loadi R7, R1        ; retrieve character to be printed
        cmp R7, R0          ; check if it is the terminator character
        jeq psUninterrupted ; Escape if it is
        add R7, R7, R3      ; Add color value to character
        outchar R7, R2      ; Print character
        storei R4, R7
        inc R1              ; Increment string pointer
        inc R2              ; Increment screen position
        inc R4              ; Increment map pointer
        jmp psUninterruptable

    psInterruptable:
        call takeInput
        load R7, Arg0
        cmp R7, R6
        jeq psInterrupted
        loadi R7, R1
        cmp R7, R0
        jeq psUninterrupted
        add R7, R7, R3
        outchar R7, R2
        storei R4, R7
        inc R1
        inc R2
        inc R4
        jmp psInterruptable

    psUninterrupted:
        store Arg0, R2
        jmp psEnd

    psInterrupted:
        store Arg0, R0

    psEnd:
        call restoreRegisters
        rts


printInstructions:
    ; Prints a centered text box containing instructions on how to play or score and returns whether the user has interrupted printing or not.
    ; Arguments:
    ; Arg1 = address of the vector of strings to be printed
    ; Arg2 = number of lines to be printed
    ; Arg3 = map to save printed characters
    ; Returns:
    ; Arg0 = 0 if printing was not interrupted, otherwise 1.

    call initRegisters
    loadn R4, #614 ; store line start
    loadn R5, #80  ; store line offset value
    loadn R6, #1   ; set padding

    ; Print Header
    store Arg2, R4
    store Arg3, R0
    store Arg4, R3
    store Arg5, R4
    call printString
    load R1, Arg0
    cmp R1, R0
    jeq piEnd
    mov R4, R1
    inc R1

    ; Pad right
    store Arg1, R0
    store Arg2, R4
    store Arg6, R6
    call printPadding
    load R4, Arg0
    cmp R4, R0
    jeq piEnd
    dec R2

    ; Set initial values
    loadn R4, #693
    load R5, WIDTH
    loadn R6, #4
    sub R5, R5, R6

    piBody:
        cmp R2, R0
        jeq piCompleted

        ; Print with emphasis (red)
        load R6, red
        load Arg1, R1
        load Arg2, R3
        load Arg3, R6
        call printString
        load R6, Arg0
        cmp R6, R0
        jne piEnd

        ; Offset string pointer enough that the next string is reached.
        add R1, R1, R6
        inc R1
        store Arg0, R1

        ; Offset screen pointer
        add R6, R6, R3
        inc R6
        store Arg1, R6

        ; Print description (yellow)
        load R6, yellow
        store Arg2, R6
        call printString
        load R6, Arg0
        cmp R6, R0
        jne piEnd

        ; Pad right
        store Arg3, R0
        sub R6, R5, R6 ; Set R6 as the difference between the message and line lengths
        store Arg2, R6 ; That's the padding value.
        sub R6, R5, R6 ; Switch back to message length
        add R6, R6, R3 ; Add that to the line pointer value
        store Arg1, R6 ; That's from where to start padding
        loadn R6, #0   ; Load the character to pad with
        store Arg0, R6
        call printPadding

        ; Move towards printing next line and decrement line count
        add R3, R3, R4
        dec R2
        jmp piBody

    piCompleted:
        loadn R6, #0

    piEnd:
        store Arg0, R6
        call restoreRegisters
        rts

; NOTE: Game functions

titleScreen:
    ; Prints the title screen, displaying game instructions.
    ; Arguments:
    ; Arg0 = pointer to background map
    ; Arg1 = current Highscore

    call initRegisters
    call initTitleScreen

    ; Print Highscore
    store Arg0, R2
    loadn R1, #25
    store Arg1, R1
    load R1, red
    store Arg2, R1
    call printInt

    loadn R1, #5       ; Set number of lines of instructions to be printed
    store Arg1, R1

    titleScreenLoop:
        cmp R1, R0     ; Either print instructions for scoring or playing
        jeq selectPlay ; Selection logic
        load R2, how_to_score0
        jmp instructionSelected
        selectPlay:
            load R2, how_to_play0
        instructionSelected:
            store Arg0, R2
        call printInstructions
        load R2, Arg0
        cmp R2, R0
        jnz titleScreenEnd
        call delay
        load R2, Arg0
        cmp R2, R0
        jnz titleScreenEnd
        not R1, R1
        jmp titleScreenLoop
    titleScreenEnd:
        call restoreRegisters
        rts

fn_checkBorders:
    ;Checks if the current move of the frog is valid due to map constraints
    ;Args : arg1 = new position
    ;Returns: arg0 = 0 if not valid, 1 if valid
    call initRegisters
    load r1, frogPosition
    load r2 arg1
    loadn r3, #1200
    cmp r2, r3
    jle case_invalidMove
    loadn r3, #40
    div r1, r1, r3
    div r2, r2, r3
    cmp r2, r3
    jne case_invalidMove
    loadn r1, #0
    store arg0, r1
    rts    
    case_invalidMove:
        loadn r1, #0
        store arg0, r1
        call restoreRegisters
        rts
    




fn_moveFrog:
    ;receives the input from the user and tries to move the frog
    ;Args : Arg1 = input
    ;Returns : arg0 = 0 if frog died, else arg0 = 1
    call initRegisters
    load r1, arg1
    loadn r2, #87; W
    cmp r2, r1
    jeq case_W
    loadn r2, #65; A
    cmp r2, r1
    jeq case_A
    loadn r2, #83; S
    cmp r2, r1
    jeq case_S
    loadn r2, #68; D
    cmp r2, r1
    jeq case_D
    call restoreRegisters
    rts
case_W:
    load r1, frogPosition
    loadn r2, #40
    add r1, r1, r2
    store arg1, r1
    call fn_checkBorders
    load r2, arg0
    cmp r2, r0
    jeq case_noMove
    store frogPosition, r1
    loadn r1, #1
    store arg0, r1
    call restoreRegisters
    rts
case_A:
    load r1, frogPosition
    dec r1
    store arg1, r1
    call fn_checkBorders
    load r2, arg0
    cmp r2, r0
    jeq case_noMove
    store frogPosition, r1
    loadn r1, #1
    store arg0, r1
    call restoreRegisters
    rts
case_S:
    load r1, frogPosition
    loadn r2, #40
    sub r1, r1, r2
    store arg1, r1
    call fn_checkBorders
    load r2, arg0
    cmp r2, r0
    jeq case_noMove
    store frogPosition, r1
    loadn r1, #1
    store arg0, r1
    call restoreRegisters
    rts
case_D:
    load r1, frogPosition
    inc r1
    store arg1, r1
    call fn_checkBorders
    load r2, arg0
    cmp r2, r0
    jeq case_noMove
    store frogPosition, r1
    loadn r1, #1
    store arg0, r1
    call restoreRegisters
    rts
case_noMove:
    loadn r1, #1
    store arg0, r1
    call restoreRegisters
    rts

main:
    breakp
    loadn R0, #0 ; Set R0 to 0, this register should hold this value always
    loadn R1, #background
    loadn R2, #foreground
    mov R3, R0   ; Initialize highscore
    gameLoop:
        store Arg0, R1
        store Arg1, R1
        call titleScreen
        store Arg1, R2
        mov R2, R1
        store Arg2, R2
        call gameScreen
    halt






