jmp main

; NOTE: Data segment

; Memory segment to store arguments to be passed to functions. a0 carries the return of any given function
a0 : var #1
a1 : var #1
a2 : var #1
a3 : var #1
a4 : var #1
a5 : var #1
a6 : var #1
a7 : var #1

; Constants
WIDTH : var #1
    static WIDTH, #40

HEIGHT : var #1
    static HEIGHT, #30

FILL : var #1
    static FILL, #'B'

ENTER: var #1
    static ENTER, #13

FRAMERATE : var #1
    static FRAMERATE, #300    ; Multiplier for the framerate interval

; Some color offsets. Remember, white = 0
gray   : var #1
    static gray   , #2048
red    : var #1
    static red    , #2304
grass  : var #1
    static grass  , #2560
yellow : var #1
    static yellow , #2816
blue   : var #1
    static blue   , #3072

; Title screen's variables
demake       : string "- THE DEMAKE -"
hiscoreLabel : string "HISCORE "
press        : string "PRESS "
enter        : string "ENTER "
to_play      : string "TO PLAY"

title_length : var #1
    static title_length, #200

title : var #200
; Linha 6
  static title + #0   , #3138
  static title + #1   , #3138
  static title + #2   , #2626
  static title + #3   , #2626
  static title + #4   , #2626
  static title + #5   , #2626
  static title + #6   , #3138
  static title + #7   , #2626
  static title + #8   , #2626
  static title + #9   , #2626
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
  static title + #50  , #2626
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
  static title + #100 , #2626
  static title + #101 , #3138
  static title + #102 , #2626
  static title + #103 , #3138
  static title + #104 , #2626
  static title + #105 , #2626
  static title + #106 , #3138
  static title + #107 , #2626
  static title + #108 , #2626
  static title + #109 , #2626
  static title + #110 , #3138
  static title + #111 , #3138
  static title + #112 , #2626
  static title + #113 , #2626
  static title + #114 , #2626
  static title + #115 , #2626
  static title + #116 , #3138
  static title + #117 , #2626
  static title + #118 , #3138
  static title + #119 , #3138

  ;Linha 9
  static title + #120 , #3138
  static title + #121 , #3138
  static title + #122 , #2626
  static title + #123 , #3138
  static title + #124 , #3138
  static title + #125 , #3138
  static title + #126 , #3138
  static title + #127 , #2626
  static title + #128 , #3138
  static title + #129 , #2626
  static title + #130 , #3138
  static title + #131 , #3138
  static title + #132 , #2626
  static title + #133 , #3138
  static title + #134 , #3138
  static title + #135 , #2626
  static title + #136 , #3138
  static title + #137 , #2626
  static title + #138 , #3138
  static title + #139 , #3138
  static title + #140 , #2626
  static title + #141 , #3138
  static title + #142 , #2626
  static title + #143 , #3138
  static title + #144 , #3138
  static title + #145 , #2626
  static title + #146 , #3138
  static title + #147 , #2626
  static title + #148 , #3138
  static title + #149 , #3138
  static title + #150 , #3138
  static title + #151 , #3138
  static title + #152 , #2626
  static title + #153 , #3138
  static title + #154 , #2626
  static title + #155 , #3138
  static title + #156 , #3138
  static title + #157 , #3138
  static title + #158 , #3138
  static title + #159 , #3138

  ;Linha 10
  static title + #160 , #3138
  static title + #161 , #3138
  static title + #162 , #2626
  static title + #163 , #3138
  static title + #164 , #3138
  static title + #165 , #3138
  static title + #166 , #3138
  static title + #167 , #2626
  static title + #168 , #3138
  static title + #169 , #3138
  static title + #170 , #2626
  static title + #171 , #3138
  static title + #172 , #3138
  static title + #173 , #2626
  static title + #174 , #2626
  static title + #175 , #3138
  static title + #176 , #3138
  static title + #177 , #2626
  static title + #178 , #2626
  static title + #179 , #2626
  static title + #180 , #2626
  static title + #181 , #3138
  static title + #182 , #2626
  static title + #183 , #2626
  static title + #184 , #2626
  static title + #185 , #2626
  static title + #186 , #3138
  static title + #187 , #2626
  static title + #188 , #2626
  static title + #189 , #2626
  static title + #190 , #2626
  static title + #191 , #3138
  static title + #192 , #2626
  static title + #193 , #3138
  static title + #194 , #3138
  static title + #195 , #2626
  static title + #196 , #3138
  static title + #197 , #2626
  static title + #198 , #3138
  static title + #199 , #3138

; How to play
how_to_play0  : string "HOW TO PLAY"
how_to_play1  : string "W - "
how_to_play2  : string "MOVE UP"
how_to_play3  : string "A - "
how_to_play4  : string "MOVE LEFT"
how_to_play5  : string "S - "
how_to_play6  : string "MOVE DOWN"
how_to_play7  : string "D - "
how_to_play8  : string "MOVE RIGHT"

; How to Score
how_to_score0 : string "HOW TO SCORE"
how_to_score1 : string "1 PT "
how_to_score2 : string "FOR EVERY LEAP FORWARD"
how_to_score3 : string "5 PTS "
how_to_score4 : string "FOR EVERY FROG THAT CROSSED"
how_to_score5 : string "100 PTS "
how_to_score6 : string "FOR CROSSING ALL FROGS"
how_to_score7 : string "1 PT "
how_to_score8 : string "FOR EVERY REMAINING SECOND"

; Matrices to store background and foreground info, respectively
background : var #1200
foreground : var #1200

; Data segment to store in game status information
distance : var #1
hiscore  : var #1
    static hiscore, #0
level    : var #1
lives    : var #1
oneUp    : var #1
saved    : var #1
score    : var #1


; HUD variables
scoreLabel : string "SCORE "
oneUpLabel : string "1-UP "
livesLabel : string "LIVES "
timeLabel  : string " TIME"

; Lanes of obstacles in the frog's path, comprised of the words:
; 0: y position of the top left corner of the obstacle charmap
; 1: x position of the top left corner of the obstacle charmap, multiplied by 10
; 2: quantity of copies of the object to be displayed
; 3: spacing between such copies
; 4: speed at which the object traverses the screen
; 5: pointer to the obstacle charmap
; 6: direction of movement. 0 for left, otherwise right

; Road
lane_0 : var #7
    static lane_0 + #0, #24
    static lane_0 + #1, #160
    static lane_0 + #2, #3
    static lane_0 + #3, #16
    static lane_0 + #4, #5
    static lane_0 + #5, #yellow_charmap
    static lane_0 + #0, #0
