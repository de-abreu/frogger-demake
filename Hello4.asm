; Hello World - Escreve mensagem armazenada na memoria na tela


; ------- TABELA DE CORES -------
; adicione ao caracter para Selecionar a cor correspondente

; 0 branco							0000 0000
; 256 marrom						0001 0000
; 512 verde							0010 0000
; 768 oliva							0011 0000
; 1024 azul marinho					0100 0000
; 1280 roxo							0101 0000
; 1536 teal							0110 0000
; 1792 prata						0111 0000
; 2048 cinza						1000 0000
; 2304 vermelho						1001 0000
; 2560 lima							1010 0000
; 2816 amarelo						1011 0000
; 3072 azul							1100 0000
; 3328 rosa							1101 0000
; 3584 aqua							1110 0000
; 3840 preto						1111 0000


jmp main

; NOTE: Data segment

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

white : var #1
    static white, #0
brown : var #1
    static brown, #256
grass : var #1
    static grass, #512
musk : var #1
    static musk, #768
teal : var #1
    static teal, #1536
gray : var #1
    static gray, #1792
red : var #1
    static red, #2304
yellow : var #1
    static yellow, #2816
blue : var #1
    static blue, #3072
pink : var #1
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

titleBackground : var #1200
  ;Linha 0
  static titleBackground + #0    , #0
  static titleBackground + #1    , #0
  static titleBackground + #2    , #0
  static titleBackground + #3    , #0
  static titleBackground + #4    , #0
  static titleBackground + #5    , #0
  static titleBackground + #6    , #0
  static titleBackground + #7    , #0
  static titleBackground + #8    , #0
  static titleBackground + #9    , #0
  static titleBackground + #10   , #0
  static titleBackground + #11   , #0
  static titleBackground + #12   , #0
  static titleBackground + #13   , #72
  static titleBackground + #14   , #73
  static titleBackground + #15   , #83
  static titleBackground + #16   , #67
  static titleBackground + #17   , #79
  static titleBackground + #18   , #82
  static titleBackground + #19   , #69
  static titleBackground + #20   , #0
  static titleBackground + #21   , #0
  static titleBackground + #22   , #0
  static titleBackground + #23   , #0
  static titleBackground + #24   , #0
  static titleBackground + #25   , #0
  static titleBackground + #26   , #0
  static titleBackground + #27   , #0
  static titleBackground + #28   , #0
  static titleBackground + #29   , #0
  static titleBackground + #30   , #0
  static titleBackground + #31   , #0
  static titleBackground + #32   , #0
  static titleBackground + #33   , #0
  static titleBackground + #34   , #0
  static titleBackground + #35   , #0
  static titleBackground + #36   , #0
  static titleBackground + #37   , #0
  static titleBackground + #38   , #0
  static titleBackground + #39   , #0

  ;Linha 1
  static titleBackground + #40   , #0
  static titleBackground + #41   , #0
  static titleBackground + #42   , #0
  static titleBackground + #43   , #0
  static titleBackground + #44   , #0
  static titleBackground + #45   , #0
  static titleBackground + #46   , #0
  static titleBackground + #47   , #0
  static titleBackground + #48   , #0
  static titleBackground + #49   , #0
  static titleBackground + #50   , #0
  static titleBackground + #51   , #0
  static titleBackground + #52   , #0
  static titleBackground + #53   , #0
  static titleBackground + #54   , #0
  static titleBackground + #55   , #0
  static titleBackground + #56   , #0
  static titleBackground + #57   , #0
  static titleBackground + #58   , #0
  static titleBackground + #59   , #0
  static titleBackground + #60   , #0
  static titleBackground + #61   , #0
  static titleBackground + #62   , #0
  static titleBackground + #63   , #0
  static titleBackground + #64   , #0
  static titleBackground + #65   , #0
  static titleBackground + #66   , #0
  static titleBackground + #67   , #0
  static titleBackground + #68   , #0
  static titleBackground + #69   , #0
  static titleBackground + #70   , #0
  static titleBackground + #71   , #0
  static titleBackground + #72   , #0
  static titleBackground + #73   , #0
  static titleBackground + #74   , #0
  static titleBackground + #75   , #0
  static titleBackground + #76   , #0
  static titleBackground + #77   , #0
  static titleBackground + #78   , #0
  static titleBackground + #79   , #0

  ;Linha 2
  static titleBackground + #80   , #3138
  static titleBackground + #81   , #3138
  static titleBackground + #82   , #3138
  static titleBackground + #83   , #3138
  static titleBackground + #84   , #3138
  static titleBackground + #85   , #3138
  static titleBackground + #86   , #3138
  static titleBackground + #87   , #3138
  static titleBackground + #88   , #3138
  static titleBackground + #89   , #3138
  static titleBackground + #90   , #3138
  static titleBackground + #91   , #3138
  static titleBackground + #92   , #3138
  static titleBackground + #93   , #3138
  static titleBackground + #94   , #3138
  static titleBackground + #95   , #3138
  static titleBackground + #96   , #3138
  static titleBackground + #97   , #3138
  static titleBackground + #98   , #3138
  static titleBackground + #99   , #3138
  static titleBackground + #100  , #3138
  static titleBackground + #101  , #3138
  static titleBackground + #102  , #3138
  static titleBackground + #103  , #3138
  static titleBackground + #104  , #3138
  static titleBackground + #105  , #3138
  static titleBackground + #106  , #3138
  static titleBackground + #107  , #3138
  static titleBackground + #108  , #3138
  static titleBackground + #109  , #3138
  static titleBackground + #110  , #3138
  static titleBackground + #111  , #3138
  static titleBackground + #112  , #3138
  static titleBackground + #113  , #3138
  static titleBackground + #114  , #3138
  static titleBackground + #115  , #3138
  static titleBackground + #116  , #3138
  static titleBackground + #117  , #3138
  static titleBackground + #118  , #3138
  static titleBackground + #119  , #3138

  ;Linha 3
  static titleBackground + #120  , #3138
  static titleBackground + #121  , #3138
  static titleBackground + #122  , #3138
  static titleBackground + #123  , #3138
  static titleBackground + #124  , #3138
  static titleBackground + #125  , #3138
  static titleBackground + #126  , #3138
  static titleBackground + #127  , #3138
  static titleBackground + #128  , #3138
  static titleBackground + #129  , #3138
  static titleBackground + #130  , #3138
  static titleBackground + #131  , #3138
  static titleBackground + #132  , #3138
  static titleBackground + #133  , #3138
  static titleBackground + #134  , #3138
  static titleBackground + #135  , #3138
  static titleBackground + #136  , #3138
  static titleBackground + #137  , #3138
  static titleBackground + #138  , #3138
  static titleBackground + #139  , #3138
  static titleBackground + #140  , #3138
  static titleBackground + #141  , #3138
  static titleBackground + #142  , #3138
  static titleBackground + #143  , #3138
  static titleBackground + #144  , #3138
  static titleBackground + #145  , #3138
  static titleBackground + #146  , #3138
  static titleBackground + #147  , #3138
  static titleBackground + #148  , #3138
  static titleBackground + #149  , #3138
  static titleBackground + #150  , #3138
  static titleBackground + #151  , #3138
  static titleBackground + #152  , #3138
  static titleBackground + #153  , #3138
  static titleBackground + #154  , #3138
  static titleBackground + #155  , #3138
  static titleBackground + #156  , #3138
  static titleBackground + #157  , #3138
  static titleBackground + #158  , #3138
  static titleBackground + #159  , #3138

  ;Linha 4
  static titleBackground + #160  , #3138
  static titleBackground + #161  , #3138
  static titleBackground + #162  , #3138
  static titleBackground + #163  , #3138
  static titleBackground + #164  , #3138
  static titleBackground + #165  , #3138
  static titleBackground + #166  , #3138
  static titleBackground + #167  , #3138
  static titleBackground + #168  , #3138
  static titleBackground + #169  , #3138
  static titleBackground + #170  , #3138
  static titleBackground + #171  , #3138
  static titleBackground + #172  , #3138
  static titleBackground + #173  , #3138
  static titleBackground + #174  , #3138
  static titleBackground + #175  , #3138
  static titleBackground + #176  , #3138
  static titleBackground + #177  , #3138
  static titleBackground + #178  , #3138
  static titleBackground + #179  , #3138
  static titleBackground + #180  , #3138
  static titleBackground + #181  , #3138
  static titleBackground + #182  , #3138
  static titleBackground + #183  , #3138
  static titleBackground + #184  , #3138
  static titleBackground + #185  , #3138
  static titleBackground + #186  , #3138
  static titleBackground + #187  , #3138
  static titleBackground + #188  , #3138
  static titleBackground + #189  , #3138
  static titleBackground + #190  , #3138
  static titleBackground + #191  , #3138
  static titleBackground + #192  , #3138
  static titleBackground + #193  , #3138
  static titleBackground + #194  , #3138
  static titleBackground + #195  , #3138
  static titleBackground + #196  , #3138
  static titleBackground + #197  , #3138
  static titleBackground + #198  , #3138
  static titleBackground + #199  , #3138

  ;Linha 5
  static titleBackground + #200  , #3138
  static titleBackground + #201  , #3138
  static titleBackground + #202  , #3138
  static titleBackground + #203  , #3138
  static titleBackground + #204  , #3138
  static titleBackground + #205  , #3138
  static titleBackground + #206  , #3138
  static titleBackground + #207  , #3138
  static titleBackground + #208  , #3138
  static titleBackground + #209  , #3138
  static titleBackground + #210  , #3138
  static titleBackground + #211  , #3138
  static titleBackground + #212  , #3138
  static titleBackground + #213  , #3138
  static titleBackground + #214  , #3138
  static titleBackground + #215  , #3138
  static titleBackground + #216  , #3138
  static titleBackground + #217  , #3138
  static titleBackground + #218  , #3138
  static titleBackground + #219  , #3138
  static titleBackground + #220  , #3138
  static titleBackground + #221  , #3138
  static titleBackground + #222  , #3138
  static titleBackground + #223  , #3138
  static titleBackground + #224  , #3138
  static titleBackground + #225  , #3138
  static titleBackground + #226  , #3138
  static titleBackground + #227  , #3138
  static titleBackground + #228  , #3138
  static titleBackground + #229  , #3138
  static titleBackground + #230  , #3138
  static titleBackground + #231  , #3138
  static titleBackground + #232  , #3138
  static titleBackground + #233  , #3138
  static titleBackground + #234  , #3138
  static titleBackground + #235  , #3138
  static titleBackground + #236  , #3138
  static titleBackground + #237  , #3138
  static titleBackground + #238  , #3138
  static titleBackground + #239  , #3138

  ;Linha 6
  static titleBackground + #240  , #3138
  static titleBackground + #241  , #3138
  static titleBackground + #242  , #2626
  static titleBackground + #243  , #2626
  static titleBackground + #244  , #2626
  static titleBackground + #245  , #2626
  static titleBackground + #246  , #3138
  static titleBackground + #247  , #2626
  static titleBackground + #248  , #2626
  static titleBackground + #249  , #2626
  static titleBackground + #250  , #3138
  static titleBackground + #251  , #3138
  static titleBackground + #252  , #3138
  static titleBackground + #253  , #2626
  static titleBackground + #254  , #2626
  static titleBackground + #255  , #3138
  static titleBackground + #256  , #3138
  static titleBackground + #257  , #3138
  static titleBackground + #258  , #2626
  static titleBackground + #259  , #2626
  static titleBackground + #260  , #2626
  static titleBackground + #261  , #3138
  static titleBackground + #262  , #3138
  static titleBackground + #263  , #2626
  static titleBackground + #264  , #2626
  static titleBackground + #265  , #2626
  static titleBackground + #266  , #3138
  static titleBackground + #267  , #2626
  static titleBackground + #268  , #2626
  static titleBackground + #269  , #2626
  static titleBackground + #270  , #2626
  static titleBackground + #271  , #3138
  static titleBackground + #272  , #2626
  static titleBackground + #273  , #2626
  static titleBackground + #274  , #2626
  static titleBackground + #275  , #3138
  static titleBackground + #276  , #3138
  static titleBackground + #277  , #2626
  static titleBackground + #278  , #3138
  static titleBackground + #279  , #3138

  ;Linha 7
  static titleBackground + #280  , #3138
  static titleBackground + #281  , #3138
  static titleBackground + #282  , #2626
  static titleBackground + #283  , #3138
  static titleBackground + #284  , #3138
  static titleBackground + #285  , #3138
  static titleBackground + #286  , #3138
  static titleBackground + #287  , #2626
  static titleBackground + #288  , #3138
  static titleBackground + #289  , #3138
  static titleBackground + #290  , #2626
  static titleBackground + #291  , #3138
  static titleBackground + #292  , #2626
  static titleBackground + #293  , #3138
  static titleBackground + #294  , #3138
  static titleBackground + #295  , #2626
  static titleBackground + #296  , #3138
  static titleBackground + #297  , #2626
  static titleBackground + #298  , #3138
  static titleBackground + #299  , #3138
  static titleBackground + #300  , #3138
  static titleBackground + #301  , #3138
  static titleBackground + #302  , #2626
  static titleBackground + #303  , #3138
  static titleBackground + #304  , #3138
  static titleBackground + #305  , #3138
  static titleBackground + #306  , #3138
  static titleBackground + #307  , #2626
  static titleBackground + #308  , #3138
  static titleBackground + #309  , #3138
  static titleBackground + #310  , #3138
  static titleBackground + #311  , #3138
  static titleBackground + #312  , #2626
  static titleBackground + #313  , #3138
  static titleBackground + #314  , #3138
  static titleBackground + #315  , #2626
  static titleBackground + #316  , #3138
  static titleBackground + #317  , #2626
  static titleBackground + #318  , #3138
  static titleBackground + #319  , #3138

  ;Linha 8
  static titleBackground + #320  , #3138
  static titleBackground + #321  , #3138
  static titleBackground + #322  , #2626
  static titleBackground + #323  , #2626
  static titleBackground + #324  , #2626
  static titleBackground + #325  , #3138
  static titleBackground + #326  , #3138
  static titleBackground + #327  , #2626
  static titleBackground + #328  , #2626
  static titleBackground + #329  , #2626
  static titleBackground + #330  , #2626
  static titleBackground + #331  , #3138
  static titleBackground + #332  , #2626
  static titleBackground + #333  , #3138
  static titleBackground + #334  , #3138
  static titleBackground + #335  , #2626
  static titleBackground + #336  , #3138
  static titleBackground + #337  , #2626
  static titleBackground + #338  , #3138
  static titleBackground + #339  , #2626
  static titleBackground + #340  , #2626
  static titleBackground + #341  , #3138
  static titleBackground + #342  , #2626
  static titleBackground + #343  , #3138
  static titleBackground + #344  , #2626
  static titleBackground + #345  , #2626
  static titleBackground + #346  , #3138
  static titleBackground + #347  , #2626
  static titleBackground + #348  , #2626
  static titleBackground + #349  , #2626
  static titleBackground + #350  , #3138
  static titleBackground + #351  , #3138
  static titleBackground + #352  , #2626
  static titleBackground + #353  , #2626
  static titleBackground + #354  , #2626
  static titleBackground + #355  , #2626
  static titleBackground + #356  , #3138
  static titleBackground + #357  , #2626
  static titleBackground + #358  , #3138
  static titleBackground + #359  , #3138

  ;Linha 9
  static titleBackground + #360  , #3138
  static titleBackground + #361  , #3138
  static titleBackground + #362  , #2626
  static titleBackground + #363  , #3138
  static titleBackground + #364  , #3138
  static titleBackground + #365  , #3138
  static titleBackground + #366  , #3138
  static titleBackground + #367  , #2626
  static titleBackground + #368  , #3138
  static titleBackground + #369  , #2626
  static titleBackground + #370  , #3138
  static titleBackground + #371  , #3138
  static titleBackground + #372  , #2626
  static titleBackground + #373  , #3138
  static titleBackground + #374  , #3138
  static titleBackground + #375  , #2626
  static titleBackground + #376  , #3138
  static titleBackground + #377  , #2626
  static titleBackground + #378  , #3138
  static titleBackground + #379  , #3138
  static titleBackground + #380  , #2626
  static titleBackground + #381  , #3138
  static titleBackground + #382  , #2626
  static titleBackground + #383  , #3138
  static titleBackground + #384  , #3138
  static titleBackground + #385  , #2626
  static titleBackground + #386  , #3138
  static titleBackground + #387  , #2626
  static titleBackground + #388  , #3138
  static titleBackground + #389  , #3138
  static titleBackground + #390  , #3138
  static titleBackground + #391  , #3138
  static titleBackground + #392  , #2626
  static titleBackground + #393  , #3138
  static titleBackground + #394  , #2626
  static titleBackground + #395  , #3138
  static titleBackground + #396  , #3138
  static titleBackground + #397  , #3138
  static titleBackground + #398  , #3138
  static titleBackground + #399  , #3138

  ;Linha 10
  static titleBackground + #400  , #3138
  static titleBackground + #401  , #3138
  static titleBackground + #402  , #2626
  static titleBackground + #403  , #3138
  static titleBackground + #404  , #3138
  static titleBackground + #405  , #3138
  static titleBackground + #406  , #3138
  static titleBackground + #407  , #2626
  static titleBackground + #408  , #3138
  static titleBackground + #409  , #3138
  static titleBackground + #410  , #2626
  static titleBackground + #411  , #3138
  static titleBackground + #412  , #3138
  static titleBackground + #413  , #2626
  static titleBackground + #414  , #2626
  static titleBackground + #415  , #3138
  static titleBackground + #416  , #3138
  static titleBackground + #417  , #2626
  static titleBackground + #418  , #2626
  static titleBackground + #419  , #2626
  static titleBackground + #420  , #2626
  static titleBackground + #421  , #3138
  static titleBackground + #422  , #2626
  static titleBackground + #423  , #2626
  static titleBackground + #424  , #2626
  static titleBackground + #425  , #2626
  static titleBackground + #426  , #3138
  static titleBackground + #427  , #2626
  static titleBackground + #428  , #2626
  static titleBackground + #429  , #2626
  static titleBackground + #430  , #2626
  static titleBackground + #431  , #3138
  static titleBackground + #432  , #2626
  static titleBackground + #433  , #3138
  static titleBackground + #434  , #3138
  static titleBackground + #435  , #2626
  static titleBackground + #436  , #3138
  static titleBackground + #437  , #2626
  static titleBackground + #438  , #3138
  static titleBackground + #439  , #3138

  ;Linha 11
  static titleBackground + #440  , #3138
  static titleBackground + #441  , #3138
  static titleBackground + #442  , #3138
  static titleBackground + #443  , #3138
  static titleBackground + #444  , #3138
  static titleBackground + #445  , #3138
  static titleBackground + #446  , #3138
  static titleBackground + #447  , #3138
  static titleBackground + #448  , #3138
  static titleBackground + #449  , #3138
  static titleBackground + #450  , #3138
  static titleBackground + #451  , #3138
  static titleBackground + #452  , #3138
  static titleBackground + #453  , #3138
  static titleBackground + #454  , #3138
  static titleBackground + #455  , #3138
  static titleBackground + #456  , #3138
  static titleBackground + #457  , #3138
  static titleBackground + #458  , #3138
  static titleBackground + #459  , #3138
  static titleBackground + #460  , #3138
  static titleBackground + #461  , #3138
  static titleBackground + #462  , #3138
  static titleBackground + #463  , #3138
  static titleBackground + #464  , #3138
  static titleBackground + #465  , #3138
  static titleBackground + #466  , #3138
  static titleBackground + #467  , #3138
  static titleBackground + #468  , #3138
  static titleBackground + #469  , #3138
  static titleBackground + #470  , #3138
  static titleBackground + #471  , #3138
  static titleBackground + #472  , #3138
  static titleBackground + #473  , #3138
  static titleBackground + #474  , #3138
  static titleBackground + #475  , #3138
  static titleBackground + #476  , #3138
  static titleBackground + #477  , #3138
  static titleBackground + #478  , #3138
  static titleBackground + #479  , #3138

  ;Linha 12
  static titleBackground + #480  , #0
  static titleBackground + #481  , #0
  static titleBackground + #482  , #0
  static titleBackground + #483  , #0
  static titleBackground + #484  , #0
  static titleBackground + #485  , #0
  static titleBackground + #486  , #0
  static titleBackground + #487  , #0
  static titleBackground + #488  , #0
  static titleBackground + #489  , #0
  static titleBackground + #490  , #0
  static titleBackground + #491  , #0
  static titleBackground + #492  , #0
  static titleBackground + #493  , #0
  static titleBackground + #494  , #0
  static titleBackground + #495  , #0
  static titleBackground + #496  , #0
  static titleBackground + #497  , #0
  static titleBackground + #498  , #0
  static titleBackground + #499  , #0
  static titleBackground + #500  , #0
  static titleBackground + #501  , #0
  static titleBackground + #502  , #0
  static titleBackground + #503  , #0
  static titleBackground + #504  , #0
  static titleBackground + #505  , #0
  static titleBackground + #506  , #0
  static titleBackground + #507  , #0
  static titleBackground + #508  , #0
  static titleBackground + #509  , #0
  static titleBackground + #510  , #0
  static titleBackground + #511  , #0
  static titleBackground + #512  , #0
  static titleBackground + #513  , #0
  static titleBackground + #514  , #0
  static titleBackground + #515  , #0
  static titleBackground + #516  , #0
  static titleBackground + #517  , #0
  static titleBackground + #518  , #0
  static titleBackground + #519  , #0

  ;Linha 13
  static titleBackground + #520  , #0
  static titleBackground + #521  , #0
  static titleBackground + #522  , #0
  static titleBackground + #523  , #0
  static titleBackground + #524  , #0
  static titleBackground + #525  , #0
  static titleBackground + #526  , #0
  static titleBackground + #527  , #0
  static titleBackground + #528  , #0
  static titleBackground + #529  , #0
  static titleBackground + #530  , #0
  static titleBackground + #531  , #0
  static titleBackground + #532  , #0
  static titleBackground + #533  , #0
  static titleBackground + #534  , #0
  static titleBackground + #535  , #0
  static titleBackground + #536  , #0
  static titleBackground + #537  , #0
  static titleBackground + #538  , #0
  static titleBackground + #539  , #0
  static titleBackground + #540  , #0
  static titleBackground + #541  , #0
  static titleBackground + #542  , #0
  static titleBackground + #543  , #0
  static titleBackground + #544  , #0
  static titleBackground + #545  , #0
  static titleBackground + #546  , #0
  static titleBackground + #547  , #0
  static titleBackground + #548  , #0
  static titleBackground + #549  , #0
  static titleBackground + #550  , #0
  static titleBackground + #551  , #0
  static titleBackground + #552  , #0
  static titleBackground + #553  , #0
  static titleBackground + #554  , #0
  static titleBackground + #555  , #0
  static titleBackground + #556  , #0
  static titleBackground + #557  , #0
  static titleBackground + #558  , #0
  static titleBackground + #559  , #0

  ;Linha 14
  static titleBackground + #560  , #0
  static titleBackground + #561  , #0
  static titleBackground + #562  , #0
  static titleBackground + #563  , #0
  static titleBackground + #564  , #0
  static titleBackground + #565  , #0
  static titleBackground + #566  , #0
  static titleBackground + #567  , #0
  static titleBackground + #568  , #0
  static titleBackground + #569  , #0
  static titleBackground + #570  , #0
  static titleBackground + #571  , #0
  static titleBackground + #572  , #0
  static titleBackground + #573  , #0
  static titleBackground + #574  , #0
  static titleBackground + #575  , #0
  static titleBackground + #576  , #0
  static titleBackground + #577  , #0
  static titleBackground + #578  , #0
  static titleBackground + #579  , #0
  static titleBackground + #580  , #0
  static titleBackground + #581  , #0
  static titleBackground + #582  , #0
  static titleBackground + #583  , #0
  static titleBackground + #584  , #0
  static titleBackground + #585  , #0
  static titleBackground + #586  , #0
  static titleBackground + #587  , #0
  static titleBackground + #588  , #0
  static titleBackground + #589  , #0
  static titleBackground + #590  , #0
  static titleBackground + #591  , #0
  static titleBackground + #592  , #0
  static titleBackground + #593  , #0
  static titleBackground + #594  , #0
  static titleBackground + #595  , #0
  static titleBackground + #596  , #0
  static titleBackground + #597  , #0
  static titleBackground + #598  , #0
  static titleBackground + #599  , #0

  ;Linha 15
  static titleBackground + #600  , #0
  static titleBackground + #601  , #0
  static titleBackground + #602  , #0
  static titleBackground + #603  , #0
  static titleBackground + #604  , #0
  static titleBackground + #605  , #0
  static titleBackground + #606  , #0
  static titleBackground + #607  , #0
  static titleBackground + #608  , #0
  static titleBackground + #609  , #0
  static titleBackground + #610  , #0
  static titleBackground + #611  , #0
  static titleBackground + #612  , #0
  static titleBackground + #613  , #0
  static titleBackground + #614  , #0
  static titleBackground + #615  , #0
  static titleBackground + #616  , #0
  static titleBackground + #617  , #0
  static titleBackground + #618  , #0
  static titleBackground + #619  , #0
  static titleBackground + #620  , #0
  static titleBackground + #621  , #0
  static titleBackground + #622  , #0
  static titleBackground + #623  , #0
  static titleBackground + #624  , #0
  static titleBackground + #625  , #0
  static titleBackground + #626  , #0
  static titleBackground + #627  , #0
  static titleBackground + #628  , #0
  static titleBackground + #629  , #0
  static titleBackground + #630  , #0
  static titleBackground + #631  , #0
  static titleBackground + #632  , #0
  static titleBackground + #633  , #0
  static titleBackground + #634  , #0
  static titleBackground + #635  , #0
  static titleBackground + #636  , #0
  static titleBackground + #637  , #0
  static titleBackground + #638  , #0
  static titleBackground + #639  , #0

  ;Linha 16
  static titleBackground + #640  , #0
  static titleBackground + #641  , #0
  static titleBackground + #642  , #0
  static titleBackground + #643  , #0
  static titleBackground + #644  , #0
  static titleBackground + #645  , #0
  static titleBackground + #646  , #0
  static titleBackground + #647  , #0
  static titleBackground + #648  , #0
  static titleBackground + #649  , #0
  static titleBackground + #650  , #0
  static titleBackground + #651  , #0
  static titleBackground + #652  , #0
  static titleBackground + #653  , #0
  static titleBackground + #654  , #0
  static titleBackground + #655  , #0
  static titleBackground + #656  , #0
  static titleBackground + #657  , #0
  static titleBackground + #658  , #0
  static titleBackground + #659  , #0
  static titleBackground + #660  , #0
  static titleBackground + #661  , #0
  static titleBackground + #662  , #0
  static titleBackground + #663  , #0
  static titleBackground + #664  , #0
  static titleBackground + #665  , #0
  static titleBackground + #666  , #0
  static titleBackground + #667  , #0
  static titleBackground + #668  , #0
  static titleBackground + #669  , #0
  static titleBackground + #670  , #0
  static titleBackground + #671  , #0
  static titleBackground + #672  , #0
  static titleBackground + #673  , #0
  static titleBackground + #674  , #0
  static titleBackground + #675  , #0
  static titleBackground + #676  , #0
  static titleBackground + #677  , #0
  static titleBackground + #678  , #0
  static titleBackground + #679  , #0

  ;Linha 17
  static titleBackground + #680  , #0
  static titleBackground + #681  , #0
  static titleBackground + #682  , #0
  static titleBackground + #683  , #0
  static titleBackground + #684  , #0
  static titleBackground + #685  , #0
  static titleBackground + #686  , #0
  static titleBackground + #687  , #0
  static titleBackground + #688  , #0
  static titleBackground + #689  , #0
  static titleBackground + #690  , #0
  static titleBackground + #691  , #0
  static titleBackground + #692  , #0
  static titleBackground + #693  , #0
  static titleBackground + #694  , #0
  static titleBackground + #695  , #0
  static titleBackground + #696  , #0
  static titleBackground + #697  , #0
  static titleBackground + #698  , #0
  static titleBackground + #699  , #0
  static titleBackground + #700  , #0
  static titleBackground + #701  , #0
  static titleBackground + #702  , #0
  static titleBackground + #703  , #0
  static titleBackground + #704  , #0
  static titleBackground + #705  , #0
  static titleBackground + #706  , #0
  static titleBackground + #707  , #0
  static titleBackground + #708  , #0
  static titleBackground + #709  , #0
  static titleBackground + #710  , #0
  static titleBackground + #711  , #0
  static titleBackground + #712  , #0
  static titleBackground + #713  , #0
  static titleBackground + #714  , #0
  static titleBackground + #715  , #0
  static titleBackground + #716  , #0
  static titleBackground + #717  , #0
  static titleBackground + #718  , #0
  static titleBackground + #719  , #0

  ;Linha 18
  static titleBackground + #720  , #0
  static titleBackground + #721  , #0
  static titleBackground + #722  , #0
  static titleBackground + #723  , #0
  static titleBackground + #724  , #0
  static titleBackground + #725  , #0
  static titleBackground + #726  , #0
  static titleBackground + #727  , #0
  static titleBackground + #728  , #0
  static titleBackground + #729  , #0
  static titleBackground + #730  , #0
  static titleBackground + #731  , #0
  static titleBackground + #732  , #0
  static titleBackground + #733  , #0
  static titleBackground + #734  , #0
  static titleBackground + #735  , #0
  static titleBackground + #736  , #0
  static titleBackground + #737  , #0
  static titleBackground + #738  , #0
  static titleBackground + #739  , #0
  static titleBackground + #740  , #0
  static titleBackground + #741  , #0
  static titleBackground + #742  , #0
  static titleBackground + #743  , #0
  static titleBackground + #744  , #0
  static titleBackground + #745  , #0
  static titleBackground + #746  , #0
  static titleBackground + #747  , #0
  static titleBackground + #748  , #0
  static titleBackground + #749  , #0
  static titleBackground + #750  , #0
  static titleBackground + #751  , #0
  static titleBackground + #752  , #0
  static titleBackground + #753  , #0
  static titleBackground + #754  , #0
  static titleBackground + #755  , #0
  static titleBackground + #756  , #0
  static titleBackground + #757  , #0
  static titleBackground + #758  , #0
  static titleBackground + #759  , #0

  ;Linha 19
  static titleBackground + #760  , #0
  static titleBackground + #761  , #0
  static titleBackground + #762  , #0
  static titleBackground + #763  , #0
  static titleBackground + #764  , #0
  static titleBackground + #765  , #0
  static titleBackground + #766  , #0
  static titleBackground + #767  , #0
  static titleBackground + #768  , #0
  static titleBackground + #769  , #0
  static titleBackground + #770  , #0
  static titleBackground + #771  , #0
  static titleBackground + #772  , #0
  static titleBackground + #773  , #0
  static titleBackground + #774  , #0
  static titleBackground + #775  , #0
  static titleBackground + #776  , #0
  static titleBackground + #777  , #0
  static titleBackground + #778  , #0
  static titleBackground + #779  , #0
  static titleBackground + #780  , #0
  static titleBackground + #781  , #0
  static titleBackground + #782  , #0
  static titleBackground + #783  , #0
  static titleBackground + #784  , #0
  static titleBackground + #785  , #0
  static titleBackground + #786  , #0
  static titleBackground + #787  , #0
  static titleBackground + #788  , #0
  static titleBackground + #789  , #0
  static titleBackground + #790  , #0
  static titleBackground + #791  , #0
  static titleBackground + #792  , #0
  static titleBackground + #793  , #0
  static titleBackground + #794  , #0
  static titleBackground + #795  , #0
  static titleBackground + #796  , #0
  static titleBackground + #797  , #0
  static titleBackground + #798  , #0
  static titleBackground + #799  , #0

  ;Linha 20
  static titleBackground + #800  , #0
  static titleBackground + #801  , #0
  static titleBackground + #802  , #0
  static titleBackground + #803  , #0
  static titleBackground + #804  , #0
  static titleBackground + #805  , #0
  static titleBackground + #806  , #0
  static titleBackground + #807  , #0
  static titleBackground + #808  , #0
  static titleBackground + #809  , #0
  static titleBackground + #810  , #0
  static titleBackground + #811  , #0
  static titleBackground + #812  , #0
  static titleBackground + #813  , #0
  static titleBackground + #814  , #0
  static titleBackground + #815  , #0
  static titleBackground + #816  , #0
  static titleBackground + #817  , #0
  static titleBackground + #818  , #0
  static titleBackground + #819  , #0
  static titleBackground + #820  , #0
  static titleBackground + #821  , #0
  static titleBackground + #822  , #0
  static titleBackground + #823  , #0
  static titleBackground + #824  , #0
  static titleBackground + #825  , #0
  static titleBackground + #826  , #0
  static titleBackground + #827  , #0
  static titleBackground + #828  , #0
  static titleBackground + #829  , #0
  static titleBackground + #830  , #0
  static titleBackground + #831  , #0
  static titleBackground + #832  , #0
  static titleBackground + #833  , #0
  static titleBackground + #834  , #0
  static titleBackground + #835  , #0
  static titleBackground + #836  , #0
  static titleBackground + #837  , #0
  static titleBackground + #838  , #0
  static titleBackground + #839  , #0

  ;Linha 21
  static titleBackground + #840  , #0
  static titleBackground + #841  , #0
  static titleBackground + #842  , #0
  static titleBackground + #843  , #0
  static titleBackground + #844  , #0
  static titleBackground + #845  , #0
  static titleBackground + #846  , #0
  static titleBackground + #847  , #0
  static titleBackground + #848  , #0
  static titleBackground + #849  , #0
  static titleBackground + #850  , #0
  static titleBackground + #851  , #0
  static titleBackground + #852  , #0
  static titleBackground + #853  , #0
  static titleBackground + #854  , #0
  static titleBackground + #855  , #0
  static titleBackground + #856  , #0
  static titleBackground + #857  , #0
  static titleBackground + #858  , #0
  static titleBackground + #859  , #0
  static titleBackground + #860  , #0
  static titleBackground + #861  , #0
  static titleBackground + #862  , #0
  static titleBackground + #863  , #0
  static titleBackground + #864  , #0
  static titleBackground + #865  , #0
  static titleBackground + #866  , #0
  static titleBackground + #867  , #0
  static titleBackground + #868  , #0
  static titleBackground + #869  , #0
  static titleBackground + #870  , #0
  static titleBackground + #871  , #0
  static titleBackground + #872  , #0
  static titleBackground + #873  , #0
  static titleBackground + #874  , #0
  static titleBackground + #875  , #0
  static titleBackground + #876  , #0
  static titleBackground + #877  , #0
  static titleBackground + #878  , #0
  static titleBackground + #879  , #0

  ;Linha 22
  static titleBackground + #880  , #0
  static titleBackground + #881  , #0
  static titleBackground + #882  , #0
  static titleBackground + #883  , #0
  static titleBackground + #884  , #0
  static titleBackground + #885  , #0
  static titleBackground + #886  , #0
  static titleBackground + #887  , #0
  static titleBackground + #888  , #0
  static titleBackground + #889  , #0
  static titleBackground + #890  , #0
  static titleBackground + #891  , #0
  static titleBackground + #892  , #0
  static titleBackground + #893  , #0
  static titleBackground + #894  , #0
  static titleBackground + #895  , #0
  static titleBackground + #896  , #0
  static titleBackground + #897  , #0
  static titleBackground + #898  , #0
  static titleBackground + #899  , #0
  static titleBackground + #900  , #0
  static titleBackground + #901  , #0
  static titleBackground + #902  , #0
  static titleBackground + #903  , #0
  static titleBackground + #904  , #0
  static titleBackground + #905  , #0
  static titleBackground + #906  , #0
  static titleBackground + #907  , #0
  static titleBackground + #908  , #0
  static titleBackground + #909  , #0
  static titleBackground + #910  , #0
  static titleBackground + #911  , #0
  static titleBackground + #912  , #0
  static titleBackground + #913  , #0
  static titleBackground + #914  , #0
  static titleBackground + #915  , #0
  static titleBackground + #916  , #0
  static titleBackground + #917  , #0
  static titleBackground + #918  , #0
  static titleBackground + #919  , #0

  ;Linha 23
  static titleBackground + #920  , #0
  static titleBackground + #921  , #0
  static titleBackground + #922  , #0
  static titleBackground + #923  , #0
  static titleBackground + #924  , #0
  static titleBackground + #925  , #0
  static titleBackground + #926  , #0
  static titleBackground + #927  , #0
  static titleBackground + #928  , #0
  static titleBackground + #929  , #0
  static titleBackground + #930  , #0
  static titleBackground + #931  , #0
  static titleBackground + #932  , #0
  static titleBackground + #933  , #0
  static titleBackground + #934  , #0
  static titleBackground + #935  , #0
  static titleBackground + #936  , #0
  static titleBackground + #937  , #0
  static titleBackground + #938  , #0
  static titleBackground + #939  , #0
  static titleBackground + #940  , #0
  static titleBackground + #941  , #0
  static titleBackground + #942  , #0
  static titleBackground + #943  , #0
  static titleBackground + #944  , #0
  static titleBackground + #945  , #0
  static titleBackground + #946  , #0
  static titleBackground + #947  , #0
  static titleBackground + #948  , #0
  static titleBackground + #949  , #0
  static titleBackground + #950  , #0
  static titleBackground + #951  , #0
  static titleBackground + #952  , #0
  static titleBackground + #953  , #0
  static titleBackground + #954  , #0
  static titleBackground + #955  , #0
  static titleBackground + #956  , #0
  static titleBackground + #957  , #0
  static titleBackground + #958  , #0
  static titleBackground + #959  , #0

  ;Linha 24
  static titleBackground + #960  , #0
  static titleBackground + #961  , #0
  static titleBackground + #962  , #0
  static titleBackground + #963  , #0
  static titleBackground + #964  , #0
  static titleBackground + #965  , #0
  static titleBackground + #966  , #0
  static titleBackground + #967  , #0
  static titleBackground + #968  , #0
  static titleBackground + #969  , #0
  static titleBackground + #970  , #0
  static titleBackground + #971  , #0
  static titleBackground + #972  , #0
  static titleBackground + #973  , #0
  static titleBackground + #974  , #0
  static titleBackground + #975  , #0
  static titleBackground + #976  , #0
  static titleBackground + #977  , #0
  static titleBackground + #978  , #0
  static titleBackground + #979  , #0
  static titleBackground + #980  , #0
  static titleBackground + #981  , #0
  static titleBackground + #982  , #0
  static titleBackground + #983  , #0
  static titleBackground + #984  , #0
  static titleBackground + #985  , #0
  static titleBackground + #986  , #0
  static titleBackground + #987  , #0
  static titleBackground + #988  , #0
  static titleBackground + #989  , #0
  static titleBackground + #990  , #0
  static titleBackground + #991  , #0
  static titleBackground + #992  , #0
  static titleBackground + #993  , #0
  static titleBackground + #994  , #0
  static titleBackground + #995  , #0
  static titleBackground + #996  , #0
  static titleBackground + #997  , #0
  static titleBackground + #998  , #0
  static titleBackground + #999  , #0

  ;Linha 25
  static titleBackground + #1000 , #0
  static titleBackground + #1001 , #0
  static titleBackground + #1002 , #0
  static titleBackground + #1003 , #0
  static titleBackground + #1004 , #0
  static titleBackground + #1005 , #0
  static titleBackground + #1006 , #0
  static titleBackground + #1007 , #0
  static titleBackground + #1008 , #0
  static titleBackground + #1009 , #0
  static titleBackground + #1010 , #0
  static titleBackground + #1011 , #0
  static titleBackground + #1012 , #0
  static titleBackground + #1013 , #0
  static titleBackground + #1014 , #0
  static titleBackground + #1015 , #0
  static titleBackground + #1016 , #0
  static titleBackground + #1017 , #0
  static titleBackground + #1018 , #0
  static titleBackground + #1019 , #0
  static titleBackground + #1020 , #0
  static titleBackground + #1021 , #0
  static titleBackground + #1022 , #0
  static titleBackground + #1023 , #0
  static titleBackground + #1024 , #0
  static titleBackground + #1025 , #0
  static titleBackground + #1026 , #0
  static titleBackground + #1027 , #0
  static titleBackground + #1028 , #0
  static titleBackground + #1029 , #0
  static titleBackground + #1030 , #0
  static titleBackground + #1031 , #0
  static titleBackground + #1032 , #0
  static titleBackground + #1033 , #0
  static titleBackground + #1034 , #0
  static titleBackground + #1035 , #0
  static titleBackground + #1036 , #0
  static titleBackground + #1037 , #0
  static titleBackground + #1038 , #0
  static titleBackground + #1039 , #0

  ;Linha 26
  static titleBackground + #1040 , #0
  static titleBackground + #1041 , #0
  static titleBackground + #1042 , #0
  static titleBackground + #1043 , #0
  static titleBackground + #1044 , #0
  static titleBackground + #1045 , #0
  static titleBackground + #1046 , #0
  static titleBackground + #1047 , #0
  static titleBackground + #1048 , #0
  static titleBackground + #1049 , #0
  static titleBackground + #1050 , #80
  static titleBackground + #1051 , #82
  static titleBackground + #1052 , #69
  static titleBackground + #1053 , #83
  static titleBackground + #1054 , #83
  static titleBackground + #1055 , #32
  static titleBackground + #1056 , #2885
  static titleBackground + #1057 , #2894
  static titleBackground + #1058 , #2900
  static titleBackground + #1059 , #2885
  static titleBackground + #1060 , #2898
  static titleBackground + #1061 , #32
  static titleBackground + #1062 , #84
  static titleBackground + #1063 , #79
  static titleBackground + #1064 , #32
  static titleBackground + #1065 , #80
  static titleBackground + #1066 , #76
  static titleBackground + #1067 , #65
  static titleBackground + #1068 , #89
  static titleBackground + #1069 , #0
  static titleBackground + #1070 , #0
  static titleBackground + #1071 , #0
  static titleBackground + #1072 , #0
  static titleBackground + #1073 , #0
  static titleBackground + #1074 , #0
  static titleBackground + #1075 , #0
  static titleBackground + #1076 , #0
  static titleBackground + #1077 , #0
  static titleBackground + #1078 , #0
  static titleBackground + #1079 , #0

  ;Linha 27
  static titleBackground + #1080 , #0
  static titleBackground + #1081 , #0
  static titleBackground + #1082 , #0
  static titleBackground + #1083 , #0
  static titleBackground + #1084 , #0
  static titleBackground + #1085 , #0
  static titleBackground + #1086 , #0
  static titleBackground + #1087 , #0
  static titleBackground + #1088 , #0
  static titleBackground + #1089 , #0
  static titleBackground + #1090 , #0
  static titleBackground + #1091 , #0
  static titleBackground + #1092 , #0
  static titleBackground + #1093 , #0
  static titleBackground + #1094 , #0
  static titleBackground + #1095 , #0
  static titleBackground + #1096 , #0
  static titleBackground + #1097 , #0
  static titleBackground + #1098 , #0
  static titleBackground + #1099 , #0
  static titleBackground + #1100 , #0
  static titleBackground + #1101 , #0
  static titleBackground + #1102 , #0
  static titleBackground + #1103 , #0
  static titleBackground + #1104 , #0
  static titleBackground + #1105 , #0
  static titleBackground + #1106 , #0
  static titleBackground + #1107 , #0
  static titleBackground + #1108 , #0
  static titleBackground + #1109 , #0
  static titleBackground + #1110 , #0
  static titleBackground + #1111 , #0
  static titleBackground + #1112 , #0
  static titleBackground + #1113 , #0
  static titleBackground + #1114 , #0
  static titleBackground + #1115 , #0
  static titleBackground + #1116 , #0
  static titleBackground + #1117 , #0
  static titleBackground + #1118 , #0
  static titleBackground + #1119 , #0

  ;Linha 28
  static titleBackground + #1120 , #0
  static titleBackground + #1121 , #0
  static titleBackground + #1122 , #0
  static titleBackground + #1123 , #0
  static titleBackground + #1124 , #0
  static titleBackground + #1125 , #0
  static titleBackground + #1126 , #0
  static titleBackground + #1127 , #0
  static titleBackground + #1128 , #0
  static titleBackground + #1129 , #0
  static titleBackground + #1130 , #0
  static titleBackground + #1131 , #0
  static titleBackground + #1132 , #0
  static titleBackground + #1133 , #0
  static titleBackground + #1134 , #0
  static titleBackground + #1135 , #0
  static titleBackground + #1136 , #0
  static titleBackground + #1137 , #0
  static titleBackground + #1138 , #0
  static titleBackground + #1139 , #0
  static titleBackground + #1140 , #0
  static titleBackground + #1141 , #0
  static titleBackground + #1142 , #0
  static titleBackground + #1143 , #0
  static titleBackground + #1144 , #0
  static titleBackground + #1145 , #0
  static titleBackground + #1146 , #0
  static titleBackground + #1147 , #0
  static titleBackground + #1148 , #0
  static titleBackground + #1149 , #0
  static titleBackground + #1150 , #0
  static titleBackground + #1151 , #0
  static titleBackground + #1152 , #0
  static titleBackground + #1153 , #0
  static titleBackground + #1154 , #0
  static titleBackground + #1155 , #0
  static titleBackground + #1156 , #0
  static titleBackground + #1157 , #0
  static titleBackground + #1158 , #0
  static titleBackground + #1159 , #0

  ;Linha 29
  static titleBackground + #1160 , #0
  static titleBackground + #1161 , #0
  static titleBackground + #1162 , #0
  static titleBackground + #1163 , #0
  static titleBackground + #1164 , #0
  static titleBackground + #1165 , #0
  static titleBackground + #1166 , #0
  static titleBackground + #1167 , #0
  static titleBackground + #1168 , #0
  static titleBackground + #1169 , #0
  static titleBackground + #1170 , #0
  static titleBackground + #1171 , #0
  static titleBackground + #1172 , #0
  static titleBackground + #1173 , #0
  static titleBackground + #1174 , #0
  static titleBackground + #1175 , #0
  static titleBackground + #1176 , #0
  static titleBackground + #1177 , #0
  static titleBackground + #1178 , #0
  static titleBackground + #1179 , #0
  static titleBackground + #1180 , #0
  static titleBackground + #1181 , #0
  static titleBackground + #1182 , #0
  static titleBackground + #1183 , #0
  static titleBackground + #1184 , #0
  static titleBackground + #1185 , #0
  static titleBackground + #1186 , #0
  static titleBackground + #1187 , #0
  static titleBackground + #1188 , #0
  static titleBackground + #1189 , #0
  static titleBackground + #1190 , #0
  static titleBackground + #1191 , #0
  static titleBackground + #1192 , #0
  static titleBackground + #1193 , #0
  static titleBackground + #1194 , #0
  static titleBackground + #1195 , #0
  static titleBackground + #1196 , #0
  static titleBackground + #1197 , #0
  static titleBackground + #1198 , #0
  static titleBackground + #1199 , #0


