#include "engines/prologues.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct PrologueInfo *)D_030055d0)


  // // //  PROLOGUE: QUIZ SHOW  // // //


// [func_08046528] GFX_INIT Func_02
void func_08046528(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08046538] GFX_INIT Func_01
void func_08046538(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ebb80, 0x2000);
    task_run_after(data, func_08046528, 0);
}

// [func_08046568] GFX_INIT Func_00
void func_08046568(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ebb7c);
    task_run_after(data, func_08046538, 0);
}

// [func_08046598] MAIN - Init
void func_08046598(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046568();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b13c4, 0, 0x78, 0x5a, 0, 1, 0x7f, 0);
}

// [func_080465f8] ENGINE Func_00
void func_080465f8(void) {
}

// [func_080465fc] MAIN - Update
void func_080465fc(void) {
}

// [func_08046600] MAIN - Close
void func_08046600(void) {
}

// [func_08046604] Event 0 - Set Animation Frame (Text)
void func_08046604(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->sprite2, frame);
}


  // // //  PROLOGUE: REMIX 1  // // //


// [func_08046628] GFX_INIT Func_02
void func_08046628(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08046638] GFX_INIT Func_01
void func_08046638(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ebcb0, 0x2000);
    task_run_after(data, func_08046628, 0);
}

// [func_08046668] GFX_INIT Func_00
void func_08046668(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ebcac);
    task_run_after(data, func_08046638, 0);
}

// [func_08046698] MAIN - Init
void func_08046698(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046668();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b17d0, 0, 0x70, 0x80, 0, 0, 0, 0);
}

// [func_080466f4] ENGINE Func_00
void func_080466f4(void) {
}

// [func_080466f8] MAIN - Update
void func_080466f8(void) {
}

// [func_080466fc] MAIN - Close
void func_080466fc(void) {
}

// [func_08046700] Event 0 - Set Animation Frame (Text)
void func_08046700(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->sprite2, frame);
}


  // // //  PROLOGUE: REMIX 2  // // //


// [func_08046724] GFX_INIT Func_02
void func_08046724(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08046734] GFX_INIT Func_01
void func_08046734(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ebe7c, 0x2000);
    task_run_after(data, func_08046724, 0);
}

// [func_08046764] GFX_INIT Func_00
void func_08046764(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ebe78);
    task_run_after(data, func_08046734, 0);
}

// [func_08046794] MAIN - Init
void func_08046794(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046764();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b1c9c, 0, 0x70, 0x80, 0, 0, 0x7f, 0);
}

// [func_080467f0] ENGINE Func_00
void func_080467f0(void) {
}

// [func_080467f4] MAIN - Update
void func_080467f4(void) {
}

// [func_080467f8] MAIN - Close
void func_080467f8(void) {
}

// [func_080467fc] Event 0 - Set Animation Frame (Text)
void func_080467fc(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->sprite2, frame);
}


  // // //  PROLOGUE: REMIX 3  // // //


// [func_08046820] GFX_INIT Func_02
void func_08046820(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08046830] GFX_INIT Func_01
void func_08046830(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ec048, 0x2000);
    task_run_after(data, func_08046820, 0);
}

// [func_08046860] GFX_INIT Func_00
void func_08046860(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ec044);
    task_run_after(data, func_08046830, 0);
}

// [func_08046890] MAIN - Init
void func_08046890(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046860();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b2044, 0, 0x70, 0x80, 0, 0, 0x7f, 0);
}

// [func_080468ec] ENGINE Func_00
void func_080468ec(void) {
}

// [func_080468f0] MAIN - Update
void func_080468f0(void) {
}

// [func_080468f4] MAIN - Close
void func_080468f4(void) {
}

// [func_080468f8] Event 0 - Set Animation Frame (Text)
void func_080468f8(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->sprite2, frame);
}


  // // //  PROLOGUE: REMIX 4  // // //


// [func_0804691c] GFX_INIT Func_02
void func_0804691c(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_0804692c] GFX_INIT Func_01
void func_0804692c(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ec214, 0x2000);
    task_run_after(data, func_0804691c, 0);
}

// [func_0804695c] GFX_INIT Func_00
void func_0804695c(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ec210);
    task_run_after(data, func_0804692c, 0);
}

