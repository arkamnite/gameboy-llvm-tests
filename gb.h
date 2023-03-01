#ifndef GB_HEADER_GUARD
#define GB_HEADER_GUARD

// TODO:
// - Add an assert method which will help handle panics.

// Memory-mapped IO addresses
#define ADDR_SCY    0xFF42
#define ADDR_SCX    0xFF43
#define ADDR_P1     0xFF00

// Create pointers to IO
unsigned char *r_p1 =  (unsigned char*) 0xFF00;
unsigned char *r_scx = (unsigned char*) 0xFF43;
unsigned char *r_scy = (unsigned char*) 0xFF42;

// JOYPAD
const unsigned char P1_SELECT_ACTION        = 0b00100000;
const unsigned char P1_SELECT_DIRECTION     = 0b00010000;
const unsigned char P1_INPUT_DOWN           = 0b00001000;
const unsigned char P1_INPUT_START          = 0b00001000;
const unsigned char P1_INPUT_UP             = 0b00000100;
const unsigned char P1_INPUT_SELECT         = 0b00000100;
const unsigned char P1_INPUT_LEFT           = 0b00000010;
const unsigned char P1_INPUT_B              = 0b00000010;
const unsigned char P1_INPUT_RIGHT          = 0b00000001;
const unsigned char P1_INPUT_A              = 0b00000001;

typedef enum {
    A =         P1_INPUT_A,
    B =         P1_INPUT_B,
    Down =      P1_INPUT_DOWN,
    Up =        P1_INPUT_UP,
    Right =     P1_INPUT_RIGHT,
    Left =      P1_INPUT_LEFT,
    Select =    P1_INPUT_SELECT,
    Start =     P1_INPUT_START,
    INVALID =   0
} JOYPAD_INPUT;

typedef enum {
    Action =    P1_SELECT_ACTION,
    Direction = P1_SELECT_DIRECTION
} JOYPAD_INPUT_TYPE;

// Utility functions

/// @brief Check which buttons are being pressed, if any,
/// @param inputType 
/// @return 
unsigned char readInput(JOYPAD_INPUT_TYPE inputType) {
    // Set the correct input mode.
    if (inputType == Action || inputType == Direction)
        *r_p1 = inputType;
    else
        return INVALID;

    // Read from the input accordingly
    unsigned char input = *r_p1;
    return input;
}

#endif // GB_HEADER_GUARD