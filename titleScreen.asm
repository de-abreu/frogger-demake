jmp main

; Data segment

; Constants

WIDTH : var #1
    static WIDTH, #40

HEIGHT : var #1
    static HEIGHT, #30

SCREENSIZE : var #1
    static SCREENSIZE, #1200

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

; Color definitions

white  : var #1
    static white, #0
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

titleScreenBG : var #1200
  ;Line 0
  static titleScreenBG + #0, #0
  static titleScreenBG + #1, #0
  static titleScreenBG + #2, #0
  static titleScreenBG + #3, #0
  static titleScreenBG + #4, #0
  static titleScreenBG + #5, #0
  static titleScreenBG + #6, #0
  static titleScreenBG + #7, #0
  static titleScreenBG + #8, #0
  static titleScreenBG + #9, #0
  static titleScreenBG + #10, #0
  static titleScreenBG + #11, #0
  static titleScreenBG + #12, #0
  static titleScreenBG + #13, #72
  static titleScreenBG + #14, #73
  static titleScreenBG + #15, #83
  static titleScreenBG + #16, #67
  static titleScreenBG + #17, #79
  static titleScreenBG + #18, #82
  static titleScreenBG + #19, #69
  static titleScreenBG + #20, #0
  static TitleScreenBG + #21, #2353
  static TitleScreenBG + #22, #2353
  static TitleScreenBG + #23, #2353
  static TitleScreenBG + #24, #2353
  static TitleScreenBG + #25, #2353
  static titleScreenBG + #26, #0
  static titleScreenBG + #27, #0
  static titleScreenBG + #28, #0
  static titleScreenBG + #29, #0
  static titleScreenBG + #30, #0
  static titleScreenBG + #31, #0
  static titleScreenBG + #32, #0
  static titleScreenBG + #33, #0
  static titleScreenBG + #34, #0
  static titleScreenBG + #35, #0
  static titleScreenBG + #36, #0
  static titleScreenBG + #37, #0
  static titleScreenBG + #38, #0
  static titleScreenBG + #39, #0

  ;Line 1
  static titleScreenBG + #40, #0
  static titleScreenBG + #41, #0
  static titleScreenBG + #42, #0
  static titleScreenBG + #43, #0
  static titleScreenBG + #44, #0
  static titleScreenBG + #45, #0
  static titleScreenBG + #46, #0
  static titleScreenBG + #47, #0
  static titleScreenBG + #48, #0
  static titleScreenBG + #49, #0
  static titleScreenBG + #50, #0
  static titleScreenBG + #51, #0
  static titleScreenBG + #52, #0
  static titleScreenBG + #53, #0
  static titleScreenBG + #54, #0
  static titleScreenBG + #55, #0
  static titleScreenBG + #56, #0
  static titleScreenBG + #57, #0
  static titleScreenBG + #58, #0
  static titleScreenBG + #59, #0
  static titleScreenBG + #60, #0
  static titleScreenBG + #61, #0
  static titleScreenBG + #62, #0
  static titleScreenBG + #63, #0
  static titleScreenBG + #64, #0
  static titleScreenBG + #65, #0
  static titleScreenBG + #66, #0
  static titleScreenBG + #67, #0
  static titleScreenBG + #68, #0
  static titleScreenBG + #69, #0
  static titleScreenBG + #70, #0
  static titleScreenBG + #71, #0
  static titleScreenBG + #72, #0
  static titleScreenBG + #73, #0
  static titleScreenBG + #74, #0
  static titleScreenBG + #75, #0
  static titleScreenBG + #76, #0
  static titleScreenBG + #77, #0
  static titleScreenBG + #78, #0
  static titleScreenBG + #79, #0

  ;Line 2
  static titleScreenBG + #80, #3138
  static titleScreenBG + #81, #3138
  static titleScreenBG + #82, #3138
  static titleScreenBG + #83, #3138
  static titleScreenBG + #84, #3138
  static titleScreenBG + #85, #3138
  static titleScreenBG + #86, #3138
  static titleScreenBG + #87, #3138
  static titleScreenBG + #88, #3138
  static titleScreenBG + #89, #3138
  static titleScreenBG + #90, #3138
  static titleScreenBG + #91, #3138
  static titleScreenBG + #92, #3138
  static titleScreenBG + #93, #3138
  static titleScreenBG + #94, #3138
  static titleScreenBG + #95, #3138
  static titleScreenBG + #96, #3138
  static titleScreenBG + #97, #3138
  static titleScreenBG + #98, #3138
  static titleScreenBG + #99, #3138
  static titleScreenBG + #100, #3138
  static titleScreenBG + #101, #3138
  static titleScreenBG + #102, #3138
  static titleScreenBG + #103, #3138
  static titleScreenBG + #104, #3138
  static titleScreenBG + #105, #3138
  static titleScreenBG + #106, #3138
  static titleScreenBG + #107, #3138
  static titleScreenBG + #108, #3138
  static titleScreenBG + #109, #3138
  static titleScreenBG + #110, #3138
  static titleScreenBG + #111, #3138
  static titleScreenBG + #112, #3138
  static titleScreenBG + #113, #3138
  static titleScreenBG + #114, #3138
  static titleScreenBG + #115, #3138
  static titleScreenBG + #116, #3138
  static titleScreenBG + #117, #3138
  static titleScreenBG + #118, #3138
  static titleScreenBG + #119, #3138

  ;Line 3
  static titleScreenBG + #120, #3138
  static titleScreenBG + #121, #3138
  static titleScreenBG + #122, #3138
  static titleScreenBG + #123, #3138
  static titleScreenBG + #124, #3138
  static titleScreenBG + #125, #3138
  static titleScreenBG + #126, #3138
  static titleScreenBG + #127, #3138
  static titleScreenBG + #128, #3138
  static titleScreenBG + #129, #3138
  static titleScreenBG + #130, #3138
  static titleScreenBG + #131, #3138
  static titleScreenBG + #132, #3138
  static titleScreenBG + #133, #3138
  static titleScreenBG + #134, #3138
  static titleScreenBG + #135, #3138
  static titleScreenBG + #136, #3138
  static titleScreenBG + #137, #3138
  static titleScreenBG + #138, #3138
  static titleScreenBG + #139, #3138
  static titleScreenBG + #140, #3138
  static titleScreenBG + #141, #3138
  static titleScreenBG + #142, #3138
  static titleScreenBG + #143, #3138
  static titleScreenBG + #144, #3138
  static titleScreenBG + #145, #3138
  static titleScreenBG + #146, #3138
  static titleScreenBG + #147, #3138
  static titleScreenBG + #148, #3138
  static titleScreenBG + #149, #3138
  static titleScreenBG + #150, #3138
  static titleScreenBG + #151, #3138
  static titleScreenBG + #152, #3138
  static titleScreenBG + #153, #3138
  static titleScreenBG + #154, #3138
  static titleScreenBG + #155, #3138
  static titleScreenBG + #156, #3138
  static titleScreenBG + #157, #3138
  static titleScreenBG + #158, #3138
  static titleScreenBG + #159, #3138

  ;Line 4
  static titleScreenBG + #160, #3138
  static titleScreenBG + #161, #3138
  static titleScreenBG + #162, #3138
  static titleScreenBG + #163, #3138
  static titleScreenBG + #164, #3138
  static titleScreenBG + #165, #3138
  static titleScreenBG + #166, #3138
  static titleScreenBG + #167, #3138
  static titleScreenBG + #168, #3138
  static titleScreenBG + #169, #3138
  static titleScreenBG + #170, #3138
  static titleScreenBG + #171, #3138
  static titleScreenBG + #172, #3138
  static titleScreenBG + #173, #3138
  static titleScreenBG + #174, #3138
  static titleScreenBG + #175, #3138
  static titleScreenBG + #176, #3138
  static titleScreenBG + #177, #3138
  static titleScreenBG + #178, #3138
  static titleScreenBG + #179, #3138
  static titleScreenBG + #180, #3138
  static titleScreenBG + #181, #3138
  static titleScreenBG + #182, #3138
  static titleScreenBG + #183, #3138
  static titleScreenBG + #184, #3138
  static titleScreenBG + #185, #3138
  static titleScreenBG + #186, #3138
  static titleScreenBG + #187, #3138
  static titleScreenBG + #188, #3138
  static titleScreenBG + #189, #3138
  static titleScreenBG + #190, #3138
  static titleScreenBG + #191, #3138
  static titleScreenBG + #192, #3138
  static titleScreenBG + #193, #3138
  static titleScreenBG + #194, #3138
  static titleScreenBG + #195, #3138
  static titleScreenBG + #196, #3138
  static titleScreenBG + #197, #3138
  static titleScreenBG + #198, #3138
  static titleScreenBG + #199, #3138

  ;Line 5
  static titleScreenBG + #200, #3138
  static titleScreenBG + #201, #3138
  static titleScreenBG + #202, #3138
  static titleScreenBG + #203, #3138
  static titleScreenBG + #204, #3138
  static titleScreenBG + #205, #3138
  static titleScreenBG + #206, #3138
  static titleScreenBG + #207, #3138
  static titleScreenBG + #208, #3138
  static titleScreenBG + #209, #3138
  static titleScreenBG + #210, #3138
  static titleScreenBG + #211, #3138
  static titleScreenBG + #212, #3138
  static titleScreenBG + #213, #3138
  static titleScreenBG + #214, #3138
  static titleScreenBG + #215, #3138
  static titleScreenBG + #216, #3138
  static titleScreenBG + #217, #3138
  static titleScreenBG + #218, #3138
  static titleScreenBG + #219, #3138
  static titleScreenBG + #220, #3138
  static titleScreenBG + #221, #3138
  static titleScreenBG + #222, #3138
  static titleScreenBG + #223, #3138
  static titleScreenBG + #224, #3138
  static titleScreenBG + #225, #3138
  static titleScreenBG + #226, #3138
  static titleScreenBG + #227, #3138
  static titleScreenBG + #228, #3138
  static titleScreenBG + #229, #3138
  static titleScreenBG + #230, #3138
  static titleScreenBG + #231, #3138
  static titleScreenBG + #232, #3138
  static titleScreenBG + #233, #3138
  static titleScreenBG + #234, #3138
  static titleScreenBG + #235, #3138
  static titleScreenBG + #236, #3138
  static titleScreenBG + #237, #3138
  static titleScreenBG + #238, #3138
  static titleScreenBG + #239, #3138

  ;Line 6
  static titleScreenBG + #240, #3138
  static titleScreenBG + #241, #3138
  static titleScreenBG + #242, #2626
  static titleScreenBG + #243, #2626
  static titleScreenBG + #244, #2626
  static titleScreenBG + #245, #2626
  static titleScreenBG + #246, #3138
  static titleScreenBG + #247, #2626
  static titleScreenBG + #248, #2626
  static titleScreenBG + #249, #2626
  static titleScreenBG + #250, #3138
  static titleScreenBG + #251, #3138
  static titleScreenBG + #252, #3138
  static titleScreenBG + #253, #2626
  static titleScreenBG + #254, #2626
  static titleScreenBG + #255, #3138
  static titleScreenBG + #256, #3138
  static titleScreenBG + #257, #3138
  static titleScreenBG + #258, #2626
  static titleScreenBG + #259, #2626
  static titleScreenBG + #260, #2626
  static titleScreenBG + #261, #3138
  static titleScreenBG + #262, #3138
  static titleScreenBG + #263, #2626
  static titleScreenBG + #264, #2626
  static titleScreenBG + #265, #2626
  static titleScreenBG + #266, #3138
  static titleScreenBG + #267, #2626
  static titleScreenBG + #268, #2626
  static titleScreenBG + #269, #2626
  static titleScreenBG + #270, #2626
  static titleScreenBG + #271, #3138
  static titleScreenBG + #272, #2626
  static titleScreenBG + #273, #2626
  static titleScreenBG + #274, #2626
  static titleScreenBG + #275, #3138
  static titleScreenBG + #276, #3138
  static titleScreenBG + #277, #2626
  static titleScreenBG + #278, #3138
  static titleScreenBG + #279, #3138

  ;Line 7
  static titleScreenBG + #280, #3138
  static titleScreenBG + #281, #3138
  static titleScreenBG + #282, #2626
  static titleScreenBG + #283, #3138
  static titleScreenBG + #284, #3138
  static titleScreenBG + #285, #3138
  static titleScreenBG + #286, #3138
  static titleScreenBG + #287, #2626
  static titleScreenBG + #288, #3138
  static titleScreenBG + #289, #3138
  static titleScreenBG + #290, #2626
  static titleScreenBG + #291, #3138
  static titleScreenBG + #292, #2626
  static titleScreenBG + #293, #3138
  static titleScreenBG + #294, #3138
  static titleScreenBG + #295, #2626
  static titleScreenBG + #296, #3138
  static titleScreenBG + #297, #2626
  static titleScreenBG + #298, #3138
  static titleScreenBG + #299, #3138
  static titleScreenBG + #300, #3138
  static titleScreenBG + #301, #3138
  static titleScreenBG + #302, #2626
  static titleScreenBG + #303, #3138
  static titleScreenBG + #304, #3138
  static titleScreenBG + #305, #3138
  static titleScreenBG + #306, #3138
  static titleScreenBG + #307, #2626
  static titleScreenBG + #308, #3138
  static titleScreenBG + #309, #3138
  static titleScreenBG + #310, #3138
  static titleScreenBG + #311, #3138
  static titleScreenBG + #312, #2626
  static titleScreenBG + #313, #3138
  static titleScreenBG + #314, #3138
  static titleScreenBG + #315, #2626
  static titleScreenBG + #316, #3138
  static titleScreenBG + #317, #2626
  static titleScreenBG + #318, #3138
  static titleScreenBG + #319, #3138

  ;Line 8
  static titleScreenBG + #320, #3138
  static titleScreenBG + #321, #3138
  static titleScreenBG + #322, #2626
  static titleScreenBG + #323, #2626
  static titleScreenBG + #324, #2626
  static titleScreenBG + #325, #3138
  static titleScreenBG + #326, #3138
  static titleScreenBG + #327, #2626
  static titleScreenBG + #328, #2626
  static titleScreenBG + #329, #2626
  static titleScreenBG + #330, #2626
  static titleScreenBG + #331, #3138
  static titleScreenBG + #332, #2626
  static titleScreenBG + #333, #3138
  static titleScreenBG + #334, #3138
  static titleScreenBG + #335, #2626
  static titleScreenBG + #336, #3138
  static titleScreenBG + #337, #2626
  static titleScreenBG + #338, #3138
  static titleScreenBG + #339, #2626
  static titleScreenBG + #340, #2626
  static titleScreenBG + #341, #3138
  static titleScreenBG + #342, #2626
  static titleScreenBG + #343, #3138
  static titleScreenBG + #344, #2626
  static titleScreenBG + #345, #2626
  static titleScreenBG + #346, #3138
  static titleScreenBG + #347, #2626
  static titleScreenBG + #348, #2626
  static titleScreenBG + #349, #2626
  static titleScreenBG + #350, #3138
  static titleScreenBG + #351, #3138
  static titleScreenBG + #352, #2626
  static titleScreenBG + #353, #2626
  static titleScreenBG + #354, #2626
  static titleScreenBG + #355, #2626
  static titleScreenBG + #356, #3138
  static titleScreenBG + #357, #2626
  static titleScreenBG + #358, #3138
  static titleScreenBG + #359, #3138

  ;Line 9
  static titleScreenBG + #360, #3138
  static titleScreenBG + #361, #3138
  static titleScreenBG + #362, #2626
  static titleScreenBG + #363, #3138
  static titleScreenBG + #364, #3138
  static titleScreenBG + #365, #3138
  static titleScreenBG + #366, #3138
  static titleScreenBG + #367, #2626
  static titleScreenBG + #368, #3138
  static titleScreenBG + #369, #2626
  static titleScreenBG + #370, #3138
  static titleScreenBG + #371, #3138
  static titleScreenBG + #372, #2626
  static titleScreenBG + #373, #3138
  static titleScreenBG + #374, #3138
  static titleScreenBG + #375, #2626
  static titleScreenBG + #376, #3138
  static titleScreenBG + #377, #2626
  static titleScreenBG + #378, #3138
  static titleScreenBG + #379, #3138
  static titleScreenBG + #380, #2626
  static titleScreenBG + #381, #3138
  static titleScreenBG + #382, #2626
  static titleScreenBG + #383, #3138
  static titleScreenBG + #384, #3138
  static titleScreenBG + #385, #2626
  static titleScreenBG + #386, #3138
  static titleScreenBG + #387, #2626
  static titleScreenBG + #388, #3138
  static titleScreenBG + #389, #3138
  static titleScreenBG + #390, #3138
  static titleScreenBG + #391, #3138
  static titleScreenBG + #392, #2626
  static titleScreenBG + #393, #3138
  static titleScreenBG + #394, #2626
  static titleScreenBG + #395, #3138
  static titleScreenBG + #396, #3138
  static titleScreenBG + #397, #3138
  static titleScreenBG + #398, #3138
  static titleScreenBG + #399, #3138

  ;Line 10
  static titleScreenBG + #400, #3138
  static titleScreenBG + #401, #3138
  static titleScreenBG + #402, #2626
  static titleScreenBG + #403, #3138
  static titleScreenBG + #404, #3138
  static titleScreenBG + #405, #3138
  static titleScreenBG + #406, #3138
  static titleScreenBG + #407, #2626
  static titleScreenBG + #408, #3138
  static titleScreenBG + #409, #3138
  static titleScreenBG + #410, #2626
  static titleScreenBG + #411, #3138
  static titleScreenBG + #412, #3138
  static titleScreenBG + #413, #2626
  static titleScreenBG + #414, #2626
  static titleScreenBG + #415, #3138
  static titleScreenBG + #416, #3138
  static titleScreenBG + #417, #2626
  static titleScreenBG + #418, #2626
  static titleScreenBG + #419, #2626
  static titleScreenBG + #420, #2626
  static titleScreenBG + #421, #3138
  static titleScreenBG + #422, #2626
  static titleScreenBG + #423, #2626
  static titleScreenBG + #424, #2626
  static titleScreenBG + #425, #2626
  static titleScreenBG + #426, #3138
  static titleScreenBG + #427, #2626
  static titleScreenBG + #428, #2626
  static titleScreenBG + #429, #2626
  static titleScreenBG + #430, #2626
  static titleScreenBG + #431, #3138
  static titleScreenBG + #432, #2626
  static titleScreenBG + #433, #3138
  static titleScreenBG + #434, #3138
  static titleScreenBG + #435, #2626
  static titleScreenBG + #436, #3138
  static titleScreenBG + #437, #2626
  static titleScreenBG + #438, #3138
  static titleScreenBG + #439, #3138

  ;Line 11
  static titleScreenBG + #440, #3138
  static titleScreenBG + #441, #3138
  static titleScreenBG + #442, #3138
  static titleScreenBG + #443, #3138
  static titleScreenBG + #444, #3138
  static titleScreenBG + #445, #3138
  static titleScreenBG + #446, #3138
  static titleScreenBG + #447, #3138
  static titleScreenBG + #448, #3138
  static titleScreenBG + #449, #3138
  static titleScreenBG + #450, #3138
  static titleScreenBG + #451, #3138
  static titleScreenBG + #452, #3138
  static titleScreenBG + #453, #3138
  static titleScreenBG + #454, #3138
  static titleScreenBG + #455, #3138
  static titleScreenBG + #456, #3138
  static titleScreenBG + #457, #3138
  static titleScreenBG + #458, #3138
  static titleScreenBG + #459, #3138
  static titleScreenBG + #460, #3138
  static titleScreenBG + #461, #3138
  static titleScreenBG + #462, #3138
  static titleScreenBG + #463, #3138
  static titleScreenBG + #464, #3138
  static titleScreenBG + #465, #3138
  static titleScreenBG + #466, #3138
  static titleScreenBG + #467, #3138
  static titleScreenBG + #468, #3138
  static titleScreenBG + #469, #3138
  static titleScreenBG + #470, #3138
  static titleScreenBG + #471, #3138
  static titleScreenBG + #472, #3138
  static titleScreenBG + #473, #3138
  static titleScreenBG + #474, #3138
  static titleScreenBG + #475, #3138
  static titleScreenBG + #476, #3138
  static titleScreenBG + #477, #3138
  static titleScreenBG + #478, #3138
  static titleScreenBG + #479, #3138

  ;Line 12
  static titleScreenBG + #480, #0
  static titleScreenBG + #481, #0
  static titleScreenBG + #482, #0
  static titleScreenBG + #483, #0
  static titleScreenBG + #484, #0
  static titleScreenBG + #485, #0
  static titleScreenBG + #486, #0
  static titleScreenBG + #487, #0
  static titleScreenBG + #488, #0
  static titleScreenBG + #489, #0
  static titleScreenBG + #490, #0
  static titleScreenBG + #491, #0
  static titleScreenBG + #492, #0
  static titleScreenBG + #493, #0
  static titleScreenBG + #494, #0
  static titleScreenBG + #496, #0
  static titleScreenBG + #497, #0
  static titleScreenBG + #498, #0
  static titleScreenBG + #499, #0
  static titleScreenBG + #500, #0
  static titleScreenBG + #501, #0
  static titleScreenBG + #502, #0
  static titleScreenBG + #503, #0
  static titleScreenBG + #504, #0
  static titleScreenBG + #505, #0
  static titleScreenBG + #506, #0
  static titleScreenBG + #507, #0
  static titleScreenBG + #508, #0
  static titleScreenBG + #509, #0
  static titleScreenBG + #510, #0
  static titleScreenBG + #511, #0
  static titleScreenBG + #512, #0
  static titleScreenBG + #513, #0
  static titleScreenBG + #514, #0
  static titleScreenBG + #515, #0
  static titleScreenBG + #516, #0
  static titleScreenBG + #517, #0
  static titleScreenBG + #518, #0
  static titleScreenBG + #519, #0

  ;Line 13
  static titleScreenBG + #520, #0
  static titleScreenBG + #521, #0
  static titleScreenBG + #522, #0
  static titleScreenBG + #523, #0
  static titleScreenBG + #524, #0
  static titleScreenBG + #525, #0
  static titleScreenBG + #526, #0
  static titleScreenBG + #527, #0
  static titleScreenBG + #528, #0
  static titleScreenBG + #529, #0
  static titleScreenBG + #530, #0
  static titleScreenBG + #531, #0
  static titleScreenBG + #532, #0
  static titleScreenBG + #533, #0
  static titleScreenBG + #534, #0
  static titleScreenBG + #535, #0
  static titleScreenBG + #536, #0
  static titleScreenBG + #537, #0
  static titleScreenBG + #538, #0
  static titleScreenBG + #539, #0
  static titleScreenBG + #540, #0
  static titleScreenBG + #541, #0
  static titleScreenBG + #542, #0
  static titleScreenBG + #543, #0
  static titleScreenBG + #544, #0
  static titleScreenBG + #545, #0
  static titleScreenBG + #546, #0
  static titleScreenBG + #547, #0
  static titleScreenBG + #548, #0
  static titleScreenBG + #549, #0
  static titleScreenBG + #550, #0
  static titleScreenBG + #551, #0
  static titleScreenBG + #552, #0
  static titleScreenBG + #553, #0
  static titleScreenBG + #554, #0
  static titleScreenBG + #555, #0
  static titleScreenBG + #556, #0
  static titleScreenBG + #557, #0
  static titleScreenBG + #558, #0
  static titleScreenBG + #559, #0

  ;Line 14
  static titleScreenBG + #560, #0
  static titleScreenBG + #561, #0
  static titleScreenBG + #562, #0
  static titleScreenBG + #563, #0
  static titleScreenBG + #564, #0
  static titleScreenBG + #565, #0
  static titleScreenBG + #566, #0
  static titleScreenBG + #567, #0
  static titleScreenBG + #568, #0
  static titleScreenBG + #569, #0
  static titleScreenBG + #570, #0
  static titleScreenBG + #571, #0
  static titleScreenBG + #572, #0
  static titleScreenBG + #573, #0
  static titleScreenBG + #574, #0
  static titleScreenBG + #575, #0
  static titleScreenBG + #576, #0
  static titleScreenBG + #577, #0
  static titleScreenBG + #578, #0
  static titleScreenBG + #579, #0
  static titleScreenBG + #580, #0
  static titleScreenBG + #581, #0
  static titleScreenBG + #582, #0
  static titleScreenBG + #583, #0
  static titleScreenBG + #584, #0
  static titleScreenBG + #585, #0
  static titleScreenBG + #586, #0
  static titleScreenBG + #587, #0
  static titleScreenBG + #588, #0
  static titleScreenBG + #589, #0
  static titleScreenBG + #590, #0
  static titleScreenBG + #591, #0
  static titleScreenBG + #592, #0
  static titleScreenBG + #593, #0
  static titleScreenBG + #594, #0
  static titleScreenBG + #595, #0
  static titleScreenBG + #596, #0
  static titleScreenBG + #597, #0
  static titleScreenBG + #598, #0
  static titleScreenBG + #599, #0

  ;Line 15
  static titleScreenBG + #600, #0
  static titleScreenBG + #601, #0
  static titleScreenBG + #602, #0
  static titleScreenBG + #603, #0
  static titleScreenBG + #604, #0
  static titleScreenBG + #605, #0
  static titleScreenBG + #606, #0
  static titleScreenBG + #607, #0
  static titleScreenBG + #608, #0
  static titleScreenBG + #609, #0
  static titleScreenBG + #610, #0
  static titleScreenBG + #611, #0
  static titleScreenBG + #612, #0
  static titleScreenBG + #613, #0
  static titleScreenBG + #614, #0
  static titleScreenBG + #615, #0
  static titleScreenBG + #616, #0
  static titleScreenBG + #617, #0
  static titleScreenBG + #618, #0
  static titleScreenBG + #619, #0
  static titleScreenBG + #620, #0
  static titleScreenBG + #621, #0
  static titleScreenBG + #622, #0
  static titleScreenBG + #623, #0
  static titleScreenBG + #624, #0
  static titleScreenBG + #625, #0
  static titleScreenBG + #626, #0
  static titleScreenBG + #627, #0
  static titleScreenBG + #628, #0
  static titleScreenBG + #629, #0
  static titleScreenBG + #630, #0
  static titleScreenBG + #631, #0
  static titleScreenBG + #632, #0
  static titleScreenBG + #633, #0
  static titleScreenBG + #634, #0
  static titleScreenBG + #635, #0
  static titleScreenBG + #636, #0
  static titleScreenBG + #637, #0
  static titleScreenBG + #638, #0
  static titleScreenBG + #639, #0

  ;Line 16
  static titleScreenBG + #640, #0
  static titleScreenBG + #641, #0
  static titleScreenBG + #642, #0
  static titleScreenBG + #643, #0
  static titleScreenBG + #644, #0
  static titleScreenBG + #645, #0
  static titleScreenBG + #646, #0
  static titleScreenBG + #647, #0
  static titleScreenBG + #648, #0
  static titleScreenBG + #649, #0
  static titleScreenBG + #650, #0
  static titleScreenBG + #651, #0
  static titleScreenBG + #652, #0
  static titleScreenBG + #653, #0
  static titleScreenBG + #654, #0
  static titleScreenBG + #655, #0
  static titleScreenBG + #656, #0
  static titleScreenBG + #657, #0
  static titleScreenBG + #658, #0
  static titleScreenBG + #659, #0
  static titleScreenBG + #660, #0
  static titleScreenBG + #661, #0
  static titleScreenBG + #662, #0
  static titleScreenBG + #663, #0
  static titleScreenBG + #664, #0
  static titleScreenBG + #665, #0
  static titleScreenBG + #666, #0
  static titleScreenBG + #667, #0
  static titleScreenBG + #668, #0
  static titleScreenBG + #669, #0
  static titleScreenBG + #670, #0
  static titleScreenBG + #671, #0
  static titleScreenBG + #672, #0
  static titleScreenBG + #673, #0
  static titleScreenBG + #674, #0
  static titleScreenBG + #675, #0
  static titleScreenBG + #676, #0
  static titleScreenBG + #677, #0
  static titleScreenBG + #678, #0
  static titleScreenBG + #679, #0

  ;Line 17
  static titleScreenBG + #680, #0
  static titleScreenBG + #681, #0
  static titleScreenBG + #682, #0
  static titleScreenBG + #683, #0
  static titleScreenBG + #684, #0
  static titleScreenBG + #685, #0
  static titleScreenBG + #686, #0
  static titleScreenBG + #687, #0
  static titleScreenBG + #688, #0
  static titleScreenBG + #689, #0
  static titleScreenBG + #690, #0
  static titleScreenBG + #691, #0
  static titleScreenBG + #692, #0
  static titleScreenBG + #693, #0
  static titleScreenBG + #694, #0
  static titleScreenBG + #695, #0
  static titleScreenBG + #696, #0
  static titleScreenBG + #697, #0
  static titleScreenBG + #698, #0
  static titleScreenBG + #699, #0
  static titleScreenBG + #700, #0
  static titleScreenBG + #701, #0
  static titleScreenBG + #702, #0
  static titleScreenBG + #703, #0
  static titleScreenBG + #704, #0
  static titleScreenBG + #705, #0
  static titleScreenBG + #706, #0
  static titleScreenBG + #707, #0
  static titleScreenBG + #708, #0
  static titleScreenBG + #709, #0
  static titleScreenBG + #710, #0
  static titleScreenBG + #711, #0
  static titleScreenBG + #712, #0
  static titleScreenBG + #713, #0
  static titleScreenBG + #714, #0
  static titleScreenBG + #715, #0
  static titleScreenBG + #716, #0
  static titleScreenBG + #717, #0
  static titleScreenBG + #718, #0
  static titleScreenBG + #719, #0

  ;Line 18
  static titleScreenBG + #720, #0
  static titleScreenBG + #721, #0
  static titleScreenBG + #722, #0
  static titleScreenBG + #723, #0
  static titleScreenBG + #724, #0
  static titleScreenBG + #725, #0
  static titleScreenBG + #726, #0
  static titleScreenBG + #727, #0
  static titleScreenBG + #728, #0
  static titleScreenBG + #729, #0
  static titleScreenBG + #730, #0
  static titleScreenBG + #731, #0
  static titleScreenBG + #732, #0
  static titleScreenBG + #733, #0
  static titleScreenBG + #734, #0
  static titleScreenBG + #735, #0
  static titleScreenBG + #736, #0
  static titleScreenBG + #737, #0
  static titleScreenBG + #738, #0
  static titleScreenBG + #739, #0
  static titleScreenBG + #740, #0
  static titleScreenBG + #741, #0
  static titleScreenBG + #742, #0
  static titleScreenBG + #743, #0
  static titleScreenBG + #744, #0
  static titleScreenBG + #745, #0
  static titleScreenBG + #746, #0
  static titleScreenBG + #747, #0
  static titleScreenBG + #748, #0
  static titleScreenBG + #749, #0
  static titleScreenBG + #750, #0
  static titleScreenBG + #751, #0
  static titleScreenBG + #752, #0
  static titleScreenBG + #753, #0
  static titleScreenBG + #754, #0
  static titleScreenBG + #755, #0
  static titleScreenBG + #756, #0
  static titleScreenBG + #757, #0
  static titleScreenBG + #758, #0
  static titleScreenBG + #759, #0

  ;Line 19
  static titleScreenBG + #760, #0
  static titleScreenBG + #761, #0
  static titleScreenBG + #762, #0
  static titleScreenBG + #763, #0
  static titleScreenBG + #764, #0
  static titleScreenBG + #765, #0
  static titleScreenBG + #766, #0
  static titleScreenBG + #767, #0
  static titleScreenBG + #768, #0
  static titleScreenBG + #769, #0
  static titleScreenBG + #770, #0
  static titleScreenBG + #771, #0
  static titleScreenBG + #772, #0
  static titleScreenBG + #773, #0
  static titleScreenBG + #774, #0
  static titleScreenBG + #775, #0
  static titleScreenBG + #776, #0
  static titleScreenBG + #777, #0
  static titleScreenBG + #778, #0
  static titleScreenBG + #779, #0
  static titleScreenBG + #780, #0
  static titleScreenBG + #781, #0
  static titleScreenBG + #782, #0
  static titleScreenBG + #783, #0
  static titleScreenBG + #784, #0
  static titleScreenBG + #785, #0
  static titleScreenBG + #786, #0
  static titleScreenBG + #787, #0
  static titleScreenBG + #788, #0
  static titleScreenBG + #789, #0
  static titleScreenBG + #790, #0
  static titleScreenBG + #791, #0
  static titleScreenBG + #792, #0
  static titleScreenBG + #793, #0
  static titleScreenBG + #794, #0
  static titleScreenBG + #795, #0
  static titleScreenBG + #796, #0
  static titleScreenBG + #797, #0
  static titleScreenBG + #798, #0
  static titleScreenBG + #799, #0

  ;Line 20
  static titleScreenBG + #800, #0
  static titleScreenBG + #801, #0
  static titleScreenBG + #802, #0
  static titleScreenBG + #803, #0
  static titleScreenBG + #804, #0
  static titleScreenBG + #805, #0
  static titleScreenBG + #806, #0
  static titleScreenBG + #807, #0
  static titleScreenBG + #808, #0
  static titleScreenBG + #809, #0
  static titleScreenBG + #810, #0
  static titleScreenBG + #811, #0
  static titleScreenBG + #812, #0
  static titleScreenBG + #813, #0
  static titleScreenBG + #814, #0
  static titleScreenBG + #815, #0
  static titleScreenBG + #816, #0
  static titleScreenBG + #817, #0
  static titleScreenBG + #818, #0
  static titleScreenBG + #819, #0
  static titleScreenBG + #820, #0
  static titleScreenBG + #821, #0
  static titleScreenBG + #822, #0
  static titleScreenBG + #823, #0
  static titleScreenBG + #824, #0
  static titleScreenBG + #825, #0
  static titleScreenBG + #826, #0
  static titleScreenBG + #827, #0
  static titleScreenBG + #828, #0
  static titleScreenBG + #829, #0
  static titleScreenBG + #830, #0
  static titleScreenBG + #831, #0
  static titleScreenBG + #832, #0
  static titleScreenBG + #833, #0
  static titleScreenBG + #834, #0
  static titleScreenBG + #835, #0
  static titleScreenBG + #836, #0
  static titleScreenBG + #837, #0
  static titleScreenBG + #838, #0
  static titleScreenBG + #839, #0

  ;Line 21
  static titleScreenBG + #840, #0
  static titleScreenBG + #841, #0
  static titleScreenBG + #842, #0
  static titleScreenBG + #843, #0
  static titleScreenBG + #844, #0
  static titleScreenBG + #845, #0
  static titleScreenBG + #846, #0
  static titleScreenBG + #847, #0
  static titleScreenBG + #848, #0
  static titleScreenBG + #849, #0
  static titleScreenBG + #850, #0
  static titleScreenBG + #851, #0
  static titleScreenBG + #852, #0
  static titleScreenBG + #853, #0
  static titleScreenBG + #854, #0
  static titleScreenBG + #855, #0
  static titleScreenBG + #856, #0
  static titleScreenBG + #857, #0
  static titleScreenBG + #858, #0
  static titleScreenBG + #859, #0
  static titleScreenBG + #860, #0
  static titleScreenBG + #861, #0
  static titleScreenBG + #862, #0
  static titleScreenBG + #863, #0
  static titleScreenBG + #864, #0
  static titleScreenBG + #865, #0
  static titleScreenBG + #866, #0
  static titleScreenBG + #867, #0
  static titleScreenBG + #868, #0
  static titleScreenBG + #869, #0
  static titleScreenBG + #870, #0
  static titleScreenBG + #871, #0
  static titleScreenBG + #872, #0
  static titleScreenBG + #873, #0
  static titleScreenBG + #874, #0
  static titleScreenBG + #875, #0
  static titleScreenBG + #876, #0
  static titleScreenBG + #877, #0
  static titleScreenBG + #878, #0
  static titleScreenBG + #879, #0

  ;Line 22
  static titleScreenBG + #880, #0
  static titleScreenBG + #881, #0
  static titleScreenBG + #882, #0
  static titleScreenBG + #883, #0
  static titleScreenBG + #884, #0
  static titleScreenBG + #885, #0
  static titleScreenBG + #886, #0
  static titleScreenBG + #887, #0
  static titleScreenBG + #888, #0
  static titleScreenBG + #889, #0
  static titleScreenBG + #890, #0
  static titleScreenBG + #891, #0
  static titleScreenBG + #892, #0
  static titleScreenBG + #893, #0
  static titleScreenBG + #894, #0
  static titleScreenBG + #895, #0
  static titleScreenBG + #896, #0
  static titleScreenBG + #897, #0
  static titleScreenBG + #898, #0
  static titleScreenBG + #899, #0
  static titleScreenBG + #900, #0
  static titleScreenBG + #901, #0
  static titleScreenBG + #902, #0
  static titleScreenBG + #903, #0
  static titleScreenBG + #904, #0
  static titleScreenBG + #905, #0
  static titleScreenBG + #906, #0
  static titleScreenBG + #907, #0
  static titleScreenBG + #908, #0
  static titleScreenBG + #909, #0
  static titleScreenBG + #910, #0
  static titleScreenBG + #911, #0
  static titleScreenBG + #912, #0
  static titleScreenBG + #913, #0
  static titleScreenBG + #914, #0
  static titleScreenBG + #915, #0
  static titleScreenBG + #916, #0
  static titleScreenBG + #917, #0
  static titleScreenBG + #918, #0
  static titleScreenBG + #919, #0

  ;Line 23
  static titleScreenBG + #920, #0
  static titleScreenBG + #921, #0
  static titleScreenBG + #922, #0
  static titleScreenBG + #923, #0
  static titleScreenBG + #924, #0
  static titleScreenBG + #925, #0
  static titleScreenBG + #926, #0
  static titleScreenBG + #927, #0
  static titleScreenBG + #928, #0
  static titleScreenBG + #929, #0
  static titleScreenBG + #930, #0
  static titleScreenBG + #931, #0
  static titleScreenBG + #932, #0
  static titleScreenBG + #933, #0
  static titleScreenBG + #934, #0
  static titleScreenBG + #935, #0
  static titleScreenBG + #936, #0
  static titleScreenBG + #937, #0
  static titleScreenBG + #938, #0
  static titleScreenBG + #939, #0
  static titleScreenBG + #940, #0
  static titleScreenBG + #941, #0
  static titleScreenBG + #942, #0
  static titleScreenBG + #943, #0
  static titleScreenBG + #944, #0
  static titleScreenBG + #945, #0
  static titleScreenBG + #946, #0
  static titleScreenBG + #947, #0
  static titleScreenBG + #948, #0
  static titleScreenBG + #949, #0
  static titleScreenBG + #950, #0
  static titleScreenBG + #951, #0
  static titleScreenBG + #952, #0
  static titleScreenBG + #953, #0
  static titleScreenBG + #954, #0
  static titleScreenBG + #955, #0
  static titleScreenBG + #956, #0
  static titleScreenBG + #957, #0
  static titleScreenBG + #958, #0
  static titleScreenBG + #959, #0

  ;Line 24
  static titleScreenBG + #960, #0
  static titleScreenBG + #961, #0
  static titleScreenBG + #962, #0
  static titleScreenBG + #963, #0
  static titleScreenBG + #964, #0
  static titleScreenBG + #965, #0
  static titleScreenBG + #966, #0
  static titleScreenBG + #967, #0
  static titleScreenBG + #968, #0
  static titleScreenBG + #969, #0
  static titleScreenBG + #970, #0
  static titleScreenBG + #971, #0
  static titleScreenBG + #972, #0
  static titleScreenBG + #973, #0
  static titleScreenBG + #974, #0
  static titleScreenBG + #975, #0
  static titleScreenBG + #976, #0
  static titleScreenBG + #977, #0
  static titleScreenBG + #978, #0
  static titleScreenBG + #979, #0
  static titleScreenBG + #980, #0
  static titleScreenBG + #981, #0
  static titleScreenBG + #982, #0
  static titleScreenBG + #983, #0
  static titleScreenBG + #984, #0
  static titleScreenBG + #985, #0
  static titleScreenBG + #986, #0
  static titleScreenBG + #987, #0
  static titleScreenBG + #988, #0
  static titleScreenBG + #989, #0
  static titleScreenBG + #990, #0
  static titleScreenBG + #991, #0
  static titleScreenBG + #992, #0
  static titleScreenBG + #993, #0
  static titleScreenBG + #994, #0
  static titleScreenBG + #995, #0
  static titleScreenBG + #996, #0
  static titleScreenBG + #997, #0
  static titleScreenBG + #998, #0
  static titleScreenBG + #999, #0

  ;Line 25
  static titleScreenBG + #1000, #0
  static titleScreenBG + #1001, #0
  static titleScreenBG + #1002, #0
  static titleScreenBG + #1003, #0
  static titleScreenBG + #1004, #0
  static titleScreenBG + #1005, #0
  static titleScreenBG + #1006, #0
  static titleScreenBG + #1007, #0
  static titleScreenBG + #1008, #0
  static titleScreenBG + #1009, #0
  static titleScreenBG + #1010, #0
  static titleScreenBG + #1011, #0
  static titleScreenBG + #1012, #0
  static titleScreenBG + #1013, #0
  static titleScreenBG + #1014, #0
  static titleScreenBG + #1015, #0
  static titleScreenBG + #1016, #0
  static titleScreenBG + #1017, #0
  static titleScreenBG + #1018, #0
  static titleScreenBG + #1019, #0
  static titleScreenBG + #1020, #0
  static titleScreenBG + #1021, #0
  static titleScreenBG + #1022, #0
  static titleScreenBG + #1023, #0
  static titleScreenBG + #1024, #0
  static titleScreenBG + #1025, #0
  static titleScreenBG + #1026, #0
  static titleScreenBG + #1027, #0
  static titleScreenBG + #1028, #0
  static titleScreenBG + #1029, #0
  static titleScreenBG + #1030, #0
  static titleScreenBG + #1031, #0
  static titleScreenBG + #1032, #0
  static titleScreenBG + #1033, #0
  static titleScreenBG + #1034, #0
  static titleScreenBG + #1035, #0
  static titleScreenBG + #1036, #0
  static titleScreenBG + #1037, #0
  static titleScreenBG + #1038, #0
  static titleScreenBG + #1039, #0

  ;Line 26
  static titleScreenBG + #1040, #0
  static titleScreenBG + #1041, #0
  static titleScreenBG + #1042, #0
  static titleScreenBG + #1043, #0
  static titleScreenBG + #1044, #0
  static titleScreenBG + #1045, #0
  static titleScreenBG + #1046, #0
  static titleScreenBG + #1047, #0
  static titleScreenBG + #1048, #0
  static titleScreenBG + #1049, #0
  static titleScreenBG + #1050, #80
  static titleScreenBG + #1051, #82
  static titleScreenBG + #1052, #69
  static titleScreenBG + #1053, #83
  static titleScreenBG + #1054, #83
  static titleScreenBG + #1055, #32
  static titleScreenBG + #1056, #2885
  static titleScreenBG + #1057, #2894
  static titleScreenBG + #1058, #2900
  static titleScreenBG + #1059, #2885
  static titleScreenBG + #1060, #2898
  static titleScreenBG + #1061, #32
  static titleScreenBG + #1062, #84
  static titleScreenBG + #1063, #79
  static titleScreenBG + #1064, #32
  static titleScreenBG + #1065, #80
  static titleScreenBG + #1066, #76
  static titleScreenBG + #1067, #65
  static titleScreenBG + #1068, #89
  static titleScreenBG + #1069, #0
  static titleScreenBG + #1070, #0
  static titleScreenBG + #1071, #0
  static titleScreenBG + #1072, #0
  static titleScreenBG + #1073, #0
  static titleScreenBG + #1074, #0
  static titleScreenBG + #1075, #0
  static titleScreenBG + #1076, #0
  static titleScreenBG + #1077, #0
  static titleScreenBG + #1078, #0
  static titleScreenBG + #1079, #0

  ;Line 27
  static titleScreenBG + #1080, #0
  static titleScreenBG + #1081, #0
  static titleScreenBG + #1082, #0
  static titleScreenBG + #1083, #0
  static titleScreenBG + #1084, #0
  static titleScreenBG + #1085, #0
  static titleScreenBG + #1086, #0
  static titleScreenBG + #1087, #0
  static titleScreenBG + #1088, #0
  static titleScreenBG + #1089, #0
  static titleScreenBG + #1090, #0
  static titleScreenBG + #1091, #0
  static titleScreenBG + #1092, #0
  static titleScreenBG + #1093, #0
  static titleScreenBG + #1094, #0
  static titleScreenBG + #1095, #0
  static titleScreenBG + #1096, #0
  static titleScreenBG + #1097, #0
  static titleScreenBG + #1098, #0
  static titleScreenBG + #1099, #0
  static titleScreenBG + #1100, #0
  static titleScreenBG + #1101, #0
  static titleScreenBG + #1102, #0
  static titleScreenBG + #1103, #0
  static titleScreenBG + #1104, #0
  static titleScreenBG + #1105, #0
  static titleScreenBG + #1106, #0
  static titleScreenBG + #1107, #0
  static titleScreenBG + #1108, #0
  static titleScreenBG + #1109, #0
  static titleScreenBG + #1110, #0
  static titleScreenBG + #1111, #0
  static titleScreenBG + #1112, #0
  static titleScreenBG + #1113, #0
  static titleScreenBG + #1114, #0
  static titleScreenBG + #1115, #0
  static titleScreenBG + #1116, #0
  static titleScreenBG + #1117, #0
  static titleScreenBG + #1118, #0
  static titleScreenBG + #1119, #0

  ;Line 28
  static titleScreenBG + #1120, #0
  static titleScreenBG + #1121, #0
  static titleScreenBG + #1122, #0
  static titleScreenBG + #1123, #0
  static titleScreenBG + #1124, #0
  static titleScreenBG + #1125, #0
  static titleScreenBG + #1126, #0
  static titleScreenBG + #1127, #0
  static titleScreenBG + #1128, #0
  static titleScreenBG + #1129, #0
  static titleScreenBG + #1130, #0
  static titleScreenBG + #1131, #0
  static titleScreenBG + #1132, #0
  static titleScreenBG + #1133, #0
  static titleScreenBG + #1134, #0
  static titleScreenBG + #1135, #0
  static titleScreenBG + #1136, #0
  static titleScreenBG + #1137, #0
  static titleScreenBG + #1138, #0
  static titleScreenBG + #1139, #0
  static titleScreenBG + #1140, #0
  static titleScreenBG + #1141, #0
  static titleScreenBG + #1142, #0
  static titleScreenBG + #1143, #0
  static titleScreenBG + #1144, #0
  static titleScreenBG + #1145, #0
  static titleScreenBG + #1146, #0
  static titleScreenBG + #1147, #0
  static titleScreenBG + #1148, #0
  static titleScreenBG + #1149, #0
  static titleScreenBG + #1150, #0
  static titleScreenBG + #1151, #0
  static titleScreenBG + #1152, #0
  static titleScreenBG + #1153, #0
  static titleScreenBG + #1154, #0
  static titleScreenBG + #1155, #0
  static titleScreenBG + #1156, #0
  static titleScreenBG + #1157, #0
  static titleScreenBG + #1158, #0
  static titleScreenBG + #1159, #0

  ;Line 29
  static titleScreenBG + #1160, #0
  static titleScreenBG + #1161, #0
  static titleScreenBG + #1162, #0
  static titleScreenBG + #1163, #0
  static titleScreenBG + #1164, #0
  static titleScreenBG + #1165, #0
  static titleScreenBG + #1166, #0
  static titleScreenBG + #1167, #0
  static titleScreenBG + #1168, #0
  static titleScreenBG + #1169, #0
  static titleScreenBG + #1170, #0
  static titleScreenBG + #1171, #0
  static titleScreenBG + #1172, #0
  static titleScreenBG + #1173, #0
  static titleScreenBG + #1174, #0
  static titleScreenBG + #1175, #0
  static titleScreenBG + #1176, #0
  static titleScreenBG + #1177, #0
  static titleScreenBG + #1178, #0
  static titleScreenBG + #1179, #0
  static titleScreenBG + #1180, #0
  static titleScreenBG + #1181, #0
  static titleScreenBG + #1182, #0
  static titleScreenBG + #1183, #0
  static titleScreenBG + #1184, #0
  static titleScreenBG + #1185, #0
  static titleScreenBG + #1186, #0
  static titleScreenBG + #1187, #0
  static titleScreenBG + #1188, #0
  static titleScreenBG + #1189, #0
  static titleScreenBG + #1190, #0
  static titleScreenBG + #1191, #0
  static titleScreenBG + #1192, #0
  static titleScreenBG + #1193, #0
  static titleScreenBG + #1194, #0
  static titleScreenBG + #1195, #0
  static titleScreenBG + #1196, #0
  static titleScreenBG + #1197, #0
  static titleScreenBG + #1198, #0
  static titleScreenBG + #1199, #0


