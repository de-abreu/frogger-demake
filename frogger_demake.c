#include "frogger_demake.h"
#include <time.h>

bool moveFrog(MAP, int *margins, int *pos, int *distance, int *score) {
    wchar_t c;

    if (!kbhit())
        return false;
    c = getwchar();
    tcflush(0, TCIFLUSH);
    switch (c) {
    case L'w':
        if (pos[0] == margins[0] + 1)
            break;
        pos[0]--;
        printChar(' ', pos[0] + 2, pos[1]);
        printChar(' ', pos[0] + 2, pos[1] + 1);
        break;
    case L'a':
        if (pos[1] == 0)
            break;
        pos[1]--;
        printChar(' ', pos[0], pos[1] + 2);
        printChar(' ', pos[0] + 1, pos[1] + 2);
        break;
    case L's':
        if (pos[0] == margins[1] - 1)
            break;
        pos[0]++;
        printChar(' ', pos[0] - 1, pos[1]);
        printChar(' ', pos[0] - 1, pos[1] + 1);
        break;
    case L'd':
        if (pos[1] == WIDTH - 2)
            break;
        pos[1]++;
        printChar(' ', pos[0], pos[1] - 1);
        printChar(' ', pos[0] + 1, pos[1] - 1);
        break;
    default:
        return false;
    }
    return true;
}

void initmap(MAP) {
    int i;
    wchar_t hiscore[14];

    // Set display's borders
    printChar(0x250F, -1, -1);
    printChar(0x2517, HEIGHT, -1);
    for (i = 0; i < WIDTH; i++) {
        printChar(0x2501, -1, i);
        printChar(0x2501, HEIGHT, i);
    }
    printChar(0x2513, -1, WIDTH);
    printChar(0x251B, HEIGHT, WIDTH);
    for (i = 0; i < HEIGHT; i++) {
        printChar(0x2503, i, -1);
        printChar(0x2503, i, WIDTH);
    }

    // Fill map with white spaces
    for (i = 0; i < HEIGHT; i++)
        printLine(map, i, L"", &alignJustified, false);

    // Draw the highscore indicator (visible at all times)
    swprintf(hiscore, 14, L"HISCORE %05d", 0);
    printLine(map, 0, hiscore, &alignCentered, false);
}

bool obstacleHit(MAP, int pos[]) {
    return (map[pos[0]][pos[1]] > L' ' || map[pos[0] + 1][pos[1]] > L' ' ||
            map[pos[0]][pos[1] + 1] > L' ' ||
            map[pos[0] + 1][pos[1] + 1] > L' ');
}

void gameScreen(MAP, unsigned int hiscore) {
    int i, level, lives, score, saved, distance, oneUp, elapsed,
        margins[] = {1, 28}, frogPos[] = {margins[1] - 2, WIDTH / 2 - 1};
    wchar_t line[WIDTH + 1];
    time_t t = time(NULL);

    level = score = saved = distance = 0;
    lives = 7;
    oneUp = 10000;
    drawHUD(map, margins);

    // Wipe any written text
    for (i = 2; i < 28; i++)
        printLine(map, i, L"", &alignJustified, false);

    while (saved < 5) {
        updateHUD(map, oneUp, hiscore, score, lives,
                  (elapsed = difftime(time(NULL), t)));
        if (!obstacleHit(map, frogPos) || elapsed >= 60)
            drawFrog(map, frogPos, true);
        else {
            drawFrog(map, frogPos, false);
            if (!(--lives)) {
                // gameOver();
                titleScreen(map, hiscore);
            }
            t = time(NULL);
        }
        moveFrog(map, margins, frogPos, &distance, &score);
        usleep(FRAMERATE);
    }
}

void titleScreen(MAP, unsigned int hiscore) {
    wchar_t *title[] = {L"FROGGER!", L"- THE DEMAKE -"},
            *howToScore[] = {L"10 Pts   For every leap forward",
                             L"50 Pts   For every frog that crossed",
                             L"1000 Pts For crossing all frogs",
                             L"10 Pts   For every remaining second", L""},
            *howToPlay[] = {L"W - Move up", L"A - Move left", L"S - Move down",
                            L"D - Move right", L"Enter - Pause-Unpause"};
    bool toggle, interrupted;
    time_t t;

    initmap(map);
    toggle = false;
    if (printTextBox(map, title, 8, 2, &alignCentered) &&
        printLine(map, 27, L"Press ENTER to play", &alignCentered, true))
        while (
            (toggle && printInstructions(map, L"How to Play", howToPlay)) ||
            (!toggle && printInstructions(map, L"How to Score", howToScore))) {
            t = time(NULL);
            while (difftime(time(NULL), t) < 3 &&
                   !(interrupted = pressed(L'\n')))
                ;
            if (interrupted)
                break;
            toggle = !toggle;
        }
    gameScreen(map, hiscore);
}

// NOTE: Main function of the Frogger game

int main(int argc, char *argv[]) {
    wchar_t map[HEIGHT][WIDTH];
    setlocale(LC_CTYPE, "");
    enable_raw_mode();
    titleScreen(map, 0);
    disable_raw_mode();
    tcflush(0, TCIFLUSH);
    return EXIT_SUCCESS;
}
