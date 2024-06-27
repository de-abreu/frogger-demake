jmp main

; NOTE: Data segment

; Constants

WIDTH : var #1
    static WIDTH, #40

HEIGHT : var #1
    static HEIGHT, #30

SCREENSIZE : var #1
    static SCREENSIZE, #1200

MAXLIVES : var #1
    static MAXLIVES, #7

LANES : var #1
    static LANES, #10

FILL : var #1
    static FILL, #'B'


; Base interval: 1 microsecond, multiplied by itself yields a full second.

MICROSECOND : var #1
    static MICROSECOND, #1000

; Multiplier for the interval for 1/20 of a second, i.e. the framerate

FRAMERATE : var #1
    static FRAMERATE, #150


; Color offsets. Remember, white = 0

brown  : var #1
    static brown  , #256
grass  : var #1
    static grass  , #512
musk   : var #1
    static musk   , #768
teal   : var #1
    static teal   , #1536
gray   : var #1
    static gray   , #1792
red    : var #1
    static red    , #2304
yellow : var #1
    static yellow , #2816
blue   : var #1
    static blue   , #3072
pink   : var #1
    static pink   , #3328

; Title screen's variables
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
how_to_score1 : string "10 PTS "
how_to_score2 : string "FOR EVERY LEAP FORWARD"
how_to_score3 : string "50 PTS "
how_to_score4 : string "FOR EVERY FROG THAT CROSSED"
how_to_score5 : string "1000 PTS "
how_to_score6 : string "FOR CROSSING ALL FROGS"
how_to_score7 : string "10 PTS "
how_to_score8 : string "FOR EVERY REMAINING SECOND"

; Matrices to store background and foreground info, respectively
background : var #1200
foreground : var #1200

; Data segment to store in game status information

distance : var #1
elapsed  : var #1
hiscore  : var #1
    static hiscore, #0
level    : var #1
lives    : var #1
oneUp    : var #1
saved    : var #1
score    : var #1


; HUD variables
lowerBoundary : var #1
    static lowerBoundary, #28

upperBoundary : var #1
    static upperBoundary, #1

scoreLabel : string "SCORE "
oneUpLabel : string "1-UP "
livesLabel : string "LIVES "
timeLabel  : string " TIME"

; Data relating to the frog
frogPosition : var #1
frog_charmap : var #6
    static frog_charmap     + #0, #769
    static frog_charmap     + #1, #770
    static frog_charmap     + #2, #0
    static frog_charmap     + #3, #801
    static frog_charmap     + #4, #802
    static frog_charmap     + #5, #0

roadkill_charmap : var #6
    static roadkill_charmap + #0, #106
    static roadkill_charmap + #1, #107
    static roadkill_charmap + #2, #0
    static roadkill_charmap + #3, #120
    static roadkill_charmap + #4, #121
    static roadkill_charmap + #5, #0

drowned_charmap : var #6
    static drowned_charmap  + #0, #108
    static drowned_charmap  + #1, #109
    static drowned_charmap  + #2, #0
    static drowned_charmap  + #3, #122
    static drowned_charmap  + #4, #123
    static drowned_charmap  + #5, #0

saved_charmap : var #6
    static saved_charmap    + #0, #3176
    static saved_charmap    + #1, #3177
    static saved_charmap    + #2, #0
    static saved_charmap    + #3, #3190
    static saved_charmap    + #4, #3191
    static saved_charmap    + #5, #0

; Lanes of obstacles in the frog's path, comprised of five words:
; 0: y position of the top left corner of the obstacle charmap
; 1: x position of the top left corner of the obstacle charmap
; 2: quantity of copies of the object to be displayed
; 3: spacing between such copies
; 4: speed at which the object traverses the screen
lane_0 : var #5
lane_1 : var #5
lane_2 : var #5
lane_3 : var #5
lane_4 : var #5
lane_5 : var #5
lane_6 : var #5
lane_7 : var #5
lane_8 : var #5
lane_9 : var #5
lanes : var #10
    static lanes + #0, #lane_0
    static lanes + #1, #lane_1
    static lanes + #2, #lane_2
    static lanes + #3, #lane_3
    static lanes + #4, #lane_4
    static lanes + #5, #lane_5
    static lanes + #6, #lane_6
    static lanes + #7, #lane_7
    static lanes + #8, #lane_8
    static lanes + #9, #lane_9

