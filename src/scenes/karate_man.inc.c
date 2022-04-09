#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_08001360.h"

extern s16 D_03004afc;

// !TODO
extern void func_0804d770(u32, u32, u16);
extern void func_0804cebc(u32, s16, s8);
extern u32 func_0804d160(u32, u32 *, s8, u32, u32, u32, u32, u32, u32);

extern u32 D_088acc2c[];
extern u32 D_088acc94[];
extern u32 D_088acd1c[]; 
extern u32 D_088acd54[]; 
extern u32 D_088acc94[];
extern u32 D_089df064;
extern u32 D_089df1ac[];
extern u32 D_089df1bc[];
extern u32 D_089df37c[];
extern u32 D_089df37e[];

// !TODO seperate file for seqData entries 
extern const struct SequenceData s_f_boxing_score_reset_seqData;
extern const struct SequenceData s_f_boxing_score_up_seqData;
extern const struct SequenceData s_f_boxing_score_down_seqData;
extern const struct SequenceData s_f_boxing_punch_seqData;


void func_08021190(void) {
	func_0800c604(0);
	func_08017578();
	func_080221cc();
}

void func_080211a4(void) {
    u32 temp;

    func_0800c604(0);
    temp = func_08002ee0(func_0800c3b8(), D_089df1ac[D_030055d0->unk0], 0x2000);
    func_08005d38(temp, func_08021190, 0);
}

void func_080211e4(void) {
    u32 temp;
    
    func_0800c604(0);
    temp = func_080087b4(func_0800c3b8(), &D_089df064);
    func_08005d38(temp, func_080211a4, 0);
}

#include "asm/scenes/karate_man/asm_08021210.s"

void func_0802139c(u32 arg0, u32 arg1) {
    func_08003eb8(D_089df1bc[arg0], D_06008000);
    func_0800e030(0);
    D_030055d0->gameInfo.karateMan.unk32 = func_0800c3a4(arg1 + 1);
}

void func_080213d4(u32 arg0) {
	func_0802139c(0, arg0);
}


void func_080213e4(void) {
   if (D_030055d0->gameInfo.karateMan.unk32) {
       D_030055d0->gameInfo.karateMan.unk32--;
       if (!D_030055d0->gameInfo.karateMan.unk32) {
           func_0800e044(0);
       }
   }
}

void func_08021408(void) {
    if (D_030055d0->unk0 == 0) {
        D_030055d0->gameInfo.karateMan.unk34 = 1;
    }
}

void func_08021424(void) {
    if (D_030055d0->unk0 == 2) {
        D_030055d0->gameInfo.karateMan.unk35 = 1;
    }
}

void func_08021440(u32 arg0) {
	func_0800aa4c(D_030055d0->gameInfo.karateMan.unk24, arg0);

}

void func_08021458(void) {
    func_0804cebc(D_03005380, D_030055d0->gameInfo.karateMan.unk28, 0);
    func_0804d770(D_03005380, D_030055d0->gameInfo.karateMan.unk28, 1);
    func_08017338(0, 0);
    func_0800bd04(1);
    D_030055d0->gameInfo.karateMan.unk2A = 1;
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
    D_030055d0->gameInfo.karateMan.unk30 = arg0;
    if (arg0) {
        func_0804d770(D_03005380, D_030055d0->gameInfo.karateMan.unk2E, 1);
        func_0804cebc(D_03005380, D_030055d0->gameInfo.karateMan.unk2E, arg0);
    } else {
        func_0804d770(D_03005380, D_030055d0->gameInfo.karateMan.unk2E, 0);
    }
}

void func_08021524(void) {
    if (D_030055d0->gameInfo.karateMan.unk30) {
        func_0800bc40();
        return;
    }
    func_0800bce4();
}


void func_08021544(u8 arg0) {
	D_030055d0->gameInfo.karateMan.unk36 = arg0;
}

void func_08021554(void) {
    if (D_030055d0->gameInfo.karateMan.unk2A) {
        if (D_03004afc & 1) {
            func_0804d770(D_03005380, D_030055d0->gameInfo.karateMan.unk28, 0);
            func_08017338(1, 0);
            func_0800bd04(0);
            D_030055d0->gameInfo.karateMan.unk2A = 0;
        }
    }
    func_08021e58(&D_030055d0->gameInfo.karateMan.unk_substruct);
    if (D_030055d0->unk0) {
        if (D_030055d0->unk0 == 1) {
            func_080213e4();
        }
    }
    func_0800a914(D_030055d0->gameInfo.karateMan.unk24);
}

