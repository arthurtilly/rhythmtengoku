#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_08001360.h"

// For readability. !TODO - CHANGE/REMOVE
#define gPrologueInfo D_030055d0->gameInfo.prologues


extern u32 D_089ea088;   // GFX Null   -  Prologue: Sneaky Spirits
extern u32 D_089ea08c[]; // GFX Array  -  Prologue: Sneaky Spirits
extern u32 D_088ad2bc[]; // Animation  -  Text (Sneaky Spirits)

extern u32 D_089ea26c;   // GFX Null   -  Prologue: Spaceball
extern u32 D_089ea270[]; // GFX Array  -  Prologue: Spaceball
extern u32 D_088ad3f4[]; // Animation  -  Text (Spaceball)

extern u32 D_089ea3e4;   // GFX Null   -  Prologue: The Bon Odori
extern u32 D_089ea3e8[]; // GFX Array  -  Prologue: The Bon Odori
extern u32 D_088ad530[]; // Animation  -  Text (The Bon Odori)

extern u32 D_089ea514;   // GFX Null   -  Prologue: Bon Dance
extern u32 D_089ea518[]; // GFX Array  -  Prologue: Bon Dance
extern u32 D_088ad898[]; // Animation  -  Text (Bon Dance)

extern u32 D_089ea650;   // GFX Null   -  Prologue: Karate Man
extern u32 D_089ea654[]; // GFX Array  -  Prologue: Karate Man
extern u32 D_088ada78[]; // Animation  -  Text (Karate Man)
extern u32 D_088adaa8[]; // Animation  -  Kick (Karate Man)

extern u32 D_089ea864;   // GFX Null   -  Prologue: Cosmic Dance
extern u32 D_089ea868[]; // GFX Array  -  Prologue: Cosmic Dance
extern u32 D_088adb94[]; // Animation  -  Text (Cosmic Dance)
extern u32 D_088adba4[]; // Animation  -  Dancers (Cosmic Dance)

extern u32 D_089ea988;   // GFX Null   -  Prologue: Night Walk
extern u32 D_089ea98c[]; // GFX Array  -  Prologue: Night Walk
extern u32 D_088ae2a8[]; // Animation  -  Text (Night Walk)
extern u32 D_088ae048[]; // Animation  -  Play-yan (Night Walk)
extern u32 D_088ae160[]; // Animation  -  Balloons (Night Walk)

extern u32 D_089eaadc;   // GFX Null   -  Prologue: Showtime
extern u32 D_089eaae0[]; // GFX Array  -  Prologue: Showtime
extern u32 D_088ae3e4[]; // Animation  -  Text (Showtime)
extern u32 D_088ae3f4[]; // Animation  -  Penguin (Showtime)

extern u32 D_089eac18;   // GFX Null   -  Prologue: Bouncy Road
extern u32 D_089eac1c[]; // GFX Array  -  Prologue: Bouncy Road
extern u32 D_088af5a0[]; // Animation  -  Text (Bouncy Road)
extern u32 D_088af510[]; // Animation  -  Bouncers (Bouncy Road)

extern u32 D_089ead54;   // GFX Null   -  Prologue: Rhythm Tweezers
extern u32 D_089ead58[]; // GFX Array  -  Prologue: Rhythm Tweezers
extern u32 D_088af6b4[]; // Animation  -  Text (Rhythm Tweezers)

extern u32 D_089eae84;   // GFX Null   -  Prologue: Fireworks
extern u32 D_089eae88[]; // GFX Array  -  Prologue: Fireworks
extern u32 D_088af7d4[]; // Animation  -  Text (Fireworks)

extern u32 D_089eb014;   // GFX Null   -  Prologue: The Clappy Trio
extern u32 D_089eb018[]; // GFX Array  -  Prologue: The Clappy Trio
extern u32 D_088afb9c[]; // Animation  -  Text (The Clappy Trio)