yellow_charmap : var #8
    static yellow_charmap  + #0   , #2836
    static yellow_charmap  + #1   , #2937
    static yellow_charmap  + #2   , #2938
    static yellow_charmap  + #3   , #0
    static yellow_charmap  + #4   , #2878
    static yellow_charmap  + #5   , #2879
    static yellow_charmap  + #6   , #2916
    static yellow_charmap  + #7   , #0

tractor_charmap : var #8
    static tractor_charmap + #0   , #1559
    static tractor_charmap + #1   , #1560
    static tractor_charmap + #2   , #1561
    static tractor_charmap + #3   , #0
    static tractor_charmap + #4   , #1600
    static tractor_charmap + #5   , #1626
    static tractor_charmap + #6   , #1626
    static tractor_charmap + #7   , #0

pink_charmap : var #8
    static pink_charmap    + #0   , #3345
    static pink_charmap    + #1   , #3350
    static pink_charmap    + #2   , #3351
    static pink_charmap    + #3   , #0
    static pink_charmap    + #4   , #3387
    static pink_charmap    + #5   , #3388
    static pink_charmap    + #6   , #3389
    static pink_charmap    + #7   , #0

red_charmap : var #8
    static red_charmap     + #0   , #2330
    static red_charmap     + #1   , #2331
    static red_charmap     + #2   , #2332
    static red_charmap     + #3   , #0
    static red_charmap     + #4   , #2396
    static red_charmap     + #5   , #2397
    static red_charmap     + #6   , #2398
    static red_charmap     + #7   , #0

truck_charmap : var #14
    static truck_charmap   + #0   , #2077
    static truck_charmap   + #1   , #2078
    static truck_charmap   + #2   , #2079
    static truck_charmap   + #3   , #2147
    static truck_charmap   + #4   , #2147
    static truck_charmap   + #5   , #2079
    static truck_charmap   + #6   , #0
    static truck_charmap   + #7   , #2143
    static truck_charmap   + #8   , #2144
    static truck_charmap   + #9   , #2145
    static truck_charmap   + #10  , #2146
    static truck_charmap   + #11  , #2146
    static truck_charmap   + #12  , #2145
    static truck_charmap   + #13  , #0

turtle_charmap : var #6
    static turtle_charmap  + #0   , #3173
    static turtle_charmap  + #1   , #3174
    static turtle_charmap  + #2   , #0
    static turtle_charmap  + #3   , #3184
    static turtle_charmap  + #4   , #3185
    static turtle_charmap  + #5   , #0

log_charmap : var #1
    static log_charmap, #322

; NOTE: Code segment

; NOTE: Functions to initialize and free memory or game objects

initTitleScreen:
    ; Prints the background of the title screen. Returns nothing.

    push R1
    load R1, Arg1 ; pointer to background map where to store printed characters

    ; TODO: Resume from here. The insertion of the Wipe Map segment is causing statically stored data to be erased

    ; Wipe Map
    breakp
    store Arg1, R0
    store Arg2, R0
    store Arg3, R1
    load R1, SCREENSIZE
    store Arg4, R1
    store Arg5, R0
    call printChar

    ; Print Highscore indicator
    breakp
    loadn R1, #hiscoreLabel
    store Arg1, R1
    loadn R1, #13
    store Arg2, R1
    store Arg4, R0
    call printString

    breakp
    load R2, Arg0
    add R1, R1, R2
    store Arg2, R1
    loadn R1, #'0'
    load R2, red
    add R1, R1, R2
    store Arg1, R1
    loadn R1, #5
    store Arg4, R1
    call printChar

    ; Print "Frogger!"
    breakp
    load R1, FILL         ; Fill character
    load R2, blue
    add R1, R1, R2
    store Arg1, R1
    loadn R3, #80
    store Arg2, R3
    loadn R2, #2
    mul R1, R3, R2
    store Arg4, R1
    call printChar

    loadn R1, #title
    store Arg1, R1
    load R1, Arg0
    add R1, R1, R3
    store Arg2, R1
    load R1, title_length
    store Arg4, R1
    call printVector
    breakp

    loadn R1, #66
    load R2, Arg0
    load R3, blue
    load R4, WIDTH
    store Arg0, R1
    store Arg1, R2
    store Arg2, R3
    store Arg4, R4
    call printChar

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

    pop R1
    rts


