#include "frogger_demake.h"
#include <stdbool.h>
#include <wchar.h>

// NOTE: Functions for drawing game objects

bool drawFrog(MAP, int pos[], bool alive) {
    if (alive)
        printChar(L'F', pos[0], pos[1]);
    else
        printChar(0x2620, pos[0], pos[1]);
    printChar(0x2510, pos[0], pos[1] + 1);
    printChar(0x2514, pos[0] + 1, pos[1]);
    printChar(0x2518, pos[0] + 1, pos[1] + 1);
    return alive;
}

void drawHUD(MAP, int margins[]) {
    int i;
    wchar_t string[41];

    // Draw the margins that separate the game board from the HUD
    wmemset(string, 0x2501, 40);
    string[40] = L'\0';
    printChar(0x2523, 1, -1);
    printLine(map, 1, string, &alignJustified, false);
    printChar(0x252b, 1, WIDTH);

    printChar(0x2523, 28, -1);
    printLine(map, 28, string, &alignJustified, false);
    printChar(0x252b, 28, WIDTH);

    // Draw indicators
    wmemcpy(map[0] + 1, L"1-UP", 4);
    for (i = 1; i < 5; i++)
        printChar(map[0][i], 0, i);
    wmemcpy(map[0] + 28, L"SCORE", 5);
    for (i = 28; i < 33; i++)
        printChar(map[0][i], 0, i);
    wmemcpy(map[29] + 1, L"LIVES", 5);
    for (i = 1; i < 6; i++)
        printChar(map[29][i], 29, i);
    wmemcpy(map[29] + 35, L"TIME", 4);
    for (i = 35; i < 39; i++)
        printChar(map[29][i], 29, i);
}

void updateHUD(MAP, int oneUp, int hiscore, int score, int lives, int elapsed) {
    wchar_t string[WIDTH];

    swprintf(string, 6, L"%0*d", 5, oneUp);
    printString(map, string, 0, 6, 5);
    swprintf(string, 6, L"%0*d", 5, hiscore);
    printString(map, string, 0, 21, 5);
    swprintf(string, 6, L"%0*d", 5, score);
    printString(map, string, 0, 34, 5);
    wmemset(string, 0x2665, lives);
    printString(map, string, 29, 8, lives);
    elapsed /= 4;
    wmemset(string, 0x2592, elapsed);
    wmemset(string + elapsed, 0x2588, 15 - elapsed);
    printString(map, string, 29, WIDTH / 2 - 1, 15);
}
