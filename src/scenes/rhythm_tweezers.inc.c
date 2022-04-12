// For readability. !TODO - CHANGE/REMOVE
#define gRhythmTweezersInfo D_030055d0->gameInfo.rhythmTweezers

// OAM Animations:
extern u32 D_088e87a8[];  // Animation: "tweezer_pluck"
extern u32 D_088e8848[];  // Animation: "tweezer_pluck_barely"
extern u32 D_088e8898[];  // Animation: "tweezer_pluck_miss"
extern u32 D_088e88e0[];  // Animation: "hair_fall"
extern u32 D_088e88f8[];  // Animation: "hair_stubble"
extern u32 D_088e8910[];  // Animation: "tutorial_text" (unused)
extern u32 D_088e8a50[];  // Animation: "hair_long_pull"

// Sound Effects:
extern const struct SequenceData s_f_hair_next_seqData;      // Sound: Cash Register
extern const struct SequenceData s_f_hair_nuki_long_seqData; // Sound: ???
extern const struct SequenceData s_f_hair_tuneru_seqData;    // Sound: ???

// Additional Data - Rhythm Tweezers:
extern u32 *D_089e3d98[]; // Array of animation pointers for vegetable faces
extern u32 *D_089e3da4[]; // Array of BG Map pointers for vegetable textures
extern u32 D_089e3db0;    // GFX-related Null
extern u32 *D_089e3ff4[]; // GFX Struct Index

// Additional Data - Global:
extern u32 D_0600f000;    // VRAM BG Map for vegetable textures (left).
extern u32 D_0600f800;    // VRAM BG Map for vegetable textures (right).
extern u32 D_03004b22;    // Unknown Value
extern s16 D_03004b10[];  // Screen Position Struct/Array (?)


/* RHYTHM TWEEZERS */


// [func_0802e750] SUB - Initialise Vegetable Face
void func_0802e750(void) {
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo.vegetable;
    u8 ver = (D_030055d0->unk0 % 3);

    vegetable->entity0 = func_0804d160(D_03005380, D_089e3d98[ver], 0, 0x78, 0x10, 0x4800, -1, 0, 0);
    func_0804db44(D_03005380, vegetable->entity0, &gRhythmTweezersInfo.unk8E, &D_03004b22);

    vegetable->entity2 = func_0804d160(D_03005380, D_089e3d98[ver], 0, 0x78, 0x10, 0x4800, 0, 0, 0);
    func_0804d614(D_03005380, vegetable->entity2, 0x178);
    func_0804db44(D_03005380, vegetable->entity2, &gRhythmTweezersInfo.unk8E, &D_03004b22);

    vegetable->unk10 = 0;
    gRhythmTweezersInfo.unk8E = 0;
    vegetable->unk6 = 0;
}


// [func_0802e828] ENGINE Func_02 - Scroll to New Vegetable
void func_0802e828(u32 time) {
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo.vegetable;
    u32 temp;
    u32 *vegetableBG;

    vegetable->unk6 = 1;
    vegetable->unk8 = 0;
    vegetable->unkC = func_0800c3a4(time);
    func_0804d8f8(D_03005380, vegetable->entity2, D_089e3d98[vegetable->unk5], 0, 0, 0, 0);

    temp = vegetable->unk10;
    vegetableBG = &D_0600f800;
    if (temp) vegetableBG = &D_0600f000;
    func_08003eb8(D_089e3da4[vegetable->unk5], vegetableBG);
}


// [func_0802e89c] ENGINE Func_04 - Play Cash Register SFX
void func_0802e89c(void) {
    func_08002634(&s_f_hair_next_seqData);
}


// [func_0802e8ac] SUB - Update Vegetable Face - Scrolling To New Vegetable
void func_0802e8ac(void) {
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo.vegetable;
    u32 temp;

    vegetable->unk8 += 1;

    // Vegetable has reached its destination.
    if (vegetable->unk8 >= vegetable->unkC) {
        gRhythmTweezersInfo.unk8E = 0;
        vegetable->unk10 ^= 1;
        D_03004b10[8] = vegetable->unk10 << 8;
        vegetable->unk6 = 0;
        func_080178ac();

        func_0804d8f8(D_03005380, vegetable->entity0, D_089e3d98[vegetable->unk5], 0, -1, 0, 0);
        vegetable->unk4 = vegetable->unk5;
    }

    // Vegetable has not yet reached its destination.
    else {
        temp = (vegetable->unk8 << 0xa) / vegetable->unkC;
        temp = (-coss(temp) + 0x100) >> 1;

        gRhythmTweezersInfo.unk8E = temp;
        D_03004b10[8] = temp;
        if (vegetable->unk10) {
            D_03004b10[8] = temp + 0x100;
        }
    }
}