// [func_0804698c] MAIN - Init
void func_0804698c(u32 ver) {
    gPrologueInfo->ver = ver;

    func_0804695c();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b23ec, 0, 0x70, 0x80, 0, 0, 0x7f, 0);
}

// [func_080469e8] ENGINE Func_00
void func_080469e8(void) {
}

// [func_080469ec] MAIN - Update
void func_080469ec(void) {
}

// [func_080469f0] MAIN - Close
void func_080469f0(void) {
}

// [func_080469f4] Event 0 - Set Animation Frame (Text)
void func_080469f4(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->sprite2, frame);
}


  // // //  PROLOGUE: REMIX 5  // // //


// [func_08046a18] GFX_INIT Func_02
void func_08046a18(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08046a28] GFX_INIT Func_01
void func_08046a28(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ec3ec, 0x2000);
    task_run_after(data, func_08046a18, 0);
}

// [func_08046a58] GFX_INIT Func_00
void func_08046a58(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ec3e8);
    task_run_after(data, func_08046a28, 0);
}

// [func_08046a88] MAIN - Init
void func_08046a88(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046a58();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b27f4, 0, 0x70, 0x80, 0, 0, 0x7f, 0);
}

// [func_08046ae4] ENGINE Func_00
void func_08046ae4(void) {
}

// [func_08046ae8] MAIN - Update
void func_08046ae8(void) {
}

// [func_08046aec] MAIN - Close
void func_08046aec(void) {
}

// [func_08046af0] Event 0 - Set Animation Frame (Text)
void func_08046af0(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->sprite2, frame);
}


  // // //  PROLOGUE: REMIX 6  // // //


// [func_08046b14] GFX_INIT Func_02
void func_08046b14(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08046b24] GFX_INIT Func_01
void func_08046b24(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ec5c4, 0x2000);
    task_run_after(data, func_08046b14, 0);
}

// [func_08046b54] GFX_INIT Func_00
void func_08046b54(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ec5c0);
    task_run_after(data, func_08046b24, 0);
}

// [func_08046b84] MAIN - Init
void func_08046b84(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046b54();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b2b9c, 0, 0x70, 0x80, 0, 0, 0x7f, 0);
}

// [func_08046be0] ENGINE Func_00
void func_08046be0(void) {
}

// [func_08046be4] MAIN - Update
void func_08046be4(void) {
}

// [func_08046be8] MAIN - Close
void func_08046be8(void) {
}

// [func_08046bec] Event 0 - Set Animation Frame (Text)
void func_08046bec(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->sprite2, frame);
}


  // // //  PROLOGUE: REMIX 7  // // //


// [func_08046c10] GFX_INIT Func_02
void func_08046c10(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08046c20] GFX_INIT Func_01
void func_08046c20(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ec7b4, 0x2000);
    task_run_after(data, func_08046c10, 0);
}

// [func_08046c50] GFX_INIT Func_00
void func_08046c50(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ec7b0);
    task_run_after(data, func_08046c20, 0);
}

// [func_08046c80] MAIN - Init
void func_08046c80(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046c50();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b2f44, 0, 0x70, 0x80, 0, 0, 0x7f, 0);
}

// [func_08046cdc] ENGINE Func_00
void func_08046cdc(void) {
}

// [func_08046ce0] MAIN - Update
void func_08046ce0(void) {
}

// [func_08046ce4] MAIN - Close
void func_08046ce4(void) {
}

// [func_08046ce8] Event 0 - Set Animation Frame (Text)
void func_08046ce8(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->sprite2, frame);
}


  // // //  PROLOGUE: REMIX 8  // // //


// [func_08046d0c] GFX_INIT Func_02
void func_08046d0c(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08046d1c] GFX_INIT Func_01
void func_08046d1c(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ec98c, 0x2000);
    task_run_after(data, func_08046d0c, 0);
}

// [func_08046d4c] GFX_INIT Func_00
void func_08046d4c(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ec988);
    task_run_after(data, func_08046d1c, 0);
}

// [func_08046d7c] MAIN - Init
void func_08046d7c(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046d4c();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b332c, 0, 0x70, 0x80, 0, 0, 0x7f, 0);
}

// [func_08046dd8] ENGINE Func_00
void func_08046dd8(void) {
}

// [func_08046ddc] MAIN - Update
void func_08046ddc(void) {
}

// [func_08046de0] MAIN - Close
void func_08046de0(void) {
}

