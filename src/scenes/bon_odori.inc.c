#define gBonOdoriInfo D_030055d0->gameInfo.bonOdori

extern const struct SequenceData s_tebyoushi_pati_seqData;
extern const struct SequenceData s_HC_seqData;

extern u32 *D_089deed4[];  // This is an index of pointers to palettes.
extern u32 *D_089deecc[];  // This is also an index of pointers to palettes (more like sub-palettes).

extern u16 D_089ded00[8];  // Seemingly numbers of ticks for animations.
extern u8* D_089dece0[];   // Contains Donpan animation indexes. (Subarrays are the same animation but for different donpans)
extern u32** D_089dec38[]; // Pointers to animation arrays, with each one consisting of two animations.

extern u32 D_089ded10;     // GFX related

extern u32* D_089deec4[];

u32* func_080206a0(u32 arg0) {
    return D_089dec38[arg0][gBonOdoriInfo.unk0];
}

void func_080206c0() {
    u32* anim;
    u32 temp4;
    u32 i;
    s32 xpos = 0x28;
    s16 temp_3 = 0x78;
    u16 temp_2 = 0x4800;
    
    for (i = 0; i < 4; i++) {
        
        anim = func_0802075c(0, i);
        gBonOdoriInfo.unk44[i] = func_0804d160(D_03005380, anim, 0x7f, xpos, temp_3, temp_2, 1, 0x7f, 0);;
        gBonOdoriInfo.unk4C[i] = 0;
        xpos += 0x35;
    }

    gBonOdoriInfo.unk54 = 0;
    gBonOdoriInfo.unk55 = 0;
    gBonOdoriInfo.unk862 = 1;
}

u32* func_0802075c(u32 animation, u32 donpan) {
    return func_080206a0(D_089dece0[animation][donpan]);
}

void func_08020778(u32 animation, u32 donpan) {
    u32* temp = func_0802075c(animation, donpan);
    func_0804d8f8(D_03005380, gBonOdoriInfo.unk44[donpan], temp, 0, 1, 0x7f, 0);
    gBonOdoriInfo.unk4C[donpan] = func_0800c3a4(D_089ded00[animation]);
}

void func_080207d0(u32 arg0) {
    u32 i;
    for (i = 0; i < 3; i++) {
        func_08020778(arg0, i);
    }
}

void func_080207ec(u32 arg0) {
    func_08020778(arg0, 3);
}

void func_080207f8(u32 arg0) {
    func_080207d0(arg0);
    func_080207ec(arg0);
}

void func_0802080c(u32 arg0) {
    u32 i;
    for (i=0; i<3; i++) {
        gBonOdoriInfo.unk4C[i] = func_0800c3a4(arg0);
    }
    
}

void func_08020834() {
    u32 i;
    for (i = 0; i < 4; i++) {
        if (gBonOdoriInfo.unk4C[i]) {
            gBonOdoriInfo.unk4C[i] -= 1;
        }

    }
}

void func_0802085c() {
    func_0800c604(0);
    func_08017578();
    D_03004b10.unk54[0xc2] = 0x7C00;
}

void func_08020880() {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089deec4[gBonOdoriInfo.unk0], 0x2000);
    func_08005d38(data, func_0802085c, 0);
}

void func_080208c0() {
    u32 data;
    func_0800c604(0);
    data = func_080087b4(func_0800c3b8(), &D_089ded10);
    func_08005d38(data, func_08020880, 0);
}

void func_080208ec(u32 arg0) {
    u32 i;

    gBonOdoriInfo.unk0 = arg0;
    func_080208c0();
    func_0800e0ec();
    func_0800e114();
    func_0800e0a0(0, 1, 0, -0x40, 2, 0x18, 0xC000);
    func_0800e0a0(1, 1, 0, 0, 0, 0x1d, 1);
    func_0800e0a0(2, 1, 0, 0, 0, 0x1e, 1);
    gBonOdoriInfo.unk4 = func_0800c660(0x340, 2);
    D_03004b10.unk46 = 0x311e;
    D_03004b10.unk4C = 0x1041;
    D_03004b10.unk4E = 0x1010;
    
    for (i = 0; i < 4; i++) {
        gBonOdoriInfo.unk8[i].unk0 |= -1;
    }
    
    gBonOdoriInfo.unk3C = 0;
    gBonOdoriInfo.unk3A = 0;
    gBonOdoriInfo.unk3E = func_0804d160(D_03005380, func_080206a0(0x1f), 0x7f, 0x78, 0x48, 0x8800, 1, 0x7f, 0);
    gBonOdoriInfo.unk40 = 0;
    gBonOdoriInfo.unk42 = FALSE;
    func_080206c0();
    gBonOdoriInfo.unk5C = D_089deed4[gBonOdoriInfo.unk0];
    gBonOdoriInfo.unk58 = D_089deecc[gBonOdoriInfo.unk0];
    func_08001ec4(0xc, 7, gBonOdoriInfo.unk5C, 0, &gBonOdoriInfo.unk460);
    func_08001ec4(0x14, 7, gBonOdoriInfo.unk58, 0, &gBonOdoriInfo.unk60);
    func_08017338(1, 0);
    gBonOdoriInfo.unk864 = 0;
}