; Code segment

saveRegisters:
    ; Boilerplate code to save the content of the registers into the stack for later retrieval, in so doing allowing function calls to be nested. This function takes no arguments and returns nothing.
    push R1
    push R2
    push R3
    push R4
    push R5
    push R6
    rts

loadRegisters:
    ; Retrieves from the stack the stored register contents. This function complements the functionality of the previous "saveRegisters" function, takes no arguments and returns nothing as well.

    pop R6
    pop R5
    pop R4
    pop R3
    pop R2
    pop R1
    rts


printBackground:
    ; Prints the contents of a 30x40 matrix of characters into the screen.
    ; Arg0 = integer representing the memory location of the start of the matrix

    call saveRegisters

    load R1, Arg0
    load R2, SCREENSIZE

    printBackgroundLoop:
        cmp R2, R0
        jeq printBackgroundEnd
        add R3, R1, R2 ; Add offset to pointer to start of the matrix
        loadi R3 ,R3   ; Load character at memory location
        outchar R3, R2 ; Print character R3 at screen position R1
        dec R2         ; Increment offset
        jmp printBackgroundLoop
    printBackgroundEnd:
        call loadRegisters
        rts

delay:
    ; A delay function set to take approximately 3 seconds. When the user presses ENTER the delay is interrupted.
    ; Arguments: None
    ; Returns: 0, if ENTER was not pressed, 1 otherwise

    call saveRegisters
    load R1, INTERVAL_C
    load R3, #'\r'
    store Arg0, R0

    delay_C:
        load R2, INTERVAL_D
        delay_D:
            inchar R4
            cmp R3, R4
            jeq delay_continue
            loadn R4, #1
            store Arg0, R4
            jmp delay_end
    delay_continue:
        dec R2
        jnz delay_D
        dec R1
        jnz delay_C
    delay_end:
    call loadRegisters
    rts