// [func_08046de4] Event 0 - Set Animation Frame (Text)
void func_08046de4(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->sprite2, frame);
}


  // // //  PROLOGUE: BUNNY HOP  // // //


// [func_08046e08] GFX_INIT Func_02
void func_08046e08(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08046e18] GFX_INIT Func_01
void func_08046e18(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ecb64, 0x2000);
    task_run_after(data, func_08046e08, 0);
}

// [func_08046e48] GFX_INIT Func_00
void func_08046e48(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ecb60);
    task_run_after(data, func_08046e18, 0);
}

// [func_08046e78] MAIN - Init
void func_08046e78(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046e48();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b35dc, 0, 0x16, 0xa2, 0, 0, 0x7f, 0);
    gPrologueInfo->sprite4 = func_0804d160(D_03005380, D_088b35a4, 0, 0x72, 0x78, 0, 0, 0x7f, 0);
}

// [func_08046f00] ENGINE Func_00
void func_08046f00(void) {
}

// [func_08046f04] MAIN - Update
void func_08046f04(void) {
}

// [func_08046f08] MAIN - Close
void func_08046f08(void) {
}

// [func_08046f0c] Event 0 - Set Animation Frame (Text)
void func_08046f0c(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->sprite2, frame);
}

// [func_08046f30] Event 1 - Play Animation (Rabbits)
void func_08046f30(void) {
    func_0804dae0(D_03005380, gPrologueInfo->sprite4, 1, 0x7f, 0);
}


  // // //  PROLOGUE: RAP MEN  // // //


// [func_08046f5c] GFX_INIT Func_02
void func_08046f5c(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08046f6c] GFX_INIT Func_01
void func_08046f6c(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ecd48, 0x2000);
    task_run_after(data, func_08046f5c, 0);
}

// [func_08046f9c] GFX_INIT Func_00
void func_08046f9c(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ecd44);
    task_run_after(data, func_08046f6c, 0);
}

// [func_08046fcc] MAIN - Init
void func_08046fcc(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046f9c();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b37d8, 0, 0xbe, 0x28, 0, 0, 0x7f, 0);
}

// [func_08047028] ENGINE Func_00
void func_08047028(void) {
}

// [func_0804702c] MAIN - Update
void func_0804702c(void) {
}

// [func_08047030] MAIN - Close
void func_08047030(void) {
}

// [func_08047034] Event 0 - Play Animation (Text)
void func_08047034(void) {
    func_0804dae0(D_03005380, gPrologueInfo->sprite2, 1, 0x7f, 0);
}


  // // //  PROLOGUE: RAP WOMEN  // // //


// [func_08047060] GFX_INIT Func_02
void func_08047060(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08047070] GFX_INIT Func_01
void func_08047070(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ece84, 0x2000);
    task_run_after(data, func_08047060, 0);
}

// [func_080470a0] GFX_INIT Func_00
void func_080470a0(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ece80);
    task_run_after(data, func_08047070, 0);
}

// [func_080470d0] MAIN - Init
void func_080470d0(u32 ver) {
    gPrologueInfo->ver = ver;

    func_080470a0();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b3ac4, 0, 0x78, 0x78, 0, 0, 0x7f, 0);
}

// [func_0804712c] ENGINE Func_00
void func_0804712c(void) {
}

// [func_08047130] MAIN - Update
void func_08047130(void) {
}

// [func_08047134] MAIN - Close
void func_08047134(void) {
}

// [func_08047138] Event 0 - Play Animation (Text)
void func_08047138(void) {
    func_0804dae0(D_03005380, gPrologueInfo->sprite2, 1, 0x7f, 0);
}


  // // //  PROLOGUE: RAT RACE  // // //


// [func_08047164] GFX_INIT Func_02
void func_08047164(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08047174] GFX_INIT Func_01
void func_08047174(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ecfc0, 0x2000);
    task_run_after(data, func_08047164, 0);
}

// [func_080471a4] GFX_INIT Func_00
void func_080471a4(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ecfbc);
    task_run_after(data, func_08047174, 0);
}

// [func_080471d4] MAIN - Init
void func_080471d4(u32 ver) {
    gPrologueInfo->ver = ver;

    func_080471a4();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b3d54, 0, 8, 8, 0, 0, 0x7f, 0);
    gPrologueInfo->sprite4 = func_0804d160(D_03005380, D_088b3d1c, 0, 0xbe, 0xa0, 0, 0, 0, 0);
}

