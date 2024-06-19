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

; Background (Initial values are that of the title screen)
background : var #1200
  ;Linha 0
  static background + #0, #0
  static background + #1, #0
  static background + #2, #0
  static background + #3, #0
  static background + #4, #0
  static background + #5, #0
  static background + #6, #0
  static background + #7, #0
  static background + #8, #0
  static background + #9, #0
  static background + #10, #0
  static background + #11, #0
  static background + #12, #0
  static background + #13, #72
  static background + #14, #73
  static background + #15, #83
  static background + #16, #67
  static background + #17, #79
  static background + #18, #82
  static background + #19, #69
  static background + #20, #0
  static background + #21, #0
  static background + #22, #0
  static background + #23, #0
  static background + #24, #0
  static background + #25, #0
  static background + #26, #0
  static background + #27, #0
  static background + #28, #0
  static background + #29, #0
  static background + #30, #0
  static background + #31, #0
  static background + #32, #0
  static background + #33, #0
  static background + #34, #0
  static background + #35, #0
  static background + #36, #0
  static background + #37, #0
  static background + #38, #0
  static background + #39, #0

  ;Linha 1
  static background + #40, #0
  static background + #41, #0
  static background + #42, #0
  static background + #43, #0
  static background + #44, #0
  static background + #45, #0
  static background + #46, #0
  static background + #47, #0
  static background + #48, #0
  static background + #49, #0
  static background + #50, #0
  static background + #51, #0
  static background + #52, #0
  static background + #53, #0
  static background + #54, #0
  static background + #55, #0
  static background + #56, #0
  static background + #57, #0
  static background + #58, #0
  static background + #59, #0
  static background + #60, #0
  static background + #61, #0
  static background + #62, #0
  static background + #63, #0
  static background + #64, #0
  static background + #65, #0
  static background + #66, #0
  static background + #67, #0
  static background + #68, #0
  static background + #69, #0
  static background + #70, #0
  static background + #71, #0
  static background + #72, #0
  static background + #73, #0
  static background + #74, #0
  static background + #75, #0
  static background + #76, #0
  static background + #77, #0
  static background + #78, #0
  static background + #79, #0

  ;Linha 2
  static background + #80, #3138
  static background + #81, #3138
  static background + #82, #3138
  static background + #83, #3138
  static background + #84, #3138
  static background + #85, #3138
  static background + #86, #3138
  static background + #87, #3138
  static background + #88, #3138
  static background + #89, #3138
  static background + #90, #3138
  static background + #91, #3138
  static background + #92, #3138
  static background + #93, #3138
  static background + #94, #3138
  static background + #95, #3138
  static background + #96, #3138
  static background + #97, #3138
  static background + #98, #3138
  static background + #99, #3138
  static background + #100, #3138
  static background + #101, #3138
  static background + #102, #3138
  static background + #103, #3138
  static background + #104, #3138
  static background + #105, #3138
  static background + #106, #3138
  static background + #107, #3138
  static background + #108, #3138
  static background + #109, #3138
  static background + #110, #3138
  static background + #111, #3138
  static background + #112, #3138
  static background + #113, #3138
  static background + #114, #3138
  static background + #115, #3138
  static background + #116, #3138
  static background + #117, #3138
  static background + #118, #3138
  static background + #119, #3138

  ;Linha 3
  static background + #120, #3138
  static background + #121, #3138
  static background + #122, #3138
  static background + #123, #3138
  static background + #124, #3138
  static background + #125, #3138
  static background + #126, #3138
  static background + #127, #3138
  static background + #128, #3138
  static background + #129, #3138
  static background + #130, #3138
  static background + #131, #3138
  static background + #132, #3138
  static background + #133, #3138
  static background + #134, #3138
  static background + #135, #3138
  static background + #136, #3138
  static background + #137, #3138
  static background + #138, #3138
  static background + #139, #3138
  static background + #140, #3138
  static background + #141, #3138
  static background + #142, #3138
  static background + #143, #3138
  static background + #144, #3138
  static background + #145, #3138
  static background + #146, #3138
  static background + #147, #3138
  static background + #148, #3138
  static background + #149, #3138
  static background + #150, #3138
  static background + #151, #3138
  static background + #152, #3138
  static background + #153, #3138
  static background + #154, #3138
  static background + #155, #3138
  static background + #156, #3138
  static background + #157, #3138
  static background + #158, #3138
  static background + #159, #3138

  ;Linha 4
  static background + #160, #3138
  static background + #161, #3138
  static background + #162, #3138
  static background + #163, #3138
  static background + #164, #3138
  static background + #165, #3138
  static background + #166, #3138
  static background + #167, #3138
  static background + #168, #3138
  static background + #169, #3138
  static background + #170, #3138
  static background + #171, #3138
  static background + #172, #3138
  static background + #173, #3138
  static background + #174, #3138
  static background + #175, #3138
  static background + #176, #3138
  static background + #177, #3138
  static background + #178, #3138
  static background + #179, #3138
  static background + #180, #3138
  static background + #181, #3138
  static background + #182, #3138
  static background + #183, #3138
  static background + #184, #3138
  static background + #185, #3138
  static background + #186, #3138
  static background + #187, #3138
  static background + #188, #3138
  static background + #189, #3138
  static background + #190, #3138
  static background + #191, #3138
  static background + #192, #3138
  static background + #193, #3138
  static background + #194, #3138
  static background + #195, #3138
  static background + #196, #3138
  static background + #197, #3138
  static background + #198, #3138
  static background + #199, #3138

  ;Linha 5
  static background + #200, #3138
  static background + #201, #3138
  static background + #202, #3138
  static background + #203, #3138
  static background + #204, #3138
  static background + #205, #3138
  static background + #206, #3138
  static background + #207, #3138
  static background + #208, #3138
  static background + #209, #3138
  static background + #210, #3138
  static background + #211, #3138
  static background + #212, #3138
  static background + #213, #3138
  static background + #214, #3138
  static background + #215, #3138
  static background + #216, #3138
  static background + #217, #3138
  static background + #218, #3138
  static background + #219, #3138
  static background + #220, #3138
  static background + #221, #3138
  static background + #222, #3138
  static background + #223, #3138
  static background + #224, #3138
  static background + #225, #3138
  static background + #226, #3138
  static background + #227, #3138
  static background + #228, #3138
  static background + #229, #3138
  static background + #230, #3138
  static background + #231, #3138
  static background + #232, #3138
  static background + #233, #3138
  static background + #234, #3138
  static background + #235, #3138
  static background + #236, #3138
  static background + #237, #3138
  static background + #238, #3138
  static background + #239, #3138

  ;Linha 6
  static background + #240, #3138
  static background + #241, #3138
  static background + #242, #2626
  static background + #243, #2626
  static background + #244, #2626
  static background + #245, #2626
  static background + #246, #3138
  static background + #247, #2626
  static background + #248, #2626
  static background + #249, #2626
  static background + #250, #3138
  static background + #251, #3138
  static background + #252, #3138
  static background + #253, #2626
  static background + #254, #2626
  static background + #255, #3138
  static background + #256, #3138
  static background + #257, #3138
  static background + #258, #2626
  static background + #259, #2626
  static background + #260, #2626
  static background + #261, #3138
  static background + #262, #3138
  static background + #263, #2626
  static background + #264, #2626
  static background + #265, #2626
  static background + #266, #3138
  static background + #267, #2626
  static background + #268, #2626
  static background + #269, #2626
  static background + #270, #2626
  static background + #271, #3138
  static background + #272, #2626
  static background + #273, #2626
  static background + #274, #2626
  static background + #275, #3138
  static background + #276, #3138
  static background + #277, #2626
  static background + #278, #3138
  static background + #279, #3138

  ;Linha 7
  static background + #280, #3138
  static background + #281, #3138
  static background + #282, #2626
  static background + #283, #3138
  static background + #284, #3138
  static background + #285, #3138
  static background + #286, #3138
  static background + #287, #2626
  static background + #288, #3138
  static background + #289, #3138
  static background + #290, #2626
  static background + #291, #3138
  static background + #292, #2626
  static background + #293, #3138
  static background + #294, #3138
  static background + #295, #2626
  static background + #296, #3138
  static background + #297, #2626
  static background + #298, #3138
  static background + #299, #3138
  static background + #300, #3138
  static background + #301, #3138
  static background + #302, #2626
  static background + #303, #3138
  static background + #304, #3138
  static background + #305, #3138
  static background + #306, #3138
  static background + #307, #2626
  static background + #308, #3138
  static background + #309, #3138
  static background + #310, #3138
  static background + #311, #3138
  static background + #312, #2626
  static background + #313, #3138
  static background + #314, #3138
  static background + #315, #2626
  static background + #316, #3138
  static background + #317, #2626
  static background + #318, #3138
  static background + #319, #3138

  ;Linha 8
  static background + #320, #3138
  static background + #321, #3138
  static background + #322, #2626
  static background + #323, #2626
  static background + #324, #2626
  static background + #325, #3138
  static background + #326, #3138
  static background + #327, #2626
  static background + #328, #2626
  static background + #329, #2626
  static background + #330, #2626
  static background + #331, #3138
  static background + #332, #2626
  static background + #333, #3138
  static background + #334, #3138
  static background + #335, #2626
  static background + #336, #3138
  static background + #337, #2626
  static background + #338, #3138
  static background + #339, #2626
  static background + #340, #2626
  static background + #341, #3138
  static background + #342, #2626
  static background + #343, #3138
  static background + #344, #2626
  static background + #345, #2626
  static background + #346, #3138
  static background + #347, #2626
  static background + #348, #2626
  static background + #349, #2626
  static background + #350, #3138
  static background + #351, #3138
  static background + #352, #2626
  static background + #353, #2626
  static background + #354, #2626
  static background + #355, #2626
  static background + #356, #3138
  static background + #357, #2626
  static background + #358, #3138
  static background + #359, #3138

  ;Linha 9
  static background + #360, #3138
  static background + #361, #3138
  static background + #362, #2626
  static background + #363, #3138
  static background + #364, #3138
  static background + #365, #3138
  static background + #366, #3138
  static background + #367, #2626
  static background + #368, #3138
  static background + #369, #2626
  static background + #370, #3138
  static background + #371, #3138
  static background + #372, #2626
  static background + #373, #3138
  static background + #374, #3138
  static background + #375, #2626
  static background + #376, #3138
  static background + #377, #2626
  static background + #378, #3138
  static background + #379, #3138
  static background + #380, #2626
  static background + #381, #3138
  static background + #382, #2626
  static background + #383, #3138
  static background + #384, #3138
  static background + #385, #2626
  static background + #386, #3138
  static background + #387, #2626
  static background + #388, #3138
  static background + #389, #3138
  static background + #390, #3138
  static background + #391, #3138
  static background + #392, #2626
  static background + #393, #3138
  static background + #394, #2626
  static background + #395, #3138
  static background + #396, #3138
  static background + #397, #3138
  static background + #398, #3138
  static background + #399, #3138

  ;Linha 10
  static background + #400, #3138
  static background + #401, #3138
  static background + #402, #2626
  static background + #403, #3138
  static background + #404, #3138
  static background + #405, #3138
  static background + #406, #3138
  static background + #407, #2626
  static background + #408, #3138
  static background + #409, #3138
  static background + #410, #2626
  static background + #411, #3138
  static background + #412, #3138
  static background + #413, #2626
  static background + #414, #2626
  static background + #415, #3138
  static background + #416, #3138
  static background + #417, #2626
  static background + #418, #2626
  static background + #419, #2626
  static background + #420, #2626
  static background + #421, #3138
  static background + #422, #2626
  static background + #423, #2626
  static background + #424, #2626
  static background + #425, #2626
  static background + #426, #3138
  static background + #427, #2626
  static background + #428, #2626
  static background + #429, #2626
  static background + #430, #2626
  static background + #431, #3138
  static background + #432, #2626
  static background + #433, #3138
  static background + #434, #3138
  static background + #435, #2626
  static background + #436, #3138
  static background + #437, #2626
  static background + #438, #3138
  static background + #439, #3138

  ;Linha 11
  static background + #440, #3138
  static background + #441, #3138
  static background + #442, #3138
  static background + #443, #3138
  static background + #444, #3138
  static background + #445, #3138
  static background + #446, #3138
  static background + #447, #3138
  static background + #448, #3138
  static background + #449, #3138
  static background + #450, #3138
  static background + #451, #3138
  static background + #452, #3138
  static background + #453, #3138
  static background + #454, #3138
  static background + #455, #3138
  static background + #456, #3138
  static background + #457, #3138
  static background + #458, #3138
  static background + #459, #3138
  static background + #460, #3138
  static background + #461, #3138
  static background + #462, #3138
  static background + #463, #3138
  static background + #464, #3138
  static background + #465, #3138
  static background + #466, #3138
  static background + #467, #3138
  static background + #468, #3138
  static background + #469, #3138
  static background + #470, #3138
  static background + #471, #3138
  static background + #472, #3138
  static background + #473, #3138
  static background + #474, #3138
  static background + #475, #3138
  static background + #476, #3138
  static background + #477, #3138
  static background + #478, #3138
  static background + #479, #3138

  ;Linha 12
  static background + #480, #0
  static background + #481, #0
  static background + #482, #0
  static background + #483, #0
  static background + #484, #0
  static background + #485, #0
  static background + #486, #0
  static background + #487, #0
  static background + #488, #0
  static background + #489, #0
  static background + #490, #0
  static background + #491, #0
  static background + #492, #0
  static background + #493, #0
  static background + #494, #0
  static background + #496, #0
  static background + #497, #0
  static background + #498, #0
  static background + #499, #0
  static background + #500, #0
  static background + #501, #0
  static background + #502, #0
  static background + #503, #0
  static background + #504, #0
  static background + #505, #0
  static background + #506, #0
  static background + #507, #0
  static background + #508, #0
  static background + #509, #0
  static background + #510, #0
  static background + #511, #0
  static background + #512, #0
  static background + #513, #0
  static background + #514, #0
  static background + #515, #0
  static background + #516, #0
  static background + #517, #0
  static background + #518, #0
  static background + #519, #0

  ;Linha 13
  static background + #520, #0
  static background + #521, #0
  static background + #522, #0
  static background + #523, #0
  static background + #524, #0
  static background + #525, #0
  static background + #526, #0
  static background + #527, #0
  static background + #528, #0
  static background + #529, #0
  static background + #530, #0
  static background + #531, #0
  static background + #532, #0
  static background + #533, #0
  static background + #534, #0
  static background + #535, #0
  static background + #536, #0
  static background + #537, #0
  static background + #538, #0
  static background + #539, #0
  static background + #540, #0
  static background + #541, #0
  static background + #542, #0
  static background + #543, #0
  static background + #544, #0
  static background + #545, #0
  static background + #546, #0
  static background + #547, #0
  static background + #548, #0
  static background + #549, #0
  static background + #550, #0
  static background + #551, #0
  static background + #552, #0
  static background + #553, #0
  static background + #554, #0
  static background + #555, #0
  static background + #556, #0
  static background + #557, #0
  static background + #558, #0
  static background + #559, #0

  ;Linha 14
  static background + #560, #0
  static background + #561, #0
  static background + #562, #0
  static background + #563, #0
  static background + #564, #0
  static background + #565, #0
  static background + #566, #0
  static background + #567, #0
  static background + #568, #0
  static background + #569, #0
  static background + #570, #0
  static background + #571, #0
  static background + #572, #0
  static background + #573, #0
  static background + #574, #0
  static background + #575, #0
  static background + #576, #0
  static background + #577, #0
  static background + #578, #0
  static background + #579, #0
  static background + #580, #0
  static background + #581, #0
  static background + #582, #0
  static background + #583, #0
  static background + #584, #0
  static background + #585, #0
  static background + #586, #0
  static background + #587, #0
  static background + #588, #0
  static background + #589, #0
  static background + #590, #0
  static background + #591, #0
  static background + #592, #0
  static background + #593, #0
  static background + #594, #0
  static background + #595, #0
  static background + #596, #0
  static background + #597, #0
  static background + #598, #0
  static background + #599, #0

  ;Linha 15
  static background + #600, #0
  static background + #601, #0
  static background + #602, #0
  static background + #603, #0
  static background + #604, #0
  static background + #605, #0
  static background + #606, #0
  static background + #607, #0
  static background + #608, #0
  static background + #609, #0
  static background + #610, #0
  static background + #611, #0
  static background + #612, #0
  static background + #613, #0
  static background + #614, #0
  static background + #615, #0
  static background + #616, #0
  static background + #617, #0
  static background + #618, #0
  static background + #619, #0
  static background + #620, #0
  static background + #621, #0
  static background + #622, #0
  static background + #623, #0
  static background + #624, #0
  static background + #625, #0
  static background + #626, #0
  static background + #627, #0
  static background + #628, #0
  static background + #629, #0
  static background + #630, #0
  static background + #631, #0
  static background + #632, #0
  static background + #633, #0
  static background + #634, #0
  static background + #635, #0
  static background + #636, #0
  static background + #637, #0
  static background + #638, #0
  static background + #639, #0

  ;Linha 16
  static background + #640, #0
  static background + #641, #0
  static background + #642, #0
  static background + #643, #0
  static background + #644, #0
  static background + #645, #0
  static background + #646, #0
  static background + #647, #0
  static background + #648, #0
  static background + #649, #0
  static background + #650, #0
  static background + #651, #0
  static background + #652, #0
  static background + #653, #0
  static background + #654, #0
  static background + #655, #0
  static background + #656, #0
  static background + #657, #0
  static background + #658, #0
  static background + #659, #0
  static background + #660, #0
  static background + #661, #0
  static background + #662, #0
  static background + #663, #0
  static background + #664, #0
  static background + #665, #0
  static background + #666, #0
  static background + #667, #0
  static background + #668, #0
  static background + #669, #0
  static background + #670, #0
  static background + #671, #0
  static background + #672, #0
  static background + #673, #0
  static background + #674, #0
  static background + #675, #0
  static background + #676, #0
  static background + #677, #0
  static background + #678, #0
  static background + #679, #0

  ;Linha 17
  static background + #680, #0
  static background + #681, #0
  static background + #682, #0
  static background + #683, #0
  static background + #684, #0
  static background + #685, #0
  static background + #686, #0
  static background + #687, #0
  static background + #688, #0
  static background + #689, #0
  static background + #690, #0
  static background + #691, #0
  static background + #692, #0
  static background + #693, #0
  static background + #694, #0
  static background + #695, #0
  static background + #696, #0
  static background + #697, #0
  static background + #698, #0
  static background + #699, #0
  static background + #700, #0
  static background + #701, #0
  static background + #702, #0
  static background + #703, #0
  static background + #704, #0
  static background + #705, #0
  static background + #706, #0
  static background + #707, #0
  static background + #708, #0
  static background + #709, #0
  static background + #710, #0
  static background + #711, #0
  static background + #712, #0
  static background + #713, #0
  static background + #714, #0
  static background + #715, #0
  static background + #716, #0
  static background + #717, #0
  static background + #718, #0
  static background + #719, #3967

  ;Linha 18
  static background + #720, #0
  static background + #721, #0
  static background + #722, #0
  static background + #723, #0
  static background + #724, #0
  static background + #725, #0
  static background + #726, #0
  static background + #727, #0
  static background + #728, #0
  static background + #729, #0
  static background + #730, #0
  static background + #731, #0
  static background + #732, #0
  static background + #733, #0
  static background + #734, #0
  static background + #735, #0
  static background + #736, #0
  static background + #737, #0
  static background + #738, #0
  static background + #739, #0
  static background + #740, #0
  static background + #741, #0
  static background + #742, #0
  static background + #743, #0
  static background + #744, #0
  static background + #745, #0
  static background + #746, #0
  static background + #747, #0
  static background + #748, #0
  static background + #749, #0
  static background + #750, #0
  static background + #751, #0
  static background + #752, #0
  static background + #753, #0
  static background + #754, #0
  static background + #755, #0
  static background + #756, #0
  static background + #757, #0
  static background + #758, #0
  static background + #759, #0

  ;Linha 19
  static background + #760, #0
  static background + #761, #0
  static background + #762, #0
  static background + #763, #0
  static background + #764, #0
  static background + #765, #0
  static background + #766, #0
  static background + #767, #0
  static background + #768, #0
  static background + #769, #0
  static background + #770, #0
  static background + #771, #0
  static background + #772, #0
  static background + #773, #0
  static background + #774, #0
  static background + #775, #0
  static background + #776, #0
  static background + #777, #0
  static background + #778, #0
  static background + #779, #0
  static background + #780, #0
  static background + #781, #0
  static background + #782, #0
  static background + #783, #0
  static background + #784, #0
  static background + #785, #0
  static background + #786, #0
  static background + #787, #0
  static background + #788, #0
  static background + #789, #0
  static background + #790, #0
  static background + #791, #0
  static background + #792, #0
  static background + #793, #0
  static background + #794, #0
  static background + #795, #0
  static background + #796, #0
  static background + #797, #0
  static background + #798, #0
  static background + #799, #0

  ;Linha 20
  static background + #800, #0
  static background + #801, #0
  static background + #802, #0
  static background + #803, #0
  static background + #804, #0
  static background + #805, #0
  static background + #806, #0
  static background + #807, #0
  static background + #808, #0
  static background + #809, #0
  static background + #810, #0
  static background + #811, #0
  static background + #812, #0
  static background + #813, #0
  static background + #814, #0
  static background + #815, #0
  static background + #816, #0
  static background + #817, #0
  static background + #818, #0
  static background + #819, #0
  static background + #820, #0
  static background + #821, #0
  static background + #822, #0
  static background + #823, #0
  static background + #824, #0
  static background + #825, #0
  static background + #826, #0
  static background + #827, #0
  static background + #828, #0
  static background + #829, #0
  static background + #830, #0
  static background + #831, #0
  static background + #832, #0
  static background + #833, #0
  static background + #834, #0
  static background + #835, #0
  static background + #836, #0
  static background + #837, #0
  static background + #838, #0
  static background + #839, #0

  ;Linha 21
  static background + #840, #0
  static background + #841, #0
  static background + #842, #0
  static background + #843, #0
  static background + #844, #0
  static background + #845, #0
  static background + #846, #0
  static background + #847, #0
  static background + #848, #0
  static background + #849, #0
  static background + #850, #0
  static background + #851, #0
  static background + #852, #0
  static background + #853, #0
  static background + #854, #0
  static background + #855, #0
  static background + #856, #0
  static background + #857, #0
  static background + #858, #0
  static background + #859, #0
  static background + #860, #0
  static background + #861, #0
  static background + #862, #0
  static background + #863, #0
  static background + #864, #0
  static background + #865, #0
  static background + #866, #0
  static background + #867, #0
  static background + #868, #0
  static background + #869, #0
  static background + #870, #0
  static background + #871, #0
  static background + #872, #0
  static background + #873, #0
  static background + #874, #0
  static background + #875, #0
  static background + #876, #0
  static background + #877, #0
  static background + #878, #0
  static background + #879, #0

  ;Linha 22
  static background + #880, #0
  static background + #881, #0
  static background + #882, #0
  static background + #883, #0
  static background + #884, #0
  static background + #885, #0
  static background + #886, #0
  static background + #887, #0
  static background + #888, #0
  static background + #889, #0
  static background + #890, #0
  static background + #891, #0
  static background + #892, #0
  static background + #893, #0
  static background + #894, #0
  static background + #895, #0
  static background + #896, #0
  static background + #897, #0
  static background + #898, #0
  static background + #899, #0
  static background + #900, #0
  static background + #901, #0
  static background + #902, #0
  static background + #903, #0
  static background + #904, #0
  static background + #905, #0
  static background + #906, #0
  static background + #907, #0
  static background + #908, #0
  static background + #909, #0
  static background + #910, #0
  static background + #911, #0
  static background + #912, #0
  static background + #913, #0
  static background + #914, #0
  static background + #915, #0
  static background + #916, #0
  static background + #917, #0
  static background + #918, #0
  static background + #919, #0

  ;Linha 23
  static background + #920, #0
  static background + #921, #0
  static background + #922, #0
  static background + #923, #0
  static background + #924, #0
  static background + #925, #0
  static background + #926, #0
  static background + #927, #0
  static background + #928, #0
  static background + #929, #0
  static background + #930, #0
  static background + #931, #0
  static background + #932, #0
  static background + #933, #0
  static background + #934, #0
  static background + #935, #0
  static background + #936, #0
  static background + #937, #0
  static background + #938, #0
  static background + #939, #0
  static background + #940, #0
  static background + #941, #0
  static background + #942, #0
  static background + #943, #0
  static background + #944, #0
  static background + #945, #0
  static background + #946, #0
  static background + #947, #0
  static background + #948, #0
  static background + #949, #0
  static background + #950, #0
  static background + #951, #0
  static background + #952, #0
  static background + #953, #0
  static background + #954, #0
  static background + #955, #0
  static background + #956, #0
  static background + #957, #0
  static background + #958, #0
  static background + #959, #0

  ;Linha 24
  static background + #960, #0
  static background + #961, #0
  static background + #962, #0
  static background + #963, #0
  static background + #964, #0
  static background + #965, #0
  static background + #966, #0
  static background + #967, #0
  static background + #968, #0
  static background + #969, #0
  static background + #970, #0
  static background + #971, #0
  static background + #972, #0
  static background + #973, #0
  static background + #974, #0
  static background + #975, #0
  static background + #976, #0
  static background + #977, #0
  static background + #978, #0
  static background + #979, #0
  static background + #980, #0
  static background + #981, #0
  static background + #982, #0
  static background + #983, #0
  static background + #984, #0
  static background + #985, #0
  static background + #986, #0
  static background + #987, #0
  static background + #988, #0
  static background + #989, #0
  static background + #990, #0
  static background + #991, #0
  static background + #992, #0
  static background + #993, #0
  static background + #994, #0
  static background + #995, #0
  static background + #996, #0
  static background + #997, #0
  static background + #998, #0
  static background + #999, #0

  ;Linha 25
  static background + #1000, #0
  static background + #1001, #0
  static background + #1002, #0
  static background + #1003, #0
  static background + #1004, #0
  static background + #1005, #0
  static background + #1006, #0
  static background + #1007, #0
  static background + #1008, #0
  static background + #1009, #0
  static background + #1010, #0
  static background + #1011, #0
  static background + #1012, #0
  static background + #1013, #0
  static background + #1014, #0
  static background + #1015, #0
  static background + #1016, #0
  static background + #1017, #0
  static background + #1018, #0
  static background + #1019, #0
  static background + #1020, #0
  static background + #1021, #0
  static background + #1022, #0
  static background + #1023, #0
  static background + #1024, #0
  static background + #1025, #0
  static background + #1026, #0
  static background + #1027, #0
  static background + #1028, #0
  static background + #1029, #0
  static background + #1030, #0
  static background + #1031, #0
  static background + #1032, #0
  static background + #1033, #0
  static background + #1034, #0
  static background + #1035, #0
  static background + #1036, #0
  static background + #1037, #0
  static background + #1038, #0
  static background + #1039, #0

  ;Linha 26
  static background + #1040, #0
  static background + #1041, #0
  static background + #1042, #0
  static background + #1043, #0
  static background + #1044, #0
  static background + #1045, #0
  static background + #1046, #0
  static background + #1047, #0
  static background + #1048, #0
  static background + #1049, #0
  static background + #1050, #80
  static background + #1051, #82
  static background + #1052, #69
  static background + #1053, #83
  static background + #1054, #83
  static background + #1055, #32
  static background + #1056, #2885
  static background + #1057, #2894
  static background + #1058, #2900
  static background + #1059, #2885
  static background + #1060, #2898
  static background + #1061, #32
  static background + #1062, #84
  static background + #1063, #79
  static background + #1064, #32
  static background + #1065, #80
  static background + #1066, #76
  static background + #1067, #65
  static background + #1068, #89
  static background + #1069, #0
  static background + #1070, #0
  static background + #1071, #0
  static background + #1072, #0
  static background + #1073, #0
  static background + #1074, #0
  static background + #1075, #0
  static background + #1076, #0
  static background + #1077, #0
  static background + #1078, #0
  static background + #1079, #0

  ;Linha 27
  static background + #1080, #0
  static background + #1081, #0
  static background + #1082, #0
  static background + #1083, #0
  static background + #1084, #0
  static background + #1085, #0
  static background + #1086, #0
  static background + #1087, #0
  static background + #1088, #0
  static background + #1089, #0
  static background + #1090, #0
  static background + #1091, #0
  static background + #1092, #0
  static background + #1093, #0
  static background + #1094, #0
  static background + #1095, #0
  static background + #1096, #0
  static background + #1097, #0
  static background + #1098, #0
  static background + #1099, #0
  static background + #1100, #0
  static background + #1101, #0
  static background + #1102, #0
  static background + #1103, #0
  static background + #1104, #0
  static background + #1105, #0
  static background + #1106, #0
  static background + #1107, #0
  static background + #1108, #0
  static background + #1109, #0
  static background + #1110, #0
  static background + #1111, #0
  static background + #1112, #0
  static background + #1113, #0
  static background + #1114, #0
  static background + #1115, #0
  static background + #1116, #0
  static background + #1117, #0
  static background + #1118, #0
  static background + #1119, #0

  ;Linha 28
  static background + #1120, #0
  static background + #1121, #0
  static background + #1122, #0
  static background + #1123, #0
  static background + #1124, #0
  static background + #1125, #0
  static background + #1126, #0
  static background + #1127, #0
  static background + #1128, #0
  static background + #1129, #0
  static background + #1130, #0
  static background + #1131, #0
  static background + #1132, #0
  static background + #1133, #0
  static background + #1134, #0
  static background + #1135, #0
  static background + #1136, #0
  static background + #1137, #0
  static background + #1138, #0
  static background + #1139, #0
  static background + #1140, #0
  static background + #1141, #0
  static background + #1142, #0
  static background + #1143, #0
  static background + #1144, #0
  static background + #1145, #0
  static background + #1146, #0
  static background + #1147, #0
  static background + #1148, #0
  static background + #1149, #0
  static background + #1150, #0
  static background + #1151, #0
  static background + #1152, #0
  static background + #1153, #0
  static background + #1154, #0
  static background + #1155, #0
  static background + #1156, #0
  static background + #1157, #0
  static background + #1158, #0
  static background + #1159, #0

  ;Linha 29
  static background + #1160, #0
  static background + #1161, #0
  static background + #1162, #0
  static background + #1163, #0
  static background + #1164, #0
  static background + #1165, #0
  static background + #1166, #0
  static background + #1167, #0
  static background + #1168, #0
  static background + #1169, #0
  static background + #1170, #0
  static background + #1171, #0
  static background + #1172, #0
  static background + #1173, #0
  static background + #1174, #0
  static background + #1175, #0
  static background + #1176, #0
  static background + #1177, #0
  static background + #1178, #0
  static background + #1179, #0
  static background + #1180, #0
  static background + #1181, #0
  static background + #1182, #0
  static background + #1183, #0
  static background + #1184, #0
  static background + #1185, #0
  static background + #1186, #0
  static background + #1187, #0
  static background + #1188, #0
  static background + #1189, #0
  static background + #1190, #0
  static background + #1191, #0
  static background + #1192, #0
  static background + #1193, #0
  static background + #1194, #0
  static background + #1195, #0
  static background + #1196, #0
  static background + #1197, #0
  static background + #1198, #0
  static background + #1199, #0


