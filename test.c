#include <stdbool.h>
// #include "gb.h"

/// @brief A struct representing a sprite.
typedef struct {
    /// @brief The Y-coordinate of the sprite
    char ypos;
    /// @brief The X-coordinate of the sprite
    char xpos;
    /// @brief Character (CHR) code
    char chrCode;
    /// @brief Set of attribute flags
    char attributes;
} sprite;

// const int spritedata[] = { 0x10, 0x11, 0xf2 };
sprite mysprite = { 34, 45, true };
sprite mysprite2 = { 34, 45 };

static void initialise_ram(char* addr, char val) {
    *addr = val;
}

static void reset_ram(unsigned char val) {
    unsigned char *start = (unsigned char*) 0xc000;
    unsigned char *end = (unsigned char*) 0xe000;
    for (unsigned int i = 0; i < 0x2000; i++) {
        start[i] = val;
    }
}

void move_sprite(sprite* t, char x) {
    t->ypos += x;
    // t->ypos += x;
}

#ifdef DMG
#endif

int main()
{

    // Define MMIO registers

    // Initialise any RAM contents

    // CGB handles DMA transfers in every H-Blank,
    // so those addresses can be set to each tile
    // if needed.

    // Begin while loop
        // Process user input
        
        // Compute any game logic

        // Write any RAM contents to
        // OAM if needed (for CGB, just
        // await HBLANK to be finished

        // Wait for VBLANK before continuing

    // char *oam = (char*) 0xff04;

    // Read from the action buttons
    unsigned char *dpad = (unsigned char*) 0xFF00;
    unsigned char selectAction = 0b00100000;
    *dpad = selectAction;

    // Check if the A button is being pressed
    unsigned char a_button = 0b00000001;

    bool exit = false;

    // reset_ram(0);
    // initialise_ram((unsigned char*) &mysprite, 4);

    unsigned char input = *dpad;
    if (input & a_button) {
        return *dpad;
    }

    // while (!exit) {
    //     char input = *dpad;
    //     if (input & a_button) {
    //     // if (input) {
    //         move_sprite(&mysprite, 3);
    //         // move_sprite(&mysprite2, 6);
    //         // oam = &mysprite;
    //     }
    // }
    return 0;
}