lane_1 : var #7
    static lane_1 + #0, #22
    static lane_1 + #1, #220
    static lane_1 + #2, #3
    static lane_1 + #3, #16
    static lane_1 + #4, #3
    static lane_1 + #5, #tractor_charmap
    static lane_0 + #6, #1
lane_2 : var #7
    static lane_2 + #0, #20
    static lane_2 + #1, #150
    static lane_2 + #2, #3
    static lane_2 + #3, #16
    static lane_2 + #4, #3
    static lane_2 + #5, #pink_charmap
    static lane_2 + #6, #0
lane_3 : var #7
    static lane_3 + #0, #18
    static lane_3 + #1, #0
    static lane_3 + #2, #1
    static lane_3 + #3, #40
    static lane_3 + #4, #20
    static lane_3 + #5, #red_charmap
    static lane_3 + #6, #1
lane_4 : var #7
    static lane_4 + #0, #16
    static lane_4 + #1, #2
    static lane_4 + #2, #18
    static lane_4 + #3, #3
    static lane_4 + #4, #0
    static lane_4 + #5, #truck_charmap
    static lane_4 + #6, #0

; River
lane_5 : var #7
    static lane_5 + #0, #12
    static lane_5 + #1, #50
    static lane_5 + #2, #5
    static lane_5 + #3, #8
    static lane_5 + #4, #100
    static lane_5 + #5, #turtle_charmap
    static lane_5 + #6, #0
lane_6 : var #7
    static lane_6 + #0, #10
    static lane_6 + #1, #6
    static lane_6 + #2, #3
    static lane_6 + #3, #15
    static lane_6 + #4, #50
    static lane_6 + #5, #log_charmap
    static lane_6 + #6, #1
lane_7 : var #7
    static lane_7 + #0, #8
    static lane_7 + #1, #16
    static lane_7 + #2, #2
    static lane_7 + #3, #22
    static lane_7 + #4, #10
    static lane_7 + #5, #log_charmap
    static lane_7 + #6, #1
lane_8 : var #7
    static lane_8 + #0, #6
    static lane_8 + #1, #200
    static lane_8 + #2, #6
    static lane_8 + #3, #8
    static lane_8 + #4, #10
    static lane_8 + #5, #turtle_charmap
    static lane_8 + #6, #0
lane_9 : var #7
    static lane_9 + #0, #4
    static lane_9 + #1, #80
    static lane_9 + #2, #4
    static lane_9 + #3, #20
    static lane_9 + #4, #20
    static lane_9 + #5, #log_charmap
    static lane_9 + #6, #1
lanes : var #3
    static lanes + #0, #lane_0 ; Initial lane
    static lanes + #1, #7      ; Offset between the lanes' memory addresses
    static lanes + #2, #10     ; Quantity of lanes

lane_buffer : var #80          ; Temporary storage space to update the mapping
                               ; of a given lane's content
lane_buffer_size : var #1
    static lane_buffer_size, #80

; Data relating to the frog
frog_pos : var #1

; Charmaps

frog_charmap : var #2
    static frog_charmap     + #0 , #769 ; Initial position
    static frog_charmap     + #1 , #4   ; Charmap length

roadkill_charmap : var #2
    static roadkill_charmap + #0 , #90
    static roadkill_charmap + #1 , #4

drowned_charmap : var #2
    static drowned_charmap  + #0 , #3196
    static drowned_charmap  + #1 , #4

saved_charmap : var #2
    static saved_charmap    + #0 , #3099
    static saved_charmap    + #1 , #4

yellow_charmap : var #2
    static yellow_charmap   + #0 , #2825
    static yellow_charmap   + #1 , #6

tractor_charmap : var #2
    static tractor_charmap  + #0 , #1551
    static tractor_charmap  + #1 , #6

pink_charmap : var #2
    static pink_charmap     + #0 , #3349
    static pink_charmap     + #1 , #6

red_charmap : var #2
    static red_charmap      + #0 , #2362
    static red_charmap      + #1 , #6

truck_charmap : var #2
    static truck_charmap    + #0 , #2081
    static truck_charmap    + #1 , #8

turtle_charmap : var #2
    static turtle_charmap   + #0 , #3192
    static turtle_charmap   + #1 , #4

heart_charmap: var #1
    static heart_charmap, #2350

log_charmap : var #2
    static log_charmap, #322

gameOverLabel: string " GAME OVER "

; NOTE: Code segment

; NOTE: Mathematical functions

screenOffset:
    ; Gives the offset that, given the screen's dimensions, corresponds to a given column and row. Values beyond the screen's HEIGHT and WIDTH get wrapped around.
    ; Arguments:
    ; a1 = row
    ; a2 = column
    ; Returns:
    ; a0 = offset

    call saveRegisters
    load r3, HEIGHT
    load r4, WIDTH
    mod r1, r1, r3
    mul r1, r1, r4
    mod r2, r2, r4
    add r1, r1, r2
    store a0, r1
    call restoreRegisters
    rts


modularSubtract:
    ; Given operands a, b and m, where m > a and m > b;
    ; if a < b return m - (b - a), otherwise a - b
    ; Arguments:
    ; a1 = a
    ; a2 = b
    ; a3 = m
    ; Returns:
    ; a0 = result of modularSubtract operation

    call saveRegisters

    cmp r1, r2
    jle caseLower

    ; Case greater or equal
    sub r1, r1, r2
    jmp msEnd

    caseLower:
        sub r1, r2, r1
        sub r1, r3, r1
    msEnd:
        store a0, r1
        call restoreRegisters
        rts


; NOTE: Functions to initialize and free memory or game objects

saveRegisters:
    ; Save the registers' context for later retrieval
    ; Arguments: None
    ; Returns: Nothing

    pop r0  ; Store function return address
    push r1
    push r2
    push r3
    push r4
    push r5
    push r6
    push r7
    push r0 ; Place it back to the top of the stack
    load r1, a1
    load r2, a2
    load r3, a3
    load r4, a4
    load r5, a5
    load r6, a6
    load r7, a7
    loadn r0, #0
    rts     ; Pop and return.


restoreRegisters:
    ; Restore registers' context from stack
    ; Arguments: None
    ; Returns: Nothing

    pop r0
    pop r7
    pop r6
    pop r5
    pop r4
    pop r3
    pop r2
    pop r1
    push r0
    loadn r0, #0
    rts


initStats:
    ; Sets up the initial values of this game's status
    ; Arguments: None
    ; Returns: Nothing

    call saveRegisters
    store level, r0
    store score, r0
    store saved, r0
    ; store elapsed, r0
    loadn r1, #7
    store lives, r1
    loadn r1, #1000
    store oneUp, r1
    call restoreRegisters
    rts