takeInput:
    ; A function that delays the game's execution for a given period to take an input from the player. If the input is one that was expected, the delay is canceled.
    ; Returns:
    ; Arg0 = 0, if no key was pressed, otherwise the ASCII value of key pressed

    push R1
    push R2
    load R1, Arg1 ; Delay multiplier. 1 implies a microsecond at 1MHz
    load R2, Arg2 ; Expected input

    load R3, MICROSECOND
    loadn R4, #255
    store Arg0, R0

    delay_A:
        load R5, Arg1
        delay_B:
            inchar R6
            cmp R4, R6
            jeq delayContinue
            store Arg0, R6
            cmp R2, R6
            jeq delayEnd
    delayContinue:
        dec R5
        jnz delay_B
        dec R3
        jnz delay_A
    delayEnd:
    pop R2
    pop R1
    rts

; NOTE: Functions for printing on screen

printChar:
    ; Prints a character, one or more times.
    ; Arguments:
    ; Arg1 = character to be printed, with color value already added
    ; Arg2 = position to start printing
    ; Arg3 = map to save printed characters
    ; Arg4 = number of characters to print
    ; Arg5 = Whether printing is animated and can be interrupted by the user's input. 0 implies false any other value is the ASCII value of the key that interrupts the animation
    ; Returns:
    ; Arg0 = 0 if printing was interrupted, otherwise the printed string length

    push R1
    push R2
    push R3
    push R4
    push R5
    load R1, Arg1 ; character to be printed, with color value already added
    load R2, Arg2 ; position to start printing
    load R3, Arg3 ; map to save printed characters
    load R4, Arg4 ; number of characters to print
    load R5, Arg5 ; Whether printing is animated and can be interrupted by the user's input. 0 implies false any other value is the ASCII value of the key that interrupts the animation

    add R6, R4, R2  ; position where to stop printing
    add R3, R3, R2  ; position where to start storing
    load R7, FRAMERATE
    store Arg1, R7
    store Arg2, R5

    cmp R5, R0
    jne ppInterruptable

    ppUniterruptable:
        cmp R2, R6
        jeq ppUninterrupted
        outchar R1, R2
        storei R3, R1
        inc R2
        inc R3
        jmp ppUniterruptable

    ppInterruptable:
        cmp R2, R6
        jeq ppUninterrupted
        call takeInput
        load R7, Arg0
        cmp R5, R7
        jeq ppInterrupted
        outchar R1, R2
        storei R3, R1
        inc R2
        inc R3
        jmp ppInterruptable

    ppUninterrupted:
        store Arg0, R4
        jmp ppEnd

    ppInterrupted:
        store Arg0, R0

    ppEnd:
        pop R5
        pop R4
        pop R3
        pop R2
        pop R1
        rts


printInt:
    ; Prints a right-aligned integer value on screen.
    ; Returns: Nothing

    push R1
    push R2
    push R3
    push R4
    load R1, Arg1 ; integer value to be printed
    load R2, Arg2 ; right-aligned position in the screen from where to start printing
    load R3, Arg3 ; pointer to map where to save printed characters
    load R4, Arg4 ; color value to print number

    add R3, R3, R2 ; Get location in map where to start storing
    loadn R5, #10  ; load the value 10 to apply the mod operation

    printIntLoop:
        cmp R1, R0
        jeq printIntEnd
        loadn R6, #'0' ; load index value of the character 0
        mod R7, R1, R5 ; get least significant digit from R1
        add R6, R6, R7 ; apply it as an offset to the character map
        add R6, R6, R4 ; apply color value
        outchar R6, R2
        storei R3, R6
        dec R2
        dec R3
        div R1, R1, R5
        jmp printIntLoop

    printIntEnd:
        pop R4
        pop R3
        pop R2
        pop R1
        rts


printVector:
    ; Prints the contents of a vector as characters on the screen.
    ; Returns: Nothing

    push R1
    push R2
    push R3
    push R4
    load R1, Arg1 ; pointer to the start of the vector
    load R2, Arg2 ; index of the position at the screen where to start printing
    load R3, Arg3 ; map to save printed characters
    load R4, Arg4 ; vector length

    pvLoop:
        cmp R4, R0
        jeq pvEnd
        outchar R2, R1
        loadi R3, R1
        inc R1
        inc R2
        inc R3
        dec R4
        jmp pvLoop
    pvEnd:
        pop R4
        pop R3
        pop R2
        pop R1
        rts