// [func_08047250] ENGINE Func_00
void func_08047250(void) {
}

// [func_08047254] MAIN - Update
void func_08047254(void) {
}

// [func_08047258] MAIN - Close
void func_08047258(void) {
}

// [func_0804725c] Event 0 - Set Animation Frame (Text)
void func_0804725c(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->sprite2, frame);
}

// [func_08047280] Event 1 - Play Animation (Rat)
void func_08047280(void) {
    func_0804cebc(D_03005380, gPrologueInfo->sprite4, 1);
    func_0804dae0(D_03005380, gPrologueInfo->sprite4, 1, 0x7f, 0);
}


  // // //  PROLOGUE: NINJA BODYGUARD  // // //


// [func_080472bc] GFX_INIT Func_02
void func_080472bc(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_080472cc] GFX_INIT Func_01
void func_080472cc(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ed18c, 0x2000);
    task_run_after(data, func_080472bc, 0);
}

// [func_080472fc] GFX_INIT Func_00
void func_080472fc(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ed188);
    task_run_after(data, func_080472cc, 0);
}

// [func_0804732c] MAIN - Init
void func_0804732c(u32 ver) {
    gPrologueInfo->ver = ver;

    func_080472fc();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b4054, 0, 0x78, 0x82, 0, 0, 0x7f, 0);
    func_0804dcb8(D_03005380, gPrologueInfo->sprite2, 0x180);
}

// [func_08047398] ENGINE Func_00
void func_08047398(void) {
}

// [func_0804739c] MAIN - Update
void func_0804739c(void) {
}

// [func_080473a0] MAIN - Close
void func_080473a0(void) {
}

// [func_080473a4] Event 0 - Play Animation (Text)
void func_080473a4(u32 speed) {
    func_0804dae0(D_03005380, gPrologueInfo->sprite2, speed, 0x7f, 0);
}


  // // //  PROLOGUE: NINJA BODYGUARD 2  // // //


// [func_080473d4] GFX_INIT Func_02
void func_080473d4(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_080473e4] GFX_INIT Func_01
void func_080473e4(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ed2c8, 0x2000);
    task_run_after(data, func_080473d4, 0);
}

// [func_08047414] GFX_INIT Func_00
void func_08047414(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ed2c4);
    task_run_after(data, func_080473e4, 0);
}

// [func_08047444] MAIN - Init
void func_08047444(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08047414();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b432c, 0, 0x78, 0x82, 0, 0, 0x7f, 0);
}

// [func_080474a0] ENGINE Func_00
void func_080474a0(void) {
}

// [func_080474a4] MAIN - Update
void func_080474a4(void) {
}

// [func_080474a8] MAIN - Close
void func_080474a8(void) {
}

// [func_080474ac] Event 0 - Play Animation (Text)
void func_080474ac(u32 speed) {
    func_0804dae0(D_03005380, gPrologueInfo->sprite2, speed, 0x7f, 0);
}


  // // //  PROLOGUE: SPACE DANCE  // // //


// [func_080474dc] GFX_INIT Func_02
void func_080474dc(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_080474ec] GFX_INIT Func_01
void func_080474ec(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ed404, 0x2000);
    task_run_after(data, func_080474dc, 0);
}

// [func_0804751c] GFX_INIT Func_00
void func_0804751c(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ed400);
    task_run_after(data, func_080474ec, 0);
}

// [func_0804754c] MAIN - Init
void func_0804754c(u32 ver) {
    gPrologueInfo->ver = ver;

    func_0804751c();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b7338, 0, 0x50, 0x20, 0, 1, 0x7f, 0x8000);
    func_0804dcb8(D_03005380, gPrologueInfo->sprite2, 0x280);
    gPrologueInfo->sprite4 = func_0804d160(D_03005380, D_088b7690, 1, 0x78, 0x78, 0, 0, 0x7f, 0x8000);
    gPrologueInfo->sprite6 = func_0804d160(D_03005380, D_088b7660, 0, 0x40, 0x40, 0, 1, 0x7f, 0x8002);
}

// [func_08047624] ENGINE Func_00
void func_08047624(void) {
}

// [func_08047628] MAIN - Update
void func_08047628(void) {
}

// [func_0804762c] MAIN - Close
void func_0804762c(void) {
}