initMap:
    call saveRegisters
    ; Fills a map with zeroes.
    ; Arguments:
    ; a1 = pointer to the map
    ; Returns: Nothing

    call saveRegisters
    store a1, r0
    store a2, r0
    store a3, r1
    load r1, WIDTH
    load r2, HEIGHT
    mul r1, r1, r2
    store a4, r1
    store a5, r0
    call printChar
    call restoreRegisters
    rts


initTitleScreen:
    ; Prints the background of the title screen.
    ; a1 = Pointer to background map where to store printed characters
    ; Returns: Nothing

    call saveRegisters
    call initMap

    ; Print Highscore indicator
    loadn r1, #hiscoreLabel
    store a1, r1
    loadn r1, #13
    store a2, r1
    store a4, r0
    call printString

    load r2, a0
    add r1, r1, r2
    store a2, r1
    loadn r1, #'0'
    load r2, red
    add r1, r1, r2
    store a1, r1
    loadn r1, #5
    store a4, r1
    call printChar

    ; Print "Frogger!"
    load r1, FILL
    load r2, blue
    add r1, r1, r2
    store a1, r1 ; Fill character with added color
    loadn r2, #80
    store a2, r2
    loadn r3, #2
    mul r3, r3, r2
    store a4, r3 ; Characters to print
    call printChar

    loadn r4, #title
    store a1, r4
    add r2, r2, r3
    store a2, r2
    load r3, title_length
    store a4, r3
    call printVector

    store a1, r1
    add r1, r2, r3
    store a2, r1
    load r1, WIDTH
    store a4, r1
    call printChar

    ; Print "- The Demake -"
    loadn r1, #13
    store a1, r1
    store a2,r1
    call screenOffset
    loadn r1, #demake
    store a1, r1
    load r1, a0
    store a2, r1
    store a4, r0
    call printString

    ; Print "Press enter to play"
    loadn r1, #26
    store a1, r1
    loadn r1, #10
    store a2, r1
    call screenOffset
    loadn r1, #press
    store a1, r1
    load r1, a0
    store a2, r1
    call printString

    loadn r2, #enter
    store a1, r2
    load r2, a0
    add r1, r1, r2
    store a2, r1
    load r2, yellow
    store a4, r2
    call printString

    loadn r2, #to_play
    store a1, r2
    load r2, a0
    add r1, r1, r2
    store a2, r1
    store a4, r0
    call printString

    call restoreRegisters
    rts


; NOTE: Functions for printing on screen

printChar:
    ; Prints a character, one or more times.
    ; Arguments:
    ; a1 = character to be printed, with color value already added
    ; a2 = position to start printing
    ; a3 = map to save printed characters
    ; a4 = number of characters to print
    ; a5 = Whether printing is animated and can be interrupted by the user's input. 0 implies false any other value is the ASCII value of the key that interrupts the animation
    ; Returns:
    ; a0 = 0 if printing was interrupted, otherwise the printed string length

    call saveRegisters
    add r3, r3, r2  ; position where to start storing
    add r6, r4, r2  ; position where to stop printing

    cmp r5, r0
    jeq ppUniterruptable

    load r7, FRAMERATE
    store a1, r7
    store a2, r5

    ppInterruptable:
        cmp r2, r6
        jeq ppUninterrupted
        call takeInput
        load r7, a0
        cmp r5, r7
        jeq ppInterrupted
        outchar r1, r2
        storei r3, r1
        inc r2
        inc r3
        jmp ppInterruptable

    ppUniterruptable:
        cmp r2, r6
        jeq ppUninterrupted
        outchar r1, r2
        storei r3, r1
        inc r2
        inc r3
        jmp ppUniterruptable

    ppUninterrupted:
        store a0, r4
        jmp ppEnd

    ppInterrupted:
        store a0, r0

    ppEnd:
        call restoreRegisters
        rts


printInt:
    ; Prints a right-aligned integer value on screen.
    ; a1 = Integer value to be printed
    ; a2 = Right-aligned position in the screen from where to start printing
    ; a3 = Pointer to map where to save printed characters
    ; a4 = Color value to print number
    ; Returns: Nothing

    call saveRegisters
    add r3, r3, r2 ; Get location in map where to start storing
    loadn r5, #10  ; load the value 10 to apply the mod operation
    loadn r6, #'0' ; load index value of the character 0

    printIntLoop:
        cmp r1, r0
        jeq printIntEnd
        mod r7, r1, r5 ; get least significant digit from r1
        add r7, r6, r7 ; apply it as an offset to the character map
        add r7, r7, r4 ; apply color value
        outchar r7, r2
        storei r3, r7
        dec r2
        dec r3
        div r1, r1, r5
        jz printIntEnd
        jmp printIntLoop

    printIntEnd:
        call restoreRegisters
        rts


printVector:
    ; Prints the contents of a vector as characters on the screen. If character in the vector is the same found in the screen's map, no printing occurs
    ; Arguments:
    ; a1 = Pointer to the start of the vector
    ; a2 = Index of the position at the screen where to start printing
    ; a3 = Map to save printed characters
    ; a4 = Vector length
    ; Returns: Nothing

    call saveRegisters
    add r3, r2, r3 ; Offset memory location to save characters
    add r4, r3, r4 ; Memory location to stop storing or printing

    pvLoop:
        cmp r3, r4
        jeq pvEnd
        loadi r5, r1
        loadi r6, r3
        cmp r5, r6
        jeq pvContinue
        outchar r5, r2
        storei r3, r5
    pvContinue:
        inc r1
        inc r2
        inc r3
        jmp pvLoop
    pvEnd:
        call restoreRegisters
        rts


printString:
    ; Prints a string of text. Printing can be animated and interrupted by the user.
    ; a1 = Pointer to the string to be printed
    ; a2 = Index of the position at the screen where to start printing
    ; a3 = Map to save printed characters
    ; a4 = Color to be assigned to printed characters.
    ;      If color values are already applied, pass 0 so as to not alter these.
    ; a5 = Whether printing is animated and can be interrupted by the user's input.
    ;      0 implies false any other value is the ASCII value of the key that interrupts the animation
    ; Returns:
    ; a0 = 0 if printing was interrupted, otherwise the printed string length.

    call saveRegisters
    add r3, r3, r2 ; Offset memory location where to store characters
    mov r6, r1
    cmp r5, r0
    jeq psUninterruptable
    load r7, FRAMERATE
    store a1, r5
    store a2, r7

    psInterruptable:
        call takeInput
        load r7, a0
        cmp r7, r5
        jeq psInterrupted
        loadi r7, r1
        cmp r7, r0
        jeq psUninterrupted
        add r7, r7, r4
        outchar r7, r2
        storei r3, r7
        inc r1
        inc r2
        inc r3
        jmp psInterruptable

    psUninterruptable:
        loadi r7, r1        ; retrieve character to be printed
        cmp r7, r0          ; check if it is the terminator character
        jeq psUninterrupted ; Escape if it is
        add r7, r7, r4      ; Add color value to character
        outchar r7, r2      ; Print character
        storei r3, r7
        inc r1              ; Increment string pointer
        inc r2              ; Increment screen position
        inc r3              ; Increment map pointer
        jmp psUninterruptable

    psUninterrupted:
        sub r1, r1, r6
        store a0, r1
        jmp psEnd

    psInterrupted:
        store a0, r0

    psEnd:
        call restoreRegisters
        rts