// [func_0802e96c] ENGINE Func_03 - Define New Vegetable Type
void func_0802e96c(u32 arg0) {
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo.vegetable;

    vegetable->unk5 = arg0;
}


// [func_0802e97c] ENGINE Func_06 - Unknown
void func_0802e97c_stub(void) {
}


// [func_0802e980] SUB - Update Vegetable Face
void func_0802e980(void) {
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo.vegetable;

    if (vegetable->unk6 != 0) {
        func_0802e8ac();
    }
}


// [func_0802e99c] SUB - Initialise Falling Hairs
void func_0802e99c(void) {
    struct RhythmTweezersFallingHair *hair;
    u32 i = 0;

    for (i; i <= 4; i++) {
        hair = &gRhythmTweezersInfo.fallingHairs[i];
        hair->entity = func_0800fa6c(D_088e88e0, 0, 0x78, 0x10, 0x4800, 0x100, -0x200, 0, 0, 0x8000, 0);
        func_0800feec(hair->entity, 1);
        func_0800fea8(hair->entity, 0x4c);
        hair->unk4 = 0xc800;
        hair->unk8 = 0;
    }
    gRhythmTweezersInfo.unk20 = 0;
}


// [func_0802ea20] SUB - Update Falling Hairs
void func_0802ea20(void) {
    struct RhythmTweezersFallingHair *hair;
    u32 i = 0;

    for (i; i <= 4; i++) {
        hair = &gRhythmTweezersInfo.fallingHairs[i];
        if (hair->unk4 <= 0xc7ff) {
            hair->unk8 += 0x20;
            hair->unk4 += hair->unk8;
            hair->unkC += hair->unkE;
            func_0800fe0c(hair->entity, (s16) ((hair->unk4 >> 8) + 0x10));
            func_0800fe94(hair->entity, hair->unkC);
        }
    }
}


// [func_0802ea74] SUB - Create Falling Hair
void func_0802ea74(u32 arg0) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;
    struct RhythmTweezersFallingHair *hair = &gRhythmTweezersInfo.fallingHairs[gRhythmTweezersInfo.unk20];
    u8 temp;

    hair->unkC = -0x200;
    hair->unkE = func_08001980(0x1f) - 0xf;

    func_0800fe0c(hair->entity, 0x10);
    func_0800febc(hair->entity, tweezers->unk6);
    func_0800fe94(hair->entity, hair->unkC);
    func_08010040(hair->entity, 1);

    hair->unk4 = 0;
    hair->unk8 = 0;
    func_0800ffc0(hair->entity, arg0);

    temp = gRhythmTweezersInfo.unk20 += 1;
    if (temp > 4) {
        gRhythmTweezersInfo.unk20 = 0;
    }
}


// [func_0802eaf8] SUB - Initialise Tweezers
void func_0802eaf8(void) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;

    tweezers->unk6 = -0x200;
    tweezers->entity = func_0800fa6c(D_088e87a8, 0x7f, 0x78, 0x10, 0x4800, 0x100, -0x200, 1, 0x7f, 0, 0);
    func_0800fed0(tweezers->entity, tweezers->unk6, 0x4c);
    func_0800feec(tweezers->entity, 1);

    tweezers->unk4 = 0;
    tweezers->unk5 = 0;
    tweezers->unk10 = 0;
    gRhythmTweezersInfo.unk88.u16[0] = 0;
}


// [func_0802eb7c] ENGINE Func_00 - Spawn Tweezers
void func_0802eb7c(void) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;

    tweezers->unk4 = 1;
    tweezers->unk8 = 0;
    tweezers->unkC = func_0800c3a4(0xa8);
    tweezers->unk5 = 0;
}


// [func_0802eba0] SUB - Update Tweezers - Position
void func_0802eba0(void) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;
    u32 a = 0x4ea;
    u32 b = (tweezers->unk8 * 0x5d5) / tweezers->unkC;

    tweezers->unk6 = a - b;
    tweezers->unk8 += 1;

    if (tweezers->unk8 >= tweezers->unkC) {
        tweezers->unk4 = 0;
        tweezers->unk5 = 0;
    }
}


// [func_0802ebdc] SUB - Update Tweezers - Vertical Scroll
void func_0802ebdc(void) {
    u16 temp_unsigned = D_03004b10[9];
    s16 temp_signed = D_03004b10[9];

    // If the screen is not in the normal vertical position, scroll down.
    if (temp_signed != 0) {
        D_03004b10[9] = temp_unsigned - 1;
    }
}


