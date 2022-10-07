#include "game_select.h"
#include "memory.h"
#include "code_08001360.h"
#include "code_08003980.h"
#include "code_08007468.h"
#include "code_0800b778.h"
#include "lib_0804c870.h"

asm(".include \"include/gba.inc\"");//Temporary

static s32 D_0300131c; // unknown type
static s32 D_03001320; // unknown type
static s32 D_03001324; // unknown type

extern struct Scene D_089d77e4; // Results (Level-Type)
extern struct Scene D_089d7c18; // Results (Epilogue..?)
extern struct Scene D_089d7964; // Results (Score-Type)
extern struct Scene D_089cdf08; // Game Select

/* GAME SELECT */

#include "asm/game_select/asm_080127fc.s"

#include "asm/game_select/asm_08012808.s"

#include "asm/game_select/asm_08012814.s"

#include "asm/game_select/asm_08012850.s"

#include "asm/game_select/asm_08012860.s"

#include "asm/game_select/asm_0801286c.s"

#include "asm/game_select/asm_0801287c.s"

#include "asm/game_select/asm_080128b8.s"

#include "asm/game_select/asm_08012928.s"

#include "asm/game_select/asm_080129e8.s"

#include "asm/game_select/asm_08012a58.s"

#include "asm/game_select/asm_08012c24.s"

#include "asm/game_select/asm_08012cb4.s"

#include "asm/game_select/asm_08012de0.s"

#include "asm/game_select/asm_08012e24.s"

#include "asm/game_select/asm_08012fcc.s"

#include "asm/game_select/asm_08013068.s"

#include "asm/game_select/asm_08013090.s"

#include "asm/game_select/asm_080130b0.s"

#include "asm/game_select/asm_080130e4.s"

#include "asm/game_select/asm_08013100.s"

#include "asm/game_select/asm_08013130.s"

#include "asm/game_select/asm_0801314c.s"

#include "asm/game_select/asm_0801316c.s"

#include "asm/game_select/asm_0801317c.s"

#include "asm/game_select/asm_0801318c.s"

#include "asm/game_select/asm_080131e8.s"

#include "asm/game_select/asm_0801332c.s"

#include "asm/game_select/asm_08013348.s"

#include "asm/game_select/asm_0801338c.s"

#include "asm/game_select/asm_080133cc.s"

#include "asm/game_select/asm_080134ec.s"

#include "asm/game_select/asm_0801350c.s"


// [func_08013530] Graphics Init. 3
void func_08013530(void) {
    func_0800c604(0);
    func_0800bd04(0);
    func_080041d0((u8) -2, (u8) -1, 0);
    func_0800425c(0x10, 0x90);
    func_080131e8();
    func_080158f4();
    gGameSelectInfo.unk8_b0 = FALSE;
}


// [func_08013570] Graphics Init. 2
void func_08013570(void) {
    u32 data;

    func_0800c604(0);
    data = func_080087b4((u16)func_0800c3b8(), D_089cf9a8);
    func_08005d38(data, func_08013530, 0);
}


// [func_0801359c] Graphics Init. 1
void func_0801359c(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0((u16) func_0800c3b8(), D_089cf948, 0x3000);
    func_08005d38(data, func_08013570, 0);
}


// [func_080135cc] Graphics Init. 0
void func_080135cc(void) {
    func_0800856c((u16) func_0800c3b8(), func_0801359c, 0, 2);
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 2, 22, 0x8000);
    func_0800e0a0(2, 1, 0, 0, 2, 24, 0xc001);
    func_0800e0a0(3, 1, 0, 0, 0, 28, 0xc002);
}