printInstructions:
    ; Prints a left aligned text box containing instructions on how to play or score and returns whether the user has interrupted printing or not.
    ; Arguments:
    ; a1 = address of the vector of strings to be printed
    ; a2 = number of lines to be printed
    ; a3 = map to save printed characters
    ; a4 = leftmost column from where to start printing instructions
    ; Returns:
    ; a0 = 0 if printing was interrupted, otherwise 1.

    call saveRegisters
    store a0, r0

    ; Print a centered header
    loadn r5, #16
    store a1, r5
    loadn r5, #14
    store a2, r5
    call screenOffset
    load r5, a0
    store a1, r1
    store a2, r5
    store a4, r0
    load r3, ENTER
    store a5, r3
    call printString
    load r3, a0
    cmp r3, r0
    jeq piEnd
    add r1, r1, r3
    inc r1
    add r5, r5, r3

    ; Pad right
    store a1, r0
    store a2, r5
    loadn r3, #1
    store a4, r3
    call printChar
    load r3, a0
    cmp r3, r0
    jeq piEnd
    dec r2

    ; Set initial values
    loadn r5, #18
    store a1, r5
    store a2, r0
    call screenOffset
    load r5, a0
    load r6, WIDTH

    piBody:
        cmp r2, r0
        jeq piCompleted

        ; Pad left
        store a1, r0
        store a2, r5
        store a4, r4
        call printChar
        load r7, a0
        cmp r7, r0
        jeq piEnd

        ; Offset screen pointer
        add r5, r5, r7

        ; Print with emphasis (red)
        store a1, r1
        store a2, r5
        load r7, red
        store a4, r7
        call printString
        load r7, a0
        cmp r7, r0
        jeq piEnd

        ; Offset string and screen pointer
        add r1, r1, r7
        inc r1
        add r5, r5, r7

        ; Print description (yellow)
        store a1, r1
        store a2, r5
        load r7, yellow
        store a4, r7
        call printString
        load r7, a0
        cmp r7, r0
        jeq piEnd

        ; Offset string and screen pointer
        add r1, r1, r7
        inc r1
        add r5, r5, r7

        ; Pad right
        store a1, r0
        store a2, r5
        mod R7, R5, R6
        sub R7, R6, R7
        dec r7
        store a4, R7
        call printChar
        load r7, a0
        cmp r7, r0
        jeq piEnd

        ; Offset screen pointer
        add r5, r5, r7
        inc r5
        add r5, r5, r6

        dec r2
        jmp piBody

    piCompleted:
        store a0, r3

    piEnd:
        call restoreRegisters
        rts

; NOTE: Drawing functions

drawLane:
    ; Function to draw a vehicles into a map
    ; a1 = pointer to lane
    ; a2 = map pointer
    ; a3 = consecutive copies.
    ;      1 indicates that each batch, separated by a spacing, contains a single obstacle.

    call saveRegisters
    store a4, r2       ; map pointer

    loadn r2, #6
    add r2, r1, r2
    store a1, r2       ; charmap to be printed

    loadn r2, #2
    add r2, r1, r2
    loadi r2, r2       ; batches of copies

    loadn r4, #3
    add r4, r1, r4
    loadi r4, r4       ; spacing between batches of copies

    loadn r5, #1
    add r5, r1, r5
    loadi r5, r5       ; original x position

    batchLoop:
        mov r1, r3     ; copy counter
        mov r6, r2
        dec r6         ; batch spacing multiplier
        mul r6, r4, r6 ; multiply offset
        add r6, r5, r6 ; add to original's x position, this is the batches' x
        consecutiveLoop:
            store a3, r6
            call drawCharmap
            load r7, a0
            add r6, r6, r7
            dec r1
            jnz consecutiveLoop
        dec r2
        jnz batchLoop

    call restoreRegisters
    rts

drawLog:
    ; Function to draw logs on the river
    ; a1 = pointer to lane containing the description of logs
    ; a2 = map pointer
    ; a3 = log length

    call saveRegisters
    store a3, r2

    loadn r2, #2
    add r2, r1, r2
    loadi r2, r2 ; quantities of logs

    loadn r2, #2
    add r2, r1, r2
    loadi r2, r2 ; quantities of logs





    call restoreRegisters
    rts

drawLanes:
    ; Function to draw the contents of a vector of lanes into a map
    ; a1 = pointer to vector of lanes
    ; a2 = map pointer

    mov r2, r1
    inc r2
    loadi r1, r1 ; initial lane pointer
    loadi r2, r2 ; sizeof lane
    loadn r3, #5 ; number of lanes on the road
    store a3, r0

    drawRoad:
        store a1, r1
        call drawLane
        add r1, r2
        dec r3
        jnz drawRoad


    ; Draw pair of turtles
    store a1, r1
    loadn r3, #2
    store a3, r3
    call drawLane
    add r1, r2

    ; draw a short log
    store a1, r1
    loadn r3, #8
    call drawLog
    add r1, r2

printEnemy:
    ; a1 = charmap
    ; a2 = print position y
    ; a3 = print position x
    call saveRegisters
    loadn r5, #0
    push r3
    printEnemyLoop1:
      add r6, r1, r5
      loadi r6, r6
      cmp r6, r0
      jeq printEnemypt2
      store a1, r2
      store a2, r3
      call screenOffset
      load r4, a0
      loadn r7, #foreground
      add r7, r7, r4
      outchar r6, r4
      storei r7, r6
      inc r3
      loadn r7, #40
      cmp r3, r7
      jne printEnNormPos1
      loadn r3, #0
      printEnNormPos1:
      inc r5
      jmp printEnemyLoop1
    printEnemypt2:
      inc r2
      pop r3
      inc r5
      printEnemyLoop2:
        add r6, r1, r5
        loadi r6,r6
        cmp r6, r0
        jeq printEnemyEnd
        store a1, r2
        store a2, r3
        call screenOffset
        load r4, a0
        loadn r7, #foreground
        add r7, r7, r4
        outchar r6, r4
        storei r7, r6
        inc r3
        loadn r7, #40
        cmp r3, r7
        jne printEnNormPos2
        loadn r3, #0
        printEnNormPos2:
        inc r5
        jmp printEnemyLoop2
    printEnemyEnd:
    call restoreRegisters
    rts