mensagem : var #21
static mensagem + #0, #'V'
static mensagem + #1, #'A'
static mensagem + #2, #'A'
static mensagem + #3, #'a'
static mensagem + #4, #'B'
static mensagem + #5, #'C'
static mensagem + #6, #'E'
static mensagem + #7, #'N'
static mensagem + #8, #'T'
static mensagem + #9, #'E'
static mensagem + #10, #'R'
static mensagem + #11, #' '
static mensagem + #12, #'T'
static mensagem + #13, #'O'
static mensagem + #14, #' '
static mensagem + #15, #'S'
static mensagem + #16, #'T'
static mensagem + #17, #'A'
static mensagem + #18, #'R'
static mensagem + #19, #'T'
static mensagem + #20, #'\0'


mensagem2 : string "Ola Mundo!"

;---- Inicio do Programa Principal -----
main:
	loadn r0, #0			; Posicao na tela onde a mensagem sera' escrita
	loadn r1, #mensagem2	; Carrega r1 com o endereco do vetor que contem a mensagem
	loadn r2, #256			; Seleciona a COR da Mensagem

	call Imprimestr   	; r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso
						; r1 = endereco onde comeca a mensagem
						; r2 = cor da mensagem.
						; Obs: a mensagem sera' impressa ate' encontrar "/0"

	halt	; Fim do programa - Para o Processador

