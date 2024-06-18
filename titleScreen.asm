jmp main

; Data segment

; Constants

WIDTH : var #1
    static WIDTH #40

HEIGHT : var #1
    static HEIGHT #30

SCREENSIZE : var #1
    static SCREENSIZE #1200

; Color definitions

white  : var #1
    static white #0
brown  : var #1
    static brown #256
grass  : var #1
    static grass #512
musk   : var #1
    static musk #768
teal   : var #1
    static teal #1536
gray   : var #1
    static gray #1792
red    : var #1
    static red #2304
yellow : var #1
    static yellow #2816
blue   : var #1
    static blue #3072
pink   : var #1
    static pink #3328

; Title screen's variables
hiscore : var #1
m_hiscore : string "HISCORE "
hiscore0: string "00000"
subtitle: string "- THE DEMAKE -"
press : string "PRESS ENTER TO PLAY"
toggle : var #1
interrupted : var #1

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

; How to play
how_to_play0 : string "HOW TO PLAY"
how_to_play1 : string "W - "
how_to_play2 : string "MOVE UP"
how_to_play3 : string "A - "
how_to_play4 : string "MOVE LEFT"
how_to_play5 : string "S - "
how_to_play6 : string "MOVE DOWN"
how_to_play7 : string "D - "
how_to_play8 : string "MOVE RIGHT"

