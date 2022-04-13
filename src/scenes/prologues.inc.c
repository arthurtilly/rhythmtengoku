#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_08001360.h"

// For readability. !TODO - CHANGE/REMOVE
#define gPrologueInfo D_030055d0->gameInfo.prologues

extern u32 D_089ea088;   // GFX Null   -  Prologue: Sneaky Spirits
extern u32 D_089ea08c[]; // GFX Array  -  Prologue: Sneaky Spirits
extern u32 D_088ad2bc[]; // Animation  -  Text (Sneaky Spirits)

extern u32 D_089ea650;   // GFX Null   -  Prologue: Karate Man
extern u32 D_089ea654[]; // GFX Array  -  Prologue: Karate Man
extern u32 D_088ada78[]; // Animation  -  Text (Karate Man)
extern u32 D_088adaa8[]; // Animation  -  Kick (Karate Man)

extern u32 D_089ead54;   // GFX Null   -  Prologue: Rhythm Tweezers
extern u32 D_089ead58[]; // GFX Array  -  Prologue: Rhythm Tweezers
extern u32 D_088af6b4[]; // Animation  -  Text (Rhythm Tweezers)

extern u32  func_080087b4(u16, u32 *);
extern void func_0804cebc(u32, s16, s8);


  // // //  PROLOGUE: SNEAKY SPIRITS  // // //


// [func_0804510c] GFX_LOAD Func_02
void func_0804510c(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_0804511c] GFX_LOAD Func_01
void func_0804511c(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ea08c, 0x2000);
    func_08005d38(data, func_0804510c, 0);
}


// [func_0804514c] GFX_LOAD Func_00
void func_0804514c(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089ea088);
    func_08005d38(data, func_0804511c, 0);
}


// [func_0804517c] MAIN - Load
void func_0804517c(u32 ver) {
    gPrologueInfo.ver = ver;
    func_0804514c();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088ad2bc, 0, 0xa5, 0x5a, 0, 0, 0x7f, 0);
}


// [func_080451d8] ENGINE Func_00 - Unknown
void func_080451d8(void) {
}


// [func_080451dc] MAIN - Loop
void func_080451dc(void) {
}


// [func_080451e0] MAIN - Unload
void func_080451e0(void) {
}


// [func_080451e4] Event 0 - Set Text
void func_080451e4(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo.entity2, frame);
}


// Spaceball prologue

#include "asm/scenes/prologues/asm_08045208.s"

#include "asm/scenes/prologues/asm_08045218.s"

#include "asm/scenes/prologues/asm_08045248.s"

#include "asm/scenes/prologues/asm_08045278.s"

#include "asm/scenes/prologues/asm_080452d4.s"

#include "asm/scenes/prologues/asm_080452d8.s"

#include "asm/scenes/prologues/asm_080452dc.s"

#include "asm/scenes/prologues/asm_080452e0.s"

// Bon Odori prologue

#include "asm/scenes/prologues/asm_08045304.s"

#include "asm/scenes/prologues/asm_08045314.s"

#include "asm/scenes/prologues/asm_08045344.s"

#include "asm/scenes/prologues/asm_08045374.s"

#include "asm/scenes/prologues/asm_080453d0.s"

#include "asm/scenes/prologues/asm_080453d4.s"

#include "asm/scenes/prologues/asm_080453d8.s"

#include "asm/scenes/prologues/asm_080453dc.s"

// Bon Dance prologue

#include "asm/scenes/prologues/asm_08045408.s"

#include "asm/scenes/prologues/asm_08045418.s"

#include "asm/scenes/prologues/asm_08045448.s"

#include "asm/scenes/prologues/asm_08045478.s"

#include "asm/scenes/prologues/asm_080454d4.s"

#include "asm/scenes/prologues/asm_080454d8.s"

#include "asm/scenes/prologues/asm_080454dc.s"

#include "asm/scenes/prologues/asm_080454e0.s"


  // // //  PROLOGUE: KARATE MAN  // // //


// [func_0804550c] GFX_LOAD Func_02
void func_0804550c(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_0804551c] GFX_LOAD Func_01
void func_0804551c(void) {
    u32 temp;

    func_0800c604(0);
    temp = func_08002ee0(func_0800c3b8(), D_089ea654, 0x2000);
    func_08005d38(temp, &func_0804550c, 0);
}


