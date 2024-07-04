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

LANES : var #1
    static LANES, #10

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

; Matrices to store background and foreground info, respectively
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

; Lanes of obstacles in the frog's path, comprised of 9 words:
; 0: y position of the top left corner of the obstacle charmap
; 1: x position of the top left corner of the obstacle charmap, multiplied by 10
; 2: quantity of copies of the object to be displayed
; 3: spacing between such copies
; 4: speed at which the object traverses the screen
; 5: direction the object is moving towards: 0 for left, otherwise right
; 6: pointer to the obstacle charmap
; 7: counter for when to move
; 8: how much the counter advances

lane_0 : var #9
    static lane_0 + #0, #24
    static lane_0 + #1, #37
    static lane_0 + #2, #3
    static lane_0 + #3, #10
    static lane_0 + #4, #1
    static lane_0 + #5, #0
    static lane_0 + #6, #yellow_charmap
    static lane_0 + #7, #0
    static lane_0 + #8, #1
lane_1 : var #9
    static lane_1 + #0, #22
    static lane_1 + #1, #0
    static lane_1 + #2, #3
    static lane_1 + #3, #16
    static lane_1 + #4, #1
    static lane_1 + #5, #1
    static lane_1 + #6, #tractor_charmap
    static lane_1 + #7, #0
    static lane_1 + #8, #1
lane_2 : var #9
    static lane_2 + #0, #20
    static lane_2 + #1, #37
    static lane_2 + #2, #3
    static lane_2 + #3, #16
    static lane_2 + #4, #1
    static lane_2 + #5, #0
    static lane_2 + #6, #pink_charmap
    static lane_2 + #7, #0
    static lane_2 + #8, #4
    static lane_3 + #3, #40
    static lane_3 + #4, #20
    static lane_3 + #3, #43
    static lane_3 + #4, #2
    static lane_3 + #5, #1
    static lane_3 + #6, #red_charmap
    static lane_3 + #7, #0
    static lane_3 + #8, #10
lane_4 : var #9
    static lane_4 + #0, #16
    static lane_4 + #1, #37
    static lane_4 + #2, #2
    static lane_4 + #3, #18
    static lane_4 + #4, #3
    static lane_4 + #5, #0
    static lane_4 + #6, #truck_charmap
    static lane_4 + #7, #0
    static lane_4 + #8, #0
lane_5 : var #9
    static lane_5 + #0, #12
    static lane_5 + #1, #38
    static lane_5 + #2, #5
    static lane_5 + #3, #8
    static lane_5 + #4, #100
    static lane_5 + #5, #0
    static lane_5 + #6, #turtle_charmap
    static lane_5 + #7, #0
    static lane_5 + #8, #0
lane_6 : var #9
    static lane_6 + #0, #10
    static lane_6 + #1, #0
    static lane_6 + #2, #3
    static lane_6 + #3, #15
    static lane_6 + #4, #50
    static lane_6 + #5, #1
    static lane_6 + #6, #log_charmap
    static lane_6 + #7, #0
lane_7 : var #9
    static lane_7 + #0, #8
    static lane_7 + #1, #16
    static lane_7 + #2, #2
    static lane_7 + #3, #22
    static lane_7 + #4, #10
    static lane_7 + #5, #1
    static lane_7 + #6, #log_charmap
lane_8 : var #9
    static lane_8 + #0, #6
    static lane_8 + #1, #200
    static lane_8 + #2, #6
    static lane_8 + #3, #8
    static lane_8 + #4, #10
    static lane_8 + #5, #0
    static lane_8 + #6, #turtle_charmap
lane_9 : var #9
    static lane_9 + #0, #4
    static lane_9 + #1, #80
    static lane_9 + #2, #4
    static lane_9 + #3, #20
    static lane_9 + #4, #20
    static lane_9 + #5, #1
    static lane_9 + #6, #log_charmap
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

red_charmap : var #8
    static red_charmap      + #0 , #2362
    static red_charmap      + #1 , #6

truck_charmap : var #14
    static truck_charmap    + #0 , #2081
    static truck_charmap    + #1 , #8

turtle_charmap : var #6
    static turtle_charmap   + #0 , #3192
    static turtle_charmap   + #1 , #4

heart_charmap: var #1
    static heart_charmap, #2350

log_charmap : var #6
    static log_charmap, #322
    static log_charmap + #1, #322
    static log_charmap + #2, #0
    static log_charmap + #3, #322
    static log_charmap + #4, #322
    static log_charmap + #5, #0

gameOverLabel: string " GAME OVER "

; NOTE: Code segment

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

; NOTE: Functions for printing on screen

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
    ; Prints the contents of a vector as characters on the screen.
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
        outchar r5, r2
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
      add r6, r1, r5 ;r6 tem add do charmap
      loadi r6, r6 ;r6 tem o char
      cmp r6, r0 ; fim da linha
      jeq eraseEnemypt2
      store a1, r2
      store a2, r3
      call screenOffset ;off da coordenada em r4
      load r4, a0
      loadn r7, #foreground
      add r7, r7, r4 
      ;loadn r6, #background
      add r6, r6, r4
      loadi r6, r6 ;r6 tem o char do background
      loadn r6, #0 ;Background nulo
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
        ;loadn r6, #background
        add r6, r6, r4
        loadi r6, r6
        loadn r6, #0
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
    ; Function to draw game object's charmaps. Wraps around the edges of the screen
    ; a1 = Pointer to charmap data structure
    ; a2 = Vertical position where to print the top left corner of the charmap
    ; a3 = Horizontal position where to print the top left corner of the charmap
    ; a4 = Pointer to map where to store the charmap,
    ;      If set to 0 the charmap won't be saved to a map

    call saveRegisters
    mov r5, r1
    inc r5
    loadi r1, r1   ; Charmap's initial character
    loadi r5, r5   ; Charmap's total length
    loadn r6, #2   ; Row counter
    div r7, r5, r6 ; Second row length
    store a3, r7   ; Store to memory
    sub r5, r5, r7 ; First (current) row length

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
    ; TODO: Create and call function drawLanes using the drawCharmap as an auxiliary function

    load r4, lives
    gameLoop:
        call drawLanes
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
    outchar r0, r1 ;Top left
    inc r1
    outchar r0, r1 ;Top Right
    loadn r4, #39
    add r1, r1, r4
    outchar r0, r1 ;Bottom left
    inc r1
    outchar r0, r1 ;Bottom right
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
    store a0, r0
    call restoreRegisters
    rts
    slDead:
        loadn r1, #1
        store a0, r1
        call restoreRegisters
        rts

    


    ;Codigo fora de lugar

    ; loadn r1, #lanes
    ; loadi r1, r1
    ; load r2, HEIGHT
    ; loadn r3, #4
    ; sub r2, r2, r3
    ; loadn r3, #2

    ; ; Setup Yellow
    ; sub r3, r3, r4
    ; storei r2, r3
    ; inc r2

    ; loadn r5, #16
    ; storei r2, r5
    ; inc r2

    ; loadn r5, #3
    ; storei r2, r5
    ; inc r2

    ; loadn r5, #50
    ; storei r2, r5
    ; inc r2

    ; storei r2, r0
    ; inc r2

main:
    loadn r0, #0 ; Set r0 to 0, this register should hold this value always
    load r1, hiscore
    ;loadn r2, #background
    ;loadn r3, #foreground
    mainLoop:

        ;store a1, r1
        ;store a2, r2
        ;call titleScreen

        store a1, r1
        store a2, r2
        store a3, r3
        call gameScreen
        load r1, a0
        jmp mainLoop
