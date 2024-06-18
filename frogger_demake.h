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
#define FRAMERATE 50000          // 0.05 seconds, or 20 frames per second
#define HEIGHT 30                // Map height
#define LANES 10                 // Amount of lanes in the map
#define LOWERBOUNDARY HEIGHT - 2 // Game screen lower boundary
#define MAP wchar_t(*map)[WIDTH] // Wide char matrix used to store a variety of elements
#define MAX_LIVES 7              // Maximum amount of lives (retries) the player can have
                                 // at any moment
#define TIME_LIMIT 60            // Time limit (in seconds) for the player to reach a pond
#define UPPERBOUNDARY 1          // Game screen upper boundary
#define WIDTH 40                 // map width


// NOTE: Structures and enumerations.

typedef struct object {
    int width;
    float pos[2];
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
void initPos(float *pos);
void initSetup(Lane *setup, int level);
void initStats(Stats *s, int hiscore);
void initTitle(MAP);
void initTruck(wchar_t **charmap);
void initTurtles(wchar_t **charmap, int quantity);
void initYellow(wchar_t **charmap);
void initmap(MAP);
void freeObject(Object *o);

// NOTE: Functions for detecting and capturing key presses
bool kbhit();
bool pressed(wchar_t key);
void disable_raw_mode();
void enable_raw_mode();

// NOTE: Functions for printing characters or strings of characters
bool printInstructions(MAP, wchar_t *header, wchar_t *text[]);
bool printLine(MAP, int line, wchar_t *string, int (*align)(wchar_t *string),
               bool interruptable);
bool printTextBox(MAP, wchar_t **strings, int height, int lines,
                  int (*align)(wchar_t *));
int alignCentered(wchar_t *string);
int alignJustified(wchar_t *string);
int alignLeft(wchar_t *string);
void printChar(wchar_t c, int row, int col);
void printString(MAP, wchar_t *string, int row, int col);

// NOTE: Functions to draw game objects
void drawFrog(MAP, Object *frog, bool alive);
void drawGameObject(MAP, Object *o);
void drawHUD(MAP, Stats *s);
void drawMap(MAP);
void drawObstacles(MAP, Lane *level);
void drawSaved(MAP, Object *frog, int pond);
void eraseGameObject(MAP, wchar_t **charmap, float *pos);
void updateHUD(MAP, Stats *prev, Stats *current, time_t timer);
void updateLanes(MAP, Lane *level);
void wipeScreen(MAP);

// NOTE: Functions to manipulate game objects
bool obstacleHit(MAP, Object *o);
int arrived(bool *ponds, Object *frog);
int moveFrog(MAP, Stats *s, Object *frog);
void gameScreen(MAP, unsigned int hiscore);
void moveObstacle(MAP, Object *o, int prev);
void resetTimer(MAP, Stats *s, time_t *timer);
void retry(MAP, Object *frog, Stats *s, time_t *timer);
void titleScreen(MAP, unsigned int hiscore);
