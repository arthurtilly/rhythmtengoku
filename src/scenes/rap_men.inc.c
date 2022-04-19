#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"

// For readability. !TODO - CHANGE/REMOVE
#define gRapMenInfo D_030055d0->gameInfo.rapMen

extern char D_0805a8b0[];   // Empty Default Text

extern u32 **D_089e63f8[];  // Animation Index (index of pairs of animation pointers; 0 = Rap Men; 1 = Rap Women)
extern u32 D_089e6424;      // GFX-related Null
extern u32 *D_089e6518[];   // GFX Struct Index
extern u8  D_089e6520;
extern u8  D_089e6525;

const struct SeqData *D_089e652c[2][2];
extern u32 D_089e65f0[];

extern const struct SequenceData s_RC_seqData;
extern const struct SequenceData s_tom_M_seqData;
extern const struct SequenceData s_SD1_seqData;
extern const struct SequenceData s_CC4_seqData;

// !TODO
extern u32 *func_08004b98(u32 *, char *, u32, u32);
extern u32 *func_08004c0c(u32 *, char *, u32, u32);
extern void func_0804cebc(s32, s16, s8);
extern u32  func_0804d160(s32, u32 *, s8, s16, s16, u16, s8, s8, u16);
extern void func_0804d770(s32, s16, u16);
extern void func_0804d8f8(s32, s16, u32 *, u32, u32, u32, u32);


u32 *func_080398b4(u32 arg0) {
    return D_089e63f8[arg0][gRapMenInfo.unk0];
}

void func_080398d4(void) {
	func_0800c604(0);
	func_08017578();
}

void func_080398e4(void) {
	u32 temp;

	func_0800c604(0);
	temp = func_08002ee0(func_0800c3b8(), D_089e6518[gRapMenInfo.unk0], 0x2000);
	func_08005d38(temp, func_080398d4, 0);
}

void func_08039924(void) {
	u32 temp;

	func_0800c604(0);
	temp = func_080087b4(func_0800c3b8(), &D_089e6424);
	func_08005d38(temp, func_080398e4, 0);
}

void func_08039950(u32 arg0) {
    u32 *temp;

    gRapMenInfo.unk0 = arg0;
    func_08039924();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);
    temp = func_0800c660(0x340, 2);
    gRapMenInfo.unk4 = temp;
    gRapMenInfo.unkC = func_0804d160(D_03005380, func_08004c0c(temp, D_0805a8b0, 1, 14), 0, 0x78, 0x94, 0, 0, 0, 0);
    gRapMenInfo.unk8 = func_0804d160(D_03005380, func_080398b4(10), 0, 0x46, 0x82, 0x4800, 1, 0x7f, 0);
    gRapMenInfo.unkA = func_0804d160(D_03005380, func_080398b4(9), 0, 0xa0, 0x82, 0x4800, 1, 0x7f, 0);
    gRapMenInfo.unkE = 0;
    gRapMenInfo.unk10 = 0;
    gRapMenInfo.unk12 = 0;
    gRapMenInfo.unk14 = 0;
    func_08017338(1, 0); 
}

void func_08039a40(void) {
	return;
}

void func_08039a44(u32 arg0) {
    func_0804d8f8(D_03005380, gRapMenInfo.unk8, func_080398b4((&D_089e6520)[arg0]), 0, 1, 0x7f, 0);
    gRapMenInfo.unkE = func_0800c3a4((&D_089e6525)[arg0]);
}

void func_08039a98(u32 arg0) {
    gRapMenInfo.unk14 = arg0;
}

void func_08039aa4(void) {
    if (gRapMenInfo.unkE) {
        gRapMenInfo.unkE--;
    }
    if (gRapMenInfo.unk10) {
        gRapMenInfo.unk10--;
    }
    if (gRapMenInfo.unk12) {
        gRapMenInfo.unk12--;
    }
}

void func_08039ad4(void) {
	return;
}

void func_08039ad8(u32 arg0, struct struct_080179f4_sub *arg1, u32 arg2) {
    func_0804d8f8(D_03005380, gRapMenInfo.unkA, func_080398b4(3), 0, 1, 0x7f, 0);
    gRapMenInfo.unk10 = func_0800c3a4(0x24);
    gRapMenInfo.unk12 = func_0800c3a4(0x24);
    arg1->unk0 = arg2;
}

u32 func_08039b2c(u32 arg0, u32 arg1, u32 arg2) {
    if (arg2 > func_0800c3a4(0x30)) {
        return 1;
    } else {
        return 0;
    }
}

void func_08039b48(void) {
	return;
}

void func_08039b4c(u32 arg0, struct struct_080179f4_sub *arg1) {
    func_0804d8f8(D_03005380, gRapMenInfo.unkA, func_080398b4(2), 0, 1, 0x7f, 0);
    gRapMenInfo.unk10 = func_0800c3a4(0x24);
    func_0804d160(D_03005380, func_080398b4(7), 0, 0xa0, 0x82, 0x47f6, 1, 0, 3);
    func_08039a44(3);
    func_08002634(D_089e652c[gRapMenInfo.unk0][arg1->unk0]);
    func_08002634(&s_SD1_seqData);
    func_08002634(&s_CC4_seqData);
}

void func_08039c00(void) {
    func_0804d8f8(D_03005380, gRapMenInfo.unkA, func_080398b4(1), 0, 1, 0x7f, 0);
    gRapMenInfo.unk10 = func_0800c3a4(0x24);
    func_08002634(D_089e652c[gRapMenInfo.unk0][0]);
    func_08002634(&s_tom_M_seqData);
}

void func_08039c60(void) {
    if (!gRapMenInfo.unk14) {
        func_0804d8f8(D_03005380, gRapMenInfo.unkA, func_080398b4(8), 0, 1, 0x7f, 0);
        gRapMenInfo.unk10 = func_0800c3a4(0x3c);
        func_08002634(&s_RC_seqData);
    }
    func_0800bc40();
}

void func_08039cb8(void) {
    func_0804d8f8(D_03005380, gRapMenInfo.unkA, func_080398b4(9), 0, 1, 0x7f, 0);
    gRapMenInfo.unk10 = func_0800c3a4(0x24);
    func_08002634(D_089e65f0[gRapMenInfo.unk0]);
    func_0800bc40();
}

void func_08039d10(void) {
    if (!gRapMenInfo.unkE) {
        func_0804d8f8(D_03005380, gRapMenInfo.unk8, func_080398b4(0xA), 0, 1, 0x7f, 0);
    }
    if (!gRapMenInfo.unk10) {
        func_0804d8f8(D_03005380, gRapMenInfo.unkA, func_080398b4(9), 0, 1, 0x7f, 0);
    }
}

void func_08039d7c(char *arg0) {
    u32 *temp;

    if (!arg0) {
        func_0804d770(D_03005380, gRapMenInfo.unkC, 0);
        return;
    }
    temp = func_08004b98(gRapMenInfo.unk4, arg0, 1, 8);
    func_08007b04(gRapMenInfo.unk4, gRapMenInfo.unkC);
    func_0804d8f8(D_03005380, gRapMenInfo.unkC, temp, 0, 0, 0, 0);
    func_0804d770(D_03005380, gRapMenInfo.unkC, 1);
}

void func_08039df8(void) {
	return;
}
