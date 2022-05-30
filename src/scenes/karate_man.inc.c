#include "syscall.h"
#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability. !TODO - CHANGE/REMOVE
#define gKarateManInfo D_030055d0->gameInfo.karateMan

// OAM Animations:
extern u32 D_088acc2c[]; // Animation: "joe_stand"
extern u32 D_088acc3c[]; // Animation: "objects"
extern u32 D_088acc6c[]; // Animation: "objects_shadow"
extern u32 D_088acc94[]; // Animation: "joe_punch_high"
extern u32 D_088accdc[]; // Animation: "joe_beat"
extern u32 D_088accfc[]; // Animation: "hit_effect"
extern u32 D_088acd1c[]; // Animation: "flow_bar"
extern u32 D_088acd54[]; // Animation: "joe_punch_low"
extern u32 D_088acd94[]; // Animation: "joe_beat_barely"
extern u32 D_088acdb4[]; // Animation: "joe_miss"
extern u32 D_088acdd4[]; // Animation: "joe_beat_smirk"
extern u32 D_088acdf4[]; // Animation: "joe_beat_happy"
extern u32 D_088ace14[]; // Animation: "joe_punch_hard"
extern u32 D_088acf04[]; // Animation: "cue_text"
extern u32 D_088acf2c[]; // Animation: "tutorial_button"
extern u32 D_088acf44[]; // Animation: "tutorial_skip"
extern u32 D_088acf54[]; // Animation: "tutorial_text"
extern u32 D_088acf7c[]; // Animation: "joe_punch_high_face" (Remix 8 face)
extern u32 D_088acfc4[]; // Animation: "joe_punch_low_face" (Remix 8 face)

// Sound Effects:
extern const struct SequenceData s_f_boxing_score_reset_seqData;
extern const struct SequenceData s_f_boxing_score_up_seqData;
extern const struct SequenceData s_f_boxing_score_down_seqData;
extern const struct SequenceData s_f_boxing_punch_seqData;
extern const struct SequenceData s_f_boxing_land_seqData;
extern const struct SequenceData s_f_boxing_hard_seqData;
extern const struct SequenceData s_f_boxing_normal_seqData;
extern const struct SequenceData s_f_boxing_kansei_seqData;
extern const struct SequenceData s_f_boxing_v_nua_seqData;

// Additional Data - Karate Man:
extern u16 D_088ad004[];    // Palette 
extern u32 *D_089df064[];   // GFX-related 
extern u32 *D_089df1ac[];   // GFX Struct Index
extern u32 D_089df1bc[];    // BG Face Graphics
extern u8 D_089df37c[];     // BG Palette Index (Low Flow)
extern u8 D_089df37e[];     // BG Palette Index (High Flow)

// Additional Data - Global:
extern u16 D_03004afc; // Input Queue(?)


/* KARATE MAN */


// GFX_LOAD Func_02
void func_08021190(void) {
	func_0800c604(0);
	func_08017578();
	func_080221cc();
}


// GFX_LOAD Func_01
void func_080211a4(void) {
    u32 temp;

    func_0800c604(0);
    temp = func_08002ee0(func_0800c3b8(), D_089df1ac[gKarateManInfo.version], 0x2000);
    func_08005d38(temp, func_08021190, 0);
}


// GFX_LOAD Func_00
void func_080211e4(void) {
    u32 temp;
    
    func_0800c604(0);
    temp = func_080087b4(func_0800c3b8(), &D_089df064);
    func_08005d38(temp, func_080211a4, 0);
}