void func_080215cc(void) {
    func_08021e40(&D_030055d0->gameInfo.karateMan.unk_substruct);
    func_0804d504(D_03005380, D_030055d0->gameInfo.karateMan.unk20);
    func_0804d504(D_03005380, D_030055d0->gameInfo.karateMan.unk14);
    func_0800e044(0);
    func_0800e044(1);
}

void func_0802160c(struct struct_080179f4_sub *arg0) {
    u32 *temp1;
    struct struct_030055d0 *temp2;

    func_08018124(&temp1, &temp2);
    while (temp1) {
        if (temp1 != arg0) {
            temp2->gameInfo.karateMan.unk2E++;
        }
        func_08018138(temp1, &temp1, &temp2);
    }
}

#include "asm/scenes/karate_man/asm_08021644.s"

#include "asm/scenes/karate_man/asm_08021740.s"

void func_080217ec(struct struct_080179f4_sub *arg0) {
    u32 temp;
    u32 temp1;

    temp = arg0->unk18 += arg0->unk20;
    temp1 = arg0->unk1C += arg0->unk24;
    arg0->unkC += temp;
    arg0->unk10 += temp1;
    arg0->unk2C += arg0->unk2D;
}

#include "asm/scenes/karate_man/asm_08021818.s"

#include "asm/scenes/karate_man/asm_08021888.s"

void func_08021974(u32 arg0, struct struct_080179f4_sub *arg1) {
    func_0804d504(D_03005380, arg1->unk4);
    func_0804d504(D_03005380, arg1->unk6);
    func_080021b8(arg1->unk8);
    func_080021b8(arg1->unk9);
}

void func_080219a8(void) {
    u32 temp;

    D_030055d0->gameInfo.karateMan.unk34 = 0;
    func_0804d8c4(D_03005380, D_030055d0->gameInfo.karateMan.unk_substruct.unk8, 1);
    func_0800e030(0);
    func_0800e044(1);
    func_0804d770(D_03005380, D_030055d0->gameInfo.karateMan.unk14, 0);
    D_030055d0->unk0 = 2;
    func_0800c128(0);
    temp = 0x100;
    func_0800c138(temp, func_0800c3a4(0x60));
}

void func_08021a0c(void) {
    D_030055d0->gameInfo.karateMan.unk35 = 0;
    func_0804d8c4(D_03005380, D_030055d0->gameInfo.karateMan.unk_substruct.unk8, 0);
    func_0800e044(0);
    func_0800e030(1);
    func_0804d770(D_03005380, D_030055d0->gameInfo.karateMan.unk14, 1);
    D_030055d0->unk0 = 0;
    func_080221cc();
    func_080173c4(0);
}

#include "asm/scenes/karate_man/asm_08021a60.s"

void func_08021d38(u32 arg0, struct struct_030055d0_sub *arg1) {
    u32 temp;
    struct KarateManInfoSubstruct *temp1;

    temp1 = &D_030055d0->gameInfo.karateMan.unk_substruct;
    temp = 0;
    if (D_030055d0->unk0 == 1) {
        temp = 1;
    }
    arg1->unk0 = 0 | 1;
    arg1->unk18 = 0x40;
    arg1->unk1C = -0x200;
    arg1->unk24 = 0x20;
    arg1->unk2D = 4;
    temp1->unk4 = 0 | 1;
    func_0804d8f8(D_03005380, temp1->unk8, D_088acc94, 0, 1, 0x7f, 0);
    temp1->unkA = func_0800c3a4(0x24);
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
    arg0->unk4 = 0;
    arg0->unk8 = func_0804d160(D_03005380, D_088acc2c, 0, 0x50, 0x58, 0x4800, 1, 0, 0);
    if (D_030055d0->unk0 == 2) {
        func_0804d8c4(D_03005380, arg0->unk8, 1);
    }
    arg0->unkA = 0;
    arg0->unkC = 0;
    arg0->unkE = 0;
    arg0->unk10 = 0;
}

void func_08021e40(struct KarateManInfoSubstruct *arg0) {
	func_0804d504(D_03005380, arg0->unk8);
}