printString:
    ; Prints a string of text. Printing can be animated and interrupted by the user.
    ; Returns:
    ; Arg0 = 0 if printing was interrupted by the user, otherwise the printed string length.

    push R1
    push R2
    push R3
    push R4
    push R5
    load R1, Arg1 ; pointer to the string to be printed
    load R2, Arg2 ; index of the position at the screen where to start printing
    load R3, Arg3 ; map to save printed characters
    load R4, Arg4 ; color to be assigned to printed characters. If color values are already applied, pass 0 so as to not alter these.
    load R5, Arg5 ; Whether printing is animated and can be interrupted by the user's input. 0 implies false any other value is the ASCII value of the key that interrupts the animation


    add R3, R3, R2
    cmp R5, R0
    jne psInterruptable

    psUninterruptable:
        loadi R7, R1        ; retrieve character to be printed
        cmp R7, R0          ; check if it is the terminator character
        jeq psUninterrupted ; Escape if it is
        add R7, R7, R4      ; Add color value to character
        outchar R7, R2      ; Print character
        storei R3, R7
        inc R1              ; Increment string pointer
        inc R2              ; Increment screen position
        inc R3              ; Increment map pointer
        jmp psUninterruptable

    psInterruptable:
        call takeInput
        load R7, Arg0
        cmp R7, R5
        jeq psInterrupted
        loadi R7, R1
        cmp R7, R0
        jeq psUninterrupted
        add R7, R7, R4
        outchar R7, R2
        storei R3, R7
        inc R1
        inc R2
        inc R3
        jmp psInterruptable

    psUninterrupted:
        load R7, Arg1
        sub R1, R1, R7
        store Arg0, R1
        jmp psEnd

    psInterrupted:
        store Arg0, R0

    psEnd:
        pop R5
        pop R4
        pop R3
        pop R2
        pop R1
        rts


printInstructions:
    ; Prints a centered text box containing instructions on how to play or score and returns whether the user has interrupted printing or not.
    ; Arguments:
    ; Arg1 = address of the vector of strings to be printed
    ; Arg2 = number of lines to be printed
    ; Arg3 = map to save printed characters
    ; Returns:
    ; Arg0 = 0 if printing was not interrupted, otherwise 1.

    push R1
    push R2
    push R3
    load R1, Arg1  ; address of the vector of strings to be printed
    load R2, Arg2  ; number of lines to be printed
    load R3, Arg3  ; map to save printed characters
    loadn R4, #614 ; store line start
    loadn R5, #80  ; store line offset value
    loadn R6, #1   ; set padding

    ; Print Header
    store Arg2, R4
    store Arg4, R0
    store Arg5, R4
    call printString
    load R1, Arg0
    cmp R1, R0
    jeq piEnd
    add R4, R4, R1

    ; Pad right
    store Arg1, R0
    store Arg2, R4
    store Arg6, R6
    call printChar
    load R4, Arg0
    cmp R4, R0
    jeq piEnd
    dec R2

    ; Set initial values
    loadn R4, #693
    load R5, WIDTH ; Screen width
    loadn R6, #4
    sub R5, R5, R6

    piBody:
        cmp R2, R0
        jeq piCompleted

        ; Print with emphasis (red)
        load R6, red
        store Arg1, R1
        store Arg2, R4
        store Arg3, R6
        call printString
        load R7, Arg0
        cmp R7, R0
        jne piEnd

        ; Offset string and screen pointer
        add R1, R1, R6
        add R6, R4, R7

        ; Print description (yellow)
        store Arg1, R1
        store Arg2, R6
        load R6, yellow
        store Arg3, R6
        call printString
        load R7, Arg0
        cmp R7, R0
        jne piEnd

        ; Offset string and screen pointer
        add R1, R1, R7
        add R6, R6, R7

        ; Pad right
        store Arg1, R0
        store Arg2, R6
        sub R7, R5, R7 ; Set R7 as the difference between the message and line lengths
        store Arg6, R7 ; That's the padding value.
        load R7, yellow
        store Arg3, R7
        call printChar

        ; Move towards printing next line and decrement line count
        add R4, R4, R5
        dec R2
        jmp piBody

    piCompleted:
        loadn R6, #0

    piEnd:
        store Arg0, R6
        pop R3
        pop R2
        pop R1
        rts

; NOTE: Game functions

