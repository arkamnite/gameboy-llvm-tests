#include <stdbool.h>

typedef struct {
    char xpos;
    char ypos;
} tile;

const int tiledata[] = { 0x10, 0x11, 0xf2 };
tile mytile = { 34, 45 };

// #define DMG

#ifdef DMG
void init() {
    asm("jp main"
        :
        :
        :);
    return; 
}
#endif

char all_sums(char* x) {
    *x = 5;
    // for (char i = 0; i < *x; i++) {
    //     x = x + 1;
    // }
    return *x;
}

void move_tile(tile* t, char amount) {
    t->xpos += amount;
    t->ypos += amount;
}

int main()
{
    char *y;
    *y = 10;
    all_sums(y);
    return 0;
}