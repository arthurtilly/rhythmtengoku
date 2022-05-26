#include "syscall.h"
#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability. !TODO - CHANGE/REMOVE
#define gKarateManInfo D_030055d0->gameInfo.karateMan

extern u16 D_03004afc;

extern u32 D_088acc2c[];
extern u32 D_088acc3c[];
extern u32 D_088acc6c[];
extern u32 D_088acc94[];
extern u32 D_088accdc[];
extern u32 D_088accfc[];
extern u32 D_088acd1c[]; 
extern u32 D_088acd54[];
extern u32 D_088acd94[];
extern u32 D_088acdb4[];
extern u32 D_088acdd4[];
extern u32 D_088acdf4[];
extern u32 D_088ace14[]; 
extern u32 D_088acf04[];
extern u32 D_088acf2c[];
extern u32 D_088acf44[];
extern u32 D_088acf54[];
extern u32 D_088acf7c[];
extern u32 D_088acfc4[];

extern u16 D_088ad004[];    // Palette 
extern u32 *D_089df064[];   // GFX-related (BG Face graphics?)
extern u32 *D_089df1ac[];   // GFX Struct Index
extern u32 D_089df1bc[];
extern u8 D_089df37c[];
extern u8 D_089df37e[];

// !TODO seperate file for seqData entries 
extern const struct SequenceData s_f_boxing_score_reset_seqData;
extern const struct SequenceData s_f_boxing_score_up_seqData;
extern const struct SequenceData s_f_boxing_score_down_seqData;
extern const struct SequenceData s_f_boxing_punch_seqData;
extern const struct SequenceData s_f_boxing_land_seqData;
extern const struct SequenceData s_f_boxing_hard_seqData;
extern const struct SequenceData s_f_boxing_normal_seqData;
extern const struct SequenceData s_f_boxing_kansei_seqData;
extern const struct SequenceData s_f_boxing_v_nua_seqData;


void func_08021190(void) {
	func_0800c604(0);
	func_08017578();
	func_080221cc();
}

void func_080211a4(void) {
    u32 temp;

    func_0800c604(0);
    temp = func_08002ee0(func_0800c3b8(), D_089df1ac[gKarateManInfo.unk0], 0x2000);
    func_08005d38(temp, func_08021190, 0);
}

void func_080211e4(void) {
    u32 temp;
    
    func_0800c604(0);
    temp = func_080087b4(func_0800c3b8(), &D_089df064);
    func_08005d38(temp, func_080211a4, 0);
}

void func_08021210(u32 arg0) {
    u32 temp;
    
    gKarateManInfo.unk0 = arg0;
    func_080211e4();
    func_0800e0ec();
    func_0800e0a0(0, 0, 0, 0, 2, 0x1c, 1);
    func_0800e0a0(1, 1, 0, 0, 0, 0x1d, 2);
    if (gKarateManInfo.unk0 == 2) {
        func_0800e030(0);
        func_0800e044(1);
    }
    func_08021dd8(&gKarateManInfo.unk_substruct);
    gKarateManInfo.unk36 = 0;
    func_08022050();
    gKarateManInfo.unk34 = 0;
    gKarateManInfo.unk35 = 0;
    gKarateManInfo.unk20 = func_0804d160(D_03005380, D_088acf04, 0, 0x78, 0x18, 0, 0, 0, 0x8000);
    temp = func_0800a204((u16)func_0800c3b8(), 4, 0x70, 0x1e);
    gKarateManInfo.unk24 = temp;
    func_0800ac68(temp, 0x7c, 0x20);
    func_0800aca0(gKarateManInfo.unk24, 0x4f00);
    func_0800acd8(gKarateManInfo.unk24, 1);
    gKarateManInfo.unk2A = 0;
    gKarateManInfo.unk28 = func_0804d160(D_03005380, D_088acf2c, 0, 0xb4, 0x70, 0x4f00, 1, 0, 0x8000);
    func_0804d5d4(D_03005380, gKarateManInfo.unk28, 0xac, 0x70);
    gKarateManInfo.unk2C = func_0804d160(D_03005380, D_088acf44, 0, 0, 0xa0, 0, 0, 0, 0x8000);
    gKarateManInfo.unk2E = func_0804d160(D_03005380, D_088acf54, 0, 0x1e, 0x4c, 0, 0, 0, 0x8000);
    gKarateManInfo.unk30 = 0;
    func_08017338(1, 0);
    if (gKarateManInfo.unk0 != 0) {
        if (gKarateManInfo.unk0 == 1) {
            gKarateManInfo.unk32 = 0;
        }
    }
}