titleScreen:
    ; Prints the title screen, displaying game instructions.
    ; Arguments:
    ; Arg1 = current Highscore
    ; Arg2 = pointer to background vector

    push R1
    push R2
    load R1, Arg1
    load R2, Arg2
    store Arg1, R2
    call initTitleScreen

    mov R3, R0         ; variable to toggle between instructions to be displayed
    loadn R4, #'\n'    ; variable to compare if ENTER was pressed
    load R5, MICROSECOND
    loadn R6, #3
    mul R5, R5, R6     ; Set delay interval to 3 seconds
    loadn R6, #5       ; Set number of lines of instructions to be printed

    loadn R7, #25
    store Arg2, R7
    store Arg3, R2
    load R7, red
    store Arg4, R7
    call printInt      ; Print Highscore

    titleScreenLoop:
        cmp R3, R0     ; Either print instructions for scoring or playing
        jeq selectPlay ; Selection logic
        load R2, how_to_score0
        jmp instructionSelected
        selectPlay:
            load R2, how_to_play0
        instructionSelected:
            store Arg1, R2
        store Arg2, R6
        call printInstructions
        load R2, Arg0
        cmp R2, R0
        jnz titleScreenEnd
        store Arg1, R5
        store Arg2, R4
        call takeInput
        load R2, Arg0
        cmp R2, R4
        jeq titleScreenEnd
        not R1, R1
        jmp titleScreenLoop
    titleScreenEnd:
        pop R2
        pop R1
        rts

fn_checkDeath:
    ;Checks if the frog hit an enemy
    ;Args : None
    ;Returns : Arg0 = if dead then 0, else 1
    load r1, frogPosition
    loadn r2, #foreground
    add r3, r1, r2 ;Frogs position on the foreground
    ;Top left
    loadi r4, r3
    cmp r4, r0
    ;Top Right
    jne case_Hit
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
    store Arg0, r1
    rts




    case_Hit:
        loadn r1, #0
        store Arg0, r1
        rts







fn_checkBorders:
    ;Checks if the current move of the frog is valid due to map constraints
    ;Args : Arg1 = new position
    ;Returns: Arg0 = 0 if not valid, 1 if valid

    load r1, frogPosition
    load r2, Arg1
    loadn r3, #1158 ; Compares to max position of the map
    cmp r2, r3
    jle case_invalidMove ;Out of map
    loadn r3, #40
    loadn r5, #39
    mod r4, r2, r3 ;Cehcks if is the last column
    cmp r4, r5
    jeq case_invalidMove
    div r1, r1, r3
    div r2, r2, r3
    cmp r1, r2 ;Checks if two positions arent on different lines (stepped over the edge)
    jne case_invalidMove
    loadn r1, #1
    store Arg0, r1
    rts
    case_invalidMove:
        loadn r1, #0
        store Arg0, r1
        rts





fn_moveFrog:
    ;receives the input from the user and tries to move the frog
    ;Args : Arg1 = input
    ;Returns : Arg0 = 0 if frog died, else Arg0 = 1
    load r1, Arg1
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
    rts
case_W:
    load r1, frogPosition
    loadn r2, #40
    add r1, r1, r2
    store Arg1, r1
    call fn_checkBorders
    load r2, Arg0
    cmp r2, r0
    jeq case_noMove
    store frogPosition, r1
    loadn r1, #1
    store Arg0, r1
    rts
case_A:
    load r1, frogPosition
    dec r1
    store Arg1, r1
    call fn_checkBorders
    load r2, Arg0
    cmp r2, r0
    jeq case_noMove
    store frogPosition, r1
    loadn r1, #1
    store Arg0, r1
    rts
case_S:
    load r1, frogPosition
    loadn r2, #40
    sub r1, r1, r2
    store Arg1, r1
    call fn_checkBorders
    load r2, Arg0
    cmp r2, r0
    jeq case_noMove
    store frogPosition, r1
    loadn r1, #1
    store Arg0, r1
    rts
case_D:
    load r1, frogPosition
    inc r1
    store Arg1, r1
    call fn_checkBorders
    load r2, Arg0
    cmp r2, r0
    jeq case_noMove
    store frogPosition, r1
    loadn r1, #1
    store Arg0, r1
    rts
case_noMove:
    loadn r1, #1
    store Arg0, r1
    rts






main:
    loadn R0, #0 ; Set R0 to 0, this register should hold this value always
    load R1, hiscore
    store Arg1, R1
    loadn R1, #background
    store Arg2, R1
    loadn R1, #foreground
    store Arg3, R1

    gameLoop:
        call titleScreen
    halt