extern u32 D_089eb1c8;   // GFX Null   -  Prologue: The Snappy Trio
extern u32 D_089eb1cc[]; // GFX Array  -  Prologue: The Snappy Trio
extern u32 D_088afdc4[]; // Animation  -  Text (The Snappy Trio)

extern u32 D_089eb37c;   // GFX Null   -  Prologue: Samurai Slice
extern u32 D_089eb380[]; // GFX Array  -  Prologue: Samurai Slice
extern u32 D_088affe0[]; // Animation  -  Text (Samurai Slice)

extern u32 D_089eb530;   // GFX Null   -  Prologue: Power Calligraphy
extern u32 D_089eb534[]; // GFX Array  -  Prologue: Power Calligraphy
extern u32 D_088b0690[]; // Animation  -  Text (Power Calligraphy)
extern u32 D_088b06b0[]; // Animation  -  HAI (Power Calligraphy)
extern const struct SequenceData s_sword_hi_seqData; // Sound Effect - HAI

extern u32 D_089eb66c;   // GFX Null   -  Prologue: Marching Orders
extern u32 D_089eb670[]; // GFX Array  -  Prologue: Marching Orders
extern u32 D_088b09b4[]; // Animation  -  Text (Marching Orders)



extern u32  func_080087b4(u16, u32 *);
extern void func_0804cebc(u32, s16, s8);
extern void func_0800e62c(s16, u32, s16, u32, u16);
extern u32  func_0804d160(s32, u32 *, s8, s16, s16, u16, s8, s8, u16);


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

// [func_080451d8] ENGINE Func_00
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


  // // //  PROLOGUE: SPACEBALL  // // //


// [func_08045208] GFX_LOAD Func_02
void func_08045208(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08045218] GFX_LOAD Func_01
void func_08045218(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ea270, 0x2000);
    func_08005d38(data, func_08045208, 0);
}

// [func_08045248] GFX_LOAD Func_00
void func_08045248(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089ea26c);
    func_08005d38(data, func_08045218, 0);
}

// [func_08045278] MAIN - Load
void func_08045278(u32 ver) {
    gPrologueInfo.ver = ver;

    func_08045248();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088ad3f4, 0, 0x78, 0x50, 0, 0, 0, 0);
}

// [func_080452d4] ENGINE Func_00
void func_080452d4(void) {
}

// [func_080452d8] MAIN - Loop
void func_080452d8(void) {
}

// [func_080452dc] MAIN - Unload
void func_080452dc(void) {
}

// [func_080452e0] Event 0 - Set Text
void func_080452e0(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo.entity2, frame);
}


  // // //  PROLOGUE: THE BON ODORI  // // //


// [func_08045304] GFX_LOAD Func_02
void func_08045304(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08045314] GFX_LOAD Func_01
void func_08045314(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ea3e8, 0x2000);
    func_08005d38(data, func_08045304, 0);
}

// [func_08045344] GFX_LOAD Func_00
void func_08045344(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089ea3e4);
    func_08005d38(data, func_08045314, 0);
}

// [func_08045374] MAIN - Load
void func_08045374(u32 ver) {
    gPrologueInfo.ver = ver;

    func_08045344();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088ad530, 0, 0x50, 0x40, 0, 0, 0x7f, 0);
}

// [func_080452d4] ENGINE Func_00
void func_080453d0(void) {
}

// [func_080452d8] MAIN - Loop
void func_080453d4(void) {
}

// [func_080452dc] MAIN - Unload
void func_080453d8(void) {
}

// [func_080453dc] Event 0 - Show Text
void func_080453dc(void) {
    func_0804dae0(D_03005380, gPrologueInfo.entity2, 1, 0x7f, 0);
}


  // // //  PROLOGUE: BON DANCE  // // //


// [func_08045408] GFX_LOAD Func_02
void func_08045408(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08045418] GFX_LOAD Func_01
void func_08045418(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ea518, 0x2000);
    func_08005d38(data, func_08045408, 0);
}

