#include "data_room.h"
#include "main.h"
#include "code_08001360.h"
#include "code_08003980.h"
#include "code_080068f8.h"
#include "code_08007468.h"
#include "gameplay.h"
#include "lib_0804c870.h"

asm(".include \"include/gba.inc\"");//Temporary

extern u16 *D_0300558c; // ???

extern struct FontDefinition D_089de670;
extern struct Scene D_089ddbcc; // Debug Menu Script
extern struct Scene D_089cdf08; // Game Select Script
extern struct Scene D_089d7964; // Results (Score) Script
extern struct Scene D_089cde20; // Main Menu Script
extern struct Scene D_089d471c; // Rhythm Test Script
extern struct Scene D_089cdc24; // Rhythm Data Room Script
extern struct Scene D_089d85b4; // Studio Menu Script
extern struct Scene D_089cfc1c; // Options Menu Script

enum MainMenuButtonsEnum {
    GAME_SELECT,
    RHYTHM_TEST,
    RHYTHM_DATA_ROOM,
    STUDIO,
    OPTIONS_MENU
};

/* MAIN MENU */

#include "asm/main_menu/asm_0801242c.s"

#include "asm/main_menu/asm_08012438.s"

#include "asm/main_menu/asm_08012464.s"

#include "asm/main_menu/asm_08012494.s"

#include "asm/main_menu/asm_080124d0.s"

#include "asm/main_menu/asm_080125f8.s"

#include "asm/main_menu/asm_080125fc.s"

#include "asm/main_menu/asm_080127d0.s"

#include "asm/main_menu/asm_080127ec.s"
