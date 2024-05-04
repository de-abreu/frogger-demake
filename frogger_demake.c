#include <locale.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <wchar.h>
#define FRAMERATE 50000 // 0.05 seconds, or 20 frames per second
#define HEIGHT 30       // Screen height
#define WIDTH 40        // Screen width

void printChar(wchar_t **screen, int i, int j) {
    wprintf(L"\033[%d;%dH%lc", i, j, screen[i][j]);
    fflush(stdout);
}

void clearChar(wchar_t **screen, int i, int j) { screen[i][j] = ' '; }

void traverse(wchar_t **screen, void (*func)(wchar_t **, int, int)) {
    int i, j;

    for (i = 1; i <= HEIGHT; i++)
        for (j = 1; j <= WIDTH; j++)
            func(screen, i, j);
}

int center(wchar_t *string) { return (WIDTH + 2 - wcslen(string)) / 2; }

void replaceRow(wchar_t **screen, int row, int col, wchar_t *string) {
    int i, length = wcslen(string);

    for (i = 1; i < col; i++)
        clearChar(screen, row, i);
    wcscpy(screen[row] + i, string);
    for (i += length; i <= WIDTH; i++)
        clearChar(screen, row, i);
    for (i = 0; i <= WIDTH; i++) {
        printChar(screen, row, i);
        usleep(FRAMERATE);
    }
}

wchar_t **howToScore(wchar_t **screen) {
    wchar_t *string = L"How to Score";
    int i = 15;

    replaceRow(screen, i, center(string), string);
    string = L"10 Pts   For every leap forward";
    replaceRow(screen, i += 2, center(string), string);
    string = L"50 Pts   For every frog that crossed";
    replaceRow(screen, i += 2, center(string), string);
    string = L"1000 Pts For crossing all frogs";
    replaceRow(screen, i += 2, center(string), string);
    string = L"10 Pts   For every remaining second";
    replaceRow(screen, i += 2, center(string), string);
    string = L"Press ENTER to play";
    replaceRow(screen, i + 2, center(string), string);
    return screen;
}

wchar_t **howToPlay(wchar_t **screen) {
    wchar_t *string = L"How to Play";
    int i = 15;

    replaceRow(screen, int row, int col, wchar_t *string);
    return screen;
}

wchar_t **initScreen() {
    int i, j;
    wchar_t *string = L"HISCORE",
            **screen = malloc((HEIGHT + 2) * sizeof(wchar_t *));

    for (i = 0; i < HEIGHT + 2; i++)
        screen[i] = malloc((WIDTH + 2) * sizeof(wchar_t));

    // Set top and bottom borders
    screen[0][0] = 0x250F;
    screen[HEIGHT + 1][0] = 0x2517;
    for (i = 1; i <= WIDTH; i++)
        screen[0][i] = screen[HEIGHT + 1][i] = 0x2501;
    screen[0][WIDTH + 1] = 0x2513;
    screen[HEIGHT + 1][WIDTH + 1] = 0x251B;

    // Set lateral borders
    for (i = 1; i <= HEIGHT; i++)
        screen[i][0] = screen[i][WIDTH + 1] = 0x2503;

    // Fill screen with white spaces
    traverse(screen, 0, &clearChar);

    // Draw the highscore indicator (visible at all times)
    swprintf(screen[1] + 14, 14, L"HISCORE %05d", 0);
    return screen;
}

void titleScreen(wchar_t **screen, unsigned int hiscore, unsigned int counter) {
    wchar_t = L"FROGGER!";
    int toggle = 0;
    char c = 0;
    wcscpy(screen[11] + 17, L"FROGGER!");
    wcscpy(screen[13] + 14, L"- THE DEMAKE -");

    while (c != '\n') {
        if (!(counter % 15 * 20 * FRAMERATE))
            toggle = !toggle;
        if (screen)
            traverse(howToPlay(screen), FRAMERATE, &printChar);
        else
            traverse(howToScore(screen), FRAMERATE, &printChar);
    }

    printScreen(s);
}

void gameScreen(int level, int lives, int score, int hiscore) {}

int main(int argc, char *argv[]) {
    setlocale(LC_CTYPE, "");
    titleScreen(initScreen(), 0, 0);
    return EXIT_SUCCESS;
}