// [func_08045448] GFX_LOAD Func_00
void func_08045448(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089ea514);
    func_08005d38(data, func_08045418, 0);
}

// [func_08045478] MAIN - Load
void func_08045478(u32 ver) {
    gPrologueInfo.ver = ver;

    func_08045448();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088ad898, 0, 0x78, 0x8c, 0, 0, 0x7f, 0);
}

// [func_080454d4] ENGINE Func_00
void func_080454d4(void) {
}

// [func_080454d8] MAIN - Loop
void func_080454d8(void) {
}

// [func_080454dc] MAIN - Unload
void func_080454dc(void) {
}

// [func_080454e0] Event 0 - Show Text
void func_080454e0(void) {
    func_0804dae0(D_03005380, gPrologueInfo.entity2, 1, 0x7f, 0);
}


  // // //  PROLOGUE: KARATE MAN  // // //


// [func_0804550c] GFX_LOAD Func_02
void func_0804550c(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_0804551c] GFX_LOAD Func_01
void func_0804551c(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ea654, 0x2000);
    func_08005d38(data, func_0804550c, 0);
}

// [func_0804554c] GFX_LOAD Func_00
void func_0804554c(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089ea650);
    func_08005d38(data, func_0804551c, 0);
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

// [func_080455f8] ENGINE Func_00
void func_080455f8(void) {
}

// [func_080455fc] MAIN - Loop
void func_080455fc(void) {
}

// [func_08045600] MAIN - Unload
void func_08045600(void) {
}

// [func_08045604] Event 0 - Set Text
void func_08045604(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo.entity2, frame);
}

// [func_08045628] Event 1 - Kick
void func_08045628(void) {
    func_0804cebc(D_03005380, gPrologueInfo.entity4, 1);
    func_0804dae0(D_03005380, gPrologueInfo.entity4, 1, 0x7f, 0);
}


  // // //  PROLOGUE: COSMIC DANCE  // // //


// [func_08045664] GFX_LOAD Func_02
void func_08045664(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08045674] GFX_LOAD Func_01
void func_08045674(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ea868, 0x2000);
    func_08005d38(data, func_08045664, 0);
}

// [func_080456a4] GFX_LOAD Func_00
void func_080456a4(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089ea864);
    func_08005d38(data, func_08045674, 0);
}

// [func_080456d4] MAIN - Load
void func_080456d4(u32 ver) {
    gPrologueInfo.ver = ver;

    func_080456a4();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088adb94, 0, 0x78, 0x50, 0, 0, 0x7f, 0);
}

// [func_08045730] ENGINE Func_00
void func_08045730(void) {
}

// [func_08045734] MAIN - Loop
void func_08045734(void) {
}

// [func_08045738] MAIN - Unload
void func_08045738(void) {
}

// [func_0804573c] Event 0 - Show Dancers
void func_0804573c(void) {
    u32 i = 0;
    u32 floatX = 0x480000;
    u32 intX;
    u16 dancer;

    for (i; i < 4; i++) {
        dancer = func_0804d160(D_03005380, D_088adba4, 0, 0x12c, 0x78, 0x4800 - i, 0, 0, 0);
        intX = floatX >> 0x10;
        func_0800e62c(dancer, 0, intX, 0x78, func_0800c3a4(0x12));
        floatX += 0x200000;
    }
}


  // // //  PROLOGUE: NIGHT WALK  // // //


// [func_080457b4] GFX_LOAD Func_02
void func_080457b4(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_080457c4] GFX_LOAD Func_01
void func_080457c4(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ea98c, 0x2000);
    func_08005d38(data, func_080457b4, 0);
}

// [func_080457f4] GFX_LOAD Func_00
void func_080457f4(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089ea988);
    func_08005d38(data, func_080457c4, 0);
}