void func_08020a48() {
    
}

#include "asm/scenes/bon_odori/asm_08020a4c.s" // Decomp attempt at https://decomp.me/scratch/lhu93

void func_08020be4(u8 arg0) {
    gBonOdoriInfo.unk38 = arg0;
}

void func_08020bf4(s32 arg0) {
    func_08020a4c(arg0, gBonOdoriInfo.unk38, 0);
}

void func_08020c0c(s32 arg0) {
    func_08020a4c(arg0, gBonOdoriInfo.unk38, 1);
}

void func_08020c24(s32 arg0) {
    func_08020a4c(arg0, gBonOdoriInfo.unk38, 2);
}

void func_08020c3c(s32 arg0) {
    gBonOdoriInfo.unk3C = -arg0;
}

void func_08020c4c(u32 arg0) {
    struct BonOdoriInfo_sub* temp;
    func_0800c604(0);
    temp = &gBonOdoriInfo.unk8[arg0];
    func_0804d770(D_03005380, temp->unk2, 0);
    func_0804d8c4(D_03005380, temp->unk0, 0xa);
}

void func_08020c8c(u32 arg0) {
    s32 temp0;
    s32 temp1;
    s32 temp2;
    s32 temp3;
    struct BonOdoriInfo_sub* substruct = &gBonOdoriInfo.unk8[gBonOdoriInfo.unk38];
    if (substruct->unk0 >= 0) {
        func_0804d770(D_03005380, substruct->unk2, 1);

        temp0 = -substruct->unk8;
        temp1 = temp0 - substruct->unkA;
        
        temp2 = gBonOdoriInfo.unk3C - 0x18;
        temp2 -= gBonOdoriInfo.unk38 * 0x18;
        D_03004b10.unkE = temp2;
    
        temp3 = func_0800c4b0(1, func_0800c3a4(arg0), &D_03004b10.unkC, temp0, temp1);    
        func_08005d38(temp3, func_08020c4c, gBonOdoriInfo.unk38);
    }
}

void func_08020d20(u32 arg0) {
    func_08001fe0(func_0800c3b8(), func_0800c3a4(arg0), 7, &gBonOdoriInfo.unk60, gBonOdoriInfo.unk58, D_03004b10.unk54);
    func_08001fe0(func_0800c3b8(), func_0800c3a4(arg0), 7, &gBonOdoriInfo.unk460, gBonOdoriInfo.unk5C, D_03004b10.unk254);
}

void func_08020da0(u32 arg0) {
    func_08001fe0(func_0800c3b8(), func_0800c3a4(arg0), 7, gBonOdoriInfo.unk58, &gBonOdoriInfo.unk60, D_03004b10.unk54);
    func_08001fe0(func_0800c3b8(), func_0800c3a4(arg0), 7, gBonOdoriInfo.unk5C, &gBonOdoriInfo.unk460, D_03004b10.unk254);
}

void func_08020e1c() {
    func_080018e0(0, &D_03004b10.unk54, 0xe0, 0x10, 0x200);
    func_080018e0(0, &D_03004b10.unk254, 0xe0, 0x10, 0x200);
}

void func_08020e50() {
    func_0800186c(gBonOdoriInfo.unk58, &D_03004b10.unk54, 0xe0, 0x10, 0x200);
    func_0800186c(gBonOdoriInfo.unk5C, &D_03004b10.unk254, 0xe0, 0x10, 0x200);
}

void func_08020e90() {
    func_0800186c(&gBonOdoriInfo.unk60, &D_03004b10.unk54, 0xe0, 0x10, 0x200);
    func_0800186c(&gBonOdoriInfo.unk460, &D_03004b10.unk254, 0xe0, 0x10, 0x200);
}

