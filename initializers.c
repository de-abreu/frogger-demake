#include "frogger_demake.h"

void initStats(Stats *s, int hiscore) {
    s->level = s->score = s->saved = s->elapsed = 0;
    s->distance = LOWERBOUNDARY - 2;
    s->hiscore = hiscore;
    s->lives = 7;
    s->oneUp = 10000;
    memset(s->ponds, false, sizeof(s->ponds));
}

void initPos(float *pos) {
    pos[0] = LOWERBOUNDARY - 2;
    pos[1] = WIDTH / 2 - 1;
}

void initFrog(Object *frog) {
    initPos(frog->pos);
    frog->charmap[0] = wmemcpy(malloc(3 * sizeof(wchar_t)), L"F┓", 3);
    frog->charmap[1] = wmemcpy(malloc(3 * sizeof(wchar_t)), L"┗┛", 3);
}

void initCharmap(wchar_t **charmap, wchar_t *line0, wchar_t *line1,
                 int length) {
    length++;
    charmap[0] = wmemcpy(malloc(length * sizeof(wchar_t)), line0, length);
    charmap[1] = wmemcpy(malloc(length * sizeof(wchar_t)), line1, length);
}

void initTurtles(wchar_t **charmap, int quantity) {
    int i;
    quantity *= 2;
    charmap[0] = malloc((quantity + 1) * sizeof(wchar_t));
    charmap[1] = malloc((quantity + 1) * sizeof(wchar_t));

    for (i = 0; i < quantity; i += 2) {
        wmemcpy(charmap[0] + i, L"T┓", 3);
        wmemcpy(charmap[1] + i, L"┗┛", 3);
    }
}

void initLog(wchar_t **charmap, int length) {
    charmap[0] = malloc((length + 1) * sizeof(wchar_t));
    charmap[1] = malloc((length + 1) * sizeof(wchar_t));

    charmap[0][0] = L'L';
    wmemset(charmap[0] + 1, L'━', length - 2);
    wmemcpy(charmap[0] + length - 1, L"┓", 2);

    charmap[1][0] = L'┗';
    wmemset(charmap[1] + 1, L'━', length - 2);
    wmemcpy(charmap[1] + length - 1, L"┛", 2);
}

void initSetup(Lane *setup, int level) {
    int i;

    setup[0].obstacle.pos[0] = LOWERBOUNDARY - 4;
    for (i = 1; i < 5; i++)
        setup[i].obstacle.pos[0] = setup[i - 1].obstacle.pos[0] - 2;
    setup[i].obstacle.pos[0] = setup[i - 1].obstacle.pos[0] - 4;
    for (i = 6; i < LANES; i++)
        setup[i].obstacle.pos[0] = setup[i - 1].obstacle.pos[0] - 2;

    setup[0].obstacle.width = setup[1].obstacle.width =
        setup[2].obstacle.width = setup[3].obstacle.width = 3;

    initCharmap(setup[0].obstacle.charmap, L"Y━┓", L"┗━┛", 3);
    initCharmap(setup[1].obstacle.charmap, L"Gr┓", L"┗━┛", 3);
    initCharmap(setup[2].obstacle.charmap, L"P━┓", L"┗━┛", 3);
    initCharmap(setup[3].obstacle.charmap, L"G━┓", L"┗━┛", 3);
    initCharmap(setup[4].obstacle.charmap, L"T━━━━┓", L"┗━━━━┛", 6);
    initTurtles(setup[5].obstacle.charmap, 3);
    initLog(setup[6].obstacle.charmap, 6);
    initLog(setup[7].obstacle.charmap, 16);
    initTurtles(setup[8].obstacle.charmap, 2);
    initLog(setup[9].obstacle.charmap, 16);

    switch (level) {
    default:
        setup[0].interval = 3 + 13;
        setup[0].quantity = 3;
        setup[0].speed = -1.0 / 5;
        setup[0].obstacle.pos[1] = 16;

        setup[1].interval = 3 + 13;
        setup[1].quantity = 3;
        setup[1].speed = 1.0 / 10;
        setup[1].obstacle.pos[1] = 22;

        setup[2].interval = 3 + 13;
        setup[2].quantity = 3;
        setup[2].speed = -1.0 / 3;
        setup[2].obstacle.pos[1] = 15;

        setup[3].interval = 3 + 40;
        setup[3].quantity = 1;
        setup[3].speed = 1.0 / 3;
        setup[3].obstacle.pos[1] = 0;

        setup[4].interval = 6 + 12;
        setup[4].quantity = 2;
        setup[4].speed = -1.0 / 3;
        setup[4].obstacle.pos[1] = 25;

        setup[5].interval = 3 * 2 + 2;
        setup[5].quantity = 5;
        setup[5].speed = -1.0;
        setup[5].obstacle.pos[1] = 3;

        setup[6].interval = 6 + 9;
        setup[6].quantity = 3;
        setup[6].speed = 1.0 / 2;
        setup[6].obstacle.pos[1] = 6;

        setup[7].interval = 16 + 6;
        setup[7].quantity = 2;
        setup[7].speed = 1.0;
        setup[7].obstacle.pos[1] = 16;

        setup[8].interval = 2 * 2 + 4;
        setup[8].quantity = 6;
        setup[8].speed = -1.0;
        setup[8].obstacle.pos[1] = 20;

        setup[9].interval = 16 + 4;
        setup[9].quantity = 4;
        setup[9].speed = 1.0 / 5;
        setup[9].obstacle.pos[1] = 8;
    }
}

void initTitle(MAP) {
    int i;
    wchar_t hiscore[14];

    // Set display's borders
    printChar(L'┏', -1, -1);
    printChar(L'┗', HEIGHT, -1);
    for (i = 0; i < WIDTH; i++) {
        printChar(L'━', -1, i);
        printChar(L'━', HEIGHT, i);
    }
    printChar(L'┓', -1, WIDTH);
    printChar(L'┛', HEIGHT, WIDTH);
    for (i = 0; i < HEIGHT; i++) {
        printChar(L'┃', i, -1);
        printChar(L'┃', i, WIDTH);
    }

    // Fill map with white spaces
    for (i = 0; i < HEIGHT; i++)
        printLine(map, i, L"", &alignJustified, false);

    // Draw the highscore indicator (visible at all times)
    swprintf(hiscore, 14, L"HISCORE %05d", 0);
    printLine(map, 0, hiscore, &alignCentered, false);
}

void freeObject(Object *o) {
    free(o->charmap[0]);
    free(o->charmap[1]);
}