// [func_08047630] Event 0 - Animate sprite { 0 = Text; 1 = Faces; 2 = Star }
void func_08047630(u32 event) {
    u16 sprite;
    switch (event) {
        case 0: // sprite 0 - Text
            sprite = gPrologueInfo->sprite2;
            break;
        case 1: // sprite 1 - Faces
            sprite = gPrologueInfo->sprite4;
            break;
        case 2: // sprite 2 - Star
            sprite = gPrologueInfo->sprite6;
            break;
    }
    func_0804d770(D_03005380, sprite, 1);
}


  // // //  PROLOGUE: TAP TRIAL  // // //


// [func_08047678] GFX_INIT Func_02
void func_08047678(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08047688] GFX_INIT Func_01
void func_08047688(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ed54c, 0x2000);
    task_run_after(data, func_08047678, 0);
}

// [func_080476b8] GFX_INIT Func_00
void func_080476b8(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ed548);
    task_run_after(data, func_08047688, 0);
}

// [func_080476e8] MAIN - Init
void func_080476e8(u32 ver) {
    gPrologueInfo->ver = ver;

    func_080476b8();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b794c, 0, 0x78, 0x50, 0, 1, 0x7f, 0x8000);
    func_0804dcb8(D_03005380, gPrologueInfo->sprite2, 0x180);
}

// [func_08047764] ENGINE Func_00
void func_08047764(void) {
}

// [func_08047768] MAIN - Update
void func_08047768(void) {
}

// [func_0804776c] MAIN - Close
void func_0804776c(void) {
}

// [func_08047770] Event 0 - Set Animation Frame (Text)
void func_08047770(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->sprite2, frame);
}

// [func_08047794] Event 1 - Animate Text
void func_08047794(void) {
    func_0804d770(D_03005380, gPrologueInfo->sprite2, 1);
}


  // // //  PROLOGUE: TAP TRIAL 2  // // //


// [func_080477b4] GFX_INIT Func_02
void func_080477b4(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_080477c4] GFX_INIT Func_01
void func_080477c4(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ed6b8, 0x2000);
    task_run_after(data, func_080477b4, 0);
}

// [func_080477f4] GFX_INIT Func_00
void func_080477f4(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ed6b4);
    task_run_after(data, func_080477c4, 0);
}

// [func_08047824] MAIN - Init
void func_08047824(u32 ver) {
    gPrologueInfo->ver = ver;

    func_080477f4();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b7c88, 0, 0x69, 0x64, 0, 1, 0x7f, 0x8000);
}

// [func_08047888] ENGINE Func_00
void func_08047888(void) {
}

// [func_0804788c] MAIN - Update
void func_0804788c(void) {
}

// [func_08047890] MAIN - Close
void func_08047890(void) {
}

// [func_08047894] Event 0 - Set Animation Frame (Text)
void func_08047894(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->sprite2, frame);
}

// [func_080478b8] Event 1 - Animate Text
void func_080478b8(void) {
    func_0804d770(D_03005380, gPrologueInfo->sprite2, 1);
}


  // // //  PROLOGUE: TOSS BOYS  // // //


// [func_080478d8] GFX_INIT Func_02
void func_080478d8(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_080478e8] GFX_INIT Func_01
void func_080478e8(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ed824, 0x2000);
    task_run_after(data, func_080478d8, 0);
}

// [func_08047918] GFX_INIT Func_00
void func_08047918(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ed820);
    task_run_after(data, func_080478e8, 0);
}

// [func_08047948] MAIN - Init
void func_08047948(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08047918();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b8098, 0, 0x78, 0x78, 0, 0, 0, 0);
}

// [func_080479a4] ENGINE Func_00
void func_080479a4(void) {
}

// [func_080479a8] MAIN - Update
void func_080479a8(void) {
}

// [func_080479ac] MAIN - Close
void func_080479ac(void) {
}

// [func_080479b0] Event 0 - Set Animation Frame (Text)
void func_080479b0(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->sprite2, frame);
}


  // // //  PROLOGUE: TOSS BOYS 2  // // //


// [func_080479d4] GFX_INIT Func_02
void func_080479d4(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_080479e4] GFX_INIT Func_01
void func_080479e4(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ed9f0, 0x2000);
    task_run_after(data, func_080479d4, 0);
}

// [func_08047a14] GFX_INIT Func_00
void func_08047a14(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ed9ec);
    task_run_after(data, func_080479e4, 0);
}