// MAIN - Load
void func_08021210(u32 ver) {
    u32 temp;

    // Load graphical assets and other basic functionality.
    gKarateManInfo.version = ver;
    func_080211e4();
    func_0800e0ec();
    func_0800e0a0(0, 0, 0, 0, 2, 0x1c, 1);
    func_0800e0a0(1, 1, 0, 0, 0, 0x1d, 2);
    if (gKarateManInfo.version == 2) {
        func_0800e030(0);
        func_0800e044(1);
    }

    // Initialise variables.
    func_08021dd8(&gKarateManInfo.joe);
    gKarateManInfo.expression = 0;
    func_08022050();
    gKarateManInfo.serious = 0;
    gKarateManInfo.seriousStop = 0;

    // Initialise text.
    gKarateManInfo.cueText = func_0804d160(D_03005380, D_088acf04, 0, 0x78, 0x18, 0, 0, 0, 0x8000);
    temp = func_0800a204((u16)func_0800c3b8(), 4, 0x70, 0x1e);
    gKarateManInfo.unk24 = temp;
    func_0800ac68(temp, 0x7c, 0x20);
    func_0800aca0(gKarateManInfo.unk24, 0x4f00);
    func_0800acd8(gKarateManInfo.unk24, 1);

    // Initialise tutorial.
    gKarateManInfo.tutorialButtonFlag = 0;
    gKarateManInfo.tutorialButton = func_0804d160(D_03005380, D_088acf2c, 0, 0xb4, 0x70, 0x4f00, 1, 0, 0x8000);
    func_0804d5d4(D_03005380, gKarateManInfo.tutorialButton, 0xac, 0x70);
    gKarateManInfo.tutorialSkip = func_0804d160(D_03005380, D_088acf44, 0, 0, 0xa0, 0, 0, 0, 0x8000);
    gKarateManInfo.tutorialText = func_0804d160(D_03005380, D_088acf54, 0, 0x1e, 0x4c, 0, 0, 0, 0x8000);
    gKarateManInfo.tutorialObjects = 0;
    func_08017338(1, 0);

    // Initialise BG Face.
    if (gKarateManInfo.version != 0) {
        if (gKarateManInfo.version == 1) {
            gKarateManInfo.bgFace = 0;
        }
    }
}


// SUB - Set the BG Face
void func_0802139c(u32 bgFace, u32 ticks) {
    func_08003eb8(D_089df1bc[bgFace], VRAMBase + 0x8000);
    func_0800e030(0);
    gKarateManInfo.bgFace = func_0800c3a4(ticks + 1);
}


// ENGINE Func_00 - Reset BG Face?
void func_080213d4(u32 ticks) {
	func_0802139c(0, ticks);
}


// SUB - Decrement BG Face Counter
void func_080213e4(void) {
   if (gKarateManInfo.bgFace) {
       gKarateManInfo.bgFace--;
       if (!gKarateManInfo.bgFace) {
           func_0800e044(0);
       }
   }
}


// ENGINE Func_01 - Start "Serious Mode"
void func_08021408(void) {
    if (gKarateManInfo.version == 0) {
        gKarateManInfo.serious = 1;
    }
}


// ENGINE Func_02 - End "Serious Mode"
void func_08021424(void) {
    if (gKarateManInfo.version == 2) {
        gKarateManInfo.seriousStop = 1;
    }
}


// ENGINE Func_03 - Show Text
void func_08021440(char *text) {
	func_0800aa4c(gKarateManInfo.unk24, text);

}


// ENGINE Func_04 - Wait for Input (Tutorial)
void func_08021458(void) {
    func_0804cebc(D_03005380, gKarateManInfo.tutorialButton, 0);
    func_0804d770(D_03005380, gKarateManInfo.tutorialButton, 1);
    func_08017338(0, 0);
    func_0800bd04(1);
    gKarateManInfo.tutorialButtonFlag = 1;
}


// COMMON Func_03 - Unknown
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


// ENGINE Func_06 - Show Inputs Remaining (Tutorial)
void func_080214d4(u32 inputs) {
    gKarateManInfo.tutorialObjects = inputs;
    if (inputs) {
        func_0804d770(D_03005380, gKarateManInfo.tutorialText, 1);
        func_0804cebc(D_03005380, gKarateManInfo.tutorialText, inputs);
    } else {
        func_0804d770(D_03005380, gKarateManInfo.tutorialText, 0);
    }
}