// [func_0804554c] GFX_LOAD Func_00
void func_0804554c(void) {
    u32 temp;

    func_0800c604(0);
    func_08006d80();
    temp = func_080087b4(func_0800c3b8(), &D_089ea650);
    func_08005d38(temp, &func_0804551c, 0);
}


// [func_0804557c] MAIN - LOAD
void func_0804557c(u32 ver) {
    gPrologueInfo.ver = ver;
    func_0804554c();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088ada78, 0, 0x6e, 0x50, 0, 0, 0, 0);
    gPrologueInfo.entity4 = func_0804d160(D_03005380, D_088adaa8, 0, 0x60, 0x6e, 0, 0, 0, 0);
}


// [func_080455f8] ENGINE Func_00 - Unknown
void func_080455f8(void) {
}


// [func_080455fc] MAIN - Loop
void func_080455fc(void) {
}


// [func_08045600] MAIN - Unload
void func_08045600(void) {
}


// [func_08045604] Event 0 - Set Text
void func_08045604(u8 frame) {
    func_0804cebc(D_03005380, gPrologueInfo.entity2, frame);
}

// [func_08045628] Event 1 - Kick
void func_08045628(void) {
    func_0804cebc(D_03005380, gPrologueInfo.entity4, 1);
    func_0804dae0(D_03005380, gPrologueInfo.entity4, 1, 0x7f, 0);
}

// Cosmic Dance prologue

#include "asm/scenes/prologues/asm_08045664.s"

#include "asm/scenes/prologues/asm_08045674.s"

#include "asm/scenes/prologues/asm_080456a4.s"

#include "asm/scenes/prologues/asm_080456d4.s"

#include "asm/scenes/prologues/asm_08045730.s"

#include "asm/scenes/prologues/asm_08045734.s"

#include "asm/scenes/prologues/asm_08045738.s"

#include "asm/scenes/prologues/asm_0804573c.s"

// Night Walk prologue

#include "asm/scenes/prologues/asm_080457b4.s"

#include "asm/scenes/prologues/asm_080457c4.s"

#include "asm/scenes/prologues/asm_080457f4.s"

#include "asm/scenes/prologues/asm_08045824.s"

#include "asm/scenes/prologues/asm_080458e0.s"

#include "asm/scenes/prologues/asm_080458e4.s"

#include "asm/scenes/prologues/asm_080458e8.s"

#include "asm/scenes/prologues/asm_080458ec.s"

// Showtime prologue

#include "asm/scenes/prologues/asm_08045944.s"

#include "asm/scenes/prologues/asm_08045954.s"

#include "asm/scenes/prologues/asm_08045984.s"

#include "asm/scenes/prologues/asm_080459b4.s"

#include "asm/scenes/prologues/asm_08045a44.s"

#include "asm/scenes/prologues/asm_08045a48.s"

#include "asm/scenes/prologues/asm_08045a4c.s"

#include "asm/scenes/prologues/asm_08045a50.s"

// Bouncy Road

#include "asm/scenes/prologues/asm_08045a90.s"

#include "asm/scenes/prologues/asm_08045aa0.s"

#include "asm/scenes/prologues/asm_08045ad0.s"

#include "asm/scenes/prologues/asm_08045b00.s"

#include "asm/scenes/prologues/asm_08045b88.s"

#include "asm/scenes/prologues/asm_08045b8c.s"

#include "asm/scenes/prologues/asm_08045b90.s"

#include "asm/scenes/prologues/asm_08045b94.s"


  // // //  PROLOGUE: RHYTHM TWEEZERS  // // //


// [func_08045bec] GFX_LOAD Func_02
void func_08045bec(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_08045bfc] GFX_LOAD Func_01
void func_08045bfc(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ead58, 0x2000);
    func_08005d38(data, &func_08045bec, 0);
}


// [func_08045c2c] GFX_LOAD Func_00
void func_08045c2c(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089ead54);
    func_08005d38(data, &func_08045bfc, 0);
}


// [func_08045c5c] MAIN - Load
void func_08045c5c(u32 ver) {
    gPrologueInfo.ver = ver;
    func_08045c2c();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 0x1d, 1);
    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088af6b4, 0, 0x3c, 0x40, 0, 0, 0x7f, 0);
}


