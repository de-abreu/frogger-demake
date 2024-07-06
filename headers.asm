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
frog_initalPos : var #1
    static frog_initialPos, #1060 ; line 26, column 20
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