// [func_08045824] MAIN - Load
void func_08045824(u32 ver) {
    gPrologueInfo.ver = ver;

    func_080457f4();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088ae2a8, 0, 0x6e, 0x78, 0, 0, 0x7f, 0);
    gPrologueInfo.entity4 = func_0804d160(D_03005380, D_088ae048, 0, 0x3c, 0x78, 0, 0, 0x7f, 0);
    gPrologueInfo.entity6 = func_0804d160(D_03005380, D_088ae160, 0, 0x3c, 0x78, 0, 1, 0, 0);
}

// [func_080458e0] ENGINE Func_00
void func_080458e0(void) {
}

// [func_080458e4] MAIN - Loop
void func_080458e4(void) {
}

// [func_080458e8] MAIN - Unload
void func_080458e8(void) {
}

// [func_080458ec] Event 0 - Animate Play-yan; Event 1 - Show Text
void func_080458ec(u32 event) {
    switch (event) {
        case 0: // Event 0 - Animate Play-yan
            func_0804dae0(D_03005380, gPrologueInfo.entity4, 1, 0x7f, 0);
            break;
        case 1: // Event 1 - Show Text
            func_0804dae0(D_03005380, gPrologueInfo.entity2, 1, 0x7f, 0);
            break;
    }
}


  // // //  PROLOGUE: SHOWTIME  // // //


// [func_08045944] GFX_LOAD Func_02
void func_08045944(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08045954] GFX_LOAD Func_01
void func_08045954(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089eaae0, 0x2000);
    func_08005d38(data, func_08045944, 0);
}

// [func_08045984] GFX_LOAD Func_00
void func_08045984(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089eaadc);
    func_08005d38(data, func_08045954, 0);
}

// [func_080459b4] MAIN - Load
void func_080459b4(u32 ver) {
    gPrologueInfo.ver = ver;

    func_08045984();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088ae3e4, 0, 0x40, 0x40, 0, 0, 0x7f, 0);
    gPrologueInfo.entity4 = func_0804d160(D_03005380, D_088ae3f4, 0, 0x88, 0x40, 0, 0, 0x7f, 0);
}

// [func_08045a44] ENGINE Func_00
void func_08045a44(void) {
}

// [func_08045a48] MAIN - Loop
void func_08045a48(void) {
}

// [func_08045a4c] MAIN - Unload
void func_08045a4c(void) {
}

// [func_08045a50] Event 0 - Show Text, Animate Penguin
void func_08045a50(void) {
    func_0804dae0(D_03005380, gPrologueInfo.entity2, 1, 0x7f, 0);
    func_0804dae0(D_03005380, gPrologueInfo.entity4, 1, 0x7f, 0);
}


  // // //  PROLOGUE: BOUNCY ROAD  // // //


// [func_08045a90] GFX_LOAD Func_02
void func_08045a90(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08045aa0] GFX_LOAD Func_01
void func_08045aa0(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089eac1c, 0x2000);
    func_08005d38(data, func_08045a90, 0);
}

// [func_08045ad0] GFX_LOAD Func_00
void func_08045ad0(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089eac18);
    func_08005d38(data, func_08045aa0, 0);
}

// [func_08045b00] MAIN - Load
void func_08045b00(u32 ver) {
    gPrologueInfo.ver = ver;

    func_08045ad0();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088af5a0, 0, 0x78, 0x78, 0, 0, 0x7f, 0);
    gPrologueInfo.entity4 = func_0804d160(D_03005380, D_088af510, 0, 0x77, 0x65, 0, 0, 0x7f, 0);
}

// [func_08045b88] ENGINE Func_00
void func_08045b88(void) {
}

// [func_08045b8c] MAIN - Loop
void func_08045b8c(void) {
}

// [func_08045b90] MAIN - Unload
void func_08045b90(void) {
}

