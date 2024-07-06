#include "frogger_demake.h"
#include <wchar.h>

int arrived(bool *ponds, Object *frog) {
    int low = 0, high = 4, pivot,
        boundaries[][2] = {{2, 5}, {10, 13}, {18, 21}, {26, 29}, {34, 37}};

    while (high - low > 1) {
        pivot = (high - low) / 2 + low;
        if (frog->pos[1] < boundaries[pivot][0])
            high = pivot;
        else if (frog->pos[1] > boundaries[pivot][1])
            low = pivot;
        else
            return pivot;
    }
    return -1;
}

// NOTE: Function for moving the frog, returns an integer indicating if a pond
// was reached (from 0 to 4) with -1 indicating otherwise.
int moveFrog(BACKGROUND, Stats *s, Object *frog) {
    int pond = -1;
    wchar_t c;

    if (!kbhit())
        return pond;
    c = getwchar();
    tcflush(0, TCIFLUSH);
    switch (c) {
    case L'w':
        if (frog->pos[0] <= UPPERBOUNDARY + 3 &&
            (pond = arrived(s->ponds, frog)) == -1)
            break;
        eraseGameObject(background, frog->charmap, frog->pos);
        if (--frog->pos[0] >= s->distance)
            break;
        s->score += 10;
        s->distance = frog->pos[0];
        break;
    case L'a':
        if (!frog->pos[1])
            break;
        eraseGameObject(background, frog->charmap, frog->pos);
        frog->pos[1]--;
        break;
    case L's':
        if (frog->pos[0] == LOWERBOUNDARY - 2)
            break;
        eraseGameObject(background, frog->charmap, frog->pos);
        frog->pos[0]++;
        break;
    case L'd':
        if (frog->pos[1] == WIDTH - 2)
            break;
        eraseGameObject(background, frog->charmap, frog->pos);
        frog->pos[1]++;
    }
    return pond;
}

bool obstacleHit(FOREGROUND, Object *frog) {
    int pos[2] = {frog->pos[0], frog->pos[1]};
    return (foreground[pos[0]][pos[1]] > L' ' ||
            foreground[pos[0] + 1][pos[1]] > L' ' ||
            foreground[pos[0]][pos[1] + 1] > L' ' ||
            foreground[pos[0] + 1][pos[1] + 1] > L' ');
}

void resetTimer(BACKGROUND, Stats *s, time_t *timer) {
    wchar_t string[16];
    wmemset(string, L'█', 15);
    string[15] = L'\0';
    printString(background, string, 29, WIDTH / 2 - 1);
    s->elapsed = 0;
    *timer = time(NULL);
}

void nextFrog(BACKGROUND, Object *frog, Stats *s, time_t *timer) {
    eraseGameObject(background, frog->charmap, frog->pos);
    initPos(frog->pos);
    resetTimer(background, s, timer);
    s->distance = frog->pos[0];
}

void gameScreen(BACKGROUND, unsigned int hiscore) {
    int pond;
    Stats prev, current;
    Object frog;
    Lane setup[LANES];
    time_t timer = time(NULL);
    wchar_t foreground[HEIGHT][WIDTH] = {0};

    initStats(&current, hiscore);
    initSetup(setup, current.level);
    initFrog(&frog);
    drawHUD(background, &current);
    drawMap(background);
    drawObstacles(foreground, setup);

    while (current.saved < 5) {
        memcpy(&prev, &current, sizeof(Stats));
        if ((pond = moveFrog(background, &current, &frog)) != -1) {
            drawSaved(background, &frog, pond);
            nextFrog(background, &frog, &current, &timer);
            current.saved += 1;
            current.score += 50;
        } else if (current.elapsed < 15)
            drawFrog(background, &frog, true);
        else {
            drawFrog(background, &frog, false);
            usleep(19 * FRAMERATE);
            if (--current.lives) {
                printChar(background[29][7 + current.lives] = L' ', 29,
                          7 + current.lives);
                nextFrog(background, &frog, &current, &timer);
            } else {
                // gameOver();
                titleScreen(background, hiscore);
            }
        }
        usleep(FRAMERATE);
        updateLanes(foreground, background, setup);
        updateHUD(background, &prev, &current, timer);
    }
}

void titleScreen(BACKGROUND, unsigned int hiscore) {
    wchar_t *title[] = {L"FROGGER!", L"- THE DEMAKE -"},
            *howToScore[] = {L"10 Pts   For every leap forward",
                             L"50 Pts   For every frog that crossed",
                             L"1000 Pts For crossing all frogs",
                             L"10 Pts   For every remaining second", L""},
            *howToPlay[] = {L"W - Move up", L"A - Move left", L"S - Move down",
                            L"D - Move right", L"Enter - Pause-Unpause"};
    bool toggle, interrupted;
    time_t t;

    initTitle(background);
    toggle = false;
    if (printTextBox(background, title, 8, 2, &alignCentered) &&
        printLine(background, 27, L"Press ENTER to play", &alignCentered, true))
        while ((toggle &&
                printInstructions(background, L"How to Play", howToPlay)) ||
               (!toggle &&
                printInstructions(background, L"How to Score", howToScore))) {
            t = time(NULL);
            while (difftime(time(NULL), t) < 3 &&
                   !(interrupted = pressed(L'\n')))
                ;
            if (interrupted)
                break;
            toggle = !toggle;
        }
    gameScreen(background, hiscore);
}

// NOTE: Main function of the Frogger game

int main(int argc, char *argv[]) {
    wchar_t background[HEIGHT][WIDTH];
    setlocale(LC_CTYPE, "");
    enable_raw_mode();
    titleScreen(background, 0);
    disable_raw_mode();
    tcflush(0, TCIFLUSH);
    return EXIT_SUCCESS;
}