// [func_08047a44] MAIN - Init
void func_08047a44(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08047a14();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b8388, 0, 0x78, 0x78, 0, 0, 0x7f, 0);
}

// [func_08047aa0] ENGINE Func_00
void func_08047aa0(void) {
}

// [func_08047aa4] MAIN - Update
void func_08047aa4(void) {
}

// [func_08047aa8] MAIN - Close
void func_08047aa8(void) {
}

// [func_08047aac] Event 0 - Set Animation Frame (Text)
void func_08047aac(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->sprite2, frame);
}


  // // //  PROLOGUE: TRAM & PAULINE  // // //


// [func_08047ad0] GFX_INIT Func_02
void func_08047ad0(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08047ae0] GFX_INIT Func_01
void func_08047ae0(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089edbbc, 0x2000);
    task_run_after(data, func_08047ad0, 0);
}

// [func_08047b10] GFX_INIT Func_00
void func_08047b10(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089edbb8);
    task_run_after(data, func_08047ae0, 0);
}

// [func_08047b40] MAIN - Init
void func_08047b40(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08047b10();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b8844, 0, 0x78, 0x96, 0, 0, 0x7f, 0);
    func_0804d160(D_03005380, D_088b8834, 0, 0x78, 0x96, 0x800, 0, 0x7f, 0);
}

// [func_08047bd0] ENGINE Func_00
void func_08047bd0(void) {
}

// [func_08047bd4] MAIN - Update
void func_08047bd4(void) {
}

// [func_08047bd8] MAIN - Close
void func_08047bd8(void) {
}

// [func_08047bdc] Event 0 - Show Text
void func_08047bdc(void) {
    func_0804dae0(D_03005380, gPrologueInfo->sprite2, 1, 0x7f, 0);
}


  // // //  PROLOGUE: SICK BEATS  // // //


// [func_08047c08] GFX_INIT Func_02
void func_08047c08(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08047c18] GFX_INIT Func_01
void func_08047c18(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089edcf8, 0x2000);
    task_run_after(data, func_08047c08, 0);
}

// [func_08047c48] GFX_INIT Func_00
void func_08047c48(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089edcf4);
    task_run_after(data, func_08047c18, 0);
}

// [func_08047c78] MAIN - Init
void func_08047c78(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08047c48();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b8cfc, 0, 0x60, 0x11, 0, 0, 0x7f, 0);
    gPrologueInfo->sprite4 = func_0804d160(D_03005380, D_088b8cbc, 0, 0xa0, 0x30, 0, 0, 0x7f, 0);
}

// [func_08047d00] ENGINE Func_00
void func_08047d00(void) {
}

// [func_08047d04] MAIN - Update
void func_08047d04(void) {
}

// [func_08047d08] MAIN - Close
void func_08047d08(void) {
}

// [func_08047d0c] Event 0 - Play Animation (Text), Play Animation (Virus)
void func_08047d0c(void) {
    func_0804dae0(D_03005380, gPrologueInfo->sprite2, 1, 0x7f, 0);
    func_0804dae0(D_03005380, gPrologueInfo->sprite4, 1, 0x7f, 0);
}


  // // //  PROLOGUE: WIZARD'S WALTZ  // // //


// [func_08047d4c] GFX_INIT Func_02
void func_08047d4c(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_08047d5c] GFX_INIT Func_01
void func_08047d5c(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089ede28, 0x2000);
    task_run_after(data, func_08047d4c, 0);
}

// [func_08047d8c] GFX_INIT Func_00
void func_08047d8c(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = func_080087b4(func_0800c3b8(), D_089ede24);
    task_run_after(data, func_08047d5c, 0);
}

// [func_08047dbc] MAIN - Init
void func_08047dbc(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08047d8c();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite2 = func_0804d160(D_03005380, D_088b8e50, 0, 0x40, 0x1e, 0, 1, 0, 0);
}

// [func_08047e18] ENGINE Func_00
void func_08047e18(void) {
}

// [func_08047e1c] MAIN - Update
void func_08047e1c(void) {
}

// [func_08047e20] MAIN - Close
void func_08047e20(void) {
}

// [func_08047e24] Event 0 - Play Animation (Text)
void func_08047e24(void) {
    func_0804dae0(D_03005380, gPrologueInfo->sprite2, 1, 0x7f, 0);
}