TitleScreen : var #1200
  ;Linha 0
  static TitleScreen + #0, #3917
  static TitleScreen + #1, #3917
  static TitleScreen + #2, #3917
  static TitleScreen + #3, #3917
  static TitleScreen + #4, #3917
  static TitleScreen + #5, #3917
  static TitleScreen + #6, #3917
  static TitleScreen + #7, #3917
  static TitleScreen + #8, #3917
  static TitleScreen + #9, #3917
  static TitleScreen + #10, #3917
  static TitleScreen + #11, #3917
  static TitleScreen + #12, #3917
  static TitleScreen + #13, #72
  static TitleScreen + #14, #73
  static TitleScreen + #15, #83
  static TitleScreen + #16, #67
  static TitleScreen + #17, #79
  static TitleScreen + #18, #82
  static TitleScreen + #19, #69
  static TitleScreen + #20, #3917
  static TitleScreen + #21, #3906
  static TitleScreen + #22, #3906
  static TitleScreen + #23, #3906
  static TitleScreen + #24, #3906
  static TitleScreen + #25, #3906
  static TitleScreen + #26, #3917
  static TitleScreen + #27, #3917
  static TitleScreen + #28, #3917
  static TitleScreen + #29, #3917
  static TitleScreen + #30, #3917
  static TitleScreen + #31, #3917
  static TitleScreen + #32, #3917
  static TitleScreen + #33, #3917
  static TitleScreen + #34, #3917
  static TitleScreen + #35, #3917
  static TitleScreen + #36, #3917
  static TitleScreen + #37, #3917
  static TitleScreen + #38, #3917
  static TitleScreen + #39, #3917

  ;Linha 1
  static TitleScreen + #40, #3917
  static TitleScreen + #41, #3917
  static TitleScreen + #42, #3917
  static TitleScreen + #43, #3917
  static TitleScreen + #44, #3917
  static TitleScreen + #45, #3917
  static TitleScreen + #46, #3917
  static TitleScreen + #47, #3917
  static TitleScreen + #48, #3917
  static TitleScreen + #49, #3917
  static TitleScreen + #50, #3917
  static TitleScreen + #51, #3917
  static TitleScreen + #52, #3917
  static TitleScreen + #53, #3917
  static TitleScreen + #54, #3917
  static TitleScreen + #55, #3917
  static TitleScreen + #56, #3917
  static TitleScreen + #57, #3917
  static TitleScreen + #58, #3917
  static TitleScreen + #59, #3917
  static TitleScreen + #60, #3917
  static TitleScreen + #61, #3917
  static TitleScreen + #62, #3917
  static TitleScreen + #63, #3917
  static TitleScreen + #64, #3917
  static TitleScreen + #65, #3917
  static TitleScreen + #66, #3917
  static TitleScreen + #67, #3917
  static TitleScreen + #68, #3917
  static TitleScreen + #69, #3906
  static TitleScreen + #70, #3906
  static TitleScreen + #71, #3917
  static TitleScreen + #72, #3917
  static TitleScreen + #73, #3917
  static TitleScreen + #74, #3917
  static TitleScreen + #75, #3917
  static TitleScreen + #76, #3917
  static TitleScreen + #77, #3917
  static TitleScreen + #78, #3917
  static TitleScreen + #79, #3917

  ;Linha 2
  static TitleScreen + #80, #3138
  static TitleScreen + #81, #3138
  static TitleScreen + #82, #3138
  static TitleScreen + #83, #3138
  static TitleScreen + #84, #3138
  static TitleScreen + #85, #3138
  static TitleScreen + #86, #3138
  static TitleScreen + #87, #3138
  static TitleScreen + #88, #3138
  static TitleScreen + #89, #3138
  static TitleScreen + #90, #3138
  static TitleScreen + #91, #3138
  static TitleScreen + #92, #3138
  static TitleScreen + #93, #3138
  static TitleScreen + #94, #3138
  static TitleScreen + #95, #3138
  static TitleScreen + #96, #3138
  static TitleScreen + #97, #3138
  static TitleScreen + #98, #3138
  static TitleScreen + #99, #3138
  static TitleScreen + #100, #3138
  static TitleScreen + #101, #3138
  static TitleScreen + #102, #3138
  static TitleScreen + #103, #3138
  static TitleScreen + #104, #3138
  static TitleScreen + #105, #3138
  static TitleScreen + #106, #3138
  static TitleScreen + #107, #3138
  static TitleScreen + #108, #3138
  static TitleScreen + #109, #3138
  static TitleScreen + #110, #3138
  static TitleScreen + #111, #3138
  static TitleScreen + #112, #3138
  static TitleScreen + #113, #3138
  static TitleScreen + #114, #3138
  static TitleScreen + #115, #3138
  static TitleScreen + #116, #3138
  static TitleScreen + #117, #3138
  static TitleScreen + #118, #3138
  static TitleScreen + #119, #3138

  ;Linha 3
  static TitleScreen + #120, #3138
  static TitleScreen + #121, #3138
  static TitleScreen + #122, #3138
  static TitleScreen + #123, #3138
  static TitleScreen + #124, #3138
  static TitleScreen + #125, #3138
  static TitleScreen + #126, #3138
  static TitleScreen + #127, #3138
  static TitleScreen + #128, #3138
  static TitleScreen + #129, #3138
  static TitleScreen + #130, #3138
  static TitleScreen + #131, #3138
  static TitleScreen + #132, #3138
  static TitleScreen + #133, #3138
  static TitleScreen + #134, #3138
  static TitleScreen + #135, #3138
  static TitleScreen + #136, #3138
  static TitleScreen + #137, #3138
  static TitleScreen + #138, #3138
  static TitleScreen + #139, #3138
  static TitleScreen + #140, #3138
  static TitleScreen + #141, #3138
  static TitleScreen + #142, #3138
  static TitleScreen + #143, #3138
  static TitleScreen + #144, #3138
  static TitleScreen + #145, #3138
  static TitleScreen + #146, #3138
  static TitleScreen + #147, #3138
  static TitleScreen + #148, #3138
  static TitleScreen + #149, #3138
  static TitleScreen + #150, #3138
  static TitleScreen + #151, #3138
  static TitleScreen + #152, #3138
  static TitleScreen + #153, #3138
  static TitleScreen + #154, #3138
  static TitleScreen + #155, #3138
  static TitleScreen + #156, #3138
  static TitleScreen + #157, #3138
  static TitleScreen + #158, #3138
  static TitleScreen + #159, #3138

  ;Linha 4
  static TitleScreen + #160, #3138
  static TitleScreen + #161, #3138
  static TitleScreen + #162, #3138
  static TitleScreen + #163, #3138
  static TitleScreen + #164, #3138
  static TitleScreen + #165, #3138
  static TitleScreen + #166, #3138
  static TitleScreen + #167, #3138
  static TitleScreen + #168, #3138
  static TitleScreen + #169, #3138
  static TitleScreen + #170, #3138
  static TitleScreen + #171, #3138
  static TitleScreen + #172, #3138
  static TitleScreen + #173, #3138
  static TitleScreen + #174, #3138
  static TitleScreen + #175, #3138
  static TitleScreen + #176, #3138
  static TitleScreen + #177, #3138
  static TitleScreen + #178, #3138
  static TitleScreen + #179, #3138
  static TitleScreen + #180, #3138
  static TitleScreen + #181, #3138
  static TitleScreen + #182, #3138
  static TitleScreen + #183, #3138
  static TitleScreen + #184, #3138
  static TitleScreen + #185, #3138
  static TitleScreen + #186, #3138
  static TitleScreen + #187, #3138
  static TitleScreen + #188, #3138
  static TitleScreen + #189, #3138
  static TitleScreen + #190, #3138
  static TitleScreen + #191, #3138
  static TitleScreen + #192, #3138
  static TitleScreen + #193, #3138
  static TitleScreen + #194, #3138
  static TitleScreen + #195, #3138
  static TitleScreen + #196, #3138
  static TitleScreen + #197, #3138
  static TitleScreen + #198, #3138
  static TitleScreen + #199, #3138

  ;Linha 5
  static TitleScreen + #200, #3138
  static TitleScreen + #201, #3138
  static TitleScreen + #202, #3138
  static TitleScreen + #203, #3138
  static TitleScreen + #204, #3138
  static TitleScreen + #205, #3138
  static TitleScreen + #206, #3138
  static TitleScreen + #207, #3138
  static TitleScreen + #208, #3138
  static TitleScreen + #209, #3138
  static TitleScreen + #210, #3138
  static TitleScreen + #211, #3138
  static TitleScreen + #212, #3138
  static TitleScreen + #213, #3138
  static TitleScreen + #214, #3138
  static TitleScreen + #215, #3138
  static TitleScreen + #216, #3138
  static TitleScreen + #217, #3138
  static TitleScreen + #218, #3138
  static TitleScreen + #219, #3138
  static TitleScreen + #220, #3138
  static TitleScreen + #221, #3138
  static TitleScreen + #222, #3138
  static TitleScreen + #223, #3138
  static TitleScreen + #224, #3138
  static TitleScreen + #225, #3138
  static TitleScreen + #226, #3138
  static TitleScreen + #227, #3138
  static TitleScreen + #228, #3138
  static TitleScreen + #229, #3138
  static TitleScreen + #230, #3138
  static TitleScreen + #231, #3138
  static TitleScreen + #232, #3138
  static TitleScreen + #233, #3138
  static TitleScreen + #234, #3138
  static TitleScreen + #235, #3138
  static TitleScreen + #236, #3138
  static TitleScreen + #237, #3138
  static TitleScreen + #238, #3138
  static TitleScreen + #239, #3138

  ;Linha 6
  static TitleScreen + #240, #3138
  static TitleScreen + #241, #3138
  static TitleScreen + #242, #2626
  static TitleScreen + #243, #2626
  static TitleScreen + #244, #2626
  static TitleScreen + #245, #2626
  static TitleScreen + #246, #3138
  static TitleScreen + #247, #2626
  static TitleScreen + #248, #2626
  static TitleScreen + #249, #2626
  static TitleScreen + #250, #3138
  static TitleScreen + #251, #3138
  static TitleScreen + #252, #3138
  static TitleScreen + #253, #2626
  static TitleScreen + #254, #2626
  static TitleScreen + #255, #3138
  static TitleScreen + #256, #3138
  static TitleScreen + #257, #3138
  static TitleScreen + #258, #2626
  static TitleScreen + #259, #2626
  static TitleScreen + #260, #2626
  static TitleScreen + #261, #3138
  static TitleScreen + #262, #3138
  static TitleScreen + #263, #2626
  static TitleScreen + #264, #2626
  static TitleScreen + #265, #2626
  static TitleScreen + #266, #3138
  static TitleScreen + #267, #2626
  static TitleScreen + #268, #2626
  static TitleScreen + #269, #2626
  static TitleScreen + #270, #2626
  static TitleScreen + #271, #3138
  static TitleScreen + #272, #2626
  static TitleScreen + #273, #2626
  static TitleScreen + #274, #2626
  static TitleScreen + #275, #3138
  static TitleScreen + #276, #3138
  static TitleScreen + #277, #2626
  static TitleScreen + #278, #3138
  static TitleScreen + #279, #3138

  ;Linha 7
  static TitleScreen + #280, #3138
  static TitleScreen + #281, #3138
  static TitleScreen + #282, #2626
  static TitleScreen + #283, #3138
  static TitleScreen + #284, #3138
  static TitleScreen + #285, #3138
  static TitleScreen + #286, #3138
  static TitleScreen + #287, #2626
  static TitleScreen + #288, #3138
  static TitleScreen + #289, #3138
  static TitleScreen + #290, #2626
  static TitleScreen + #291, #3138
  static TitleScreen + #292, #2626
  static TitleScreen + #293, #3138
  static TitleScreen + #294, #3138
  static TitleScreen + #295, #2626
  static TitleScreen + #296, #3138
  static TitleScreen + #297, #2626
  static TitleScreen + #298, #3138
  static TitleScreen + #299, #3138
  static TitleScreen + #300, #3138
  static TitleScreen + #301, #3138
  static TitleScreen + #302, #2626
  static TitleScreen + #303, #3138
  static TitleScreen + #304, #3138
  static TitleScreen + #305, #3138
  static TitleScreen + #306, #3138
  static TitleScreen + #307, #2626
  static TitleScreen + #308, #3138
  static TitleScreen + #309, #3138
  static TitleScreen + #310, #3138
  static TitleScreen + #311, #3138
  static TitleScreen + #312, #2626
  static TitleScreen + #313, #3138
  static TitleScreen + #314, #3138
  static TitleScreen + #315, #2626
  static TitleScreen + #316, #3138
  static TitleScreen + #317, #2626
  static TitleScreen + #318, #3138
  static TitleScreen + #319, #3138

  ;Linha 8
  static TitleScreen + #320, #3138
  static TitleScreen + #321, #3138
  static TitleScreen + #322, #2626
  static TitleScreen + #323, #2626
  static TitleScreen + #324, #2626
  static TitleScreen + #325, #3138
  static TitleScreen + #326, #3138
  static TitleScreen + #327, #2626
  static TitleScreen + #328, #2626
  static TitleScreen + #329, #2626
  static TitleScreen + #330, #2626
  static TitleScreen + #331, #3138
  static TitleScreen + #332, #2626
  static TitleScreen + #333, #3138
  static TitleScreen + #334, #3138
  static TitleScreen + #335, #2626
  static TitleScreen + #336, #3138
  static TitleScreen + #337, #2626
  static TitleScreen + #338, #3138
  static TitleScreen + #339, #2626
  static TitleScreen + #340, #2626
  static TitleScreen + #341, #3138
  static TitleScreen + #342, #2626
  static TitleScreen + #343, #3138
  static TitleScreen + #344, #2626
  static TitleScreen + #345, #2626
  static TitleScreen + #346, #3138
  static TitleScreen + #347, #2626
  static TitleScreen + #348, #2626
  static TitleScreen + #349, #2626
  static TitleScreen + #350, #3138
  static TitleScreen + #351, #3138
  static TitleScreen + #352, #2626
  static TitleScreen + #353, #2626
  static TitleScreen + #354, #2626
  static TitleScreen + #355, #2626
  static TitleScreen + #356, #3138
  static TitleScreen + #357, #2626
  static TitleScreen + #358, #3138
  static TitleScreen + #359, #3138

  ;Linha 9
  static TitleScreen + #360, #3138
  static TitleScreen + #361, #3138
  static TitleScreen + #362, #2626
  static TitleScreen + #363, #3138
  static TitleScreen + #364, #3138
  static TitleScreen + #365, #3138
  static TitleScreen + #366, #3138
  static TitleScreen + #367, #2626
  static TitleScreen + #368, #3138
  static TitleScreen + #369, #2626
  static TitleScreen + #370, #3138
  static TitleScreen + #371, #3138
  static TitleScreen + #372, #2626
  static TitleScreen + #373, #3138
  static TitleScreen + #374, #3138
  static TitleScreen + #375, #2626
  static TitleScreen + #376, #3138
  static TitleScreen + #377, #2626
  static TitleScreen + #378, #3138
  static TitleScreen + #379, #3138
  static TitleScreen + #380, #2626
  static TitleScreen + #381, #3138
  static TitleScreen + #382, #2626
  static TitleScreen + #383, #3138
  static TitleScreen + #384, #3138
  static TitleScreen + #385, #2626
  static TitleScreen + #386, #3138
  static TitleScreen + #387, #2626
  static TitleScreen + #388, #3138
  static TitleScreen + #389, #3138
  static TitleScreen + #390, #3138
  static TitleScreen + #391, #3138
  static TitleScreen + #392, #2626
  static TitleScreen + #393, #3138
  static TitleScreen + #394, #2626
  static TitleScreen + #395, #3138
  static TitleScreen + #396, #3138
  static TitleScreen + #397, #3138
  static TitleScreen + #398, #3138
  static TitleScreen + #399, #3138

  ;Linha 10
  static TitleScreen + #400, #3138
  static TitleScreen + #401, #3138
  static TitleScreen + #402, #2626
  static TitleScreen + #403, #3138
  static TitleScreen + #404, #3138
  static TitleScreen + #405, #3138
  static TitleScreen + #406, #3138
  static TitleScreen + #407, #2626
  static TitleScreen + #408, #3138
  static TitleScreen + #409, #3138
  static TitleScreen + #410, #2626
  static TitleScreen + #411, #3138
  static TitleScreen + #412, #3138
  static TitleScreen + #413, #2626
  static TitleScreen + #414, #2626
  static TitleScreen + #415, #3138
  static TitleScreen + #416, #3138
  static TitleScreen + #417, #2626
  static TitleScreen + #418, #2626
  static TitleScreen + #419, #2626
  static TitleScreen + #420, #2626
  static TitleScreen + #421, #3138
  static TitleScreen + #422, #2626
  static TitleScreen + #423, #2626
  static TitleScreen + #424, #2626
  static TitleScreen + #425, #2626
  static TitleScreen + #426, #3138
  static TitleScreen + #427, #2626
  static TitleScreen + #428, #2626
  static TitleScreen + #429, #2626
  static TitleScreen + #430, #2626
  static TitleScreen + #431, #3138
  static TitleScreen + #432, #2626
  static TitleScreen + #433, #3138
  static TitleScreen + #434, #3138
  static TitleScreen + #435, #2626
  static TitleScreen + #436, #3138
  static TitleScreen + #437, #2626
  static TitleScreen + #438, #3138
  static TitleScreen + #439, #3138

  ;Linha 11
  static TitleScreen + #440, #3138
  static TitleScreen + #441, #3138
  static TitleScreen + #442, #3138
  static TitleScreen + #443, #3138
  static TitleScreen + #444, #3138
  static TitleScreen + #445, #3138
  static TitleScreen + #446, #3138
  static TitleScreen + #447, #3138
  static TitleScreen + #448, #3138
  static TitleScreen + #449, #3138
  static TitleScreen + #450, #3138
  static TitleScreen + #451, #3138
  static TitleScreen + #452, #3138
  static TitleScreen + #453, #3138
  static TitleScreen + #454, #3138
  static TitleScreen + #455, #3138
  static TitleScreen + #456, #3138
  static TitleScreen + #457, #3138
  static TitleScreen + #458, #3138
  static TitleScreen + #459, #3138
  static TitleScreen + #460, #3138
  static TitleScreen + #461, #3138
  static TitleScreen + #462, #3138
  static TitleScreen + #463, #3138
  static TitleScreen + #464, #3138
  static TitleScreen + #465, #3138
  static TitleScreen + #466, #3138
  static TitleScreen + #467, #3138
  static TitleScreen + #468, #3138
  static TitleScreen + #469, #3138
  static TitleScreen + #470, #3138
  static TitleScreen + #471, #3138
  static TitleScreen + #472, #3138
  static TitleScreen + #473, #3138
  static TitleScreen + #474, #3138
  static TitleScreen + #475, #3138
  static TitleScreen + #476, #3138
  static TitleScreen + #477, #3138
  static TitleScreen + #478, #3138
  static TitleScreen + #479, #3138

  ;Linha 12
  static TitleScreen + #480, #3926
  static TitleScreen + #481, #3926
  static TitleScreen + #482, #3926
  static TitleScreen + #483, #3926
  static TitleScreen + #484, #3926
  static TitleScreen + #485, #3926
  static TitleScreen + #486, #3926
  static TitleScreen + #487, #3926
  static TitleScreen + #488, #3926
  static TitleScreen + #489, #3926
  static TitleScreen + #490, #3926
  static TitleScreen + #491, #3926
  static TitleScreen + #492, #3926
  static TitleScreen + #493, #3926
  static TitleScreen + #494, #3926
  static TitleScreen + #495, #3926
  static TitleScreen + #496, #3926
  static TitleScreen + #497, #3926
  static TitleScreen + #498, #3926
  static TitleScreen + #499, #3926
  static TitleScreen + #500, #3926
  static TitleScreen + #501, #3926
  static TitleScreen + #502, #3926
  static TitleScreen + #503, #3926
  static TitleScreen + #504, #3926
  static TitleScreen + #505, #3906
  static TitleScreen + #506, #3906
  static TitleScreen + #507, #3926
  static TitleScreen + #508, #3926
  static TitleScreen + #509, #3926
  static TitleScreen + #510, #3926
  static TitleScreen + #511, #3926
  static TitleScreen + #512, #3926
  static TitleScreen + #513, #3926
  static TitleScreen + #514, #3926
  static TitleScreen + #515, #3926
  static TitleScreen + #516, #3926
  static TitleScreen + #517, #3926
  static TitleScreen + #518, #3926
  static TitleScreen + #519, #3926

  ;Linha 13
  static TitleScreen + #520, #3917
  static TitleScreen + #521, #3917
  static TitleScreen + #522, #3917
  static TitleScreen + #523, #3917
  static TitleScreen + #524, #3917
  static TitleScreen + #525, #3917
  static TitleScreen + #526, #3917
  static TitleScreen + #527, #3917
  static TitleScreen + #528, #3917
  static TitleScreen + #529, #3917
  static TitleScreen + #530, #3917
  static TitleScreen + #531, #3917
  static TitleScreen + #532, #3917
  static TitleScreen + #533, #3906
  static TitleScreen + #534, #3906
  static TitleScreen + #535, #3906
  static TitleScreen + #536, #3906
  static TitleScreen + #537, #3906
  static TitleScreen + #538, #3906
  static TitleScreen + #539, #3906
  static TitleScreen + #540, #3906
  static TitleScreen + #541, #3906
  static TitleScreen + #542, #3906
  static TitleScreen + #543, #3906
  static TitleScreen + #544, #3906
  static TitleScreen + #545, #3906
  static TitleScreen + #546, #3906
  static TitleScreen + #547, #3926
  static TitleScreen + #548, #3917
  static TitleScreen + #549, #3917
  static TitleScreen + #550, #3917
  static TitleScreen + #551, #3917
  static TitleScreen + #552, #3917
  static TitleScreen + #553, #3917
  static TitleScreen + #554, #3917
  static TitleScreen + #555, #3917
  static TitleScreen + #556, #3917
  static TitleScreen + #557, #3917
  static TitleScreen + #558, #3917
  static TitleScreen + #559, #3917

  ;Linha 14
  static TitleScreen + #560, #3917
  static TitleScreen + #561, #3917
  static TitleScreen + #562, #3917
  static TitleScreen + #563, #3917
  static TitleScreen + #564, #3917
  static TitleScreen + #565, #3917
  static TitleScreen + #566, #3917
  static TitleScreen + #567, #3917
  static TitleScreen + #568, #3917
  static TitleScreen + #569, #3917
  static TitleScreen + #570, #3917
  static TitleScreen + #571, #3917
  static TitleScreen + #572, #3917
  static TitleScreen + #573, #3917
  static TitleScreen + #574, #3917
  static TitleScreen + #575, #3917
  static TitleScreen + #576, #3917
  static TitleScreen + #577, #3917
  static TitleScreen + #578, #3917
  static TitleScreen + #579, #3917
  static TitleScreen + #580, #3917
  static TitleScreen + #581, #3917
  static TitleScreen + #582, #3917
  static TitleScreen + #583, #3917
  static TitleScreen + #584, #3917
  static TitleScreen + #585, #3917
  static TitleScreen + #586, #3917
  static TitleScreen + #587, #3917
  static TitleScreen + #588, #3917
  static TitleScreen + #589, #3917
  static TitleScreen + #590, #3917
  static TitleScreen + #591, #3917
  static TitleScreen + #592, #3917
  static TitleScreen + #593, #3917
  static TitleScreen + #594, #3917
  static TitleScreen + #595, #3917
  static TitleScreen + #596, #3917
  static TitleScreen + #597, #3917
  static TitleScreen + #598, #3917
  static TitleScreen + #599, #3917

  ;Linha 15
  static TitleScreen + #600, #3917
  static TitleScreen + #601, #3917
  static TitleScreen + #602, #3917
  static TitleScreen + #603, #3917
  static TitleScreen + #604, #3917
  static TitleScreen + #605, #3917
  static TitleScreen + #606, #3967
  static TitleScreen + #607, #3967
  static TitleScreen + #608, #3967
  static TitleScreen + #609, #3967
  static TitleScreen + #610, #3967
  static TitleScreen + #611, #3967
  static TitleScreen + #612, #3967
  static TitleScreen + #613, #3906
  static TitleScreen + #614, #3906
  static TitleScreen + #615, #3906
  static TitleScreen + #616, #3906
  static TitleScreen + #617, #3906
  static TitleScreen + #618, #3906
  static TitleScreen + #619, #3906
  static TitleScreen + #620, #3906
  static TitleScreen + #621, #3906
  static TitleScreen + #622, #3906
  static TitleScreen + #623, #3906
  static TitleScreen + #624, #3906
  static TitleScreen + #625, #3906
  static TitleScreen + #626, #3967
  static TitleScreen + #627, #3967
  static TitleScreen + #628, #3967
  static TitleScreen + #629, #3967
  static TitleScreen + #630, #3967
  static TitleScreen + #631, #3967
  static TitleScreen + #632, #3967
  static TitleScreen + #633, #3967
  static TitleScreen + #634, #3967
  static TitleScreen + #635, #3967
  static TitleScreen + #636, #3967
  static TitleScreen + #637, #3967
  static TitleScreen + #638, #3967
  static TitleScreen + #639, #3967

  ;Linha 16
  static TitleScreen + #640, #3967
  static TitleScreen + #641, #3967
  static TitleScreen + #642, #3917
  static TitleScreen + #643, #3917
  static TitleScreen + #644, #3917
  static TitleScreen + #645, #3917
  static TitleScreen + #646, #3917
  static TitleScreen + #647, #3917
  static TitleScreen + #648, #3917
  static TitleScreen + #649, #3917
  static TitleScreen + #650, #3917
  static TitleScreen + #651, #3917
  static TitleScreen + #652, #3917
  static TitleScreen + #653, #3917
  static TitleScreen + #654, #3917
  static TitleScreen + #655, #3917
  static TitleScreen + #656, #3917
  static TitleScreen + #657, #3917
  static TitleScreen + #658, #3917
  static TitleScreen + #659, #3917
  static TitleScreen + #660, #3917
  static TitleScreen + #661, #3917
  static TitleScreen + #662, #3917
  static TitleScreen + #663, #3917
  static TitleScreen + #664, #3917
  static TitleScreen + #665, #3917
  static TitleScreen + #666, #3917
  static TitleScreen + #667, #3917
  static TitleScreen + #668, #3917
  static TitleScreen + #669, #3906
  static TitleScreen + #670, #3906
  static TitleScreen + #671, #3906
  static TitleScreen + #672, #3906
  static TitleScreen + #673, #3917
  static TitleScreen + #674, #3917
  static TitleScreen + #675, #3967
  static TitleScreen + #676, #3967
  static TitleScreen + #677, #3967
  static TitleScreen + #678, #3967
  static TitleScreen + #679, #3967

  ;Linha 17
  static TitleScreen + #680, #3967
  static TitleScreen + #682, #3906
  static TitleScreen + #683, #3906
  static TitleScreen + #684, #3906
  static TitleScreen + #685, #3906
  static TitleScreen + #686, #3906
  static TitleScreen + #687, #3906
  static TitleScreen + #688, #3906
  static TitleScreen + #689, #3906
  static TitleScreen + #690, #3906
  static TitleScreen + #691, #3906
  static TitleScreen + #692, #3906
  static TitleScreen + #693, #3906
  static TitleScreen + #694, #3906
  static TitleScreen + #695, #3906
  static TitleScreen + #696, #3906
  static TitleScreen + #697, #3906
  static TitleScreen + #698, #3906
  static TitleScreen + #699, #3906
  static TitleScreen + #700, #3906
  static TitleScreen + #701, #3906
  static TitleScreen + #702, #3906
  static TitleScreen + #703, #3906
  static TitleScreen + #704, #3906
  static TitleScreen + #705, #3906
  static TitleScreen + #706, #3906
  static TitleScreen + #707, #3906
  static TitleScreen + #708, #3906
  static TitleScreen + #709, #3906
  static TitleScreen + #710, #3906
  static TitleScreen + #711, #3906
  static TitleScreen + #712, #3906
  static TitleScreen + #713, #3917
  static TitleScreen + #714, #3917
  static TitleScreen + #715, #3967
  static TitleScreen + #716, #3967
  static TitleScreen + #717, #3967
  static TitleScreen + #718, #3967
  static TitleScreen + #719, #3967

  ;Linha 18
  static TitleScreen + #720, #3967
  static TitleScreen + #721, #3967
  static TitleScreen + #722, #3917
  static TitleScreen + #723, #3917
  static TitleScreen + #724, #3917
  static TitleScreen + #725, #3906
  static TitleScreen + #726, #3906
  static TitleScreen + #727, #3906
  static TitleScreen + #728, #3917
  static TitleScreen + #729, #3917
  static TitleScreen + #730, #3917
  static TitleScreen + #731, #3917
  static TitleScreen + #732, #3917
  static TitleScreen + #733, #3917
  static TitleScreen + #734, #3917
  static TitleScreen + #735, #3906
  static TitleScreen + #736, #3906
  static TitleScreen + #737, #3906
  static TitleScreen + #738, #3906
  static TitleScreen + #739, #3917
  static TitleScreen + #740, #3917
  static TitleScreen + #741, #3917
  static TitleScreen + #742, #3917
  static TitleScreen + #743, #3917
  static TitleScreen + #744, #3917
  static TitleScreen + #745, #3917
  static TitleScreen + #746, #3917
  static TitleScreen + #747, #3917
  static TitleScreen + #748, #3917
  static TitleScreen + #749, #3917
  static TitleScreen + #750, #3917
  static TitleScreen + #751, #3917
  static TitleScreen + #752, #3917
  static TitleScreen + #753, #3917
  static TitleScreen + #754, #3917
  static TitleScreen + #755, #3917
  static TitleScreen + #756, #3917
  static TitleScreen + #757, #3917
  static TitleScreen + #758, #3917
  static TitleScreen + #759, #3917

  ;Linha 19
  static TitleScreen + #760, #3967
  static TitleScreen + #761, #3906
  static TitleScreen + #762, #3906
  static TitleScreen + #763, #3906
  static TitleScreen + #764, #3906
  static TitleScreen + #765, #3906
  static TitleScreen + #766, #3906
  static TitleScreen + #767, #3906
  static TitleScreen + #768, #3906
  static TitleScreen + #769, #3906
  static TitleScreen + #770, #3906
  static TitleScreen + #771, #3906
  static TitleScreen + #772, #3906
  static TitleScreen + #773, #3906
  static TitleScreen + #774, #3906
  static TitleScreen + #775, #3906
  static TitleScreen + #776, #3906
  static TitleScreen + #777, #3906
  static TitleScreen + #778, #3906
  static TitleScreen + #779, #3906
  static TitleScreen + #780, #3906
  static TitleScreen + #781, #3906
  static TitleScreen + #782, #3906
  static TitleScreen + #783, #3906
  static TitleScreen + #784, #3906
  static TitleScreen + #785, #3906
  static TitleScreen + #786, #3906
  static TitleScreen + #787, #3906
  static TitleScreen + #788, #3906
  static TitleScreen + #789, #3906
  static TitleScreen + #790, #3906
  static TitleScreen + #791, #3906
  static TitleScreen + #792, #3906
  static TitleScreen + #808, #3917
  static TitleScreen + #809, #3917
  static TitleScreen + #810, #3917
  static TitleScreen + #811, #3917
  static TitleScreen + #812, #3917
  static TitleScreen + #813, #3917
  static TitleScreen + #814, #3917
  static TitleScreen + #815, #3917
  static TitleScreen + #816, #3917
  static TitleScreen + #817, #3917
  static TitleScreen + #818, #3917
  static TitleScreen + #819, #3917
  static TitleScreen + #820, #3917
  static TitleScreen + #821, #3917
  static TitleScreen + #822, #3917
  static TitleScreen + #823, #3917
  static TitleScreen + #824, #3917
  static TitleScreen + #825, #3917
  static TitleScreen + #826, #3917
  static TitleScreen + #827, #3917
  static TitleScreen + #828, #3917
  static TitleScreen + #829, #3917
  static TitleScreen + #830, #3917
  static TitleScreen + #831, #3917
  static TitleScreen + #832, #3967
  static TitleScreen + #833, #3967
  static TitleScreen + #834, #3967
  static TitleScreen + #835, #3967
  static TitleScreen + #836, #3967
  static TitleScreen + #837, #3967
  static TitleScreen + #838, #3967
  static TitleScreen + #839, #3967

  ;Linha 21
  static TitleScreen + #840, #3967
  static TitleScreen + #841, #3967
  static TitleScreen + #842, #3906
  static TitleScreen + #843, #3906
  static TitleScreen + #844, #3906
  static TitleScreen + #845, #3906
  static TitleScreen + #846, #3906
  static TitleScreen + #847, #3906
  static TitleScreen + #848, #3906
  static TitleScreen + #849, #3906
  static TitleScreen + #850, #3906
  static TitleScreen + #851, #3906
  static TitleScreen + #852, #3906
  static TitleScreen + #853, #3906
  static TitleScreen + #854, #3906
  static TitleScreen + #855, #3906
  static TitleScreen + #856, #3906
  static TitleScreen + #857, #3906
  static TitleScreen + #858, #3906
  static TitleScreen + #859, #3906
  static TitleScreen + #860, #3906
  static TitleScreen + #861, #3906
  static TitleScreen + #862, #3906
  static TitleScreen + #863, #3906
  static TitleScreen + #864, #3906
  static TitleScreen + #865, #3906
  static TitleScreen + #866, #3906
  static TitleScreen + #867, #3906
  static TitleScreen + #868, #3906
  static TitleScreen + #869, #3906
  static TitleScreen + #870, #3906
  static TitleScreen + #871, #3906
  static TitleScreen + #872, #3906
  static TitleScreen + #873, #3906
  static TitleScreen + #874, #3917
  static TitleScreen + #875, #3917
  static TitleScreen + #876, #3967
  static TitleScreen + #877, #3967
  static TitleScreen + #878, #3967
  static TitleScreen + #879, #3967

  ;Linha 22
  static TitleScreen + #880, #3967
  static TitleScreen + #881, #3917
  static TitleScreen + #882, #3917
  static TitleScreen + #883, #3917
  static TitleScreen + #884, #3917
  static TitleScreen + #885, #3917
  static TitleScreen + #886, #3917
  static TitleScreen + #887, #3917
  static TitleScreen + #888, #3917
  static TitleScreen + #889, #3917
  static TitleScreen + #890, #3917
  static TitleScreen + #891, #3917
  static TitleScreen + #892, #3917
  static TitleScreen + #893, #3917
  static TitleScreen + #894, #3917
  static TitleScreen + #895, #3917
  static TitleScreen + #896, #3917
  static TitleScreen + #897, #3917
  static TitleScreen + #898, #3917
  static TitleScreen + #899, #3917
  static TitleScreen + #900, #3917
  static TitleScreen + #901, #3917
  static TitleScreen + #902, #3917
  static TitleScreen + #903, #3917
  static TitleScreen + #904, #3917
  static TitleScreen + #905, #3917
  static TitleScreen + #906, #3917
  static TitleScreen + #907, #3917
  static TitleScreen + #908, #3917
  static TitleScreen + #909, #3917
  static TitleScreen + #910, #3917
  static TitleScreen + #911, #3917
  static TitleScreen + #912, #3917
  static TitleScreen + #913, #3917
  static TitleScreen + #914, #3917
  static TitleScreen + #915, #3906
  static TitleScreen + #916, #3906
  static TitleScreen + #917, #3967
  static TitleScreen + #918, #3967
  static TitleScreen + #919, #3967

  ;Linha 23
  static TitleScreen + #920, #3967
  static TitleScreen + #921, #3967
  static TitleScreen + #922, #3906
  static TitleScreen + #923, #3906
  static TitleScreen + #924, #3906
  static TitleScreen + #925, #3906
  static TitleScreen + #926, #3906
  static TitleScreen + #927, #3906
  static TitleScreen + #928, #3906
  static TitleScreen + #929, #3906
  static TitleScreen + #930, #3906
  static TitleScreen + #931, #3906
  static TitleScreen + #932, #3906
  static TitleScreen + #933, #3906
  static TitleScreen + #934, #3906
  static TitleScreen + #935, #3906
  static TitleScreen + #936, #3906
  static TitleScreen + #937, #3906
  static TitleScreen + #938, #3906
  static TitleScreen + #939, #3906
  static TitleScreen + #940, #3906
  static TitleScreen + #941, #3906
  static TitleScreen + #942, #3906
  static TitleScreen + #943, #3906
  static TitleScreen + #944, #3906
  static TitleScreen + #945, #3906
  static TitleScreen + #946, #3906
  static TitleScreen + #947, #3906
  static TitleScreen + #948, #3906
  static TitleScreen + #949, #3906
  static TitleScreen + #950, #3906
  static TitleScreen + #951, #3906
  static TitleScreen + #952, #3906
  static TitleScreen + #953, #3906
  static TitleScreen + #954, #3906
  static TitleScreen + #955, #3906
  static TitleScreen + #956, #3906
  static TitleScreen + #957, #3967
  static TitleScreen + #958, #3967
  static TitleScreen + #959, #3967

  ;Linha 24
  static TitleScreen + #960, #3967
  static TitleScreen + #961, #3917
  static TitleScreen + #962, #3917
  static TitleScreen + #963, #3917
  static TitleScreen + #964, #3917
  static TitleScreen + #965, #3917
  static TitleScreen + #966, #3917
  static TitleScreen + #967, #3917
  static TitleScreen + #968, #3917
  static TitleScreen + #969, #3917
  static TitleScreen + #970, #3917
  static TitleScreen + #971, #3917
  static TitleScreen + #972, #3917
  static TitleScreen + #973, #3917
  static TitleScreen + #974, #3917
  static TitleScreen + #975, #3917
  static TitleScreen + #976, #3917
  static TitleScreen + #977, #3917
  static TitleScreen + #978, #3917
  static TitleScreen + #979, #3917
  static TitleScreen + #980, #3917
  static TitleScreen + #981, #3917
  static TitleScreen + #982, #3917
  static TitleScreen + #983, #3917
  static TitleScreen + #984, #3917
  static TitleScreen + #985, #3917
  static TitleScreen + #986, #3917
  static TitleScreen + #987, #3917
  static TitleScreen + #988, #3917
  static TitleScreen + #989, #3917
  static TitleScreen + #990, #3917
  static TitleScreen + #991, #3906
  static TitleScreen + #992, #3906
  static TitleScreen + #993, #3906
  static TitleScreen + #994, #3906
  static TitleScreen + #995, #3967
  static TitleScreen + #996, #3967
  static TitleScreen + #997, #3967
  static TitleScreen + #998, #3967
  static TitleScreen + #999, #3967

  ;Linha 25
  static TitleScreen + #1000, #3967
  static TitleScreen + #1001, #3917
  static TitleScreen + #1002, #3917
  static TitleScreen + #1003, #3917
  static TitleScreen + #1004, #3917
  static TitleScreen + #1005, #3917
  static TitleScreen + #1006, #3917
  static TitleScreen + #1007, #3917
  static TitleScreen + #1008, #3917
  static TitleScreen + #1009, #3917
  static TitleScreen + #1010, #3917
  static TitleScreen + #1011, #3917
  static TitleScreen + #1012, #3917
  static TitleScreen + #1013, #3917
  static TitleScreen + #1014, #3917
  static TitleScreen + #1015, #3917
  static TitleScreen + #1016, #3917
  static TitleScreen + #1017, #3917
  static TitleScreen + #1018, #3917
  static TitleScreen + #1019, #3917
  static TitleScreen + #1020, #3917
  static TitleScreen + #1021, #3917
  static TitleScreen + #1022, #3917
  static TitleScreen + #1023, #3917
  static TitleScreen + #1024, #3917
  static TitleScreen + #1025, #3917
  static TitleScreen + #1026, #3917
  static TitleScreen + #1027, #3917
  static TitleScreen + #1028, #3917
  static TitleScreen + #1029, #3917
  static TitleScreen + #1030, #3917
  static TitleScreen + #1031, #3917
  static TitleScreen + #1032, #3917
  static TitleScreen + #1033, #3917
  static TitleScreen + #1034, #3967
  static TitleScreen + #1035, #3967
  static TitleScreen + #1036, #3967
  static TitleScreen + #1037, #3967
  static TitleScreen + #1038, #3967
  static TitleScreen + #1039, #3967

  ;Linha 26
  static TitleScreen + #1040, #3967
  static TitleScreen + #1041, #3917
  static TitleScreen + #1042, #3917
  static TitleScreen + #1043, #3917
  static TitleScreen + #1044, #3917
  static TitleScreen + #1045, #3917
  static TitleScreen + #1046, #3917
  static TitleScreen + #1047, #3917
  static TitleScreen + #1048, #3917
  static TitleScreen + #1049, #3917
  static TitleScreen + #1050, #80
  static TitleScreen + #1051, #82
  static TitleScreen + #1052, #69
  static TitleScreen + #1053, #83
  static TitleScreen + #1054, #83
  static TitleScreen + #1055, #3917
  static TitleScreen + #1056, #2885
  static TitleScreen + #1057, #2894
  static TitleScreen + #1058, #2900
  static TitleScreen + #1059, #2885
  static TitleScreen + #1060, #2898
  static TitleScreen + #1061, #3917
  static TitleScreen + #1062, #84
  static TitleScreen + #1063, #79
  static TitleScreen + #1064, #3917
  static TitleScreen + #1065, #80
  static TitleScreen + #1066, #76
  static TitleScreen + #1067, #65
  static TitleScreen + #1068, #89
  static TitleScreen + #1069, #3917
  static TitleScreen + #1070, #3917
  static TitleScreen + #1071, #3917
  static TitleScreen + #1072, #3917
  static TitleScreen + #1073, #3917
  static TitleScreen + #1074, #3917
  static TitleScreen + #1075, #3967
  static TitleScreen + #1076, #3967
  static TitleScreen + #1077, #3967
  static TitleScreen + #1078, #3967
  static TitleScreen + #1079, #3967

  ;Linha 27
  static TitleScreen + #1080, #3967
  static TitleScreen + #1081, #3967
  static TitleScreen + #1082, #3917
  static TitleScreen + #1083, #3917
  static TitleScreen + #1084, #3917
  static TitleScreen + #1085, #3917
  static TitleScreen + #1086, #3917
  static TitleScreen + #1087, #3917
  static TitleScreen + #1088, #3917
  static TitleScreen + #1089, #3917
  static TitleScreen + #1090, #3917
  static TitleScreen + #1091, #3917
  static TitleScreen + #1092, #3917
  static TitleScreen + #1093, #3917
  static TitleScreen + #1094, #3917
  static TitleScreen + #1095, #3917
  static TitleScreen + #1096, #3917
  static TitleScreen + #1097, #3917
  static TitleScreen + #1098, #3917
  static TitleScreen + #1099, #3917
  static TitleScreen + #1100, #3917
  static TitleScreen + #1101, #3917
  static TitleScreen + #1102, #3917
  static TitleScreen + #1103, #3917
  static TitleScreen + #1104, #3917
  static TitleScreen + #1105, #3917
  static TitleScreen + #1106, #3917
  static TitleScreen + #1107, #3917
  static TitleScreen + #1108, #3917
  static TitleScreen + #1109, #3917
  static TitleScreen + #1110, #3917
  static TitleScreen + #1111, #3917
  static TitleScreen + #1112, #3917
  static TitleScreen + #1113, #3917
  static TitleScreen + #1114, #3917
  static TitleScreen + #1115, #3917
  static TitleScreen + #1116, #3917
  static TitleScreen + #1117, #3967
  static TitleScreen + #1118, #3967
  static TitleScreen + #1119, #3967

  ;Linha 28
  static TitleScreen + #1120, #3967
  static TitleScreen + #1121, #3967
  static TitleScreen + #1122, #3967
  static TitleScreen + #1123, #3967
  static TitleScreen + #1124, #3967
  static TitleScreen + #1125, #3967
  static TitleScreen + #1126, #3967
  static TitleScreen + #1127, #3967
  static TitleScreen + #1128, #3967
  static TitleScreen + #1129, #3917
  static TitleScreen + #1130, #3917
  static TitleScreen + #1131, #3967
  static TitleScreen + #1132, #3967
  static TitleScreen + #1133, #3967
  static TitleScreen + #1134, #3967
  static TitleScreen + #1135, #3967
  static TitleScreen + #1136, #3967
  static TitleScreen + #1137, #3967
  static TitleScreen + #1138, #3967
  static TitleScreen + #1139, #3917
  static TitleScreen + #1140, #3967
  static TitleScreen + #1141, #3967
  static TitleScreen + #1142, #3967
  static TitleScreen + #1143, #3967
  static TitleScreen + #1144, #3967
  static TitleScreen + #1145, #3967
  static TitleScreen + #1146, #3967
  static TitleScreen + #1147, #3967
  static TitleScreen + #1148, #3967
  static TitleScreen + #1149, #3967
  static TitleScreen + #1150, #3967
  static TitleScreen + #1151, #3967
  static TitleScreen + #1152, #3967
  static TitleScreen + #1153, #3967
  static TitleScreen + #1154, #3967
  static TitleScreen + #1155, #3967
  static TitleScreen + #1156, #3967
  static TitleScreen + #1157, #3967
  static TitleScreen + #1158, #3967
  static TitleScreen + #1159, #3967

  ;Linha 29
  static TitleScreen + #1160, #3967
  static TitleScreen + #1161, #3967
  static TitleScreen + #1162, #3967
  static TitleScreen + #1163, #3967
  static TitleScreen + #1164, #3967
  static TitleScreen + #1165, #3967
  static TitleScreen + #1166, #3967
  static TitleScreen + #1167, #3967
  static TitleScreen + #1168, #3967
  static TitleScreen + #1169, #3917
  static TitleScreen + #1170, #3917
  static TitleScreen + #1171, #3967
  static TitleScreen + #1172, #3967
  static TitleScreen + #1173, #3967
  static TitleScreen + #1174, #3967
  static TitleScreen + #1175, #3967
  static TitleScreen + #1176, #3967
  static TitleScreen + #1177, #3967
  static TitleScreen + #1178, #3967
  static TitleScreen + #1179, #3967
  static TitleScreen + #1180, #3967
  static TitleScreen + #1181, #3967
  static TitleScreen + #1182, #3967
  static TitleScreen + #1183, #3967
  static TitleScreen + #1184, #3967
  static TitleScreen + #1185, #3967
  static TitleScreen + #1186, #3967
  static TitleScreen + #1187, #3967
  static TitleScreen + #1188, #3967
  static TitleScreen + #1189, #3967
  static TitleScreen + #1190, #3967
  static TitleScreen + #1191, #3967
  static TitleScreen + #1192, #3967
  static TitleScreen + #1193, #3967
  static TitleScreen + #1194, #3967
  static TitleScreen + #1195, #3967
  static TitleScreen + #1196, #3967
  static TitleScreen + #1197, #3967
  static TitleScreen + #1198, #3967
  static TitleScreen + #1199, #3967