// [func_08045b94] Event 0 - Animate Bouncers; Event 1 - Show Text
void func_08045b94(u32 event) {
    switch (event) {
        case 0: // Event 0 - Animate Bouncers
            func_0804dae0(D_03005380, gPrologueInfo.entity4, 1, 0x7f, 0);
            break;
        case 1: // Event 1 - Show Text
            func_0804dae0(D_03005380, gPrologueInfo.entity2, 1, 0x7f, 0);
            break;
    }
}


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
    func_08005d38(data, func_08045bec, 0);
}

// [func_08045c2c] GFX_LOAD Func_00
void func_08045c2c(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089ead54);
    func_08005d38(data, func_08045bfc, 0);
}

// [func_08045c5c] MAIN - Load
void func_08045c5c(u32 ver) {
    gPrologueInfo.ver = ver;

    func_08045c2c();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 0x1d, 1);

    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088af6b4, 0, 0x3c, 0x40, 0, 0, 0x7f, 0);
}

// [func_08045cb8] ENGINE Func_00
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


  // // //  PROLOGUE: FIREWORKS  // // //


// [func_08045cf0] GFX_LOAD Func_02
void func_08045cf0(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08045d00] GFX_LOAD Func_01
void func_08045d00(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089eae88, 0x2000);
    func_08005d38(data, func_08045cf0, 0);
}

// [func_08045d30] GFX_LOAD Func_00
void func_08045d30(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089eae84);
    func_08005d38(data, func_08045d00, 0);
}

// [func_08045d60] MAIN - Load
void func_08045d60(u32 ver) {
    gPrologueInfo.ver = ver;

    func_08045d30();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088af7d4, 0, 0x78, 8, 0, 0, 0x7f, 0);
}

// [func_08045dbc] ENGINE Func_00
void func_08045dbc(void) {
}

// [func_08045dc0] MAIN - Loop
void func_08045dc0(void) {
}

// [func_08045dc4] MAIN - Unload
void func_08045dc4(void) {
}

// [func_08045dc8] Event 0 - Set Text
void func_08045dc8(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo.entity2, frame);
}


  // // //  PROLOGUE: THE CLAPPY TRIO  // // //


// [func_08045dec] GFX_LOAD Func_02
void func_08045dec(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08045dfc] GFX_LOAD Func_01
void func_08045dfc(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089eb018, 0x2000);
    func_08005d38(data, func_08045dec, 0);
}

// [func_08045e2c] GFX_LOAD Func_00
void func_08045e2c(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089eb014);
    func_08005d38(data, func_08045dfc, 0);
}

// [func_08045e5c] MAIN - Load
void func_08045e5c(u32 ver) {
    gPrologueInfo.ver = ver;

    func_08045e2c();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088afb9c, 0, 0x78, 0x64, 0, 0, 0, 0);
}

// [func_08045eb8] ENGINE Func_00
void func_08045eb8(void) {
}

// [func_08045ebc] MAIN - Loop
void func_08045ebc(void) {
}

// [func_08045ec0] MAIN - Unload
void func_08045ec0(void) {
}

// [func_08045ec4] Event 0 - Set Text
void func_08045ec4(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo.entity2, frame);
}


  // // //  PROLOGUE: THE SNAPPY TRIO  // // //


// [func_08045ee8] GFX_LOAD Func_02
void func_08045ee8(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08045ef8] GFX_LOAD Func_01
void func_08045ef8(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089eb1cc, 0x2000);
    func_08005d38(data, func_08045ee8, 0);
}

// [func_08045f28] GFX_LOAD Func_00
void func_08045f28(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089eb1c8);
    func_08005d38(data, func_08045ef8, 0);
}

// [func_08045f58] MAIN - Load
void func_08045f58(u32 ver) {
    gPrologueInfo.ver = ver;

    func_08045f28();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088afdc4, 0, 0x78, 0x64, 0, 0, 0x7f, 0);
}