// [func_08045cb8] ENGINE Func_00 - Unknown
void func_08045cb8(void) {
}


// [func_08045cbc] MAIN - Loop
void func_08045cbc(void) {
}


// [func_08045cc0] MAIN - Unload
void func_08045cc0(void) {
}


// [func_08045cc4] Event 0 - Show Text
void func_08045cc4(void) {
    func_0804dae0(D_03005380, gPrologueInfo.entity2, 1, 0x7f, 0);
}


// Fireworks prologue

#include "asm/scenes/prologues/asm_08045cf0.s"

#include "asm/scenes/prologues/asm_08045d00.s"

#include "asm/scenes/prologues/asm_08045d30.s"

#include "asm/scenes/prologues/asm_08045d60.s"

#include "asm/scenes/prologues/asm_08045dbc.s"

#include "asm/scenes/prologues/asm_08045dc0.s"

#include "asm/scenes/prologues/asm_08045dc4.s"

#include "asm/scenes/prologues/asm_08045dc8.s"

// The Clappy Trio prologue

#include "asm/scenes/prologues/asm_08045dec.s"

#include "asm/scenes/prologues/asm_08045dfc.s"

#include "asm/scenes/prologues/asm_08045e2c.s"

#include "asm/scenes/prologues/asm_08045e5c.s"

#include "asm/scenes/prologues/asm_08045eb8.s"

#include "asm/scenes/prologues/asm_08045ebc.s"

#include "asm/scenes/prologues/asm_08045ec0.s"

#include "asm/scenes/prologues/asm_08045ec4.s"

// The Snappy Trio prologue

#include "asm/scenes/prologues/asm_08045ee8.s"

#include "asm/scenes/prologues/asm_08045ef8.s"

#include "asm/scenes/prologues/asm_08045f28.s"

#include "asm/scenes/prologues/asm_08045f58.s"

#include "asm/scenes/prologues/asm_08045fb4.s"

#include "asm/scenes/prologues/asm_08045fb8.s"

#include "asm/scenes/prologues/asm_08045fbc.s"

#include "asm/scenes/prologues/asm_08045fc0.s"

// Samurai Slice prologue

#include "asm/scenes/prologues/asm_08045fe4.s"

#include "asm/scenes/prologues/asm_08045ff4.s"

#include "asm/scenes/prologues/asm_08046024.s"

#include "asm/scenes/prologues/asm_08046054.s"

#include "asm/scenes/prologues/asm_080460c8.s"

#include "asm/scenes/prologues/asm_080460cc.s"

#include "asm/scenes/prologues/asm_080460d0.s"

#include "asm/scenes/prologues/asm_080460d4.s"

// Power Calligraphy prologue

#include "asm/scenes/prologues/asm_080460f8.s"

#include "asm/scenes/prologues/asm_08046108.s"

#include "asm/scenes/prologues/asm_08046138.s"

#include "asm/scenes/prologues/asm_08046168.s"

#include "asm/scenes/prologues/asm_080461c4.s"

#include "asm/scenes/prologues/asm_080461c8.s"

#include "asm/scenes/prologues/asm_080461cc.s"

#include "asm/scenes/prologues/asm_080461d0.s"

#include "asm/scenes/prologues/asm_080461f4.s"

// Marching Orders prologue

#include "asm/scenes/prologues/asm_08046234.s"

#include "asm/scenes/prologues/asm_08046244.s"

#include "asm/scenes/prologues/asm_08046274.s"

#include "asm/scenes/prologues/asm_080462a4.s"

#include "asm/scenes/prologues/asm_08046300.s"

#include "asm/scenes/prologues/asm_08046304.s"

#include "asm/scenes/prologues/asm_08046308.s"

#include "asm/scenes/prologues/asm_0804630c.s"

// Marching Orders 2 prologue

#include "asm/scenes/prologues/asm_08046330.s"

#include "asm/scenes/prologues/asm_08046340.s"

#include "asm/scenes/prologues/asm_08046370.s"

#include "asm/scenes/prologues/asm_080463a0.s"

#include "asm/scenes/prologues/asm_080463fc.s"

#include "asm/scenes/prologues/asm_08046400.s"

#include "asm/scenes/prologues/asm_08046404.s"

#include "asm/scenes/prologues/asm_08046408.s"

// Polyrhythm prologue

#include "asm/scenes/prologues/asm_0804642c.s"