; Code segment

initTitle:
  push R0
  push R1
  push R2
  push R3

  loadn R0, #TitleScreen
  loadn R1, #0
  loadn R2, #1200

  initTitleLoop:

    add R3,R0,R1
    loadi R3, R3
    outchar R3, R1
    inc R1
    cmp R1, R2

    jne initTitleLoop

  pop R3
  pop R2
  pop R1
  pop R0
  rts

delay:
	push R0
	push R1
	push R2
	push R3
    push R4

	load R1, #10
	loadn R4, #255
	mv R0, R3 ; Salva como retorno para R

	loop_delay_1:
		loadn r1, #20

            ; Bloco de ler o Teclado no meio do Delay!!
			loop_delay_2:
				inchar r2
				cmp r2, r3
				jeq loop_skip
				store letra, r2		; Se apertar uma tecla, guarda na variavel Letra

	loop_skip:
		dec r1
		jnz loop_delay_2
		dec r0
		jnz loop_delay_1
		jmp sai_dalay

	sai_dalay:
		pop r3
		pop r2
		pop r1
		pop r0
	rts

printLine:
    ; Prints a line of text
    ; Arguments:
    ; Arg0: pointer to the string to be printed
    ; Arg1: index position of the place at the screen where to start printing
    ; Arg2: color to be assigned to printed characters
    ; Arg3: Whether printing can be interrupted by the user's input
    ; Returns:
    ; R0: offset between the position where printing started and ended. If printing was interrupted by the user, the value returned shall be 0.

    push r4 ; reserved to store current character
    value 0


