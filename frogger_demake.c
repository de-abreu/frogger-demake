#include "kbhit.h"
#include <locale.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <wchar.h>
#define FRAMERATE 50000 // 0.05 seconds, or 20 frames per second
#define HEIGHT 30       // map height
#define WIDTH 40        // map width

bool pressed(wchar_t key) { return kbhit() && getwchar() == key; }

void printChar(wchar_t c, int i, int j) {
    wprintf(L"\033[%d;%dH%lc", i + 2, j + 2, c);
    fflush(stdout);
}

int alignTextCentered(int strLen) { return (WIDTH - strLen) / 2; }

int alignTextLeft(int strLen) { return 2; }

// Function to print a line of text, character by character, overwriting a
// previous line if necessary.
bool printLine(wchar_t (*map)[WIDTH], int line, wchar_t *string,
               int (*align)(int), bool delay) {
    int i, printStart = 2, printEnd, length = wcslen(string),
           offset = align(length);

    // If the start of the text contained by the selected line is further left
    // to the current's find its starting index.
    while (map[line][printStart] == ' ' && printStart < offset)
        printStart++;
    // If the text to be placed is aligned further right in the line than the
    // current one, pad it using white spaces.
    for (i = printStart; i < offset; i++)
        map[line][i] = ' ';
    // Place the text in the line from the position given by j onwards.
    for (i = offset; string[i - offset]; i++)
        map[line][i] = string[i - offset];
    // Paddle the right with white spaces
    for (printEnd = i; i < WIDTH; i++) {
        if (map[line][i] != ' ')
            printEnd = i + 1;
        map[line][i] = ' ';
    }
    // Start printing from the position of the text further left to the position
    // of the text that ends further right.
    for (i = printStart; i < printEnd; i++) {
        if (pressed(L'\n'))
            return false;
        printChar(map[line][i], line, i);
        if (delay)
            usleep(FRAMERATE);
    }
    return true;
}

bool printTextBox(wchar_t (*map)[WIDTH], wchar_t *strings[], int height,
                  int lines, int (*align)(int)) {
    int i;

    for (i = 0; i < lines; i++) {
        if (!printLine(map, height, strings[i], align, true))
            return false;
        height += 2;
    }
    return true;
}

bool printInstructions(wchar_t (*map)[WIDTH], wchar_t *header,
                       wchar_t *text[]) {
    if (!printLine(map, 14, header, &alignTextCentered, true) ||
        !printTextBox(map, text, 16, 5, &alignTextLeft))
        return false;
    return true;
}

void initmap(wchar_t (*map)[WIDTH]) {
    int i, j;
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
        for (j = 0; j < WIDTH; j++)
            printChar(map[i][j] = ' ', i, j);

    // Draw the highscore indicator (visible at all times)
    swprintf(hiscore, 14, L"HISCORE %05d", 0);
    printLine(map, 0, hiscore, &alignTextCentered, false);
}

// void gameScreen(wchar_t map, int level, int lives, unsigned int score,
//                 unsigned int hiscore) {
//     int playerPos[] = {28, 19};
//     int saved = 0;

//     // Fill map with white spaces
//     for (i = 0; i < HEIGHT; i++)
//         for (j = 0; j < WIDTH; j++)
//             printChar(map[i][j] = ' ', i, j);

//     traverse(map, &clearChar, int, int))
//     while (saved < 5) {
//         drawScreen(playerPos);
//         movePlayer();
//         usleep(FRAMERATE);
//     }
// }

void titleScreen(wchar_t (*map)[WIDTH], unsigned int hiscore) {
    wchar_t *title[] = {L"FROGGER!", L"- THE DEMAKE -"},
            *howToPlay[] = {L"10 Pts   For every leap forward",
                            L"50 Pts   For every frog that crossed",
                            L"1000 Pts For crossing all frogs",
                            L"10 Pts   For every remaining second", L""},
            *howToScore[] = {L"W - Move up", L"A - Move left", L"S - Move down",
                             L"D - Move right", L"Enter - Pause-Unpause"};
    bool toggle = false;
    time_t t = time(NULL);

    if (!printTextBox(map, title, 8, 2, &alignTextCentered) ||
        !printLine(map, 27, L"Press ENTER to play", &alignTextCentered, true))
        return;

    while (!pressed(L'\n')) {
        if ((toggle && !printInstructions(map, L"How to Play", howToPlay)) ||
            (!toggle && !printInstructions(map, L"How to Score", howToScore)))
            break;
        if (difftime(time(NULL), t) < 3)
            continue;
        toggle = !toggle;
        t = time(NULL);
    }
}

int main(int argc, char *argv[]) {
    wchar_t map[HEIGHT][WIDTH];
    setlocale(LC_CTYPE, "");
    enable_raw_mode();
    initmap(map);
    titleScreen(map, 0);
    printLine(map, 0, L"Success!", &alignTextCentered, false);
    disable_raw_mode();
    tcflush(0, TCIFLUSH);
    return EXIT_SUCCESS;
}