#include "asm/scenes/prologues/asm_0804643c.s"

#include "asm/scenes/prologues/asm_0804646c.s"

#include "asm/scenes/prologues/asm_0804649c.s"

#include "asm/scenes/prologues/asm_080464f8.s"

#include "asm/scenes/prologues/asm_080464fc.s"

#include "asm/scenes/prologues/asm_08046500.s"

#include "asm/scenes/prologues/asm_08046504.s"

// Quiz Show prologue

#include "asm/scenes/prologues/asm_08046528.s"

#include "asm/scenes/prologues/asm_08046538.s"

#include "asm/scenes/prologues/asm_08046568.s"

#include "asm/scenes/prologues/asm_08046598.s"

#include "asm/scenes/prologues/asm_080465f8.s"

#include "asm/scenes/prologues/asm_080465fc.s"

#include "asm/scenes/prologues/asm_08046600.s"

#include "asm/scenes/prologues/asm_08046604.s"

// Remix 1 prologue

#include "asm/scenes/prologues/asm_08046628.s"

#include "asm/scenes/prologues/asm_08046638.s"

#include "asm/scenes/prologues/asm_08046668.s"

#include "asm/scenes/prologues/asm_08046698.s"

#include "asm/scenes/prologues/asm_080466f4.s"

#include "asm/scenes/prologues/asm_080466f8.s"

#include "asm/scenes/prologues/asm_080466fc.s"

#include "asm/scenes/prologues/asm_08046700.s"

// Remix 2 prologue

#include "asm/scenes/prologues/asm_08046724.s"

#include "asm/scenes/prologues/asm_08046734.s"

#include "asm/scenes/prologues/asm_08046764.s"

#include "asm/scenes/prologues/asm_08046794.s"

#include "asm/scenes/prologues/asm_080467f0.s"

#include "asm/scenes/prologues/asm_080467f4.s"

#include "asm/scenes/prologues/asm_080467f8.s"

#include "asm/scenes/prologues/asm_080467fc.s"

// Remix 3 prologue

#include "asm/scenes/prologues/asm_08046820.s"

#include "asm/scenes/prologues/asm_08046830.s"

#include "asm/scenes/prologues/asm_08046860.s"

#include "asm/scenes/prologues/asm_08046890.s"

#include "asm/scenes/prologues/asm_080468ec.s"

#include "asm/scenes/prologues/asm_080468f0.s"

#include "asm/scenes/prologues/asm_080468f4.s"

#include "asm/scenes/prologues/asm_080468f8.s"

// Remix 4 prologue

#include "asm/scenes/prologues/asm_0804691c.s"

#include "asm/scenes/prologues/asm_0804692c.s"

#include "asm/scenes/prologues/asm_0804695c.s"

#include "asm/scenes/prologues/asm_0804698c.s"

#include "asm/scenes/prologues/asm_080469e8.s"

#include "asm/scenes/prologues/asm_080469ec.s"

#include "asm/scenes/prologues/asm_080469f0.s"

#include "asm/scenes/prologues/asm_080469f4.s"

// Remix 5 prologue

#include "asm/scenes/prologues/asm_08046a18.s"

#include "asm/scenes/prologues/asm_08046a28.s"

#include "asm/scenes/prologues/asm_08046a58.s"

#include "asm/scenes/prologues/asm_08046a88.s"

#include "asm/scenes/prologues/asm_08046ae4.s"

#include "asm/scenes/prologues/asm_08046ae8.s"

#include "asm/scenes/prologues/asm_08046aec.s"

#include "asm/scenes/prologues/asm_08046af0.s"

// Remix 6 prologue

#include "asm/scenes/prologues/asm_08046b14.s"

#include "asm/scenes/prologues/asm_08046b24.s"

#include "asm/scenes/prologues/asm_08046b54.s"

#include "asm/scenes/prologues/asm_08046b84.s"

#include "asm/scenes/prologues/asm_08046be0.s"

#include "asm/scenes/prologues/asm_08046be4.s"

#include "asm/scenes/prologues/asm_08046be8.s"

#include "asm/scenes/prologues/asm_08046bec.s"

// Remix 7 prologue

#include "asm/scenes/prologues/asm_08046c10.s"

#include "asm/scenes/prologues/asm_08046c20.s"