void func_0802139c(u32 arg0, u32 arg1) {
    func_08003eb8(D_089df1bc[arg0], VRAMBase + 0x8000);
    func_0800e030(0);
    gKarateManInfo.unk32 = func_0800c3a4(arg1 + 1);
}

void func_080213d4(u32 arg0) {
	func_0802139c(0, arg0);
}

void func_080213e4(void) {
   if (gKarateManInfo.unk32) {
       gKarateManInfo.unk32--;
       if (!gKarateManInfo.unk32) {
           func_0800e044(0);
       }
   }
}

void func_08021408(void) {
    if (gKarateManInfo.unk0 == 0) {
        gKarateManInfo.unk34 = 1;
    }
}

void func_08021424(void) {
    if (gKarateManInfo.unk0 == 2) {
        gKarateManInfo.unk35 = 1;
    }
}

void func_08021440(u32 arg0) {
	func_0800aa4c(gKarateManInfo.unk24, arg0);

}

void func_08021458(void) {
    func_0804cebc(D_03005380, gKarateManInfo.unk28, 0);
    func_0804d770(D_03005380, gKarateManInfo.unk28, 1);
    func_08017338(0, 0);
    func_0800bd04(1);
    gKarateManInfo.unk2A = 1;
}

void func_080214a0(u32 arg0) {
    if (arg0) {
        func_08017448(1);
        func_08017458(arg0);
        func_0801853c(1, 1);
    } else {
        func_08017448(0);
        func_0801853c(0, 0);
    } 
}

void func_080214d4(u32 arg0) {
    gKarateManInfo.unk30 = arg0;
    if (arg0) {
        func_0804d770(D_03005380, gKarateManInfo.unk2E, 1);
        func_0804cebc(D_03005380, gKarateManInfo.unk2E, arg0);
    } else {
        func_0804d770(D_03005380, gKarateManInfo.unk2E, 0);
    }
}

void func_08021524(void) {
    if (gKarateManInfo.unk30) {
        func_0800bc40();
        return;
    }
    func_0800bce4();
}


void func_08021544(u8 arg0) {
	gKarateManInfo.unk36 = arg0;
}

void func_08021554(void) {
    if (gKarateManInfo.unk2A) {
        if (D_03004afc & 1) {
            func_0804d770(D_03005380, gKarateManInfo.unk28, 0);
            func_08017338(1, 0);
            func_0800bd04(0);
            gKarateManInfo.unk2A = 0;
        }
    }
    func_08021e58(&gKarateManInfo.unk_substruct);
    if (gKarateManInfo.unk0) {
        if (gKarateManInfo.unk0 == 1) {
            func_080213e4();
        }
    }
    func_0800a914(gKarateManInfo.unk24);
}

void func_080215cc(void) {
    func_08021e40(&gKarateManInfo.unk_substruct);
    func_0804d504(D_03005380, gKarateManInfo.unk20);
    func_0804d504(D_03005380, gKarateManInfo.unk14);
    func_0800e044(0);
    func_0800e044(1);
}

void func_0802160c(struct struct_080179f4_sub *arg0) {
    struct struct_080179f4_sub *temp1;
    struct struct_030055d0 *temp2;

    func_08018124(&temp1, &temp2);
    while (temp1) {
        if (temp1 != arg0) {
            temp2->gameInfo.karateMan.unk2E++;
        }
        func_08018138(temp1, &temp1, &temp2);
    }
}

