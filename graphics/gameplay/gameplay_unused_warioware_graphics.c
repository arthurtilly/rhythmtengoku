#include "global.h"
#include "graphics.h"

struct OamDimensions {
    u8 width;
    u8 height;
} __attribute__((packed));

struct OamDimensions D_08bd0cac = {0, 0};
struct OamDimensions D_08bd0cae = {8, 8};
struct OamDimensions D_08bd0cb0 = {16, 16};
struct OamDimensions D_08bd0cb2 = {32, 32};
struct OamDimensions D_08bd0cb4 = {64, 64};
struct OamDimensions D_08bd0cb6 = {16, 8};
struct OamDimensions D_08bd0cb8 = {32, 8};
struct OamDimensions D_08bd0cba = {32, 16};
struct OamDimensions D_08bd0cbc = {64, 32};
struct OamDimensions D_08bd0cbe = {8, 16};
struct OamDimensions D_08bd0cc0 = {8, 32};
struct OamDimensions D_08bd0cc2 = {16, 32};
struct OamDimensions D_08bd0cc4 = {32, 64};
struct OamDimensions D_08bd0cc6 = {0, 0};

struct Vector2 D_08bd0cc8 = {196, 2048};
struct Vector2 D_08bd0ccc = {198, 2048};
struct Vector2 D_08bd0cd0 = {200, 2048};
struct Vector2 D_08bd0cd4 = {515, 1};