#include "engines/prologues/bouncy_road.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct PrologueBouncyRoadInfo *)D_030055d0)


  //  //  //  PROLOGUE: BOUNCY ROAD  //  //  //


// [func_08045a90] GFX_INIT Func_02
void func_08045a90(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_08045aa0] GFX_INIT Func_01
void func_08045aa0(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), D_089eac1c, 0x2000);
    task_run_after(task, func_08045a90, 0);
}


// [func_08045ad0] GFX_INIT Func_00
void func_08045ad0(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(func_0800c3b8(), D_089eac18);
    task_run_after(task, func_08045aa0, 0);
}


// [func_08045b00] MAIN - Init
void func_08045b00(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08045ad0();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, D_088af5a0, 0, 120, 120, 0, 0, 0x7f, 0);
    gPrologueInfo->bouncersSprite = func_0804d160(D_03005380, D_088af510, 0, 119, 101, 0, 0, 0x7f, 0);
}


// [func_08045b88] ENGINE Func_00
void func_08045b88(void) {
}


// [func_08045b8c] MAIN - Update
void func_08045b8c(void) {
}


// [func_08045b90] MAIN - Close
void func_08045b90(void) {
}


// [func_08045b94] Event 0 - Play Animation (Bouncers); Event 1 - Play Animation (Text)
void func_08045b94(u32 event) {
    switch (event) {
        case 0: // Event 0 - Play Animation (Bouncers)
            func_0804dae0(D_03005380, gPrologueInfo->bouncersSprite, 1, 0x7f, 0);
            break;
        case 1: // Event 1 - Play Animation (Text)
            func_0804dae0(D_03005380, gPrologueInfo->textSprite, 1, 0x7f, 0);
            break;
    }
}
