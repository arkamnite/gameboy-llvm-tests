#include <stdbool.h>
#include "gblib.h"


// const int spritedata[] = { 0x10, 0x11, 0xf2 };
sprite mysprite = { 34, 45, true };
sprite mysprite2 = { 34, 45 };

// int *p;

// #define DMG
// extern char x;
void init() {
#ifdef DMG
    // char x = 3;
    // asm("ld hl, %0"
    //     :"=r"(x) // x is write-only output
    // );
    asm("jp main"
        :
        :
        :);
    return; 
#endif
}

void initialise_ram(char* addr, char val) {
    *addr = val;
}

void reset_ram(unsigned char val) {
    unsigned char *start = (unsigned char*) 0xc000;
    unsigned char *end = (unsigned char*) 0xe000;
    for (unsigned int i = 0; i < 0x1FFF; i++) {
        start[i] = val;
    }
}

// void test_asm(char x) {
//     asm(
//         // "ld 251, %0;"
//         "ld a, $500"
//         // "jp main"
//         :"=r"(x)
//     );
// }
#ifdef DMG
#endif

int main()
{
    // char x = 32;
    // test_asm(x);
    // init();
    char *oam = (char*) 0xff00;
    char *dpad = (char*) 0xff01;
    bool exit = false;

    reset_ram(1);

    // volasprite char input;
    // unsigned char amount = 0;
    // initialise_ram((char*) &mysprite, 0);
    // // initialise_ram((char*) &mysprite2, 0);

    // while (!exit) {
    //     char input = *dpad;
    //     if (input) {
    //         move_sprite(&mysprite, 3);
    //         // move_sprite(&mysprite2, 6);
    //         oam = &mysprite;
    //     }
    // }

    // while(true) {
    //     input = (char)*dpad;
    //     if (input) {
    //         oam = &mysprite;
    //     }
    //     amount += 1;
    // }
    return 0;
}