// [func_0802ebf8] SUB - Update Tweezers
void func_0802ebf8(void) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;
    s8 temp;

    func_0802ebdc();
    if (tweezers->unk4 != 0) {
        if (tweezers->unk4 == 1) {
            func_0802eba0();
        }
    }

    if (tweezers->unk5 != 0) {
        temp = func_08010198(tweezers->entity);
        if (temp == func_08010288(tweezers->entity) - 2) {
            func_0802ea74(tweezers->unk5 - 1);
            tweezers->unk5 = 0;
        }
    }
    func_0800febc(tweezers->entity, tweezers->unk6);
}


// [func_0802ec50] GFX_LOAD Func_02
void func_0802ec50(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_0802ec60] GFX_LOAD Func_01
void func_0802ec60(void) {
    u32 temp;

    func_0800c604(0);
    temp = func_08002ee0((u16) func_0800c3b8(), (u32) D_089e3ff4[D_030055d0->unk0], 0x2000);
    func_08005d38(temp, &func_0802ec50, 0);
}


// [func_0802eca0] GFX_LOAD Func_00
void func_0802eca0(void) {
    u32 temp;

    func_0800c604(0);
    temp = func_080087b4((u16) func_0800c3b8(), &D_089e3db0);
    func_08005d38(temp, &func_0802ec60, 0);
}


// [func_0802eccc] MAIN - Load
void func_0802eccc(u8 arg0) {
    u32 temp;

    // Standard game setup.
    D_030055d0->unk0 = arg0;
    func_0802eca0(); // Load graphics.
    func_0800e0ec();
    func_0800e0a0(0, 1, 0, -0xa0, 2, 0x1c, 0x8000);
    func_0800e0a0(1, 1, 0, 0, 0, 0x1e, 0x4002);

    // Rhythm Tweezers setup.
    func_0802eaf8(); // Initialise tweezers.
    func_0802e99c(); // Initialise falling hairs.
    func_0802e750(); // Initialise vegetable face.
    gRhythmTweezersInfo.unk90 = -0xa0;
    gRhythmTweezersInfo.unk92 = 0xfff8;
    gRhythmTweezersInfo.unk8C = func_0804d160(D_03005380, D_088e8910, 0, 0x78, 0x96, 0, 0, 0, 0x8000);

    // Other setup.
    temp = func_0800a204((u16) func_0800c3b8(), 1, 0xf0, 0x1e);
    func_0800ac68(temp, 0, 0x8c);
    func_0800aca0(temp, 0x8800);
    func_0800acd8(temp, 1);
    func_0800acb0(temp, 1);
    func_0800acbc(temp, 0);
    func_08018630(temp);
    func_08017338(0xf1, 0);
}


// [func_0802edc4] ENGINE Func_09 - Unknown (Unused)
void func_0802edc4_stub(void) {
}


// [func_0802edc8] SUB - Update Mask
void func_0802edc8(void) {
    u32 temp;

    temp = func_080087d4(gRhythmTweezersInfo.unk90 + gRhythmTweezersInfo.unk92, -0xa0, 0);
    gRhythmTweezersInfo.unk90 = temp;
    D_03004b10[7] = temp;
}


// [func_0802ee00] ENGINE Func_07 - Show Mask
void func_0802ee00(void) {
    gRhythmTweezersInfo.unk92 = 8;
}


// [func_0802ee10] ENGINE Func_08 - Hide Mask
void func_0802ee10(void) {
    gRhythmTweezersInfo.unk92 = -8;
}


// [func_0802ee24] MAIN - Loop
void func_0802ee24(void) {
    func_0802ebf8(); // Update tweezers.
    func_0802ea20(); // Update falling hairs.
    func_0802ee6c(); // Update hair position cycle.
    func_0802e980(); // Update vegetable.
    func_0802edc8(); // Update mask.
}


// [func_0802ee40] MAIN - Unload
void func_0802ee40_stub(void) {
}


// [func_0802ee44] ENGINE Func_01 - Reset Hair Position Cycle
void func_0802ee44(void) {
    gRhythmTweezersInfo.unk18 = 0;
    gRhythmTweezersInfo.unk1C = func_0800c3a4(0x48);
    gRhythmTweezersInfo.unk88.u16[0] = 0;
    gRhythmTweezersInfo.unk88.u16[1] = 0;
}


// [func_0802ee6c] SUB - Update Hair Position Cycle
void func_0802ee6c(void) {
    gRhythmTweezersInfo.unk18 += 1;
    // Fantastic work, Nintendo SPD.
}


// !TODO - Stop it. Get some help: https://decomp.me/scratch/IGh3S
// [func_0802ee7c] CUE Spawn - Short Hair, Long Hair
#include "asm/scenes/rhythm_tweezers/asm_0802ee7c.s"