void func_08021644(u32 arg0, struct struct_030055d0_sub *arg1, u32 arg2) {
    arg1->unk0_b0 = 0;
    arg1->unk8 = func_0800c42c();
    arg1->unk4 = func_0804d160(D_03005380, D_088acc3c, 0, 0x9c, 0x34, 0x4800, 0, 0, 0);
    func_08007468(arg1->unk4, arg1->unk8);
    arg1->unk9 = func_0800c42c();
    arg1->unk6 = func_0804d160(D_03005380, D_088acc6c, 0, 0x9c, 0x85, 0x94 << 7, 0, 0, 0);
    func_08007468(arg1->unk6, arg1->unk9);
    arg1->unk1C = 0;
    arg1->unk18 = 0;
    arg1->unk24 = 0;
    arg1->unk20 = 0;
    arg1->unk28 = 0;
    arg1->unk2E = 0;
    arg1->unk2D = 0;
    arg1->unk2C = 0;
    arg1->unk0_b4 = 0;
    arg1->unk0_b5 = arg2;
    func_0804d8f8(D_03005380, arg1->unk4, D_088acc3c, (s8)arg2, 0, 0, 0);
    func_0802160c(arg0);
}

void func_08021740(struct struct_030055d0_sub *arg0) {
    s32 temp;
    s32 temp1;
    
    if (arg0->unk28 < 0x80) {
        func_0804d770(D_03005380, arg0->unk4, 0);
        func_0804d770(D_03005380, arg0->unk6, 0);
    }
    temp = arg0->unkC;
    temp1 = arg0->unk10;
    func_0804d55c(D_03005380, arg0->unk4, (temp << 8) >> 0x10, (temp1 << 8) >> 0x10, (u16)(0x4700 + arg0->unk28 + arg0->unk2E));
    func_0804d5d4(D_03005380, arg0->unk6, (temp << 8) >> 0x10, (s16)arg0->unk14);
    func_08007498(arg0->unk8, arg0->unk2A, (s8)arg0->unk2C);
    func_08007498(arg0->unk9, arg0->unk2A, 0);
    func_0804d770(D_03005380, arg0->unk4, 1);
    func_0804d770(D_03005380, arg0->unk6, 1);
}

void func_080217ec(struct struct_080179f4_sub *arg0) {
    u32 temp;
    u32 temp1;

    temp = arg0->unk18 += arg0->unk20;
    temp1 = arg0->unk1C += arg0->unk24;
    arg0->unkC += temp;
    arg0->unk10 += temp1;
    arg0->unk2C += arg0->unk2D;
}

void func_08021818(struct struct_030055d0_sub *arg0) {
    s32 temparg = arg0->unk28;
    s32 temp;
    s32 temp1;
    s32 temp2;
    s32 temp3;
    s32 temp4;

    temp = temparg - 0x100;
    temp1 = 0x51;
    temp1 -= (temp * temp1 * temp) >> 0x10;
    temp2 = 0x35 - temp1;
    temp3 = func_08007b80(0x2400, temparg) + 0x78;
    temp4 = func_08007b80(temp2 << 8, temparg) + 0x50;
    arg0->unkC = temp3 << 8;
    arg0->unk10 = temp4 << 8;
    arg0->unk14 = func_08007b80(0x3500, temparg) + 0x50;
    arg0->unk2A = Div(0x10000, temparg);
}

// CUE Update Function (Karate Man)
u32 func_08021888(u32 arg0, struct struct_030055d0_sub *cue, u32 arg2, u32 arg3) {
    struct KarateManInfoSubstruct *substruct = &gKarateManInfo.unk_substruct;
    u16 temp;
    u32 zero;

    if (arg2 > func_0800c3a4(0x78)) return 1;
    
    zero = 0;
    switch (cue->unk0_b0) {
        case 0:
            temp = cue->unk28 = Div(arg2 << 8, arg3);
            if (temp > 0x200) {
                cue->unk0_b0 = 1;
                cue->unk2C += func_08001980(0x10);
                func_080220c4(); // Reset Flow Meter
                func_08002634(&s_f_boxing_land_seqData);
                return 0;
            }
            if (temp > 0x180) {
                if ((s16) cue->unk0_b4 <= 0) {
                    cue->unk0_b4 = 1;
                    substruct->unk8 = func_0800c3a4(0x24);
                }
            }
            func_08021818(cue);
            func_08021740(cue);
            break;
        case 1:
            func_080217ec(cue);
            if ((cue->unkC >> 8) > 0x110) return 1;
            
            if ((cue->unk10 >> 8) > cue->unk14) {
                cue->unk10 = cue->unk14 << 8;
                cue->unk18 = 0;
                cue->unk1C = 0;
                cue->unk24 = 0;
                cue->unk2D = 0;
            }
            func_08021740(cue);
    }
    
    return zero;
}