; Code segment

initTitle:
  push R0
  push R1
  push R2
  push R3

  loadn R0, #background
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
				store letra, r2		; Se apertar uma tecla, guarda na variável Letra

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

printString:
    ;

printLine:
    ; Prints a line of text, overwriting any previously printed line
    ; Arguments:
    ; Arg0: pointer to the string to be printed
    ; Arg1: index position of the place at the screen where to start printing
    ; Arg2: color to be assigned to printed characters
    ; Arg3: Whether printing can be interrupted by the user's input
    ; Returns:
    ; R0: Length of the line printed. If printing was interrupted by the user, the value returned shall be 0.

    push R1 ; reserved to store current index
    push R2 ; reserved to store previous line start
    push R3 ; reserved to store current line start
    push R4 ; reserved to store current character
    push R5 ; general purpose register
    push R6 ; reserved to store 0, for comparisons

    ; Set R1 at the screen's line start
    load R1, WIDTH
    load R5, Arg1
    load R6, #0
    mod R1, R5, R1
    sub R1, R5, R1

    padLeft:
        cmp R1, R3
        jeq startPrinting
        outchar R1, R6
        jmp padLeft

    startPrinting:
        call printString




    value 0


printInstructions:
    ; Prints a centered text box containing instructions on how to play or score and returns whether the user has interrupted printing or not.
    ; Arguments:
    ; Arg0 = address of the vector of strings to be printed
    ; Arg1 = number of lines to be printed
    ; Returns:
    ; R0 = 0 if printing was not interrupted, otherwise 1.

    push R1 ; reserved to store the number of lines left to be printed
    push R2 ; reserved to store the line start
    push R3 ; reserved to store the line offset value
    push R4 ; reserved to store 0 for comparisons
    push R5 ; reserved as a general purpose temporary register

    ; Initialize
    load R1, Arg1
    loadn R2, #614
    loadn R3, #80
    loadn R4, #0
    loadn R5, #1

    ; Print Header
    store Arg1, R2
    store Arg2, R4
    store Arg3, R5
    call printLine
    cmp R0, R4
    jne printInstructionsInterruped
    dec R1

    ; Set initial cursor position for text block
    loadn R2, #693
    store Arg1, R2

    printInstructionsBody:
        cmp R1, R3
        jne printInstructionsCompleted

        ; Offset string pointer enough that the next string is reached.
        load R5, Arg0
        add R5, R0
        inc R5
        store Arg0, R5

        ; Print with emphasis (red)
        load R5, red
        store Arg2, R5
        call printLine
        cmp R0, R4
        jne printInstructionsInterruped

        ; Offset string pointer enough that the next string is reached.
        load R5, Arg0
        add R5, R0
        inc R5
        store Arg0, R5

        ; Offset the pointer to screen position as well
        load R5, Arg1
        add R5, R0
        inc R5
        store Arg1, R5

        ; Print description (yellow)
        load R5, yellow
        store Arg2, R5
        call printLine
        cmp R0, R3
        jne printInstructionsInterruped

        ; Move towards printing next line and decrement line count
        add R2, R3
        dec R1
        jmp printInstructionsBody

    printInstructionsCompleted:
        loadn R0, #0
        jmp printInstructionsEnd

    printInstructionsInterruped:
        load R1, #1

    printInstructionsEnd:
        pop R5
        pop R4
        pop R3
        pop R2
        pop R1
        rts

titleScreen:
    ; Prints the title screen, displaying game instructions. Takes no arguments and returns nothing.

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