void func_08020ed4() {
    gBonOdoriInfo.unk860 = 0;
}

void func_08020ee8(void) {
    u8 temp0;
    u32 temp1 = gBonOdoriInfo.unk860;
    struct struct_030055d0 *temp2;
    
    if (gBonOdoriInfo.unk860 != 0) {
        gBonOdoriInfo.unk54 = 3;
        gBonOdoriInfo.unk55 = 4;
        func_0800bc40();
    } else {
        gBonOdoriInfo.unk54 = 3;
        
        temp2 = D_030055d0;
        if ((u16)func_08001980(2) != 0) {
            temp0 = 5;
        } else {
            temp0 = 6;
        }
        temp2->gameInfo.bonOdori.unk55 = temp0;
        
        gBonOdoriInfo.unk40 = temp1;
        gBonOdoriInfo.unk42 = FALSE;
    }
}

void func_08020f48() {
    if (gBonOdoriInfo.unk864 != 0) {
        gBonOdoriInfo.unk864 -= 1;
        if (gBonOdoriInfo.unk864 == 0) {
            func_08017338(1, 0);
        }
    }
    func_08020834();
    if (gBonOdoriInfo.unk40 != 0) {
        gBonOdoriInfo.unk40 -= 1;
    }
}

void func_08020f8c() {
    func_0800e128();
}

// Cue call handler
void func_08020f98(u32 unused_arg0, struct struct_080179f4_sub* arg1, u32 arg2) {
    arg1->unk0.u8[0] = arg2;
    gBonOdoriInfo.unk862 = arg2;
}

// Cue update
u8 func_08020fb0(u32 unused_arg0, struct struct_080179f4_sub* unused_arg1, u32 arg2) {
    u32 temp = func_0800c3a4(0x30);
    if (arg2 > temp) {
        return 1;
    } else {
        return 0;
    }
}

// Cue end
void func_08020fcc(u32 unused_arg0, struct struct_080179f4_sub* unused_arg1) {

}

// Successful cue hit
void func_08020fd0(u32 unused_arg0, struct struct_080179f4_sub* arg1) {
    func_080207ec(arg1->unk0.u8[0]);
    func_08002634(&s_HC_seqData);
}

// "Barely/near" hit
void func_08020fe8(u32 unused_arg0, struct struct_080179f4_sub* arg1) {
    func_080207ec(arg1->unk0.u8[0]);
    func_08002634(&s_tebyoushi_pati_seqData);
    gBonOdoriInfo.unk42 = TRUE;
}

// Cue miss
void func_0802100c(u32 unused_arg0, struct struct_080179f4_sub* unused_arg1) {
    gBonOdoriInfo.unk860 += 1;
    func_0800bc40();
    gBonOdoriInfo.unk42 = TRUE;
}

void func_08021034() {
    gBonOdoriInfo.unk864 = func_0800c3a4(6);
    func_08017338(0, 0);
    func_080207ec(gBonOdoriInfo.unk862);
    gBonOdoriInfo.unk860 += 1;
    func_08002634(&s_HC_seqData);
}

void func_08021084() {
    u32 i;
    u32* temp;
    for (i = 0; i < 4; i++) {
        if (gBonOdoriInfo.unk4C[i] != 0) {
            continue;
        }
        temp = func_0802075c(0, i);
        if (i < 3 && gBonOdoriInfo.unk54 != 0)  {
            temp = func_0802075c(gBonOdoriInfo.unk55, i);
        }
        func_0804d8f8(D_03005380, gBonOdoriInfo.unk44[i], temp, 0, 1, 0x7f, 0);
    }
    if (gBonOdoriInfo.unk40 == 0) {
        if (gBonOdoriInfo.unk42) {
            func_0804d8f8(D_03005380, gBonOdoriInfo.unk3E, func_080206a0(0x21), 0, 1, 0x7f, 0);
            gBonOdoriInfo.unk40 = func_0800c3a4(0x24);
            gBonOdoriInfo.unk42 = FALSE;
        } else {
            func_0804d8f8(D_03005380, gBonOdoriInfo.unk3E, func_080206a0(0x1f), 0, 1, 0x7f, 0);
        }
    }
    if (gBonOdoriInfo.unk54 != 0) {
        gBonOdoriInfo.unk54 -= 1;
    }
}


void func_08021188() {

}

void func_0802118c() {

}