void func_08021974(u32 arg0, struct struct_080179f4_sub *arg1) {
    func_0804d504(D_03005380, arg1->unk4);
    func_0804d504(D_03005380, arg1->unk6);
    func_080021b8(arg1->unk8);
    func_080021b8(arg1->unk9);
}

void func_080219a8(void) {
    u32 temp;

    gKarateManInfo.unk34 = 0;
    func_0804d8c4(D_03005380, gKarateManInfo.unk_substruct.unk4, 1);
    func_0800e030(0);
    func_0800e044(1);
    func_0804d770(D_03005380, gKarateManInfo.unk14, 0);
    gKarateManInfo.unk0 = 2;
    func_0800c128(0);
    temp = 0x100;
    func_0800c138(temp, func_0800c3a4(0x60));
}

void func_08021a0c(void) {
    gKarateManInfo.unk35 = 0;
    func_0804d8c4(D_03005380, gKarateManInfo.unk_substruct.unk4, 0);
    func_0800e044(0);
    func_0800e030(1);
    func_0804d770(D_03005380, gKarateManInfo.unk14, 1);
    gKarateManInfo.unk0 = 0;
    func_080221cc();
    func_080173c4(0);
}

// arg0 is `struct struct_080179f4 *`
void func_08021a60(u32 arg0, struct struct_030055d0_sub *arg1) {
    struct KarateManInfo *karateManStruct = &gKarateManInfo;
    struct KarateManInfoSubstruct *substruct = &karateManStruct->unk_substruct;
    u32 *anim;
    u32 bgFace;
    u32 isBgFaceVer;
    u32 isHard;
    u32 face;
    u32 temp_r9 = 0; // isHard but for BG faces 

    isBgFaceVer = karateManStruct->unk0 == 1;
    isHard = 0;
    arg1->unk0_b0 = 1;
    if (gKarateManInfo.unk34) {
        func_080219a8();
    }
    if (gKarateManInfo.unk35) {
        func_08021a0c();
    }
    if ((gKarateManInfo.unk16 > 2)) {
        isHard = 1;
    }
    if (gKarateManInfo.unk0 == 2) {
        isHard = 1;
    }
    if (!isHard) {
        switch (arg1->unk0_b5) {
            case 1:
            case 3:
                arg1->unk18 = 0;
                arg1->unk1C = 0;
                arg1->unk24 = 0x20;
                arg1->unk2C = 0xa;
                arg1->unk2D = 0;
                karateManStruct->unk_substruct.unk0 = 1;
                func_0804d8f8(D_03005380, substruct->unk4, D_088ace14, 0, 1, 0x7f, 0);
                if (isBgFaceVer) {
                    func_08002634(func_080180a0(arg0));
                } else {
                    func_08002634(&s_f_boxing_hard_seqData);
                }
                func_08018068();
                func_08017928(func_080180bc(arg0), 1, func_08018054());
                func_08022170();
                temp_r9 = 1;
                break;
            default:
                arg1->unk18 = 0x400;
                arg1->unk1C = -0x200;
                arg1->unk24 = 0x40;
                arg1->unk2D = -6;
                face = gKarateManInfo.unk36;
                anim = D_088acd54;
                if (face) {
                    anim = D_088acfc4;
                }
                karateManStruct->unk_substruct.unk0 = 1;
                func_0804d8f8(D_03005380, substruct->unk4, anim, 0, 1, 0x7f, 0);
                func_0804d160(D_03005380, D_088accfc, 0, 0x9e, 0x36, 0x4f00, 1, 0, 3);
                if (!isBgFaceVer) {
                    func_0801808c(arg0, &s_f_boxing_normal_seqData);
                }
                func_08022114();
        }
    } else {
        arg1->unk18 = 0x800;
        arg1->unk1C = -0x200;
        arg1->unk2D = -0x10;
        face = gKarateManInfo.unk36;
        anim = D_088acc94;
        if (face) {
            anim = D_088acf7c;
        }
        karateManStruct->unk_substruct.unk0 = 1;
        func_0804d8f8(D_03005380, substruct->unk4, anim, 0, 1, 0x7f, 0);
        func_0804d160(D_03005380, D_088accfc, 0, 0x9e, 0x36, 0x4f00, 1, 0, 3);
        switch (arg1->unk0_b5) {
            case 1:
                substruct->unkA = func_0800c3a4(0x24);
                func_08002634(&s_f_boxing_kansei_seqData);
                break;
            case 3:
                substruct->unkC = func_0800c3a4(0x6c);
                break;
        }
        if (gKarateManInfo.unk0 == 2) {
            func_08001fe0((u16)func_0800c3b8(), 0xa, 1, &D_088ad004[0x60], &D_088ad004[0x50], &D_03004b10.unk54[4]);
        }
        func_08022114();
    }
    if (isBgFaceVer) {
        bgFace = 1;
        if (temp_r9) {
            bgFace = 2;
        }
        func_0802139c(bgFace, 0x30);
    }
    if (gKarateManInfo.unk30) {
        gKarateManInfo.unk30--;
        func_0804cebc(D_03005380, gKarateManInfo.unk2E, (s8)gKarateManInfo.unk30);
    }
}

