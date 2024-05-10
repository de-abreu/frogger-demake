#include <locale.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/ioctl.h>
#include <termios.h>
#include <time.h>
#include <unistd.h>
#include <wchar.h>
#define FRAMERATE 50000 // 0.05 seconds, or 20 frames per second
#define HEIGHT 30       // map height
#define WIDTH 40        // map width
#define TIME_LIMIT 60
#define MAP wchar_t(*map)[WIDTH]

// NOTE: Functions for detecting and capturing key presses
bool kbhit();
bool pressed(wchar_t key);
void disable_raw_mode();
void enable_raw_mode();

// NOTE: Functions for printing characters or strings of characters
bool printInstructions(MAP, wchar_t *header, wchar_t *text[]);
bool printLine(MAP, int line, wchar_t *string, int (*align)(wchar_t *string),
               bool interruptable);
bool printTextBox(MAP, wchar_t *strings[], int height, int lines,
                  int (*align)(wchar_t *));
int alignCentered(wchar_t *string);
int alignJustified(wchar_t *string);
int alignLeft(wchar_t *string);
void printChar(wchar_t c, int i, int j);
void printString(MAP, wchar_t *string, int i, int j, int size);

// NOTE: Functions to draw game objects
bool drawFrog(MAP, int pos[], bool alive);
void drawHUD(MAP, int margins[]);
void updateHUD(MAP, int oneUp, int hiscore, int score, int lives, int elapsed);

// NOTE: Functions to manipulate game objects

bool moveFrog(MAP, int *margins, int *pos, int *distance, int *score);
bool obstacleHit(MAP, int pos[]);
void gameScreen(MAP, unsigned int hiscore);
void initmap(MAP);
void titleScreen(MAP, unsigned int hiscore);