// [func_08045fb4] ENGINE Func_00
void func_08045fb4(void) {
}

// [func_08045fb8] MAIN - Loop
void func_08045fb8(void) {
}

// [func_08045fbc] MAIN - Unload
void func_08045fbc(void) {
}

// [func_08045fc0] Event 0 - Set Text
void func_08045fc0(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo.entity2, frame);
}


  // // //  PROLOGUE: SAMURAI SLICE  // // //


// [func_08045fe4] GFX_LOAD Func_02
void func_08045fe4(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08045ff4] GFX_LOAD Func_01
void func_08045ff4(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089eb380, 0x2000);
    func_08005d38(data, func_08045fe4, 0);
}

// [func_08046024] GFX_LOAD Func_00
void func_08046024(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089eb37c);
    func_08005d38(data, func_08045ff4, 0);
}

// [func_08046054] MAIN - Load
void func_08046054(u32 ver) {
    gPrologueInfo.ver = ver;

    func_08046024();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);
    func_0800e0a0(2, 0, 0, 0, 0, 30, 1);

    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088affe0, 0, 0x87, 0x14, 0, 0, 0x7f, 0);
}

// [func_080460c8] ENGINE Func_00
void func_080460c8(void) {
}

// [func_080460cc] MAIN - Loop
void func_080460cc(void) {
}

// [func_080460d0] MAIN - Unload
void func_080460d0(void) {
}

// [func_080460d4] Event 0 - Set Text
void func_080460d4(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo.entity2, frame);
}


  // // //  PROLOGUE: POWER CALLIGRAPHY  // // //


// [func_080460f8] GFX_LOAD Func_02
void func_080460f8(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08046108] GFX_LOAD Func_01
void func_08046108(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089eb534, 0x2000);
    func_08005d38(data, func_080460f8, 0);
}

// [func_08046138] GFX_LOAD Func_00
void func_08046138(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089eb530);
    func_08005d38(data, func_08046108, 0);
}

// [func_08046168] MAIN - Load
void func_08046168(u32 ver) {
    gPrologueInfo.ver = ver;

    func_08046138();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088b0690, 0, 0xa0, 0x96, 0, 0, 0x7f, 0);
}

// [func_080461c4] ENGINE Func_00
void func_080461c4(void) {
}

// [func_080461c8] MAIN - Loop
void func_080461c8(void) {
}

// [func_080461cc] MAIN - Unload
void func_080461cc(void) {
}

// [func_080461d0] Event 0 - Set Text
void func_080461d0(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo.entity2, frame);
}

// [func_080461f4] Event 1 - HAI
void func_080461f4(void) {
    func_0804d160(D_03005380, D_088b06b0, 0, 0x78, 0x58, 0x800, 1, 0x7f, 0);
    func_08002634(&s_sword_hi_seqData);
}


  // // //  PROLOGUE: MARCHING ORDERS  // // //


// [func_08046234] GFX_LOAD Func_02
void func_08046234(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08046244] GFX_LOAD Func_01
void func_08046244(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089eb670, 0x2000);
    func_08005d38(data, func_08046234, 0);
}

// [func_08046274] GFX_LOAD Func_00
void func_08046274(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), &D_089eb66c);
    func_08005d38(data, func_08046244, 0);
}

// [func_080462a4] MAIN - Load
void func_080462a4(u32 ver) {
    gPrologueInfo.ver = ver;

    func_08046274();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo.entity2 = func_0804d160(D_03005380, D_088b09b4, 0, 0x70, 0x8c, 0, 0, 0, 0);
}

// [func_08046300] ENGINE Func_00
void func_08046300(void) {
}

// [func_08046304] MAIN - Loop
void func_08046304(void) {
}

// [func_08046308] MAIN - Unload
void func_08046308(void) {
}

// [func_0804630c] Event 0 - Set Text
void func_0804630c(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo.entity2, frame);
}


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