takeInput:
    ; A function that gives the player an interval to make an input. The last input made during this interval is returned by the end of the function. The duration of the interval is given solely by the product of INTERVAL_A * INTERVAL_B * ClockSpeed.
    ; Arguments: None
    ; Returns:
    ; Arg0 = 255, if no key was pressed, ASCII value of the key pressed otherwise

    call saveRegisters
    load R1,INTERVAL_A
    loadn R3, #255 ; Default value returned by inchar for when no key is pressed
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
    call loadRegisters
    rts

printInt:
    ; Prints a right-aligned integer value on screen.
    ; Arguments:
    ; Arg0 = integer value to be printed
    ; Arg1 = right-aligned position in the screen from where to start printing
    ; Arg2 = color value to print number
    ; Returns: Nothing.

    call saveRegisters
    load R1, Arg0
    load R2, Arg1
    load R3, Arg2
    loadn R4, #10  ; load the value 10 to apply the mod operation
    loadn R5, #'0' ; load index value of the character 0

    printIntLoop:
        cmp R1, R0
        jeq printIntEnd
        mod R6, R1, R4 ; get decimal value
        add R6, R5, R6 ; apply offset to character map
        add R6, R3     ; apply color value
        outchar R6, R3
        dec R2
        div R1, R4

    printIntEnd:
        call loadRegisters
        rst