// [func_08013644] Scene Init.
void func_08013644(s32 arg) {
    s16 bgOffsetX, bgOffsetY;
    s32 offsetX2, offsetY2;
    u8 *r10;
    s32 r6, temp;

    r10 = D_030046a8->unk10;
    gGameSelectInfo.unk8_b0 = TRUE;
    func_08007324(0);
    func_080073f0();
    func_080135cc(); // gfx init. stuff
    func_0801338c();
    func_080158f0();
    gGameSelectInfo.cursorX = D_030046a8->unk10[0];
    gGameSelectInfo.cursorY = D_030046a8->unk10[1];
    func_0801332c(gGameSelectInfo.cursorX, gGameSelectInfo.cursorY, &bgOffsetX, &bgOffsetY);
    func_0800e058(BG_LAYER_3, bgOffsetX, bgOffsetY);
    func_0800e058(BG_LAYER_2, bgOffsetX, bgOffsetY);
    gGameSelectInfo.selectionBorderSprite = func_0804d160(D_03005380, D_089029d0, 0, 48, 72, 0x4800, 1, 0, 0);
    gGameSelectInfo.cursorSprite = func_0804d160(D_03005380, D_08902e88, 0, 64, 64, 0x47ff, 1, 0, 0);
    func_080140f8(gGameSelectInfo.selectionBorderSprite);
    func_080140f8(gGameSelectInfo.cursorSprite);
    func_08013b98(gGameSelectInfo.cursorX, gGameSelectInfo.cursorY);
    gGameSelectInfo.unk4E = 0;
    gGameSelectInfo.unk50 = gGameSelectInfo.unk54 = bgOffsetX;
    gGameSelectInfo.unk52 = gGameSelectInfo.unk56 = bgOffsetY;
    gGameSelectInfo.unk5C = 0;
    gGameSelectInfo.unk62 = 0;
    gGameSelectInfo.unk5E = 0;
    gGameSelectInfo.unk64 = 0;
    gGameSelectInfo.unk60 = 0;
    gGameSelectInfo.stageTitleSprite = func_0804d160(D_03005380, D_08902b40, 0x7f, 60, 140, 0x479c, 1, 0x7f, 0);
    gGameSelectInfo.stageTitleBoxSprite = func_0804d294(D_03005380, D_08902b68, 0, 60, 140, 0x479d, 0, 0, 0, 0);
    gGameSelectInfo.unk16 = 140;
    gGameSelectInfo.unk18 = 0;
    gGameSelectInfo.unk8_b1 = FALSE;
    gGameSelectInfo.unk1A = 0;
    func_080140a4(gGameSelectInfo.cursorX);
    func_08012a58();
    func_08014c10();
    func_08015cf4();
    gGameSelectInfo.unk4 = 0;
    func_08014df0();
    func_08013f9c();
    func_080154f0();
    gGameSelectInfo.unk2DA = 0;
    gGameSelectInfo.unk2DB = 0;
    gGameSelectInfo.unk2DC = 0;
    gGameSelectInfo.unk320 = 0;
    offsetX2 = (s8) r10[2];
    offsetY2 = (s8) r10[3];
    r6 = (s8) r10[4];
    temp = func_0801317c(offsetX2, offsetY2);
    gGameSelectInfo.unk4F4 = 0;
    gGameSelectInfo.unk4F8 = 0;
    if (r6 > temp) {
        func_08014938(60);
        func_080141f8(offsetX2, offsetY2, r6);
        if (r10[5] != 0) {
            gGameSelectInfo.unk4F4 = 1;
            gGameSelectInfo.unk4F5 = offsetX2;
            gGameSelectInfo.unk4F6 = offsetY2;
            gGameSelectInfo.unk4F8 = 60;
        }
        if ((func_08013100(offsetX2, offsetY2) == 46) && (r6 > 3)) {
            func_08012808();
        }
    } else {
        gGameSelectInfo.unk2D8 = 0;
        gGameSelectInfo.unk2D9 = 0;
        func_08010478();
        if (gGameSelectInfo.unk340 != 0) {
            func_08012cb4(D_030046a8->unk10[0x269]);
            gGameSelectInfo.unk340 = 0;
        } else {
            gGameSelectInfo.unk0 = 2;
        }
    }
    r10[4] = -1;
    r10[5] = 0;
    func_080191ac(1);
    func_08013994();
    func_0801318c(53, &offsetX2, &offsetY2);
    if (func_0801317c(offsetX2, offsetY2) > 3) {
        func_08012808();
    }
    func_080006b0(&D_089d77e4, &D_089d7c18); // Results (Level), Results (Epilogue..?)
    func_080006b0(&D_089d7964, &D_089cdf08); // Results (Score), Game Select
    func_080006b0(&D_089d7c18, &D_089cdf08); // Results (Epilogue..?), Game Select
}


#include "asm/game_select/asm_08013994.s"

#include "asm/game_select/asm_080139a0.s"

#include "asm/game_select/asm_080139ac.s"

#include "asm/game_select/asm_080139b0.s"

#include "asm/game_select/asm_080139f4.s"

#include "asm/game_select/asm_08013a38.s"

#include "asm/game_select/asm_08013b48.s"


void func_08013b98(s32 x, s32 y) {
    s16 offsetX;
    s16 offsetY;

    gGameSelectInfo.cursorX = x;
    gGameSelectInfo.cursorY = y;

    func_0801332c(x, y, &offsetX, &offsetY);

    offsetX += 47; // x coordinate of top left of menu
    offsetY += 68; // y coordinate of top left of menu

    func_0804d5d4(D_03005380, gGameSelectInfo.selectionBorderSprite, offsetX, offsetY);
    func_0804d5d4(D_03005380, gGameSelectInfo.cursorSprite, offsetX, offsetY);
    func_08013b48();
}