void func_08021e58(struct KarateManInfoSubstruct *arg0) {
    if (arg0->unkA) arg0->unkA--;
    if (arg0->unkC) arg0->unkC--;
    if (arg0->unkE) arg0->unkE--;
    if (arg0->unk10) arg0->unk10--;
}

void func_08021e88(void) {
    struct KarateManInfoSubstruct *temp = &D_030055d0->gameInfo.karateMan.unk_substruct;

    temp->unk4 = 0 | 1;
    if (D_030055d0->gameInfo.karateMan.unk16 < 3) {
        func_0804d8f8(D_03005380, temp->unk8, D_088acd54, 0, 1, 0x7f, 0);
    } else {
        func_0804d8f8(D_03005380, temp->unk8, D_088acc94, 0, 1, 0x7f, 0);
    }
    func_08002634(&s_f_boxing_punch_seqData);
}

#include "asm/scenes/karate_man/asm_08021f04.s"

void func_08022010(u32 arg0) {
    func_0804d770(D_03005380, D_030055d0->gameInfo.karateMan.unk20, arg0 != 0);
    if (arg0) {
        func_0804cebc(D_03005380, D_030055d0->gameInfo.karateMan.unk20, arg0 - 1);
    }
}

void func_08022050(void) {
    u32 temp;

    D_030055d0->gameInfo.karateMan.unk16 = 0;
    temp = func_0804d160(D_03005380, D_088acd1c, D_030055d0->gameInfo.karateMan.unk16, 0x24, 0x10, 0x47f6, 0, 0, 0);
    D_030055d0->gameInfo.karateMan.unk14 = temp;
    D_030055d0->gameInfo.karateMan.unk17 = 1;
    if (D_030055d0->unk0 == 2) {
        func_0804d770(D_03005380, D_030055d0->gameInfo.karateMan.unk14, 0);
        D_030055d0->gameInfo.karateMan.unk17 = 0;
    }
    D_030055d0->gameInfo.karateMan.unk18 = 0;
    D_030055d0->gameInfo.karateMan.unk1C = D_089df37c;
}

void func_080220c4(void) {
    if (D_030055d0->gameInfo.karateMan.unk16 > 2) {
        func_08002634(&s_f_boxing_score_reset_seqData);
    }
    D_030055d0->gameInfo.karateMan.unk16 = 0;
    func_0804cebc(D_03005380, D_030055d0->gameInfo.karateMan.unk14, D_030055d0->gameInfo.karateMan.unk16);
    D_030055d0->gameInfo.karateMan.unk18 = 0;
    D_030055d0->gameInfo.karateMan.unk1C = D_089df37c;
    func_080221cc();
}

void func_08022114(void) {
    if (D_030055d0->gameInfo.karateMan.unk17) {
        if (D_030055d0->gameInfo.karateMan.unk16 <= 4) {
            D_030055d0->gameInfo.karateMan.unk16++;
            func_0804cebc(D_03005380, D_030055d0->gameInfo.karateMan.unk14, D_030055d0->gameInfo.karateMan.unk16);
            if (D_030055d0->gameInfo.karateMan.unk16 == 3) {
                D_030055d0->gameInfo.karateMan.unk18 = 0;
                D_030055d0->gameInfo.karateMan.unk1C = D_089df37e;
                func_080221cc();
                func_08002634(&s_f_boxing_score_up_seqData);
            }
        }
    }
}

void func_08022170(void) {
    if (D_030055d0->gameInfo.karateMan.unk17) {
        if (D_030055d0->gameInfo.karateMan.unk16) {
            D_030055d0->gameInfo.karateMan.unk16--;
            func_0804cebc(D_03005380, D_030055d0->gameInfo.karateMan.unk14, D_030055d0->gameInfo.karateMan.unk16);
            if (D_030055d0->gameInfo.karateMan.unk16 == 2) {
                D_030055d0->gameInfo.karateMan.unk18 = 0;
                D_030055d0->gameInfo.karateMan.unk1C = D_089df37c;
                func_080221cc();
                func_08002634(&s_f_boxing_score_down_seqData);
            }
        }
    }
}

#include "asm/scenes/karate_man/asm_080221cc.s"

void func_0802221c(u32 arg0) {
    D_030055d0->gameInfo.karateMan.unk17 = arg0;
    func_0804d770(D_03005380, D_030055d0->gameInfo.karateMan.unk14, arg0);
}