printString:
    ; Prints a string of text. Printing can be animated and interrupted by the user.
    ; Arguments:
    ; Arg0 = pointer to the string to be printed
    ; Arg1 = index of the position at the screen where to start printing
    ; Arg2 = color to be assigned to printed characters
    ; Arg3 = Whether printing is animated and can be interrupted by the user's input
    ; Returns:
    ; Arg0 = Length of the string when fully printed. If printing was interrupted by the user, the value returned shall be 0.

    call saveRegisters

    load R1, Arg0
    load R2, Arg1
    load R3, Arg2
    loadn R4, #0                  ; string length counter
    loadn R5, #'\r'               ; ENTER
    load R6, Arg3                 ; general purpose register

    cmp R4, R0
    jne printStringInterruptable

    printStrUninterruptable:
        loadi R6, R1              ; retrieve character to be printed
        cmp R6, R0                ; check if it is the terminator character
        jeq printStrUninterrupted ; Escape if it is
        add R6, R3
        outchar R6, R2
        inc R1
        inc R2
        inc R4
        jmp printStrUninterruptable

    printStrInterruptable:
        loadi R6, R1              ; retrieve character to be printed
        cmp R6, R0                ; check if it is the terminator character
        jeq printStrUninterrupted ; Escape if it is
        add R6, R3
        outchar R6, R2
        inc R1
        inc R2
        inc R4
        call takeInput
        load R6, Arg0
        cmp R6, R5
        jeq printStrInterrupted
        jmp printStrInterruptable

    printStrUninterrupted:
        store Arg0, R4
        jmp printStrEnd

    printStrInterrupted:
        store Arg0, R0

    printStrEnd:
        call loadRegisters
        rts


