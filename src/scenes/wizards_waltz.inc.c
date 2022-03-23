extern u32 D_08932bec[];
extern u32 D_08932edc[];
extern u32 D_08932e3c[];
extern u32 D_08932c8c[];
extern u32 D_089e9f14[];
extern u32 D_089e9f10;

// #include "asm/scenes/wizards_waltz/asm_080449a4.s"
// GFX Load Function 02
void func_080449a4(void) {
    func_0800c604(0);
    func_08017578();
}

// #include "asm/scenes/wizards_waltz/asm_080449b4.s"
// GFX Load Function 01
void func_080449b4(void) {
    u32 temp;

    func_0800c604(0);
    temp = func_08002ee0((u16) func_0800c3b8(), &D_089e9f14, 0x2000);
    func_08005d38(temp, &func_080449a4, 0);
}

// #include "asm/scenes/wizards_waltz/asm_080449e4.s"
// GFX Load Function 00
void func_080449e4(void) {
    func_0800c604(0);
    func_08005d38(func_080087b4((u16) func_0800c3b8(), &D_089e9f10), &func_080449b4, 0);
}

// #include "asm/scenes/wizards_waltz/asm_08044a10.s"
void func_08044a10(u32 arg0) {
    u8 i;

    D_030055d0->unk0 = arg0;
    func_080449e4();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    D_030055d0->gameInfo.wizardsWaltz.unk1AC = -0xA0;
    D_030055d0->gameInfo.wizardsWaltz.unk1A4 = 0;
    D_030055d0->gameInfo.wizardsWaltz.unk1B0 = 0;
    D_030055d0->gameInfo.wizardsWaltz.unk1B1 = 0;
    D_030055d0->gameInfo.wizardsWaltz.unk14 = -0x28;
    D_030055d0->gameInfo.wizardsWaltz.unk8 = 0;

    D_030055d0->gameInfo.wizardsWaltz.unk4 = func_0800fa6c(D_08932bec, 0, 0x78, (s16)D_030055d0->gameInfo.wizardsWaltz.unk14, 0x4001, 0x80, 0, 1, 0, 0, 1);
    D_030055d0->gameInfo.wizardsWaltz.unk24 = func_0800fa6c(D_08932edc, 0, 0x78, 0x50, 0x4082, 0x80, 0, 0, 0, 0, 1);
    D_030055d0->gameInfo.wizardsWaltz.unk188 = 0;
    D_030055d0->gameInfo.wizardsWaltz.unk184 = func_0800fa6c(D_08932e3c, 0, 0x78, 0x50, 0x4040, 0x80, 0, 1, 0, 0, 1);

    for (i = 0; i < 10; i++) {
        u32 temp2;
        D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk4 = 0;
        temp2 = func_0800fa6c(D_08932c8c, 0, 0, 0, 0, 0x80, 0, 1, 0, 0, 0);
        D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk0 = temp2;
        func_08010040(temp2, 0);
    }

    func_08017338(1, 0);
    D_030055d0->gameInfo.wizardsWaltz.unk1B2 = 0;
    D_030055d0->gameInfo.wizardsWaltz.unk1A8 = func_0800c3a4(0x90);
}

#include "asm/scenes/wizards_waltz/asm_08044b80.s"
#include "asm/scenes/wizards_waltz/asm_08044ba8.s"
#include "asm/scenes/wizards_waltz/asm_08044c04.s"
#include "asm/scenes/wizards_waltz/asm_08044e60.s"
#include "asm/scenes/wizards_waltz/asm_08044e74.s"
#include "asm/scenes/wizards_waltz/asm_08044e78.s"
#include "asm/scenes/wizards_waltz/asm_08044f94.s"
#include "asm/scenes/wizards_waltz/asm_08044fc0.s"
#include "asm/scenes/wizards_waltz/asm_08044fcc.s"
#include "asm/scenes/wizards_waltz/asm_0804503c.s"
#include "asm/scenes/wizards_waltz/asm_080450d0.s"
#include "asm/scenes/wizards_waltz/asm_080450dc.s"
#include "asm/scenes/wizards_waltz/asm_080450e0.s"
#include "asm/scenes/wizards_waltz/asm_080450e4.s"
#include "asm/scenes/wizards_waltz/asm_080450e8.s"