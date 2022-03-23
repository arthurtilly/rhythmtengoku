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

#include "asm/scenes/wizards_waltz/asm_08044a10.s"
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