#include "asm/scenes/prologues/asm_08046c50.s"

#include "asm/scenes/prologues/asm_08046c80.s"

#include "asm/scenes/prologues/asm_08046cdc.s"

#include "asm/scenes/prologues/asm_08046ce0.s"

#include "asm/scenes/prologues/asm_08046ce4.s"

#include "asm/scenes/prologues/asm_08046ce8.s"

// Remix 8 prologue

#include "asm/scenes/prologues/asm_08046d0c.s"

#include "asm/scenes/prologues/asm_08046d1c.s"

#include "asm/scenes/prologues/asm_08046d4c.s"

#include "asm/scenes/prologues/asm_08046d7c.s"

#include "asm/scenes/prologues/asm_08046dd8.s"

#include "asm/scenes/prologues/asm_08046ddc.s"

#include "asm/scenes/prologues/asm_08046de0.s"

#include "asm/scenes/prologues/asm_08046de4.s"

// Bunny Hop prologue

#include "asm/scenes/prologues/asm_08046e08.s"

#include "asm/scenes/prologues/asm_08046e18.s"

#include "asm/scenes/prologues/asm_08046e48.s"

#include "asm/scenes/prologues/asm_08046e78.s"

#include "asm/scenes/prologues/asm_08046f00.s"

#include "asm/scenes/prologues/asm_08046f04.s"

#include "asm/scenes/prologues/asm_08046f08.s"

#include "asm/scenes/prologues/asm_08046f0c.s"

#include "asm/scenes/prologues/asm_08046f30.s"

// Rap Men prologue

#include "asm/scenes/prologues/asm_08046f5c.s"

#include "asm/scenes/prologues/asm_08046f6c.s"

#include "asm/scenes/prologues/asm_08046f9c.s"

#include "asm/scenes/prologues/asm_08046fcc.s"

#include "asm/scenes/prologues/asm_08047028.s"

#include "asm/scenes/prologues/asm_0804702c.s"

#include "asm/scenes/prologues/asm_08047030.s"

#include "asm/scenes/prologues/asm_08047034.s"

// Rap Women prologue

#include "asm/scenes/prologues/asm_08047060.s"

#include "asm/scenes/prologues/asm_08047070.s"

#include "asm/scenes/prologues/asm_080470a0.s"

#include "asm/scenes/prologues/asm_080470d0.s"

#include "asm/scenes/prologues/asm_0804712c.s"

#include "asm/scenes/prologues/asm_08047130.s"

#include "asm/scenes/prologues/asm_08047134.s"

#include "asm/scenes/prologues/asm_08047138.s"

// Rat Race prologue

#include "asm/scenes/prologues/asm_08047164.s"

#include "asm/scenes/prologues/asm_08047174.s"

#include "asm/scenes/prologues/asm_080471a4.s"

#include "asm/scenes/prologues/asm_080471d4.s"

#include "asm/scenes/prologues/asm_08047250.s"

#include "asm/scenes/prologues/asm_08047254.s"

#include "asm/scenes/prologues/asm_08047258.s"

#include "asm/scenes/prologues/asm_0804725c.s"

#include "asm/scenes/prologues/asm_08047280.s"

// Ninja Bodyguard prologue

#include "asm/scenes/prologues/asm_080472bc.s"

#include "asm/scenes/prologues/asm_080472cc.s"

#include "asm/scenes/prologues/asm_080472fc.s"

#include "asm/scenes/prologues/asm_0804732c.s"

#include "asm/scenes/prologues/asm_08047398.s"

#include "asm/scenes/prologues/asm_0804739c.s"

#include "asm/scenes/prologues/asm_080473a0.s"

#include "asm/scenes/prologues/asm_080473a4.s"

// Ninja Reincarnate prologue

#include "asm/scenes/prologues/asm_080473d4.s"

#include "asm/scenes/prologues/asm_080473e4.s"

#include "asm/scenes/prologues/asm_08047414.s"

#include "asm/scenes/prologues/asm_08047444.s"

#include "asm/scenes/prologues/asm_080474a0.s"

#include "asm/scenes/prologues/asm_080474a4.s"

#include "asm/scenes/prologues/asm_080474a8.s"

#include "asm/scenes/prologues/asm_080474ac.s"

// Space Dance prologue

#include "asm/scenes/prologues/asm_080474dc.s"

