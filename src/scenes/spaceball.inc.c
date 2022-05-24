#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"

#define gSpaceballInfo D_030055d0->gameInfo.spaceball

// OAM Animations:
extern u32 D_088a1a70; // Animation: "batter_green"
extern u32 D_088a1ad0; // Animation: "pitcher_shoot
extern u32 D_088a1bd0; // Animation: "umpire_sway"
extern u32 D_088a1b70; // Animation: "miss_poof"

// Additional Data:



/* SPACEBALL */


// [func_0801fc44] Update Star? (https://decomp.me/scratch/c2Q18)
#include "asm/scenes/spaceball/asm_0801fc44.s"

// [func_0801fcb0] ?? (stars) (https://decomp.me/scratch/XGZdJ)
#include "asm/scenes/spaceball/asm_0801fcb0.s"

// [func_0801fd1c] ?? (stars) (https://decomp.me/scratch/o7xqp)
#include "asm/scenes/spaceball/asm_0801fd1c.s"

// [func_0801fd70] Update Entity Position/Scaling (https://decomp.me/scratch/wjRxD)
#include "asm/scenes/spaceball/asm_0801fd70.s"

// [func_0801fdc4] Update Batter Position/Scaling (https://decomp.me/scratch/mXBsv)
#include "asm/scenes/spaceball/asm_0801fdc4.s"

// [func_0801fe6c] Update Various (https://decomp.me/scratch/MxokI)
#include "asm/scenes/spaceball/asm_0801fe6c.s"

// [func_0801ff60] GFX Init Func_00 (https://decomp.me/scratch/zDRwb)
#include "asm/scenes/spaceball/asm_0801ff60.s"

// [func_0801ff70] GFX Init Func_01 (https://decomp.me/scratch/mW2EL)
#include "asm/scenes/spaceball/asm_0801ff70.s"

// [func_0801ffa0] GFX Init Func_00 (https://decomp.me/scratch/fCFe6)
#include "asm/scenes/spaceball/asm_0801ffa0.s"

// [func_0801ffcc] MAIN - Init
void func_0801ffcc(u32 ver) {
    gSpaceballInfo.ver = ver;
    func_0801ffa0();
    func_0800e018(1);
    func_0800e0ec();
    func_0800e0a0(2, 1, 0, 0, 0, 30, 0x4082);
    func_08008910(2, 0x7800, 0x5000, 0xf000, 0xa000, 0);
    func_0800e044(0);
    func_0800e044(1);
    func_0800e044(3);

    gSpaceballInfo.batter.sprite = func_0800fa6c(&D_088a1a70, 0, 0xaa, 0x50, 0x4800, 0x80, 0, 0, 0, 0, 1);
    gSpaceballInfo.batter.x = 0x32;
    gSpaceballInfo.batter.y = 0;
    gSpaceballInfo.batter.z = 0;
    gSpaceballInfo.batter.swingTimer = 0;
    func_0802026c(0); // Set animClose and animFar

    gSpaceballInfo.pitcher.sprite = func_0800fa6c(&D_088a1ad0, 2, 0x46, 0x80, 0x4800, 0x80, 0, 0, 0, 0, 1);
    gSpaceballInfo.pitcher.x = -0x32;
    gSpaceballInfo.pitcher.y = 0x30;
    gSpaceballInfo.pitcher.z = 0;

    gSpaceballInfo.umpire.sprite = func_0800fa6c(&D_088a1bd0, 2, 0x78, 0x59, 0x4864, 0x80, 0, 1, 2, 0x8000, 1);
    gSpaceballInfo.umpire.x = 0;
    gSpaceballInfo.umpire.y = 9;
    gSpaceballInfo.umpire.z = 0;
    func_08010040(gSpaceballInfo.umpire.sprite, 1);

    gSpaceballInfo.poofR.sprite = func_0800fa6c(&D_088a1b70, 2, 0x9a, 0x84, 0x4864, 0x100, 0, 1, 0, 0x8002, 1);
    gSpaceballInfo.poofR.x = 0x22;
    gSpaceballInfo.poofR.y = 0x34;
    gSpaceballInfo.poofR.z = 0;

    gSpaceballInfo.poofL.sprite = func_0800fa6c(&D_088a1b70, 2, 0x7a, 0x84, 0x4864, 0x100, 0, 1, 0, 0x8002, 1);
    gSpaceballInfo.poofL.x = 2;
    gSpaceballInfo.poofL.y = 0x34;
    gSpaceballInfo.poofL.z = 0;
    func_0800ff44(gSpaceballInfo.poofL.sprite, 1); // Flip Horizontal?

    gSpaceballInfo.currentStar = 0;
    gSpaceballInfo.zoom = -0x80;
    gSpaceballInfo.loopExit = 0;
    gSpaceballInfo.spaceballType = 0;
    func_08017338(1,0);
}

