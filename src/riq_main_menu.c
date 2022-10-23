#include "global.h"
#include "src/riq_main_menu.h"

#include "main.h"
#include "code_08001360.h"
#include "code_08003980.h"
#include "memory_heap.h"
#include "code_080068f8.h"
#include "code_08007468.h"
#include "code_0800b3c8.h"
#include "code_0800b778.h"
#include "src/riq_gameplay.h"
#include "lib_0804c870.h"

extern u16 *D_0300558c; // ???

extern const struct FontDefinition D_089de670;
extern const struct Scene D_089ddbcc; // Debug Menu Script
extern const struct Scene D_089cdf08; // Game Select Script
extern const struct Scene D_089d7964; // Results (Score) Script
extern const struct Scene D_089cde20; // Main Menu Script
extern const struct Scene D_089d471c; // Rhythm Test Script
extern const struct Scene D_089cdc24; // Rhythm Data Room Script
extern const struct Scene D_089d85b4; // Studio Menu Script
extern const struct Scene D_089cfc1c; // Options Menu Script

enum MainMenuButtonsEnum {
    GAME_SELECT,
    RHYTHM_TEST,
    RHYTHM_DATA_ROOM,
    STUDIO,
    OPTIONS_MENU
};


/* MAIN MENU */


// [func_0801242c] Initialise Static Variables
void func_0801242c() {
    D_030055d8 = GAME_SELECT;
}

// [func_08012438] Graphics Init. 2
void func_08012438(void) {
    u32 data;

    func_0800c604(0);
    data = func_080087b4(func_0800c3b8(), D_089cdc8c);
    task_run_after(data, func_0800bd04, 0);
}

// [func_08012464] Graphics Init. 1
void func_08012464(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089cdc44, 0x3000);
    task_run_after(data, func_08012438, 0);
}

// [func_08012494] Graphics Init. 0
void func_08012494(void) {
    func_0800856c(func_0800c3b8(), func_08012464, 0, 2);
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);
}

// [func_080124d0] Scene Init.
void func_080124d0(u32 arg) {
    const struct Scene *tempScene;
    u32 i;

    tempScene = func_0800061c();
    func_08007324(FALSE);
    func_080073f0();
    gMainMenuInfo.font2 = func_08005124(func_0800c3b8(), &D_089de670, 0, 0x340, 6);
    gMainMenuInfo.font1 = func_0800c660(0x300, 4);
    func_08005814(D_03005380, gMainMenuInfo.font1, D_089cdc40, D_0300558c);
    func_08012494();
    func_0804d160(D_03005380, D_0890a3c4, 0, 120, 64, 0x6e, 1, 0, 0);

    for (i = 0; i < 5; i++) {
        if (i == D_030055d8) {
            gMainMenuInfo.buttons[i] = func_0804d160(D_03005380, D_089cdc90[i], 0, 120, 64, 0x64, 1, 0, 0);
        } else {
            gMainMenuInfo.buttons[i] = func_0804d160(D_03005380, D_089cdca4[i], 0, 120, 64, 0x64, 1, 0, 0);
        }
    }

    gMainMenuInfo.screenReady = FALSE;
    gMainMenuInfo.bgY = 0;
    gMainMenuInfo.bgX = 0;
    gMainMenuInfo.unk1A = (tempScene != NULL);
    gMainMenuInfo.unk1B = FALSE;
    func_08000584(&D_089ddbcc);
    func_080009a0();
}

// [func_080125f8] Scene STUB
void func_080125f8(u32 arg) {
}

// [func_080125fc] Scene Main
void func_080125fc(u32 arg) {
    s32 prevButton;

    gMainMenuInfo.bgX += 1;
    gMainMenuInfo.bgY -= 1;
    func_0800e058(BG_LAYER_1, gMainMenuInfo.bgX >> 2, gMainMenuInfo.bgY >> 2);

    if (func_080127d0()) {
        prevButton = D_030055d8;
        if (D_030053b8 & DPAD_UP) {
            D_030055d8 -= 1;
        }
        if (D_030053b8 & DPAD_DOWN) {
            D_030055d8 += 1;
        }
        D_030055d8 = func_080087d4(D_030055d8, 0, 4);

        if (prevButton != D_030055d8) {
            func_08002634(&s_menu_cursor2_seqData);
            func_0804d8f8(D_03005380, gMainMenuInfo.buttons[prevButton], D_089cdca4[prevButton], 0, 1, 0, 0);
            func_0804d8f8(D_03005380, gMainMenuInfo.buttons[D_030055d8], D_089cdc90[D_030055d8], 0, 1, 0, 0);
        }

        else if (D_03004afc & (START_BUTTON | A_BUTTON)) {
            switch (prevButton) {
                case GAME_SELECT:
                    func_08000584(&D_089cdf08); // Game Select
                    break;
                case RHYTHM_TEST:
                    func_080006b0(&D_089d7964, &D_089cde20); // Results (Score), Main Menu
                    func_08000584(&D_089d471c); // Rhythm Test
                    func_080182ac(&D_089cde20); // Main Menu
                    break;
                case RHYTHM_DATA_ROOM:
                    func_08000584(&D_089cdc24); // Data Room
                    func_080006b0(&D_089cdc24, &D_089cde20); // Data Room, Main Menu
                    break;
                case STUDIO:
                    func_08000584(&D_089d85b4); // Studio
                    func_080006b0(&D_089d85b4, &D_089cde20); // Studio, Main Menu
                    func_080006d0(&D_089d85b4, NULL); // Studio, Null
                    break;
                case OPTIONS_MENU:
                    func_08000584(&D_089cfc1c); // Options Menu
                    func_080006b0(&D_089cfc1c, &D_089cde20); // Options Menu, Main Menu
                    gMainMenuInfo.unk1B = TRUE;
                    break;
            }
            func_0800bd04(FALSE);
            gMainMenuInfo.screenReady = FALSE;
            func_08002634(&s_menu_kettei1_seqData);
        }
    }
}

// Check if screen is ready to receive inputs.
u32 func_080127d0(void) {
    if (gMainMenuInfo.screenReady) {
        return TRUE;
    } else {
        return FALSE;
    }
}

// [func_080127ec] Scene Close
void func_080127ec(u32 arg) {
    func_08008628();
    func_08004058();
}