eraseEnemy:
    ; a1 = charmap
    ; a2 = print position y
    ; a3 = print position x
    call saveRegisters
    loadn r5, #0
    push r3
    eraseEnemyLoop1:
      add r6, r1, r5
      loadi r6, r6
      cmp r6, r0
      jeq eraseEnemypt2
      store a1, r2
      store a2, r3
      call screenOffset
      load r4, a0
      loadn r7, #foreground
      add r7, r7, r4
      loadn r6, #background
      add r6, r6, r4
      loadi r6, r6
      outchar r6, r4
      storei r7, r6
      inc r3
      loadn r7, #40
      cmp r3, r7
      jne eraseEnNormPos1
      loadn r3, #0
      eraseEnNormPos1:
      inc r5
      jmp eraseEnemyLoop1
    eraseEnemypt2:
      inc r2
      pop r3
      inc r5
      eraseEnemyLoop2:
        add r6, r1, r5
        loadi r6,r6
        cmp r6, r0
        jeq eraseEnemyEnd
        store a1, r2
        store a2, r3
        call screenOffset
        load r4, a0
        loadn r7, #foreground
        add r7, r7, r4
        storei r7, r0
        loadn r6, #background
        add r6, r6, r4
        loadi r6, r6
        outchar r6, r4
        inc r3
        loadn r7, #40
        cmp r3, r7
        jne eraseEnNormPos2
        loadn r3, #0
        eraseEnNormPos2:
        inc r5
        jmp eraseEnemyLoop2
    eraseEnemyEnd:
    call restoreRegisters
    rts

drawCharmap:
    ; Function to draw game object's charmaps. Wraps around the edges of the screen.
    ; Arguments:
    ; a1 = Pointer to charmap data structure
    ; a2 = Vertical position where to print the top left corner of the charmap
    ; a3 = Horizontal position where to print the top left corner of the charmap
    ; a4 = Pointer to map where to store the charmap,
    ;      If set to 0 the charmap won't be saved to a map
    ; Returns:
    ; a0 = the horizontal length of the printed charmap

    call saveRegisters
    mov r5, r1
    inc r5         ; Pointer to charmap's length variable
    loadi r1, r1   ; Charmap's initial character
    loadi r5, r5   ; Charmap's total length
    loadn r6, #2   ; Row counter
    div r7, r5, r6 ; Second row length
    store a3, r7   ; Store to memory
    sub r5, r5, r7 ; First (current) row length
    store a0, r5

    rowLoop:
        store a1, r2
        mov r2, r3
        columnLoop:
            dec r5
            jz columnEnd
            store a2, r3
            call screenOffset
            load r7, a0
            outchar r1, r7
            cmp r3, r0
            jeq columnContinue
            storei r4, r1
            inc r4
        columnContinue:
            inc r1
            inc r3
            jmp columnLoop
        columnEnd:
            dec r6
            jz rowEnd
            mov r3, r2
            load r2, a1
            inc r2
            load r5, a3
            jmp rowLoop
    rowEnd:
        call restoreRegisters
        rts

drawHUD:
    ; Function to draw HUD elements
    ; Arguments:
    ; a1 = Pointer to background vector
    ; Returns: Nothing

    call saveRegisters
    store a3, r1
    store a5, r0
    loadn r1, #'0'
    load r2, red
    add r1, r1, r2

    ; draw 1-up counter
    loadn r3, #oneUpLabel
    store a1, r3
    store a2, r0
    store a4, r0
    call printString

    load r3, a0
    outchar r1, r3

    loadn r4, #4
    add r3, r3, r4
    store a2, r3
    load r4, oneUp
    store a1, r4
    store a4, r2
    call printInt

    ; draw score
    loadn r4, #scoreLabel
    store a1, r4
    loadn r3, #29
    store a2, r3
    store a4, r0
    call printString

    store a1, r1
    load r4, a0
    add r3, r3, r4
    store a2, r3
    loadn r4, #5
    store a4, r4
    call printChar

    ; draw lives
    load r1, HEIGHT
    dec r1
    store a1, r1
    store a2, r0
    call screenOffset
    loadn r1, #livesLabel
    store a1, r1
    load r1, a0
    store a2, r1
    store a4, r0
    call printString

    load r3, heart_charmap
    store a1, r3
    load r3, a0
    add r1, r1, r3
    store a2, r1
    load r2, lives
    store a4, r2
    call printChar

    call restoreRegisters
    rts

drawBackground:
    ; Draw the game's background
    ; Arguments:
    ; a1 = pointer to the background vector

    call saveRegisters
    store a3, r1
    store a5, r0
    load r1, FILL     ; Character to print
    loadn r2, #2      ; Vertical length of the ponds, river margin and the sidewalk
    store a1, r2
    store a2, r0
    call screenOffset
    load r3, a0       ; Cursor position on the screen
    breakp

    ; Draw ponds
    load r4, grass
    add r4, r1, r4
    store a1, r4
    store a2, r3
    store a4, r2
    call printChar
    load r4, a0
    add r3, r3, r4

    loadn r4, #4
    store a4, r4
    loadn r4, #19
    pondLoop:
        mod r5, r4, r2
        jz selectGrass
            load r5, blue
            jmp colorSelected
        selectGrass:
            load r5, grass
        colorSelected:
            add r5, r1, r5
            store a1, r5
            store a2, r3
            call printChar
            load r5, a0
            add r3, r3, r5

            dec r4
            jz pondLoop

    load r4, grass
    add r4, r1, r4
    store a1, r4
    store a2, r3
    store a4, r2
    call printChar
    load r4, a0
    add r3, r3, r4

    load r4, WIDTH
    loadn r5, #10 ; Vertical length of the river and the road
    ; Draw river
    load r6, blue
    add r6, r1, r6
    store a1, r6
    store a2, r3
    mul r6, r4, r5
    store a4, r6
    call printChar
    load r6, a0
    add r3, r3, r6

    ; Draw grass
    load r6, grass
    add r6, r1, r6
    store a1, r6
    store a2, r5
    mul r6, r2, r4
    store a4, r6
    call printChar
    load r6, a0
    add r3, r3, r6

    ; Draw asphalt
    store a1, r0
    store a2, r3
    mul r5, r4, r5
    store a4, r5
    call printChar
    load r5, a0
    add r3, r3, r5

    ; Draw sidewalk
    load r5, gray
    add r5, r1, r5
    store a1, r5
    store a2, r3
    mul r2, r2, r4
    store a4, r2
    call printChar

    call restoreRegisters
    rts

