#ifndef GBLIB_INCLUDE_HEADER
#define GBLIB_INCLUDE_HEADER

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

void move_sprite(sprite* t, char x);

#endif