printInstructions:
    ; Prints a centered text box containing instructions on how to play or score and returns whether the user has interrupted printing or not.
    ; Arguments:
    ; Arg0 = address of the vector of strings to be printed
    ; Arg1 = number of lines to be printed
    ; Returns:
    ; R0 = 0 if printing was not interrupted, otherwise 1.

    push R1 ; reserved to store the number of lines left to be printed
    push R2 ; reserved to store the line offset value
    push R3 ; reserved to store 0 for comparisons
    push R4 ; reserved as a general purpose temporary register
    loadn R0
    load R1, Arg1
    loadn R2, #80
    loadn R3, #0
    loadn R4, #1
    store Arg3, R0

    ; Print Header
    loadn R4, #614
    store Arg1, R4
    load R4, white
    store Arg2, R4
    call printString
    cmp R0, R3
    jne printInstructionsInterruped
    dec R1

    ; Set initial cursor position for text block
    loadn R4, #693
    store Arg1, R4

    printInstructionsBody:
        cmp R1, R3
        jne printInstructionsCompleted

        ; Offset string pointer enough that the next string is reached.
        load R4, Arg0
        add R4, R0
        inc R4
        store Arg0, R4

        ; Print with emphasis (red)
        load R4, red
        store Arg2, R4
        call printString
        cmp R0, R3
        jne printInstructionsInterruped

        ; Offset string pointer enough that the next string is reached.
        load R4, Arg0
        add R4, R0
        inc R4
        store Arg0, R4

        ; Offset the location pointer
        load R4, Arg1
        add R
        ; Print description (yellow)
        load R


    printInstructionsCompleted:
        loadn R0, #0
        rts
    printInstructionsInterruped:
        load R1, #1
        rts


    ; Print "W - MOVE UP"
    load R4, Arg0
    load R0, keyW    ; Set key to be printed
    mov R1, R4
    load R2, red
    call printString
    jne endHowToPlay

    load R0, move
    loadn R5, #4
    add R1, R1, R5
    load R2, yellow
    call printString
    jne endHowToPlay

    load R0, up      ; Set direction of movement
    loadn R5, #5
    add R1, R1, R5
    call printString
    jne endHowToPlay

    ; Print "A - MOVE LEFT"
    add R4, R4, R6
    load R0, keyA    ; Set key to be printed
    mov R1, R4
    load R2, red
    call printString
    jne endHowToPlay

    load R0, move
    loadn R5, #4
    add R1, R1, R5
    load R2, yellow
    call printString
    jne endHowToPlay

    load R0, left    ; Set direction of movement
    loadn R5, #5
    add R1, R1, R5
    call printString
    jne endHowToPlay

    ; Print "S - MOVE DOWN"
    add R4, R4, R6
    load R0, keyS    ; Set key to be printed
    mov R1, R4
    load R2, red
    call printString
    jne endHowToPlay

    load R0, move
    loadn R5, #4
    add R1, R1, R5
    load R2, yellow
    call printString
    jne endHowToPlay

    load R0, down    ; Set direction of movement
    loadn R5, #5
    add R1, R1, R5
    call printString
    jne endHowToPlay

    ; Print "D - MOVE RIGHT"
    add R4, R4, R6
    load R0, keyD    ; Set key to be printed
    mov R1, R4
    load R2, red
    call printString
    jne endHowToPlay

    load R0, move
    loadn R5, #4
    add R1, R1, R5
    load R2, yellow
    call printString
    jne endHowToPlay

    load R0, right   ; Set direction of movement
    loadn R5, #5
    add R1, R1, R5
    call printString
    jne endHowToPlay

    loadn R0, #0
endHowToPlay:
    pull R6
    pull R5
    pull R4
    pull R3
    pull R2
    pull R1
    rts



titleScreen:
    push R1 ; reserved to store the number of lines in the instruction
    push R2 ; reserved to store the value 0, for comparisons
    push R3 ; reserved for "toggle" boolean variable
    loadn R1 #5
    loadn R2 #0
    loadn R3 #0

    call initTitle            ; print title screen background to default state

    store Arg1, R1
    instructionsLoop:
        cmp R2, R3            ; Either print instructions for scoring or playing
        jnz selectInstruction ; Selection logic
        load R0, how_to_play0
        jmp instructionSelected
        selectInstruction:
            load R0, how_to_score0
        instructionSelected:
            store Arg0, R0
            call printInstructions
        jnz endInstructionsLoop
        call delay
        jnz endInstructionsLoop
        not R3
        jmp instructionsLoop
    endInstructionsLoop:
    call gameScreen



main:
    call titleScreen