// ENGINE Func_07 - Unknown (Tutorial Related)
void func_08021524(void) {
    if (gKarateManInfo.tutorialObjects) {
        func_0800bc40();
    } else {
        func_0800bce4();
    }
}

// ENGINE Func_08 - Set Expression
void func_08021544(u8 expression) {
	gKarateManInfo.expression = expression;
}


// MAIN - Update
void func_08021554(void) {

    // Update Tutorial.
    if (gKarateManInfo.tutorialButtonFlag) {
        if (D_03004afc & 1) {
            func_0804d770(D_03005380, gKarateManInfo.tutorialButton, 0);
            func_08017338(1, 0);
            func_0800bd04(0);
            gKarateManInfo.tutorialButtonFlag = 0;
        }
    }

    // Update variables.
    func_08021e58(&gKarateManInfo.joe);
    if (gKarateManInfo.version) {
        if (gKarateManInfo.version == 1) { // Decrement BG Face if version is BG Face
            func_080213e4();
        }
    }

    // Update text.
    func_0800a914(gKarateManInfo.unk24);
}


// MAIN - Unload
void func_080215cc(void) {
    func_08021e40(&gKarateManInfo.joe);
    func_0804d504(D_03005380, gKarateManInfo.cueText);
    func_0804d504(D_03005380, gKarateManInfo.flowBar);
    func_0800e044(0);
    func_0800e044(1);
}


// SUB - ???
void func_0802160c(struct struct_080179f4 *arg0) {
    struct struct_080179f4 *temp;
    struct KarateManCue *temp1;

    func_08018124(&temp, &temp1); // Initialise temps
    while (temp) {
        if (temp != arg0) {
            temp1->unk2E++;
        }
        func_08018138(temp, &temp, &temp1); // Update temps
    }
}


// CUE - Spawn
void func_08021644(struct struct_080179f4 *arg0, struct KarateManCue *cue, u32 object) {
    cue->isHit = 0;
    cue->unk8 = func_0800c42c();
    cue->objects = func_0804d160(D_03005380, D_088acc3c, 0, 0x9c, 0x34, 0x4800, 0, 0, 0);
    func_08007468(cue->objects, cue->unk8);
    cue->unk9 = func_0800c42c();
    cue->shadow = func_0804d160(D_03005380, D_088acc6c, 0, 0x9c, 0x85, 0x4a00, 0, 0, 0);
    func_08007468(cue->shadow, cue->unk9);
    cue->unk1C = 0;
    cue->unk18 = 0;
    cue->unk24 = 0;
    cue->unk20 = 0;
    cue->unk28 = 0;
    cue->unk2E = 0;
    cue->unk2D = 0;
    cue->unk2C = 0;
    cue->miss = 0;
    cue->object = object;
    func_0804d8f8(D_03005380, cue->objects, D_088acc3c, object, 0, 0, 0);
    func_0802160c(arg0);
}


// SUB - Update Object Entity 
void func_08021740(struct KarateManCue *cue) {
    s32 temp;
    s32 temp1;
    
    if (cue->unk28 < 0x80) { // Some distance check
        func_0804d770(D_03005380, cue->objects, 0);
        func_0804d770(D_03005380, cue->shadow, 0);
    }
    temp = cue->unkC;
    temp1 = cue->unk10;
    func_0804d55c(D_03005380, cue->objects, (temp << 8) >> 0x10, (temp1 << 8) >> 0x10, (u16)(0x4700 + cue->unk28 + cue->unk2E));
    func_0804d5d4(D_03005380, cue->shadow, (temp << 8) >> 0x10, (s16)cue->unk14);
    func_08007498(cue->unk8, cue->unk2A, (s8)cue->unk2C);
    func_08007498(cue->unk9, cue->unk2A, 0);
    func_0804d770(D_03005380, cue->objects, 1);
    func_0804d770(D_03005380, cue->shadow, 1);
}


