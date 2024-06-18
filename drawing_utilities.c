#include "frogger_demake.h"
#include <wchar.h>

// NOTE: Functions for drawing game objects

void drawGameObject(MAP, Object *o) {
    int i;

    for (i = 0; i < 2; i++)
        printString(map, o->charmap[i], o->pos[0] + i, o->pos[1]);
}

void eraseGameObject(MAP, wchar_t **charmap, float *pos) {
    int i, j;
    wchar_t *tile, *sprite;

    for (i = 0; i < 2; i++) {
        sprite = charmap[i];
        for (j = pos[1]; *sprite; j++) {
            tile = map[(int)pos[0] + i] + j;
            printChar(*tile, (int)pos[0] + i, j);
            sprite++;
        }
    }
}

void drawFrog(MAP, Object *frog, bool alive) {
    int i, j;
    for (i = 0; i < 2; i++)
        for (j = 0; frog->charmap[i][j]; j++)
            printChar(frog->charmap[i][j], frog->pos[0] + i, frog->pos[1] + j);
    if (!alive)
        printChar(L'☠', frog->pos[0], frog->pos[1]);
}

void drawSaved(MAP, Object *frog, int pond) {
    int row, col, i, j;
    for (i = 0; i < 2; i++) {
        row = UPPERBOUNDARY + 1 + i;
        col = 3 + 8 * pond;
        for (j = 0; frog->charmap[i][j]; j++)
            printChar(frog->charmap[i][j], row, col++);
    }
}

void drawMap(MAP) {
    wchar_t string[WIDTH + 1];
    int count, i = 6;

    wipeScreen(map);

    // Boundaries around ponds
    for (count = 0; count < 5; count++) {
        printString(map, L"┯━━┯", UPPERBOUNDARY, i);
        printString(map, L"│  │", UPPERBOUNDARY + 1, i);
        printString(map, L"└──┘", UPPERBOUNDARY + 2, i);
        i += 8;
    }
    printChar(L'┠', UPPERBOUNDARY + 2, -1);
    printChar(L'┨', UPPERBOUNDARY + 2, WIDTH);

    wmemset(string, L'─', 40);
    string[40] = L'\0';

    // Opposite edge of the river
    printString(map, string, HEIGHT / 2 - 1, 0);
    printChar(L'┠', HEIGHT / 2 - 1, -1);
    printChar(L'┨', HEIGHT / 2 - 1, WIDTH);

    // Edges of the asphalt
    printString(map, string, HEIGHT / 2, 0);
    printChar(L'┠', HEIGHT / 2, -1);
    printChar(L'┨', HEIGHT / 2, WIDTH);
    printString(map, string, LOWERBOUNDARY - 2, 0);
    printChar(L'┠', LOWERBOUNDARY - 2, -1);
    printChar(L'┨', LOWERBOUNDARY - 2, WIDTH);
}

void drawHUD(MAP, Stats *s) {
    wchar_t string[WIDTH + 1];

    // Draw indicators
    swprintf(string, 11, L"1-UP %0*d", 5, s->oneUp);
    printString(map, string, 0, 1);
    swprintf(string, 12, L"SCORE %0*d", 5, s->score);
    printString(map, string, 0, 28);
    swprintf(string, 6, L"%0*d", 5, s->hiscore);
    swprintf(string, 7, L"LIVES ");
    wmemset(string + 6, L'♥', s->lives);
    string[6 + s->lives] = L'\0';
    printString(map, string, 29, 1);
    wmemset(string, L'█', 15);
    swprintf(string + 15, 6, L" TIME");
    printString(map, string, 29, WIDTH / 2 - 1);

    // Draw the margins that separate the game board from the HUD
    wmemset(string, L'━', 40);
    string[40] = L'\0';
    printChar(L'┣', 1, -1);
    printLine(map, 1, string, &alignJustified, false);
    printChar(L'┫', 1, WIDTH);

    printChar(L'┣', 28, -1);
    printLine(map, 28, string, &alignJustified, false);
    printChar(L'┫', 28, WIDTH);
}

void drawObstacles(MAP, Lane *level) {
    int i, j, interval;
    Object *o;

    for (i = 0; i < LANES; i++) {
        o = &level[i].obstacle;
        interval = 0;
        for (j = 0; j < level[i].quantity; j++) {
            printString(map, o->charmap[0], o->pos[0], o->pos[1] + interval);
            printString(map, o->charmap[1], o->pos[0] + 1,
                        o->pos[1] + interval);
            interval += level[i].interval;
        }
    }
}

void updateHUD(MAP, Stats *prev, Stats *current, time_t timer) {
    wchar_t string[WIDTH];
    int col;

    if (prev->score != current->score) {
        swprintf(string, 6, L"%0*d", 5, current->score);
        printString(map, string, 0, 34);
        if (current->score > current->hiscore)
            current->hiscore = current->score;
        if (current->score > current->oneUp) {
            current->oneUp += 10000;
            current->lives = (current->lives + 1) % MAX_LIVES;
            printChar(map[29][6 + current->lives] = L'♥', 29,
                      6 + current->lives);
        }
        if (prev->oneUp != current->oneUp) {
            swprintf(string, 6, L"%0*d", 5, current->oneUp);
            printString(map, string, 0, 6);
        }
        if (prev->hiscore != current->hiscore) {
            swprintf(string, 6, L"%0*d", 5, current->hiscore);
            printString(map, string, 0, 21);
        }
    }
    current->elapsed = difftime(time(NULL), timer) / 4;
    if (prev->elapsed == current->elapsed)
        return;
    col = WIDTH / 2 + current->elapsed - 2;
    printChar(map[29][col] = L'░', 29, col);
}

void updateLanes(MAP, Lane *level) {
    int i, prev;
    Object *o;

    for (i = 0; i < LANES; i++) {
        o = &level[i].obstacle;
        prev = o->pos[1];
        o->pos[1] += level[i].speed;
        if (prev != (int)o->pos[1])
            moveObstacle(map, o, prev);
    }
}

void wipeScreen(MAP) {
    for (int i = UPPERBOUNDARY + 1; i < LOWERBOUNDARY; i++)
        printLine(map, i, L"", &alignJustified, false);
}