;---- Fim do Programa Principal -----

;---- Inicio das Subrotinas -----

Imprimestr:		;  Rotina de Impresao de Mensagens:
				; r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso
				; r1 = endereco onde comeca a mensagem
				; r2 = cor da mensagem
				; Obs: a mensagem sera' impressa ate' encontrar "/0"

;---- Empilhamento: protege os registradores utilizados na subrotina na pilha para preservar seu valor
	push r0	; Posicao da tela que o primeiro caractere da mensagem sera' impresso
	push r1	; endereco onde comeca a mensagem
	push r2	; cor da mensagem
	push r3	; Criterio de parada
	push r4	; Recebe o codigo do caractere da Mensagem

	loadn r3, #'\0'	; Criterio de parada

ImprimestrLoop:
	loadi r4, r1		; aponta para a memoria no endereco r1 e busca seu conteudo em r4
	cmp r4, r3			; compara o codigo do caractere buscado com o criterio de parada
	jeq ImprimestrSai	; goto Final da rotina
	add r4, r2, r4		; soma a cor (r2) no codigo do caractere em r4
	outchar r4, r0		; imprime o caractere cujo codigo está em r4 na posicao r0 da tela
	inc r0				; incrementa a posicao que o proximo caractere sera' escrito na tela
	inc r1				; incrementa o ponteiro para a mensagem na memoria
	jmp ImprimestrLoop	; goto Loop

ImprimestrSai:
;---- Desempilhamento: resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts		; retorno da subrotina