// [func_080201a0] SCENE Func_06 - STUB
#include "asm/scenes/spaceball/asm_080201a0.s"

// [func_080201a4] SCENE Func_00 - ?? (Pitcher Animation) (https://decomp.me/scratch/4IhaO)
#include "asm/scenes/spaceball/asm_080201a4.s"

// [func_080201cc] Update Batter (https://decomp.me/scratch/erUhA)
#include "asm/scenes/spaceball/asm_080201cc.s"

// [func_08020200] SCENE Func_01 - Loop Exit Condition (Practice) (https://decomp.me/scratch/sYz0I)
#include "asm/scenes/spaceball/asm_08020200.s"

// [func_08020238] SCENE Func_02 - Set Camera Zoom (https://decomp.me/scratch/k0PS5)
#include "asm/scenes/spaceball/asm_08020238.s"

// [func_0802026c] SCENE Func_03 - Set Batter Variant (https://decomp.me/scratch/Lg362)
#include "asm/scenes/spaceball/asm_0802026c.s"

// [func_08020290] SCENE Func_05 - Set Next Spaceball Sprite (https://decomp.me/scratch/qNuLu)
#include "asm/scenes/spaceball/asm_08020290.s"

// [func_080202a4] SCENE Func_04 - Set Umpire Animation (https://decomp.me/scratch/y7Y2K)
#include "asm/scenes/spaceball/asm_080202a4.s"

// [func_080202f0] MAIN - Update (https://decomp.me/scratch/zgr0F)
#include "asm/scenes/spaceball/asm_080202f0.s"

// [func_08020308] STUB
#include "asm/scenes/spaceball/asm_08020308.s"

// [func_0802030c] CUE - Spawn
#include "asm/scenes/spaceball/asm_0802030c.s"

#include "asm/scenes/spaceball/asm_080203fc.s"

#include "asm/scenes/spaceball/asm_080204b8.s"

#include "asm/scenes/spaceball/asm_08020500.s"

// [func_08020564] CUE - Behaviour
#include "asm/scenes/spaceball/asm_08020564.s"

// [func_080205a0] CUE - Despawn
#include "asm/scenes/spaceball/asm_080205a0.s"

// [func_080205ac] CUE - Hit
#include "asm/scenes/spaceball/asm_080205ac.s"

// [func_080205e8] CUE - Barely
#include "asm/scenes/spaceball/asm_080205e8.s"

// [func_08020644] CUE - Miss
#include "asm/scenes/spaceball/asm_08020644.s"

// [func_08020660] MAIN - Input Event (https://decomp.me/scratch/AS7oh)
#include "asm/scenes/spaceball/asm_08020660.s"

// [func_08020698] COMMON Func_00 - STUB
#include "asm/scenes/spaceball/asm_08020698.s"

// [func_0802069c] COMMON Func_00 - STUB
#include "asm/scenes/spaceball/asm_0802069c.s"