drawGameOver:
    ; Draws a "Game Over" disclaimer that lingers for some time (unless interrupted) before returning the player to the Title Screen
    ; Arguments:
    ; a1 = pointer to background vector
    ; Returns: Nothing

    call saveRegisters
    store a3, r1
    load r1, ENTER
    store a5, r1
    loadn r2, #12 ; disclaimer top left row
    loadn r3, #14 ; disclaimer top left column
    loadn r4, #11 ; disclaimer horizontal length

    ; Print disclaimer's top margin
    store a1, r2
    store a2, r3
    call screenOffset
    load r5, a0

    store a1, r0
    store a2, r5
    store a4, r4
    call printChar
    load r5, a0
    cmp r5, r0
    jeq GameOverEnd
    inc r2

    ; Print the disclaimer's label
    store a1, r2
    store a2, r3
    call screenOffset
    load r5, a0

    store a2, r5
    loadn r5, #gameOverLabel
    store a1, r5
    store a4, r0
    call printString
    load r5, a0
    cmp r5, r0
    jeq GameOverEnd
    inc r2

    ; Print disclaimer's bottom margin
    store a1, r2
    store a2, r3
    call screenOffset
    load r5, a0

    store a1, r0
    store a2, r5
    store a4, r4
    call printChar
    load r5, a0
    cmp r5, r0
    jeq GameOverEnd

    ; Interval to display disclaimer before transitioning to the next screen
    loadn r2, #1000
    store a1, r2
    store a2, r1
    call takeInput

    GameOverEnd:
        call restoreRegisters
        rts


; NOTE: Game functions

takeInput:
    ; A function that delays the game's execution for a given period to take an input from the player. If the input is one that was expected, the delay is canceled.
    ; Arguments:
    ; a1 = Delay multiplier
    ; a2 = Expected input
    ; Returns:
    ; a0 = 0, if no key was pressed, otherwise the ASCII value of key pressed

    call saveRegisters
    loadn r3, #1000 ; Base delay, implies a microsecond at 1 MHz
    loadn r4, #255  ; Default value returned by inchar when no key press is detected
    store a0, r0

    delay_A:
        mov r5, r1
        delay_B:
            inchar r6
            cmp r4, r6
            jeq delayContinue
            store a0, r6
            cmp r2, r6
            jeq delayEnd
    delayContinue:
        dec r5
        jnz delay_B
        dec r3
        jnz delay_A
    delayEnd:
    call restoreRegisters
    rts


shiftLane:
    ; Fills the lane buffer with the shifted contents of a lane
    ; Arguments:
    ; a1 = lane pointer
    ; a2 = map pointer
    ; a3 = offset
    ; a4 = direction
    ; Returns: Nothing

    call saveRegisters
    loadi r1, r1                 ; y
    loadn r5, #lane_buffer
    load r6, WIDTH
    mov r7, r0
    loadn r0, #2                 ; I broke my own rule

    shiftRow:
        cmp r4, r0
        jeq shiftLeft
            sub r3, r6, r3
        shiftLeft:
            store a1, r1

        shiftColumn:
            store a2, r3
            call screenOffset
            load r1, a0
            add r1, r2, r1       ; memory position where to draw character from
            loadi r1, r1         ; load character
            storei r5, r1        ; save to lane buffer
            inc r3
            mod r3, r3, r6       ; Increment prev x
            inc r5               ; Increment lane buffer pointer
            inc r7
            mod r7, r7, r6       ; Increment x
            jnz shiftColumn

        load r3, a3              ; restore offset
        inc r1                   ; increase row
        dec r0
        jnz shiftRow

    call restoreRegisters
    rts

updateLane:
    ; Updates a lane' position parameter, moving an obstacle across the screen and updating the map where it's printing information is stored accordingly
    ; Arguments:
    ; a1 = lane pointer
    ; a2 = map pointer
    ; Returns: Nothing

    call saveRegisters
    loadn r3, #1   ; x position offset
    add r3, r1, r3 ; x position memory address
    loadi r4, r3   ; load x position value

    loadn r5, #4   ; speed offset
    add r5, r1, r5 ; speed m.a.
    loadi r5, r5   ; speed

    loadn r6, #6   ; direction offset
    add r6, r1, r6 ; direction m.a.
    loadi r6, r6   ; direction
    cmp r6, r0

    add r5, r4, r5
    storei r3, r5  ; update position
    loadn r6, #10
    div r4, r4, r6
    div r5, r5, r6
    sub r1, r5, r4 ; position offset in screen units
    cmp r4, r5
    jeq ulEnd

    store a3, r4
    store a4, r6
    call shiftLane

    loadi r1, r1
    load r3, WIDTH
    mul r1, r1, r3
    store a2, r1
    loadn r1, #lane_buffer
    store a1, r1
    store a3, r2
    load r1, lane_buffer_size
    store a4, r1
    call printVector ; Draw updated lane

    ulEnd:
        call restoreRegisters
        rts

titleScreen:
    ; Prints the title screen, displaying game instructions.
    ; Arguments:
    ; a1 = current Highscore
    ; a2 = pointer to background vector
    ; Returns: Nothing

    call saveRegisters
    store a1, r2
    call initTitleScreen

    store a1, r1
    store a3, r2
    loadn r1, #25         ; Column offset
    store a2, r1
    load r1, red
    store a4, r1
    call printInt         ; Print Highscore

    mov r1, r0            ; variable to toggle between instructions to be displayed
    load r2, ENTER        ; variable to compare if ENTER was pressed
    loadn r3, #30000      ; Set delay interval to 3 seconds
    loadn r4, #5          ; Set number of lines of instructions to be printed

    titleScreenLoop:
        cmp r1, r0        ; Either print instructions for scoring or playing
        jeq selectPlay    ; Selection logic
        loadn r5, #how_to_score0
        loadn r6, #2      ; Column offset
        jmp instructionSelected
        selectPlay:
            loadn r5, #how_to_play0
            loadn r6, #13 ; Column offset
        instructionSelected:
            store a1, r5
            store a2, r4
            store a4, r6
            call printInstructions
            load r5, a0
            cmp r5, r0
            jeq titleScreenEnd
            store a1, r3
            store a2, r2
            call takeInput
            load r5, a0
            cmp r5, r2
            jeq titleScreenEnd
            not r1, r1
            jmp titleScreenLoop
    titleScreenEnd:
        call restoreRegisters
        rts

