#include "frogger_demake.h"
#include <wchar.h>

int alignCentered(wchar_t *string) { return (WIDTH - wcslen(string)) / 2; }

int alignLeft(wchar_t *string) { return 2; }

int alignJustified(wchar_t *string) { return 0; }

void printChar(wchar_t c, int row, int col) {
    wprintf(L"\033[%d;%dH%lc", row + 2, col + 2, c);
    fflush(stdout);
}

// Function to print a line of text, character by character, overwriting a
// previous line if necessary.
bool printLine(MAP, int line, wchar_t *string, int (*align)(wchar_t *string),
               bool interruptable) {
    int i, printStart = 0, printEnd, offset = align(string);

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
    if (interruptable)
        for (i = printStart; i < printEnd; i++) {
            if (pressed(L'\n'))
                return false;
            printChar(map[line][i], line, i);
            usleep(FRAMERATE);
        }
    else
        for (i = printStart; i < printEnd; i++)
            printChar(map[line][i], line, i);
    return true;
}

bool printTextBox(MAP, wchar_t **strings, int height, int lines,
                  int (*align)(wchar_t *)) {
    if (!lines)
        return true;
    if (!printLine(map, height, *strings, align, true))
        return false;
    return printTextBox(map, strings + 1, height + 2, lines - 1, align);
}

bool printInstructions(MAP, wchar_t *header, wchar_t *text[]) {
    return (printLine(map, 14, header, &alignCentered, true) &&
            printTextBox(map, text, 16, 5, &alignLeft))
               ? true
               : false;
}

void printString(MAP, wchar_t *string, int row, int col) {
    if (!(*string))
        return;
    printChar(map[row][col] = *string, row, col % WIDTH);
    printString(map, string + 1, row, col + 1);
}
