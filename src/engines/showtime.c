asm(".include \"include/gba.inc\""); // Temporary

#include "engines/showtime.h"

#include "src/code_08001360.h"
#include "src/code_08003980.h"
#include "src/code_08007468.h"
#include "src/code_08016e18.h"
#include "src/lib_0804c870.h"

extern char D_0805a3cc[];

extern u32 D_088cb994[];
extern u32 D_088cb4a4[];
extern u32 D_089e384c[];
extern u32* D_089e3910[];

extern const struct SequenceData s_block_hit_seqData;

void func_0802bbfc(void) {
    func_0800c604(0);
    func_08017578();
}

void func_0802bc0c(void) {
    func_0800c604(0);
    func_08005d38(func_08002ee0(func_0800c3b8(), D_089e3910[gShowtimeInfo.unk6], 0x2000), func_0802bbfc, 0);
}

void func_0802bc4c(void) {
    func_0800c604(0);
    func_08005d38(func_080087b4(func_0800c3b8(), D_089e384c), func_0802bc0c, 0);
}

void func_0802bc78(u8 arg0) {
    u32* temp;
    gShowtimeInfo.unk6 = arg0;
    func_0802bc4c();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 0x1d, 2);
    func_0800e0a0(2, 1, 0, 0, 0, 0x1e, 0);
    func_0802d96c();
    gShowtimeInfo.unk0 = func_0800c660(0x340, 2);
    temp = func_08004b98(gShowtimeInfo.unk0, D_0805a3cc, 0, 0);
    gShowtimeInfo.unk4 = func_0804d160(D_03005380, temp, 0, 0x78, 0x38, 0, 0, 0, 0);
    func_08017338(1, 0);
    func_0802c23c();    
    func_0802d104();
    func_0802c40c();
    func_0802d394();
    func_0802da84();
    gShowtimeInfo.unk3C0 = 0;
    gShowtimeInfo.unk3C8 = 0;
    gShowtimeInfo.unk3CC = 0;
    gShowtimeInfo.unk3D0 = 0;
}

void func_0802bd40() {
    
}

#include "asm/scenes/showtime/asm_0802bd44.s"

#include "asm/scenes/showtime/asm_0802be10.s"

void func_0802be24() {
    D_03004b10.unk4C = 0;
    D_03004b10.DISPCNT &= 0xDFFF;
}

void func_0802be40(u32 unused_arg0, u32* arg1) {
    arg1[1] = func_0802ce70(0);
    func_0802d38c();
}