void func_08021d38(u32 arg0, struct struct_030055d0_sub *arg1) {
    u32 temp;
    struct KarateManInfoSubstruct *temp1;

    temp1 = &gKarateManInfo.unk_substruct;
    temp = 0;
    if (gKarateManInfo.unk0 == 1) {
        temp = 1;
    }
    arg1->unk0_b0 = 0 | 1;
    arg1->unk18 = 0x40;
    arg1->unk1C = -0x200;
    arg1->unk24 = 0x20;
    arg1->unk2D = 4;
    temp1->unk0 = 0 | 1;
    func_0804d8f8(D_03005380, temp1->unk4, D_088acc94, 0, 1, 0x7f, 0);
    temp1->unk6 = func_0800c3a4(0x24);
    func_08022170();
    if (temp) {
        func_0802139c(2, 0x30);
    }
    func_0800bc40();
}

void func_08021dcc(void) {
	func_0800bc40();
}

void func_08021dd8(struct KarateManInfoSubstruct *arg0) {
    arg0->unk0 = 0;
    arg0->unk4 = func_0804d160(D_03005380, D_088acc2c, 0, 0x50, 0x58, 0x4800, 1, 0, 0);
    if (gKarateManInfo.unk0 == 2) {
        func_0804d8c4(D_03005380, arg0->unk4, 1);
    }
    arg0->unk6 = 0;
    arg0->unk8 = 0;
    arg0->unkA = 0;
    arg0->unkC = 0;
}

void func_08021e40(struct KarateManInfoSubstruct *arg0) {
	func_0804d504(D_03005380, arg0->unk4);
}

void func_08021e58(struct KarateManInfoSubstruct *arg0) {
    if (arg0->unk6) arg0->unk6--;
    if (arg0->unk8) arg0->unk8--;
    if (arg0->unkA) arg0->unkA--;
    if (arg0->unkC) arg0->unkC--;
}

void func_08021e88(void) {
    struct KarateManInfoSubstruct *temp = &gKarateManInfo.unk_substruct;

    temp->unk0 = 0 | 1;
    if (gKarateManInfo.unk16 < 3) {
        func_0804d8f8(D_03005380, temp->unk4, D_088acd54, 0, 1, 0x7f, 0);
    } else {
        func_0804d8f8(D_03005380, temp->unk4, D_088acc94, 0, 1, 0x7f, 0);
    }
    func_08002634(&s_f_boxing_punch_seqData);
}

