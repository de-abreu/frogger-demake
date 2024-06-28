#include <locale.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/ioctl.h>
#include <termios.h>
#include <time.h>
#include <unistd.h>
#include <wchar.h>
#include <string.h>
#define FRAMERATE 50000                        // 0.05 seconds, or 20 frames per second
#define HEIGHT 30                              // Map height
#define LANES 10                               // Amount of lanes in the map
#define LOWERBOUNDARY HEIGHT - 2               // Game screen lower boundary
#define BACKGROUND wchar_t(*background)[WIDTH] // Wide char matrix to store background elements
#define FOREGROUND wchar_t(*foreground)[WIDTH] // Wide char matrix to store obstacles
#define MAX_LIVES 7                            // Maximum amount of lives (retries) the player can have
                                               // at any moment
#define TIME_LIMIT 60                          // Time limit (in seconds) for the player to reach a pond
#define UPPERBOUNDARY 1                        // Game screen upper boundary
#define WIDTH 40                               // map width


// NOTE: Structures and enumerations.

typedef struct object {
    int pos[2];
    wchar_t *charmap[2];
} Object;

typedef struct {
    int distance, elapsed, hiscore, level, lives, oneUp, saved, score;
    bool ponds[5];
} Stats;

typedef struct {
    int interval, quantity; float speed;
    Object obstacle;
} Lane;

// NOTE: Functions for initializing and freeing data structures
void initFrog(Object *frog);
void initGray(wchar_t **charmap);
void initGreen(wchar_t **charmap);
void initLog(wchar_t **charmap, int length);
void initObject(wchar_t **charmap);
void initPink(wchar_t **charmap);
void initPos(int *pos);
void initSetup(Lane *setup, int level);
void initStats(Stats *s, int hiscore);
void initTitle(BACKGROUND);
void initTruck(wchar_t **charmap);
void initTurtles(wchar_t **charmap, int quantity);
void initYellow(wchar_t **charmap);
void initmap(BACKGROUND);
void freeObject(Object *o);

// NOTE: Functions for detecting and capturing key presses
bool kbhit();
bool pressed(wchar_t key);
void disable_raw_mode();
void enable_raw_mode();

// NOTE: Functions for printing characters or strings of characters
bool printInstructions(BACKGROUND, wchar_t *header, wchar_t *text[]);
bool printLine(BACKGROUND, int line, wchar_t *string, int (*align)(wchar_t *string),
               bool interruptable);
bool printTextBox(BACKGROUND, wchar_t **strings, int height, int lines,
                  int (*align)(wchar_t *));
int alignCentered(wchar_t *string);
int alignJustified(wchar_t *string);
int alignLeft(wchar_t *string);
void printChar(wchar_t c, int row, int col);
void printString(BACKGROUND, wchar_t *string, int row, int col);

// NOTE: Functions to draw game objects
void drawFrog(BACKGROUND, Object *frog, bool alive);
void drawGameObject(BACKGROUND, Object *o);
void drawHUD(BACKGROUND, Stats *s);
void drawBackground(BACKGROUND);
void drawObstacles(BACKGROUND, FOREGROUND, Lane *level);
void drawSaved(BACKGROUND, Object *frog, int pond);
void eraseGameObject(FOREGROUND, BACKGROUND, wchar_t **charmap, int *pos);
void moveObstacle(FOREGROUND, BACKGROUND, Object *o, int prev);
void updateHUD(BACKGROUND, Stats *prev, Stats *current, time_t timer);
void updateLanes(FOREGROUND, BACKGROUND, Lane *level);
void wipeScreen(BACKGROUND);

// NOTE: Functions to manipulate game objects
bool obstacleHit(BACKGROUND, Object *o);
int arrived(bool *ponds, Object *frog);
int moveFrog(BACKGROUND, Stats *s, Object *frog);
void gameScreen(BACKGROUND, unsigned int hiscore);
void resetTimer(BACKGROUND, Stats *s, time_t *timer);
void retry(BACKGROUND, Object *frog, Stats *s, time_t *timer);
void titleScreen(BACKGROUND, unsigned int hiscore);