printInstructions:
    ; Prints a centered text box containing instructions on how to play or score and returns whether the user has interrupted printing or not.
    ; Arguments:
    ; Arg0 = address of the vector of strings to be printed
    ; Arg1 = number of lines to be printed
    ; Returns:
    ; Arg0 = 0 if printing was not interrupted, otherwise 1.

    call saveRegisters

    ; Initialize
    load R1, Arg0   ; Store address of the string to be printed
    load R2, Arg1   ; Store the number of lines left to be printed
    loadn R3, #614  ; store line start
    loadn R4, #80   ; store line offset value
    loadn R5, white ; General purpose temporary register

    ; Print Header
    store Arg1, R3
    store Arg2, R5
    loadn R5, #1
    store Arg3, R5
    call printStr
    load R5, Arg0
    cmp R5, R0
    jne printInstructionsEnd
    dec R2

    ; Set initial cursor position for text block
    loadn R3, #693
    store Arg1, R3

    printInstructionsBody:
        cmp R2, R0
        jne printInstructionsCompleted

        ; Offset string pointer enough that the next string is reached.
        add R1, R5
        inc R1
        store Arg0, R1

        ; Print with emphasis (red)
        load R5, red
        store Arg2, R5
        call printStr
        load R5, Arg0
        cmp R5, R0
        jne printInstructionsEnd

        ; Offset string pointer enough that the next string is reached.
        add R1, R5
        inc R1
        store Arg0, R1

        ; Offset the pointer to screen position as well
        add R5, R3
        inc R5
        store Arg1, R5

        ; Print description (yellow)
        load R5, yellow
        store Arg2, R5
        call printStr
        load R5, Arg0
        cmp R5, R0
        jne printInstructionsEnd

        ; Move towards printing next line and decrement line count
        add R3, R4
        dec R2
        jmp printInstructionsBody

    printInstructionsCompleted:
        loadn R5, #0

    printInstructionsEnd:
        store Arg0, R5
        call loadRegisters
        rts

titleScreen:
    ; Prints the title screen, displaying game instructions.
    ; Arguments:
    ; Arg0 = Address of the background map
    ; Arg1 = current Highscore

    call saveRegisters
    call printBackground

    ; Print Highscore
    load R1, Arg1
    store Arg0, R1
    loadn R1, #25
    store Arg1, R1
    loadn R1, red
    store Arg2, R1
    call printInt

    loadn R1 #5        ; Set number of lines of instructions to be printed
    store Arg1, R1
    loadn R1 #0        ; Variable to toggle between different sets of instructions


    instructionsLoop:
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
        jnz endInstructionsLoop
        call delay
        load R2, Arg0
        cmp R2, R0
        jnz endInstructionsLoop
        not R3
        jmp instructionsLoop
    endInstructionsLoop:
        call loadRegisters
        rst


main:
    loadn R0, #0 ; Set R0 to 0, this register should hold this value always for comparison purposes
    mv R1, R0    ; Initialize highscore
    gameLoop:
        store Arg1, R1
        loadn R1, #titleScreenBG
        store Arg0, R1
        call titleScreen
    halt