void func_08021f04(void) {
    struct KarateManInfo *karateManStruct = &gKarateManInfo;
    struct KarateManInfoSubstruct *substruct = &karateManStruct->unk_substruct;
    u32 temp;
    s8 temp1;
    
    func_080221cc();
    if ((s16)karateManStruct->unk_substruct.unk0 == 1) {
        temp = (u32)func_0804ddb0(D_03005380, substruct->unk4, 2); // should be u16?
        temp1 = func_0804d6cc(D_03005380, substruct->unk4);
        if (temp1 < temp - 4) {
            return;
        }
    }
    karateManStruct->unk_substruct.unk0 = 0;
    func_0804d8f8(D_03005380, substruct->unk4, D_088accdc, 0, 1, 0x7f, 0);
    if (substruct->unkA) {
        func_0804d8f8(D_03005380, substruct->unk4, D_088acdd4, 0, 1, 0x7f, 0);
    }
    if (substruct->unk6) {
        func_0804d8f8(D_03005380, substruct->unk4, D_088acd94, 0, 1, 0x7f, 0);
    }
    if (substruct->unkC) {
        func_0804d8f8(D_03005380, substruct->unk4, D_088acdf4, 0, 1, 0x7f, 0);
    }
    if (substruct->unk8) {
        func_0804d8f8(D_03005380, substruct->unk4, D_088acdb4, 0, 1, 0x7f, 0);
        func_08002634(&s_f_boxing_v_nua_seqData);
    }
}

void func_08022010(u32 arg0) {
    func_0804d770(D_03005380, gKarateManInfo.unk20, arg0 != 0);
    if (arg0) {
        func_0804cebc(D_03005380, gKarateManInfo.unk20, arg0 - 1);
    }
}

void func_08022050(void) {
    u32 temp;

    gKarateManInfo.unk16 = 0;
    temp = func_0804d160(D_03005380, D_088acd1c, gKarateManInfo.unk16, 0x24, 0x10, 0x47f6, 0, 0, 0);
    gKarateManInfo.unk14 = temp;
    gKarateManInfo.unk17 = 1;
    if (gKarateManInfo.unk0 == 2) {
        func_0804d770(D_03005380, gKarateManInfo.unk14, 0);
        gKarateManInfo.unk17 = 0;
    }
    gKarateManInfo.unk18 = 0;
    gKarateManInfo.unk1C = D_089df37c;
}

void func_080220c4(void) {
    if (gKarateManInfo.unk16 > 2) {
        func_08002634(&s_f_boxing_score_reset_seqData);
    }
    gKarateManInfo.unk16 = 0;
    func_0804cebc(D_03005380, gKarateManInfo.unk14, gKarateManInfo.unk16);
    gKarateManInfo.unk18 = 0;
    gKarateManInfo.unk1C = D_089df37c;
    func_080221cc();
}

void func_08022114(void) {
    if (gKarateManInfo.unk17) {
        if (gKarateManInfo.unk16 <= 4) {
            gKarateManInfo.unk16++;
            func_0804cebc(D_03005380, gKarateManInfo.unk14, gKarateManInfo.unk16);
            if (gKarateManInfo.unk16 == 3) {
                gKarateManInfo.unk18 = 0;
                gKarateManInfo.unk1C = D_089df37e;
                func_080221cc();
                func_08002634(&s_f_boxing_score_up_seqData);
            }
        }
    }
}

void func_08022170(void) {
    if (gKarateManInfo.unk17) {
        if (gKarateManInfo.unk16) {
            gKarateManInfo.unk16--;
            func_0804cebc(D_03005380, gKarateManInfo.unk14, gKarateManInfo.unk16);
            if (gKarateManInfo.unk16 == 2) {
                gKarateManInfo.unk18 = 0;
                gKarateManInfo.unk1C = D_089df37c;
                func_080221cc();
                func_08002634(&s_f_boxing_score_down_seqData);
            }
        }
    }
}

void func_080221cc(void) {
    s8 temp_r3;  // bg palette table byte
    u8 temp_r1;  // bg byte
    u16 *bgPalette, *bgPalette1;
    u32 i;
    
    if (gKarateManInfo.unk0 != 2) {
        temp_r1 = gKarateManInfo.unk18;
        temp_r3 = gKarateManInfo.unk1C[temp_r1];
        if (temp_r3 < 0) {
            temp_r1 = 0;
            temp_r3 = gKarateManInfo.unk1C[0];
        }
        gKarateManInfo.unk18 = temp_r1 + 1;
        bgPalette1 = D_03004b10.unk54[temp_r3]; 
        bgPalette = D_03004b10.unk54[4];
        for (i = 0; i < 4; i++) {
            bgPalette[i] = bgPalette1[i];
        }
    }
}

void func_0802221c(u32 arg0) {
    gKarateManInfo.unk17 = arg0;
    func_0804d770(D_03005380, gKarateManInfo.unk14, arg0);
}