#include "asm/game_select/asm_08013c04.s"

#include "asm/game_select/asm_08013c64.s"

#include "asm/game_select/asm_08013d18.s"

#include "asm/game_select/asm_08013d1c.s"

#include "asm/game_select/asm_08013d20.s"

#include "asm/game_select/asm_08013f9c.s"

#include "asm/game_select/asm_0801401c.s"

#include "asm/game_select/asm_080140a4.s"

#include "asm/game_select/asm_080140ec.s"

#include "asm/game_select/asm_080140f8.s"


// [func_08014118] Scene Main
void func_08014118(s32 arg) {
    s16 bgOffsetX, bgOffsetY;

    if (!gGameSelectInfo.unk8_b0) {
        bgOffsetX = D_03004b10.bgOffset[BG_LAYER_3].horizontal;
        bgOffsetY = D_03004b10.bgOffset[BG_LAYER_3].vertical;
        switch (gGameSelectInfo.unk0) {
            case 1:
                func_08014978();
                break;
            case 2:
                func_08013d20();
                break;
            case 3:
                func_08012e24();
                break;
        }
        func_080134ec();
        func_0801593c();
        func_08015298();
        func_08013a38();
        func_080140ec();
        bgOffsetX -= D_03004b10.bgOffset[BG_LAYER_3].horizontal;
        bgOffsetY -= D_03004b10.bgOffset[BG_LAYER_3].vertical;
        func_080162bc(bgOffsetX - 1, bgOffsetY);
        func_0801626c();
        func_08015660();
        func_08014db0();
    }
}


#include "asm/game_select/asm_080141a4.s"

#include "asm/game_select/asm_080141c0.s"

#include "asm/game_select/asm_080141d4.s"

#include "asm/game_select/asm_080141d8.s"

#include "asm/game_select/asm_080141f8.s"

#include "asm/game_select/asm_08014268.s"

#include "asm/game_select/asm_080142e8.s"

#include "asm/game_select/asm_080143c0.s"

#include "asm/game_select/asm_0801446c.s"

#include "asm/game_select/asm_08014488.s"

#include "asm/game_select/asm_08014504.s"

#include "asm/game_select/asm_08014624.s"

#include "asm/game_select/asm_0801490c.s"

#include "asm/game_select/asm_08014938.s"

#include "asm/game_select/asm_08014978.s"

#include "asm/game_select/asm_08014b68.s"

#include "asm/game_select/asm_08014c10.s"

#include "asm/game_select/asm_08014d40.s"

#include "asm/game_select/asm_08014db0.s"

#include "asm/game_select/asm_08014dbc.s"

#include "asm/game_select/asm_08014df0.s"

#include "asm/game_select/asm_08014ef8.s"

#include "asm/game_select/asm_08014f30.s"

#include "asm/game_select/asm_08014f98.s"

#include "asm/game_select/asm_08015020.s"

#include "asm/game_select/asm_08015044.s"

#include "asm/game_select/asm_08015108.s"

#include "asm/game_select/asm_08015244.s"

#include "asm/game_select/asm_08015298.s"

#include "asm/game_select/asm_080152b0.s"

#include "asm/game_select/asm_08015338.s"

#include "asm/game_select/asm_080153a8.s"

#include "asm/game_select/asm_080154f0.s"

#include "asm/game_select/asm_08015660.s"

#include "asm/game_select/asm_080158d4.s"

#include "asm/game_select/asm_080158f0.s"

#include "asm/game_select/asm_080158f4.s"

#include "asm/game_select/asm_0801593c.s"

#include "asm/game_select/asm_08015940.s"

#include "asm/game_select/asm_08015988.s"

#include "asm/game_select/asm_080159f4.s"

#include "asm/game_select/asm_08015a24.s"

#include "asm/game_select/asm_08015a5c.s"

#include "asm/game_select/asm_08015afc.s"

#include "asm/game_select/asm_08015ccc.s"

#include "asm/game_select/asm_08015cf4.s"

#include "asm/game_select/asm_08015ea4.s"

#include "asm/game_select/asm_0801616c.s"

#include "asm/game_select/asm_0801626c.s"

#include "asm/game_select/asm_08016290.s"

#include "asm/game_select/asm_080162bc.s"

#include "asm/game_select/asm_080162c8.s"