u8 func_0802be58(u32 unused_arg0, u32 unused_arg1, u32 arg2) {
    if (arg2 > func_0800c3a4(120)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void func_0802be74() {

}

#include "asm/scenes/showtime/asm_0802be78.s"

u8 func_0802be90(u32 unused_arg0, u32 unused_arg1, u32 arg2) {
    if (arg2 > func_0800c3a4(0x90))
        return TRUE;
    return FALSE;
}

void func_0802beac() {
    
}

#include "asm/scenes/showtime/asm_0802beb0.s"

#include "asm/scenes/showtime/asm_0802bec8.s"

void func_0802bee4() {
    
}

#include "asm/scenes/showtime/asm_0802bee8.s"

u8 func_0802bf00(u32 unused_arg0, u32 unused_arg1, u32 arg2) {
    if (arg2 > func_0800c3a4(0x78)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void func_0802bf1c() {
    
}

void func_0802bf20(u32 unused_arg0, u32* arg1) {
    arg1[1] = func_0802ce70(4);
    func_0802d38c();
}

u8 func_0802bf38(u32 unused_arg0, u32 unused_arg1, u32 arg2) {
    if (arg2 > func_0800c3a4(0x78))
        return TRUE;
    return FALSE;
}

void func_0802bf54() {
    
}

void func_0802bf58(u32 unused_arg0, u32* arg1) { //arg1 is probably a struct
    func_0802cf8c(arg1[1]);
    func_0802d81c(arg1[1]);
    func_0802d2bc();
    gShowtimeInfo.unk3C0 = func_0800c3a4(20);
}

#include "asm/scenes/showtime/asm_0802bf88.s"

#include "asm/scenes/showtime/asm_0802c078.s"

void func_0802c084() {
    if (gShowtimeInfo.unk3C0 == 0) {
        func_0802d918(-1);
        func_0802d2bc();
        gShowtimeInfo.unk3C0 = func_0800c3a4(30);
        func_08002634(&s_block_hit_seqData);
    }
}

#include "asm/scenes/showtime/asm_0802c0c8.s"

#include "asm/scenes/showtime/asm_0802c150.s"

#include "asm/scenes/showtime/asm_0802c1cc.s"

void func_0802c1f0(u32 unused_arg0, u16 arg1, u32 arg2) {
    switch (gShowtimeInfo.unk8[arg2].unk4) {
        case 0:
            break;
        case 1:
            gShowtimeInfo.unk8[arg2].unk4 = 0;
        func_0804cebc(D_03005380, arg1, 3);
        func_0804dcb8(D_03005380, arg1, 0);
    }
}

void func_0802c23c() {
    s32 i;
    for (i = 0; i < 2; i++) {
        u8 temp = gShowtimeInfo.unk6;
        gShowtimeInfo.unk8[i].unk4 = 0;
        if (gShowtimeInfo.unk6 != 1) {
            gShowtimeInfo.unk8[i].unk0 = func_0804d160(D_03005380, D_088cb4a4, 0, 0x40, 0x40, 0x4800, 1, 0, 4);
        } else {
            gShowtimeInfo.unk8[i].unk0 = func_0804d160(D_03005380, D_088cb994, 0, 0x40, 0x40, 0x4800, 1, 0, 4);
        }
        gShowtimeInfo.unk8[i].unk8 = 0;
        func_0804daa8(D_03005380, gShowtimeInfo.unk8[i].unk0, func_0802c1f0, i);
        func_0804cebc(D_03005380, gShowtimeInfo.unk8[i].unk0, 3);
        func_0804dcb8(D_03005380, gShowtimeInfo.unk8[i].unk0, 0);
    }
    func_0804d5d4(D_03005380, gShowtimeInfo.unk8[0].unk0, 0xc8, 0x80);
    func_0804d5d4(D_03005380, gShowtimeInfo.unk8[1].unk0, 0xb8, 0x90);
}

void func_0802c334() {
    s32 i;
    for (i = 0; i < 2; i++) {
        if (gShowtimeInfo.unk8[i].unk4 == 0) continue;
        if (gShowtimeInfo.unk8[i].unk4 != 1) continue;
        gShowtimeInfo.unk8[i].unk8 += 1;
    }
}

#include "asm/scenes/showtime/asm_0802c36c.s"

u32 func_0802c3d0(u32 arg0) {
    switch (gShowtimeInfo.unk8[arg0].unk8 / 4) {
        case 1:
            return 3;
        case 0:
            return 0;
        case 2:
            return 2;
        default:
            return 0;
    }
}

#include "asm/scenes/showtime/asm_0802c40c.s"

#include "asm/scenes/showtime/asm_0802c4b0.s"

#include "asm/scenes/showtime/asm_0802c4c0.s"

#include "asm/scenes/showtime/asm_0802c4f4.s"

#include "asm/scenes/showtime/asm_0802c528.s"

#include "asm/scenes/showtime/asm_0802c55c.s"

#include "asm/scenes/showtime/asm_0802c5c8.s"

#include "asm/scenes/showtime/asm_0802ce70.s"

#include "asm/scenes/showtime/asm_0802cf8c.s"

void func_0802cfa4(u32 arg0) {
    gShowtimeInfo.unk24[arg0].unk18 = 0;
    gShowtimeInfo.unk24[arg0].unk20 = 1;
}

#include "asm/scenes/showtime/asm_0802cfc8.s"

#include "asm/scenes/showtime/asm_0802cfe0.s"

u32 func_0802d068(u32 arg0) {
    return gShowtimeInfo.unk24[arg0].unk8;
}

u32 func_0802d080(u32 arg0) {
    if (gShowtimeInfo.unk24[arg0].unk0 == 8) {
        return gShowtimeInfo.unk24[arg0].unkC + 0xd;
    } else {
        return gShowtimeInfo.unk24[arg0].unkC;
    }
}

void func_0802d0b8() {
    if (gShowtimeInfo.unk168 != 0) {
        if (gShowtimeInfo.unk168 == 2) {
            gShowtimeInfo.unk168 = 0;
            }
    }
}

void func_0802d0dc(u32 arg0, s16 arg1) {
    func_0804cebc(D_03005380, arg1, 8);
    func_0804dcb8(D_03005380, arg1, 0);
}

#include "asm/scenes/showtime/asm_0802d104.s"

#include "asm/scenes/showtime/asm_0802d250.s"

#include "asm/scenes/showtime/asm_0802d2bc.s"

//stack pointer moment
void func_0802d38c(void) {
    u8 unused_temp[0xC]; //has to be a data type 0xC bytes long
}

#include "asm/scenes/showtime/asm_0802d394.s"

#include "asm/scenes/showtime/asm_0802d43c.s"

#include "asm/scenes/showtime/asm_0802d81c.s"

void func_0802d8bc(u32 arg0) {
    int i;
    for (i = 0; i < 8; i++) {
        if (gShowtimeInfo.unk174[i].unk4 == 0) {
            gShowtimeInfo.unk174[i].unk4 = 4;
            gShowtimeInfo.unk174[i].unkC = arg0;
            gShowtimeInfo.unk174[i].unk8 = 0;
            func_0804d770(D_03005380, gShowtimeInfo.unk174[i].unk0, 1);
            return;
        }
    }
}

#include "asm/scenes/showtime/asm_0802d918.s"

#include "asm/scenes/showtime/asm_0802d96c.s"

#include "asm/scenes/showtime/asm_0802d9fc.s"

#include "asm/scenes/showtime/asm_0802da84.s"

#include "asm/scenes/showtime/asm_0802db08.s"

#include "asm/scenes/showtime/asm_0802dc54.s"