// [func_0802ef54] CUE Behaviour - Short Hair
u32 func_0802ef54(u32 arg0, struct struct_080179f4_sub1 *arg1, u32 arg2, u32 arg3) {
    if (arg2 > arg3 * 2) {
        return 1; }
    else {
        return 0; }
}


// !TODO - It's always with these cue functions, I swear: https://decomp.me/scratch/xtw97
// [func_0802ef68] CUE Behaviour - Long Hair
#include "asm/scenes/rhythm_tweezers/asm_0802ef68.s"


// [func_0802f164] CUE Despawn - Short Hair, Long Hair
void func_0802f164(u32 arg0, struct struct_080179f4_sub1 *arg1, u32 arg2, u32 arg3) {
    func_0800fc70(arg1->unk4);
}


// [func_0802f170] CUE Hit - Short Hair
void func_0802f170(u32 arg0, struct struct_080179f4_sub1 *arg1, u32 arg2, u32 arg3) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo.vegetable;
    u32 temp;

    func_08010064(arg1->unk4, D_088e88f8, 0, 0, 0, 0);
    func_08010064(tweezers->entity, D_088e87a8, 0, 1, 0x7f, 0);
    D_03004b10[9] = 2; // Scroll screen upwards.

    if (tweezers->unk5) func_0802ea74(tweezers->unk5 - 1);
    tweezers->unk5 = 1;

    func_0804cebc(D_03005380, vegetable->entity0, 1);
    gRhythmTweezersInfo.unk88.u16[0] -= 1;

    temp = gRhythmTweezersInfo.unk88.u32;
    if (temp == 0) {
        func_0804dae0(D_03005380, vegetable->entity0, 0, 0, 0);
        func_0804cebc(D_03005380, vegetable->entity0, 2);
    }
}


// [func_0802f21c] CUE Hit, CUE Barely - Long Hair
void func_0802f21c(u32 arg0, struct struct_080179f4_sub1 *arg1, u32 arg2, u32 arg3) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;
    u32 temp;

    func_08018068();
    if (tweezers->unk5) func_0802ea74(tweezers->unk5 - 1);
    func_08010040(tweezers->entity, 0);
    func_08010064(arg1->unk4, D_088e8a50, 0, 0, 0, 0);

    arg1->unk28 = tweezers->unk6;
    tweezers->unk10 = 1;
    temp = arg1->unk0.u8[1];
    arg1->unk0.u8[1] = temp | 2;
    arg1->unk2C = 0;
    arg1->unk2E = func_0800c3a4(0xc) - func_08018054();
    func_08017338(0, 0);

    func_0800274c(&s_f_hair_nuki_long_seqData);
    func_08002634(&s_f_hair_tuneru_seqData);
}


// [func_0802f2a0] CUE Barely - Short Hair
void func_0802f2a0(u32 arg0, struct struct_080179f4_sub1 *arg1, u32 arg2, u32 arg3) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;
    struct RhythmTweezersVegetable *vegetable = &gRhythmTweezersInfo.vegetable;

    func_08010064(arg1->unk4, D_088e88f8, 0, 1, 0x7f, 0);
    func_08010064(tweezers->entity, D_088e8848, 0, 1, 0x7f, 0);

    if (tweezers->unk5) func_0802ea74(tweezers->unk5 - 1);
    tweezers->unk5 = 2;

    func_0804cebc(D_03005380, vegetable->entity0, 1);

    gRhythmTweezersInfo.unk88.u16[0] -= 1;
    gRhythmTweezersInfo.unk88.u16[1] += 1;
}


// [func_0802f330] CUE Miss - Short Hair, Long Hair
void func_0802f330(u32 arg0, struct struct_080179f4_sub1 *arg1, u32 arg2, u32 arg3) {
    func_0800bc40();
}


// [func_0802f33c] MAIN - Input Event
void func_0802f33c(void) {
    struct RhythmTweezersTweezers *tweezers = &gRhythmTweezersInfo.tweezers;

    func_08010064(tweezers->entity, D_088e8898, 0, 1, 0x7f, 0);

    if (tweezers->unk5 != 0) func_0802ea74(tweezers->unk5 - 1);
    tweezers->unk5 = 0;
}


// [func_0802f378] GRAPHICAL Func_00 - Unknown (Unused)
void func_0802f378_stub(void) {
}


// [func_0802f37c] GRAPHICAL Func_01 - Unknown (Unused)
void func_0802f37c_stub(void) {
}


// [func_0802f380] ENGINE Func_05 - Unknown (Unused - relates to the unused Tutorial Text entity)
void func_0802f380(void) {
    func_0804d770(D_03005380, gRhythmTweezersInfo.unk8C, 0);
}