// SUB - Update Hit Object
void func_080217ec(struct KarateManCue *cue) {
    u32 temp;
    u32 temp1;

    temp = cue->unk18 += cue->unk20;
    temp1 = cue->unk1C += cue->unk24;
    cue->unkC += temp;
    cue->unk10 += temp1;
    cue->unk2C += cue->unk2D;
}


// SUB - Update Not Hit Object
void func_08021818(struct KarateManCue *cue) {
    s32 temparg = cue->unk28; // Distance?
    s32 temp;
    s32 temp1;
    s32 temp2;
    s32 temp3; // s24_8
    s32 temp4; // s24_8

    // Calculate the Y position
    temp = temparg - 0x100;
    temp1 = 0x51;
    temp1 -= (temp * temp1 * temp) >> 0x10;
    temp2 = 0x35 - temp1;

    temp3 = fast_divsi3(0x2400, temparg) + 120;    // Object's X Position
    temp4 = fast_divsi3(temp2 << 8, temparg) + 80; // Object's Y Position
    cue->unkC = temp3 << 8;
    cue->unk10 = temp4 << 8;
    cue->unk14 = fast_divsi3(0x3500, temparg) + 80;
    cue->unk2A = Div(0x10000, temparg);  // Calculate Scale
}


// CUE - Behaviour
u32 func_08021888(u32 arg0, struct KarateManCue *cue, u32 arg2, u32 arg3) {
    struct KarateManJoe *joe = &gKarateManInfo.joe;
    u16 temp;
    u32 zero;

    if (arg2 > func_0800c3a4(0x78)) {
        return 1; // Cue is over
    }
    
    zero = 0;
    switch (cue->isHit) {
        case 0: // Object wasn't hit
            temp = cue->unk28 = Div(arg2 << 8, arg3);
            if (temp > 0x200) { // Object is on the floor
                cue->isHit = 1;
                cue->unk2C += func_08001980(0x10);
                func_080220c4(); // Reset Flow
                func_08002634(&s_f_boxing_land_seqData);
                return 0;
            }
            if (temp > 0x180) { // Object is out of player's range
                if ((s16)cue->miss <= 0) {
                    cue->miss = 1;
                    joe->miss = func_0800c3a4(0x24);
                }
            }
            func_08021818(cue);
            func_08021740(cue);
            break;
        case 1: // Object was hit
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


// CUE - Despawn 
void func_08021974(u32 arg0, struct KarateManCue *cue) {
    func_0804d504(D_03005380, cue->objects);
    func_0804d504(D_03005380, cue->shadow);
    func_080021b8(cue->unk8);
    func_080021b8(cue->unk9);
}


// SUB - Enter "Serious Mode"
void func_080219a8(void) {
    gKarateManInfo.serious = 0;
    func_0804d8c4(D_03005380, gKarateManInfo.joe.joe, 1);
    func_0800e030(0);
    func_0800e044(1);
    func_0804d770(D_03005380, gKarateManInfo.flowBar, 0);
    gKarateManInfo.version = 2;
    func_0800c128(0);
    func_0800c138(0x100, func_0800c3a4(0x60));
}


// SUB - Stop "Serious Mode"
void func_08021a0c(void) {
    gKarateManInfo.seriousStop = 0;
    func_0804d8c4(D_03005380, gKarateManInfo.joe.joe, 0);
    func_0800e044(0);
    func_0800e030(1);
    func_0804d770(D_03005380, gKarateManInfo.flowBar, 1);
    gKarateManInfo.version = 0;
    func_080221cc();
    func_080173c4(0); // Disable inputs
}


// CUE - Hit
void func_08021a60(struct struct_080179f4 *arg0, struct KarateManCue *cue) {
    struct KarateManInfo *karateManStruct = &gKarateManInfo;
    struct KarateManJoe *joe = &karateManStruct->joe;
    u32 *anim;
    u32 bgFace;
    u32 isBgFaceVer;
    u32 isHigh;
    u32 expression;
    u32 isHighBgFace = 0;

    isBgFaceVer = karateManStruct->version == 1;
    isHigh = 0;
    cue->isHit = 1;

    // "Serious Mode"
    if (gKarateManInfo.serious) {
        func_080219a8();
    }
    if (gKarateManInfo.seriousStop) {
        func_08021a0c();
    }
    
    // Check if Flow is more than 2 or if Version is 2 ("Serious Mode")
    if ((gKarateManInfo.flow > 2)) {
        isHigh = 1;
    }
    if (gKarateManInfo.version == 2) {
        isHigh = 1;
    }

    if (!isHigh) {
        // Low Flow
        switch (cue->object) {
            case 1:
            case 3: // Rock, Bomb 
                cue->unk18 = 0;
                cue->unk1C = 0;
                cue->unk24 = 0x20;
                cue->unk2C = 0xa;
                cue->unk2D = 0;
                karateManStruct->joe.isNotBeat = TRUE;
                func_0804d8f8(D_03005380, joe->joe, D_088ace14, 0, 1, 0x7f, 0);
                if (isBgFaceVer) {
                    func_08002634(func_080180a0(arg0));
                } else {
                    func_08002634(&s_f_boxing_hard_seqData);
                }
                func_08018068();
                func_08017928(func_080180bc(arg0), 1, func_08018054());
                func_08022170();
                isHighBgFace = 1;
                break;

            default: // Pot, Soccerball, Lightbulb
                cue->unk18 = 0x400;
                cue->unk1C = -0x200;
                cue->unk24 = 0x40;
                cue->unk2D = -6;
                expression = gKarateManInfo.expression;
                anim = D_088acd54;
                if (expression) {
                    anim = D_088acfc4;
                }
                karateManStruct->joe.isNotBeat = TRUE;
                func_0804d8f8(D_03005380, joe->joe, anim, 0, 1, 0x7f, 0);
                func_0804d160(D_03005380, D_088accfc, 0, 0x9e, 0x36, 0x4f00, 1, 0, 3);
                if (!isBgFaceVer) {
                    func_0801808c(arg0, &s_f_boxing_normal_seqData);
                }
                func_08022114(); // Increment Flow
                break;
        }
    } else {
        // High Flow
        cue->unk18 = 0x800;
        cue->unk1C = -0x200;
        cue->unk2D = -0x10;
        expression = gKarateManInfo.expression;
        anim = D_088acc94;
        if (expression) {
            anim = D_088acf7c;
        }
        karateManStruct->joe.isNotBeat = TRUE;
        func_0804d8f8(D_03005380, joe->joe, anim, 0, 1, 0x7f, 0);
        func_0804d160(D_03005380, D_088accfc, 0, 0x9e, 0x36, 0x4f00, 1, 0, 3);
        switch (cue->object) {
            case 1: // Rock
                joe->smirk = func_0800c3a4(0x24);
                func_08002634(&s_f_boxing_kansei_seqData);
                break;
            case 3: // Bomb
                joe->happy = func_0800c3a4(0x6c);
                break;
        }
        if (gKarateManInfo.version == 2) { // BG Flash ("Serious Mode" version)
            func_08001fe0((u16)func_0800c3b8(), 0xa, 1, &D_088ad004[0x60], &D_088ad004[0x50], &D_03004b10.unk54[4]);
        }
        func_08022114(); // Increment Flow
    }

    // BG Face
    if (isBgFaceVer) {
        bgFace = 1;
        if (isHighBgFace) {
            bgFace = 2;
        }
        func_0802139c(bgFace, 0x30);
    }

    // Tutorial
    if (gKarateManInfo.tutorialObjects) {
        gKarateManInfo.tutorialObjects--;
        func_0804cebc(D_03005380, gKarateManInfo.tutorialText, (s8)gKarateManInfo.tutorialObjects);
    }
}


// CUE - Barely
void func_08021d38(struct struct_080179f4 *arg0, struct KarateManCue *cue) {
    u32 isBgFaceVer;
    struct KarateManJoe *joe = &gKarateManInfo.joe;

    isBgFaceVer = gKarateManInfo.version == 1;
    cue->isHit = 1;
    cue->unk18 = 0x40;
    cue->unk1C = -0x200;
    cue->unk24 = 0x20;
    cue->unk2D = 4;
    joe->isNotBeat = TRUE;
    func_0804d8f8(D_03005380, joe->joe, D_088acc94, 0, 1, 0x7f, 0);
    joe->barely = func_0800c3a4(0x24);
    func_08022170(); // Decrement Flow

    // BG Face
    if (isBgFaceVer) {
        func_0802139c(2, 0x30);
    }
    func_0800bc40();
}


// CUE - Miss
void func_08021dcc(void) {
	func_0800bc40();
}


// SUB - Initialise Joe
void func_08021dd8(struct KarateManJoe *arg0) {
    arg0->isNotBeat = FALSE;
    arg0->joe = func_0804d160(D_03005380, D_088acc2c, 0, 0x50, 0x58, 0x4800, 1, 0, 0);
    if (gKarateManInfo.version == 2) { // "Serious Mode"
        func_0804d8c4(D_03005380, arg0->joe, 1);
    }
    arg0->barely = 0;
    arg0->miss = 0;
    arg0->smirk = 0;
    arg0->happy = 0;
}


// SUB - Unload Joe
void func_08021e40(struct KarateManJoe *arg0) {
	func_0804d504(D_03005380, arg0->joe);
}


// SUB - Update Joe
void func_08021e58(struct KarateManJoe *arg0) {
    if (arg0->barely) arg0->barely--;
    if (arg0->miss) arg0->miss--;
    if (arg0->smirk) arg0->smirk--;
    if (arg0->happy) arg0->happy--;
}


// MAIN - Input
void func_08021e88(void) {
    struct KarateManJoe *joe = &gKarateManInfo.joe;

    joe->isNotBeat = TRUE;
    if (gKarateManInfo.flow < 3) {
        func_0804d8f8(D_03005380, joe->joe, D_088acd54, 0, 1, 0x7f, 0);
    } else {
        func_0804d8f8(D_03005380, joe->joe, D_088acc94, 0, 1, 0x7f, 0);
    }
    func_08002634(&s_f_boxing_punch_seqData);
}


// COMMON Func_00 - Beat Animation
void func_08021f04(void) {
    struct KarateManInfo *karateManStruct = &gKarateManInfo;
    struct KarateManJoe *joe = &karateManStruct->joe;
    u32 temp;
    s8 currentEntity;
    
    func_080221cc();
    if ((s16)karateManStruct->joe.isNotBeat == 1) {
        temp = (u32)func_0804ddb0(D_03005380, joe->joe, 2); // should be u16?
        currentEntity = func_0804d6cc(D_03005380, joe->joe);
        if (currentEntity < temp - 4) { // Return if current entity is less than ??
            return;
        }
    }
    karateManStruct->joe.isNotBeat = FALSE;
    func_0804d8f8(D_03005380, joe->joe, D_088accdc, 0, 1, 0x7f, 0);     // Default Beat Animation
    if (joe->smirk) {
        func_0804d8f8(D_03005380, joe->joe, D_088acdd4, 0, 1, 0x7f, 0); // Smirk Beat Animation
    }
    if (joe->barely) {
        func_0804d8f8(D_03005380, joe->joe, D_088acd94, 0, 1, 0x7f, 0); // Barely Beat Animation
    }
    if (joe->happy) {
        func_0804d8f8(D_03005380, joe->joe, D_088acdf4, 0, 1, 0x7f, 0); // Happy Beat Animation
    }
    if (joe->miss) {
        func_0804d8f8(D_03005380, joe->joe, D_088acdb4, 0, 1, 0x7f, 0); // Miss 
        func_08002634(&s_f_boxing_v_nua_seqData);
    }
}


// COMMON Func_01 - Toggle Cue Text
void func_08022010(u32 arg0) {
    func_0804d770(D_03005380, gKarateManInfo.cueText, arg0 != 0);
    if (arg0) {
        func_0804cebc(D_03005380, gKarateManInfo.cueText, arg0 - 1);
    }
}


// SUB - Initialise Flow
void func_08022050(void) {
    gKarateManInfo.flow = 0;
    gKarateManInfo.flowBar = func_0804d160(D_03005380, D_088acd1c, gKarateManInfo.flow, 0x24, 0x10, 0x47f6, 0, 0, 0);
    gKarateManInfo.flowBarFlag = TRUE;
    if (gKarateManInfo.version == 2) { // "Serious Mode"
        func_0804d770(D_03005380, gKarateManInfo.flowBar, 0);
        gKarateManInfo.flowBarFlag = FALSE;
    }
    gKarateManInfo.bg = 0;
    gKarateManInfo.bgPalIndex = D_089df37c;
}


// SUB - Reset Flow
void func_080220c4(void) {
    if (gKarateManInfo.flow > 2) {
        func_08002634(&s_f_boxing_score_reset_seqData);
    }
    gKarateManInfo.flow = 0;
    func_0804cebc(D_03005380, gKarateManInfo.flowBar, gKarateManInfo.flow);
    gKarateManInfo.bg = 0;
    gKarateManInfo.bgPalIndex = D_089df37c;
    func_080221cc();
}


// SUB - Increment Flow
void func_08022114(void) {
    if (gKarateManInfo.flowBarFlag) {
        if (gKarateManInfo.flow < 5) { // Flow can't go higher than 5
            gKarateManInfo.flow++;
            func_0804cebc(D_03005380, gKarateManInfo.flowBar, gKarateManInfo.flow);
            if (gKarateManInfo.flow == 3) { // High Flow
                gKarateManInfo.bg = 0;
                gKarateManInfo.bgPalIndex = D_089df37e;
                func_080221cc(); // Update BG Palette 
                func_08002634(&s_f_boxing_score_up_seqData);
            }
        }
    }
}


// SUB - Decrement Flow
void func_08022170(void) {
    if (gKarateManInfo.flowBarFlag) {
        if (gKarateManInfo.flow) { // Flow can't go lower than 0
            gKarateManInfo.flow--;
            func_0804cebc(D_03005380, gKarateManInfo.flowBar, gKarateManInfo.flow);
            if (gKarateManInfo.flow == 2) { // Low Flow
                gKarateManInfo.bg = 0;
                gKarateManInfo.bgPalIndex = D_089df37c;
                func_080221cc(); // Update BG Palette
                func_08002634(&s_f_boxing_score_down_seqData);
            }
        }
    }
}


// SUB - Update BG Palette 
void func_080221cc(void) {
    s8 tableByte;  // BG Palette Table byte
    u8 bg;         // Current BG
    u16 *bgPalette, *bgPalette1;
    u32 i;
    
    if (gKarateManInfo.version != 2) { // Don't update if in "Serious Mode"
        bg = gKarateManInfo.bg;
        tableByte = gKarateManInfo.bgPalIndex[bg];
        if (tableByte < 0) {
            bg = 0;
            tableByte = gKarateManInfo.bgPalIndex[0];
        }
        gKarateManInfo.bg = bg + 1;
        bgPalette1 = D_03004b10.unk54[tableByte]; 
        bgPalette = D_03004b10.unk54[4];
        for (i = 0; i < 4; i++) {
            bgPalette[i] = bgPalette1[i];
        }
    }
}


// SUB - Toggle Flow
void func_0802221c(u32 flag) {
    gKarateManInfo.flowBarFlag = flag;
    func_0804d770(D_03005380, gKarateManInfo.flowBar, flag);
}