#include "asm/scenes/prologues/asm_080474ec.s"

#include "asm/scenes/prologues/asm_0804751c.s"

#include "asm/scenes/prologues/asm_0804754c.s"

#include "asm/scenes/prologues/asm_08047624.s"

#include "asm/scenes/prologues/asm_08047628.s"

#include "asm/scenes/prologues/asm_0804762c.s"

#include "asm/scenes/prologues/asm_08047630.s"

// Tap Trial prologue

#include "asm/scenes/prologues/asm_08047678.s"

#include "asm/scenes/prologues/asm_08047688.s"

#include "asm/scenes/prologues/asm_080476b8.s"

#include "asm/scenes/prologues/asm_080476e8.s"

#include "asm/scenes/prologues/asm_08047764.s"

#include "asm/scenes/prologues/asm_08047768.s"

#include "asm/scenes/prologues/asm_0804776c.s"

#include "asm/scenes/prologues/asm_08047770.s"

#include "asm/scenes/prologues/asm_08047794.s"

// Tap Trial 2 prologue

#include "asm/scenes/prologues/asm_080477b4.s"

#include "asm/scenes/prologues/asm_080477c4.s"

#include "asm/scenes/prologues/asm_080477f4.s"

#include "asm/scenes/prologues/asm_08047824.s"

#include "asm/scenes/prologues/asm_08047888.s"

#include "asm/scenes/prologues/asm_0804788c.s"

#include "asm/scenes/prologues/asm_08047890.s"

#include "asm/scenes/prologues/asm_08047894.s"

#include "asm/scenes/prologues/asm_080478b8.s"

// Toss Boys prologue

#include "asm/scenes/prologues/asm_080478d8.s"

#include "asm/scenes/prologues/asm_080478e8.s"

#include "asm/scenes/prologues/asm_08047918.s"

#include "asm/scenes/prologues/asm_08047948.s"

#include "asm/scenes/prologues/asm_080479a4.s"

#include "asm/scenes/prologues/asm_080479a8.s"

#include "asm/scenes/prologues/asm_080479ac.s"

#include "asm/scenes/prologues/asm_080479b0.s"

// Toss Boys 2 prologue

#include "asm/scenes/prologues/asm_080479d4.s"

#include "asm/scenes/prologues/asm_080479e4.s"

#include "asm/scenes/prologues/asm_08047a14.s"

#include "asm/scenes/prologues/asm_08047a44.s"

#include "asm/scenes/prologues/asm_08047aa0.s"

#include "asm/scenes/prologues/asm_08047aa4.s"

#include "asm/scenes/prologues/asm_08047aa8.s"

#include "asm/scenes/prologues/asm_08047aac.s"

// Tram & Pauline prologue

#include "asm/scenes/prologues/asm_08047ad0.s"

#include "asm/scenes/prologues/asm_08047ae0.s"

#include "asm/scenes/prologues/asm_08047b10.s"

#include "asm/scenes/prologues/asm_08047b40.s"

#include "asm/scenes/prologues/asm_08047bd0.s"

#include "asm/scenes/prologues/asm_08047bd4.s"

#include "asm/scenes/prologues/asm_08047bd8.s"

#include "asm/scenes/prologues/asm_08047bdc.s"

// Sick Beats prologue

#include "asm/scenes/prologues/asm_08047c08.s"

#include "asm/scenes/prologues/asm_08047c18.s"

#include "asm/scenes/prologues/asm_08047c48.s"

#include "asm/scenes/prologues/asm_08047c78.s"

#include "asm/scenes/prologues/asm_08047d00.s"

#include "asm/scenes/prologues/asm_08047d04.s"

#include "asm/scenes/prologues/asm_08047d08.s"

#include "asm/scenes/prologues/asm_08047d0c.s"

// Wizard's Waltz prologue

#include "asm/scenes/prologues/asm_08047d4c.s"

#include "asm/scenes/prologues/asm_08047d5c.s"

#include "asm/scenes/prologues/asm_08047d8c.s"

#include "asm/scenes/prologues/asm_08047dbc.s"

#include "asm/scenes/prologues/asm_08047e18.s"

#include "asm/scenes/prologues/asm_08047e1c.s"

#include "asm/scenes/prologues/asm_08047e20.s"

#include "asm/scenes/prologues/asm_08047e24.s"