gameScreen:
    ; Function to execute the game itself.
    ; Arguments:
    ; a1 = Hiscore
    ; a2 = Pointer to background vector
    ; a3 = Pointer to foreground vector
    ; Returns:
    ; a0 = updated Hiscore

    call saveRegisters
    call initStats
    store a1, r2
    call drawHUD
    call drawBackground
    ; TODO: Create and call function drawLanes using the drawCharmap as an auxiliary function

    breakp

    load r4, lives
    gameLoop:
        ; call drawLanes
        ; TODO: precisa por a partes das lanes, movimento do sapo implementado
        ; TODO: Augusto and Felipe, insert calls to game functions here


        ;Input
        loadn r7, #200
        store a1 ,R7
        loadn r7, #1
        store a2, r7
        call takeInput
        load r7, a0

        ;Movement
        store a1, r7
        call fn_moveFrog

        ;Checks collision after frog move
        call fn_checkDeath
        load r7, a0
        cmp r7, r0
        jeq case_Dead

        ;Draws
        call fn_drawFrog

        ;Checks victory
        call fn_checkWin
        load r7, a0
        cmp r7, r0
        jne case_Reached

        ;TODO: Mover inimigos aqui


        jmp gameLoop
        case_Dead:

            ;Subtracts one life, game over if it goes to zero
            call fn_subLives
            load r7, a0
            cmp r7, r0
            jne gameOver
            store a1, r2
        call drawHUD
            loadn r7, #1060
            store frog_pos, r7
            call fn_drawFrog

            jmp gameLoop


        case_Reached:

            ;Update score
            load r7, score
            loadn r6, #100
            add r7, r7, r6
            store score, r7

            ;Update saved
            load r7, saved
            inc r7
            store saved, r7

            store a1, r2
            call drawHUD

            jmp gameLoop

        ; jmp gameLoop
    gameOver:
        store a1, r2
        call drawGameOver
        store a0, r1
        rts

fn_checkDeath:
    ;Checks if the frog hit an enemy
    ;Args : None
    ;Returns : a0 = if dead then 0, else 1
    load r1, frog_pos
    loadn r2, #foreground
    add r3, r1, r2 ;Frogs position on the foreground
    ;Top left
    loadi r4, r3
    cmp r4, r0
    jne case_Hit
    ;Top Right
    inc r3
    loadi r4, r3
    cmp r4, r0
    jne case_Hit
    ;Bottom left
    loadn r2 , #39
    add r3, r3, r2
    loadi r4, r3
    cmp r4, r0
    jne case_Hit
    ;Bottom Right
    inc r3
    loadi r4, r3
    cmp r4, r0
    jne case_Hit
    ;If not Hit
    loadn r1, #1
    store a0, r1
    rts
    case_Hit:
        loadn r1, #0
        store a0, r1
        rts

fn_checkBorders:
    ;Checks if the current move of the frog is valid due to map constraints
    ;Args : a1 = new position
    ;Returns: a0 = 0 if not valid, 1 if valid
    call saveRegisters
    load r2, frog_pos
    loadn r3, #1078 ; Compares to max position of the map
    cmp r3, r2
    jle case_invalidMove ;Out of map
    loadn r3, #40
    loadn r5, #38
    mod r4, r2, r3 ;Cehcks if is the last column
    cmp r4, r5
    jeq case_invalidMove
    loadn r5, #1
    cmp r4, r5 ;First column
    jeq case_invalidMove
    ; div r4, r1, r3
    ; div r5, r2, r3
    ; cmp r4, r5 ;Checks if two positions arent on different lines (stepped over the edge)
    ; jeq case_validMove
    ; sub r4, r2, r1
    ; loadn r5, #1
    ; cmp r4, r5
    ; jne case_validMove
    ; sub r4, r1, r2
    ; cmp r4, r5
    ; jne case_validMove
    ; jne case_invalidMove
    case_validMove:
    loadn r1, #1
    store a0, r1
    call restoreRegisters
    rts
    case_invalidMove:
        loadn r1, #0
        store a0, r1
        call restoreRegisters
        rts


fn_moveFrog:
    ;receives the input from the user and tries to move the frog
    ;Args : a1 = input
    ;Returns None
    call saveRegisters
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
        load r1, frog_pos
        loadn r2, #40
        sub r1, r1, r2
        store a1, r1
        call fn_checkBorders
        load r2, a0
        cmp r2, r0
        jeq case_noMove
        call fn_eraseFrog
        store frog_pos, r1
        loadn r1, #1
        store a0, r1
        call restoreRegisters
        rts
    case_A:
        load r1, frog_pos
        dec r1
        store a1, r1
        call fn_checkBorders
        load r2, a0
        cmp r2, r0
        jeq case_noMove
        call fn_eraseFrog
        store frog_pos, r1
        loadn r1, #1
        store a0, r1
        call restoreRegisters
        rts
    case_S:
        load r1, frog_pos
        loadn r2, #40
        add r1, r1, r2
        store a1, r1
        call fn_checkBorders
        load r2, a0
        cmp r2, r0
        jeq case_noMove
        call fn_eraseFrog
        store frog_pos, r1
        loadn r1, #1
        store a0, r1
        call restoreRegisters
        rts
    case_D:
        load r1, frog_pos
        inc r1
        store a1, r1
        call fn_checkBorders
        load r2, a0
        cmp r2, r0
        jeq case_noMove
        call fn_eraseFrog
        store frog_pos, r1
        loadn r1, #1
        store a0, r1
        call restoreRegisters
        rts
    case_noMove:
        loadn r1, #1
        store a0, r1
        call restoreRegisters
        rts


fn_eraseFrog:
    ;Erases the frog and puts the background in its position
    ;No args, no return

    call saveRegisters
    load r1, frog_pos
    loadn r2, #background
    loadi r3, r2
    outchar r3, r1 ;Top left
    inc r1
    inc r2
    loadi r3, r2
    outchar r3, r1 ;Top Right
    loadn r4, #39
    add r1, r1, r4
    add r2, r2, r4
    loadi r3, r1
    outchar r3, r1 ;Bottom left
    inc r1
    inc r2
    loadi r3, r2
    outchar r3, r1 ;Bottom right
    call restoreRegisters
    rts

fn_checkWin:
    ;Checks if the frog has reached the target
    ;No args, returns in a0, 1 if won, else 0

    call saveRegisters
    load r1, frog_pos
    loadn r2, #160
    cmp r2, r1
    jle case_win
    store a0, r0
    call restoreRegisters
    rts
    case_win:
    loadn r1, #1
    store a0, r1
    call restoreRegisters
    rts


fn_drawFrog:
    ;Draws the frog on the screen at its position
    ;Args : None
    ;Returns : None
    call saveRegisters
    load r1, frog_pos
    loadn r2, #frog_charmap
    loadi r3, r2
    outchar r3, r1 ;Top left
    inc r1
    inc r2
    loadi r3, r2
    outchar r3, r1 ;Top Right
    loadn r4, #39
    add r1, r1, r4
    inc r2
    inc r2
    loadi r3, r2
    outchar r3, r1 ;Bottom left
    inc r1
    inc r2
    loadi r3, r2
    outchar r3, r1 ;Bottom right
    call restoreRegisters
    rts

fn_moveEnemies:
  call saveRegisters
  mov r1, r0
  moveEnLaneLoop:
    loadn r7, #2
    cmp r1, r7
    jeq moveEnEnd
    loadn r2, #lanes
    add r2, r2, r1
    loadi r2, r2
    loadn r4, #7
    add r4, r2, r4
    loadi r3, r4
    loadn r5, #8
    add r5, r2, r5
    loadi r5, r5
    add r5, r5, r3
    loadn r3, #5000
    cmp r5, r3
    jeg actualMoveEn
    ;no movement
      storei r4, r5
      inc r1
      jmp moveEnLaneLoop
    actualMoveEn:
      storei r4, r0
      store a1, r1
      call fn_deleteEnemies
      loadn r3, #5
      add r3, r2, r3
      loadi r3, r3
      cmp r3, r0
      jne MoveEnInc
      ;moving to the left
        loadn r3, #4
        add r3, r2, r3
        loadi r3, r3
        loadn r5, #1
        add r5, r2, r5
        loadi r6, r5
        cmp r3, r6
        jel MoveEnDecNorm
        ;wrap-around
          sub r6, r3, r6
          loadn r3, #40
          sub r6, r3, r6
          jmp actualMoveEn_resume
        ;no wrap-around
        MoveEnDecNorm:
          sub r6, r6, r3
          jmp actualMoveEn_resume


      ;moving to the right
      MoveEnInc:
        loadn r3, #4
        add r3, r2, r3
        loadi r3, r3
        loadn r5, #1
        add r5, r2, r5
        loadi r6, r5
        add r7, r6, r3
        loadn r4, #40
        cmp r7, r4
        jle MoveEnIncNorm
        sub r7, r7, r4
        MoveEnIncNorm:
        mov r6, r7
        jmp actualMoveEn_resume


    actualMoveEn_resume:
    storei r5, r6
    store a1, r1
    call fn_drawEnemies
    inc r1
    jmp moveEnLaneLoop

  moveEnEnd:
  call restoreRegisters
  rts







fn_drawEnemies:
  ;a1 = lane number
  call saveRegisters
  loadn r3, #lanes
  add r3, r3, r1
  loadi r3, r3
  loadn r4, #2
  add r4, r3, r4
  loadi r4, r4
  loadi r5, r3
  loadn r1, #1
  add r1, r1, r3
  loadi r1, r1
  loadn r6, #0
  countloop:
    push r6
    store a2, r5
    store a3, r1
    loadn r7, #6
    add r7, r7, r3
    loadi r7, r7
    store a1, r7
    call printEnemy
    loadn r6, #5
    add r6, r6, r3
    loadi r6, r6
    cmp r6, r0
    jne countPosInc
    loadn r6, #3
    add r6, r6, r3
    loadi r6, r6
    cmp r6, r1
    jel countnormaldec
      sub r1, r6, r1
      loadn r7, #40
      sub r1, r7, r1
      jmp countloop_resume
      countnormaldec:
      sub r1, r1, r6
      jmp countloop_resume

      countPosInc:
      loadn r6, #3
      add r6, r6, r3
      loadi r6, r6
      add r2, r6, r1
      loadn r7, #40
      cmp r2, r7
      jle countNormalInc
      sub r2, r2, r7
      countNormalInc:
      mov r1, r2


      countloop_resume:
      pop r6
      inc r6
      cmp r6, r4
      jne countloop

    call restoreRegisters
    rts


fn_deleteEnemies:
  ;a1 = lane number
  call saveRegisters
  loadn r3, #lanes
  add r3, r3, r1
  loadi r3, r3
  loadn r4, #2
  add r4, r3, r4
  loadi r4, r4
  loadi r5, r3
  loadn r1, #1
  add r1, r1, r3
  loadi r1, r1
  loadn r6, #0
  countloopDel:
    push r6
    store a2, r5
    store a3, r1
    loadn r7, #6
    add r7, r7, r3
    loadi r7, r7
    store a1, r7
    call eraseEnemy
    loadn r6, #5
    add r6, r6, r3
    loadi r6, r6
    cmp r6, r0
    jne countPosIncDel
    loadn r6, #3
    add r6, r6, r3
    loadi r6, r6
    cmp r6, r1
    jel countnormaldecDel
      sub r1, r6, r1
      loadn r7, #40
      sub r1, r7, r1
      jmp countloop_resumeDel
      countnormaldecDel:
      sub r1, r1, r6
      jmp countloop_resumeDel

      countPosIncDel:
      loadn r6, #3
      add r6, r6, r3
      loadi r6, r6
      add r2, r6, r1
      loadn r7, #40
      cmp r2, r7
      jle countNormalIncDel
      sub r2, r2, r7



      countNormalIncDel:
      mov r1, r2


      countloop_resumeDel:
      pop r6
      inc r6
      cmp r6, r4
      jne countloopDel

    call restoreRegisters
    rts

fn_subLives:
    ;Removes one live
    ;Returns 0 if there are still lives
    ;Returns 1 if game over
    call saveRegisters
    load r1, lives
    dec r1
    store lives, r1
    cmp r1, r0
    jeq slDead
    loadn r1, #0
    store a1, r1
    call restoreRegisters
    rts
    slDead:
        loadn r1, #1
        store a1, r1
        call restoreRegisters
        rts



    loadn r1, #lanes
    loadi r1, r1
    load r2, HEIGHT
    loadn r3, #4
    sub r2, r2, r3
    loadn r3, #2

    ; Setup Yellow
    sub r3, r3, r4
    storei r2, r3
    inc r2

    loadn r5, #16
    storei r2, r5
    inc r2

    loadn r5, #3
    storei r2, r5
    inc r2

    loadn r5, #50
    storei r2, r5
    inc r2

    storei r2, r0
    inc r2

main:
    load r1, hiscore
    loadn r2, #background
    loadn r3, #foreground
    mainLoop:

        breakp
        store a1, r1
        store a2, r2
        call titleScreen

        store a1, r1
        store a2, r2
        store a3, r3
        call gameScreen
        load r1, a0
        jmp mainLoop
