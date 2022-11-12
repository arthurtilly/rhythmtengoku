#include "engines/karate_man.h"

#include "syscall.h"
#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/riq_gameplay.h"
#include "src/lib_0804c870.h"

// For readability.
#define gKarateManInfo ((struct KarateManInfo *)D_030055d0)


/* KARATE MAN */


// GFX_INIT Func_02
void karate_init_gfx3(void) {
	func_0800c604(0);
	func_08017578();
	func_080221cc();
}


// GFX_INIT Func_01
void karate_init_gfx2(void) {
    u32 temp;

    func_0800c604(0);
    temp = func_08002ee0(func_0800c3b8(), karate_gfx_tables[gKarateManInfo->version], 0x2000);
    task_run_after(temp, karate_init_gfx3, 0);
}


// GFX_INIT Func_00
void karate_init_gfx1(void) {
    u32 temp;
    
    func_0800c604(0);
    temp = func_080087b4(func_0800c3b8(), karate_buffered_textures);
    task_run_after(temp, karate_init_gfx2, 0);
}


// MAIN - Init
void karate_engine_init(u32 ver) {

    // Load graphical assets and other basic functionality.
    gKarateManInfo->version = ver;
    karate_init_gfx1();
    func_0800e0ec();
    func_0800e0a0(0, 0, 0, 0, 2, 28, 1);
    func_0800e0a0(1, 1, 0, 0, 0, 29, 2);
    if (gKarateManInfo->version == KARATE_VER_SERIOUS) {
        func_0800e030(0);
        func_0800e044(1);
    }

    // Initialise variables.
    func_08021dd8(&gKarateManInfo->joe);
    gKarateManInfo->useTheFace = FALSE;
    func_08022050();
    gKarateManInfo->seriousModeStarted = FALSE;
    gKarateManInfo->seriousModeStopped = FALSE;

    // Initialise text.
    gKarateManInfo->cueTextSprite = func_0804d160(D_03005380, karate_anim_cue_warning, 0, 120, 24, 0, 0, 0, 0x8000);
    gKarateManInfo->unk24 = func_0800a204((u16)func_0800c3b8(), 4, 112, 30);
    func_0800ac68(gKarateManInfo->unk24, 124, 32);
    func_0800aca0(gKarateManInfo->unk24, 0x4f00);
    func_0800acd8(gKarateManInfo->unk24, 1);

    // Initialise tutorial.
    gKarateManInfo->awaitingInput = FALSE;
    gKarateManInfo->textButtonSprite = func_0804d160(D_03005380, karate_anim_tutorial_text_button, 0, 180, 112, 0x4f00, 1, 0, 0x8000);
    func_0804d5d4(D_03005380, gKarateManInfo->textButtonSprite, 172, 112);
    gKarateManInfo->tutorialSkip = func_0804d160(D_03005380, karate_anim_tutorial_skip, 0, 0, 160, 0, 0, 0, 0x8000);
    gKarateManInfo->tutorialText = func_0804d160(D_03005380, karate_anim_tutorial_counter, 0, 30, 76, 0, 0, 0, 0x8000);
    gKarateManInfo->tutorialObjects = 0;
    func_08017338(A_BUTTON, 0);

    // Initialise BG Face.
    if (gKarateManInfo->version != KARATE_VER_0) {
        if (gKarateManInfo->version == KARATE_VER_FACES) {
            gKarateManInfo->bgFace = 0;
        }
    }
}


// Set the BG Face
void func_0802139c(u32 bgFace, u32 ticks) {
    func_08003eb8(karate_bg_face_textures[bgFace], VRAMBase + 0x8000);
    func_0800e030(0);
    gKarateManInfo->bgFace = func_0800c3a4(ticks + 1);
}


// ENGINE Func_00 - Reset BG Face?
void func_080213d4(u32 ticks) {
	func_0802139c(0, ticks);
}


// Decrement BG Face Counter
void func_080213e4(void) {
   if (gKarateManInfo->bgFace) {
       gKarateManInfo->bgFace--;
       if (!gKarateManInfo->bgFace) {
           func_0800e044(0);
       }
   }
}


// ENGINE Func_01 - Start "Serious Mode"
void func_08021408(void) {
    if (gKarateManInfo->version == KARATE_VER_0) {
        gKarateManInfo->seriousModeStarted = TRUE;
    }
}


// ENGINE Func_02 - End "Serious Mode"
void func_08021424(void) {
    if (gKarateManInfo->version == KARATE_VER_SERIOUS) {
        gKarateManInfo->seriousModeStopped = TRUE;
    }
}


// ENGINE Func_03 - Show Text
void func_08021440(char *text) {
	func_0800aa4c(gKarateManInfo->unk24, text);

}


// ENGINE Func_04 - Wait for Input (Tutorial)
void func_08021458(void) {
    func_0804cebc(D_03005380, gKarateManInfo->textButtonSprite, 0);
    func_0804d770(D_03005380, gKarateManInfo->textButtonSprite, TRUE);
    func_08017338(0, 0);
    func_0800bd04(TRUE);
    gKarateManInfo->awaitingInput = TRUE;
}


// COMMON Func_03 - Set Tutorial Destination Scene
void func_080214a0(const struct Scene *scene) {
    if (scene != NULL) {
        func_08017448(TRUE);
        func_08017458(scene);
        func_0801853c(1, 1);
    } else {
        func_08017448(FALSE);
        func_0801853c(0, 0);
    } 
}


// ENGINE Func_06 - Show Inputs Remaining (Tutorial)
void func_080214d4(u32 inputs) {
    gKarateManInfo->tutorialObjects = inputs;
    if (inputs) {
        func_0804d770(D_03005380, gKarateManInfo->tutorialText, TRUE);
        func_0804cebc(D_03005380, gKarateManInfo->tutorialText, inputs);
    } else {
        func_0804d770(D_03005380, gKarateManInfo->tutorialText, FALSE);
    }
}


// ENGINE Func_07 - Unknown (Tutorial Related)
void func_08021524(void) {
    if (gKarateManInfo->tutorialObjects) {
        func_0800bc40();
    } else {
        func_0800bce4();
    }
}

// ENGINE Func_08 - Set Expression
void func_08021544(u8 use) {
	gKarateManInfo->useTheFace = use;
}


// MAIN - Update
void karate_engine_update(void) {

    // Update Tutorial.
    if (gKarateManInfo->awaitingInput) {
        if (D_03004afc & A_BUTTON) {
            func_0804d770(D_03005380, gKarateManInfo->textButtonSprite, FALSE);
            func_08017338(A_BUTTON, 0);
            func_0800bd04(FALSE);
            gKarateManInfo->awaitingInput = FALSE;
        }
    }

    // Update variables.
    func_08021e58(&gKarateManInfo->joe);
    if (gKarateManInfo->version) {
        if (gKarateManInfo->version == 1) { // Decrement BG Face if version is BG Face
            func_080213e4();
        }
    }

    // Update text.
    func_0800a914(gKarateManInfo->unk24);
}


// MAIN - Close
void karate_engine_stop(void) {
    func_08021e40(&gKarateManInfo->joe);
    func_0804d504(D_03005380, gKarateManInfo->cueTextSprite);
    func_0804d504(D_03005380, gKarateManInfo->flowSprite);
    func_0800e044(0);
    func_0800e044(1);
}


// ???
void func_0802160c(struct Cue *arg0) {
    struct Cue *temp;
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
void func_08021644(struct Cue *arg0, struct KarateManCue *cue, u32 object) {
    cue->isHit = 0;
    cue->unk8 = func_0800c42c();
    cue->objects = func_0804d160(D_03005380, karate_anim_object, 0, 0x9c, 0x34, 0x4800, 0, 0, 0);
    func_08007468(cue->objects, cue->unk8);
    cue->unk9 = func_0800c42c();
    cue->shadow = func_0804d160(D_03005380, karate_anim_object_shadow, 0, 0x9c, 0x85, 0x4a00, 0, 0, 0);
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
    func_0804d8f8(D_03005380, cue->objects, karate_anim_object, object, 0, 0, 0);
    func_0802160c(arg0);
}


// Update Object Entity
void func_08021740(struct KarateManCue *cue) {
    s32 temp;
    s32 temp1;
    
    if (cue->unk28 < 0x80) { // Some distance check
        func_0804d770(D_03005380, cue->objects, FALSE);
        func_0804d770(D_03005380, cue->shadow, FALSE);
    }
    temp = cue->unkC;
    temp1 = cue->unk10;
    func_0804d55c(D_03005380, cue->objects, (temp << 8) >> 0x10, (temp1 << 8) >> 0x10, (u16)(0x4700 + cue->unk28 + cue->unk2E));
    func_0804d5d4(D_03005380, cue->shadow, (temp << 8) >> 0x10, (s16)cue->unk14);
    func_08007498(cue->unk8, cue->unk2A, (s8)cue->unk2C);
    func_08007498(cue->unk9, cue->unk2A, 0);
    func_0804d770(D_03005380, cue->objects, TRUE);
    func_0804d770(D_03005380, cue->shadow, TRUE);
}


// Update Hit Object
void func_080217ec(struct KarateManCue *cue) {
    u32 temp;
    u32 temp1;

    temp = cue->unk18 += cue->unk20;
    temp1 = cue->unk1C += cue->unk24;
    cue->unkC += temp;
    cue->unk10 += temp1;
    cue->unk2C += cue->unk2D;
}


// Update Not Hit Object
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


// CUE - Update
u32 func_08021888(struct Cue *arg0, struct KarateManCue *cue, u32 arg2, u32 arg3) {
    struct KarateJoe *joe = &gKarateManInfo->joe;
    u16 temp;
    u32 zero;

    if (arg2 > func_0800c3a4(0x78)) {
        return 1; // Cue is over
    }
    
    zero = 0;
    switch (cue->isHit) {
        case FALSE: // Object wasn't hit
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
        case TRUE: // Object was hit
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
void func_08021974(struct Cue *arg0, struct KarateManCue *cue) {
    func_0804d504(D_03005380, cue->objects);
    func_0804d504(D_03005380, cue->shadow);
    func_080021b8(cue->unk8);
    func_080021b8(cue->unk9);
}


// Enter "Serious Mode"
void func_080219a8(void) {
    gKarateManInfo->seriousModeStarted = FALSE;
    func_0804d8c4(D_03005380, gKarateManInfo->joe.sprite, 1);
    func_0800e030(0);
    func_0800e044(1);
    func_0804d770(D_03005380, gKarateManInfo->flowSprite, FALSE);
    gKarateManInfo->version = KARATE_VER_SERIOUS;
    func_0800c128(0);
    func_0800c138(0x100, func_0800c3a4(0x60));
}


// Stop "Serious Mode"
void func_08021a0c(void) {
    gKarateManInfo->seriousModeStopped = FALSE;
    func_0804d8c4(D_03005380, gKarateManInfo->joe.sprite, 0);
    func_0800e044(0);
    func_0800e030(1);
    func_0804d770(D_03005380, gKarateManInfo->flowSprite, TRUE);
    gKarateManInfo->version = KARATE_VER_0;
    func_080221cc();
    func_080173c4(FALSE); // Disable inputs
}


// CUE - Hit
void func_08021a60(struct Cue *arg0, struct KarateManCue *cue) {
    struct KarateManInfo *karateManStruct = gKarateManInfo;
    struct KarateJoe *joe = &karateManStruct->joe;
    const struct Animation *anim;
    u32 bgFace;
    u32 isBgFaceVer;
    u32 isHigh;
    u32 useTheFace;
    u32 isHighBgFace = 0;

    isBgFaceVer = karateManStruct->version == 1;
    isHigh = 0;
    cue->isHit = 1;

    // "Serious Mode"
    if (gKarateManInfo->seriousModeStarted) {
        func_080219a8();
    }

    if (gKarateManInfo->seriousModeStopped) {
        func_08021a0c();
    }
    
    // Check if Flow is more than 2 or if Version is 2 ("Serious Mode")
    if ((gKarateManInfo->flowLevel > 2)) {
        isHigh = 1;
    }

    if (gKarateManInfo->version == 2) {
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
                func_0804d8f8(D_03005380, joe->sprite, karate_anim_joe_punch_ouch, 0, 1, 0x7f, 0);
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
                useTheFace = gKarateManInfo->useTheFace;
                anim = karate_anim_joe_punch_low;
                if (useTheFace) {
                    anim = karate_anim_joe_smug_low;
                }
                karateManStruct->joe.isNotBeat = TRUE;
                func_0804d8f8(D_03005380, joe->sprite, anim, 0, 1, 0x7f, 0);
                func_0804d160(D_03005380, karate_anim_hit_effect, 0, 0x9e, 0x36, 0x4f00, 1, 0, 3);
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
        useTheFace = gKarateManInfo->useTheFace;
        anim = karate_anim_joe_punch_high;
        if (useTheFace) {
            anim = karate_anim_joe_smug_high;
        }
        karateManStruct->joe.isNotBeat = TRUE;
        func_0804d8f8(D_03005380, joe->sprite, anim, 0, 1, 0x7f, 0);
        func_0804d160(D_03005380, karate_anim_hit_effect, 0, 0x9e, 0x36, 0x4f00, 1, 0, 3);
        switch (cue->object) {
            case 1: // Rock
                joe->smirk = func_0800c3a4(0x24);
                func_08002634(&s_f_boxing_kansei_seqData);
                break;
            case 3: // Bomb
                joe->happy = func_0800c3a4(0x6c);
                break;
        }
        if (gKarateManInfo->version == 2) { // BG Flash ("Serious Mode" version)
            func_08001fe0((u16)func_0800c3b8(), 0xa, 1, karate_man_pal[6], karate_man_pal[5], D_03004b10.bgPalette[4]);
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
    if (gKarateManInfo->tutorialObjects) {
        gKarateManInfo->tutorialObjects--;
        func_0804cebc(D_03005380, gKarateManInfo->tutorialText, (s8)gKarateManInfo->tutorialObjects);
    }
}


// CUE - Barely
void func_08021d38(struct Cue *arg0, struct KarateManCue *cue) {
    u32 isBgFaceVer;
    struct KarateJoe *joe = &gKarateManInfo->joe;

    isBgFaceVer = gKarateManInfo->version == 1;
    cue->isHit = 1;
    cue->unk18 = 0x40;
    cue->unk1C = -0x200;
    cue->unk24 = 0x20;
    cue->unk2D = 4;
    joe->isNotBeat = TRUE;
    func_0804d8f8(D_03005380, joe->sprite, karate_anim_joe_punch_high, 0, 1, 0x7f, 0);
    joe->barely = func_0800c3a4(0x24);
    func_08022170(); // Decrement Flow

    // BG Face
    if (isBgFaceVer) {
        func_0802139c(2, 0x30);
    }
    func_0800bc40();
}


// CUE - Miss
void func_08021dcc(struct Cue *arg0, struct KarateManCue *cue) {
	func_0800bc40();
}


// Initialise Joe
void func_08021dd8(struct KarateJoe *arg0) {
    arg0->isNotBeat = FALSE;
    arg0->sprite = func_0804d160(D_03005380, karate_anim_joe_test, 0, 0x50, 0x58, 0x4800, 1, 0, 0);
    if (gKarateManInfo->version == 2) { // "Serious Mode"
        func_0804d8c4(D_03005380, arg0->sprite, 1);
    }
    arg0->barely = 0;
    arg0->miss = 0;
    arg0->smirk = 0;
    arg0->happy = 0;
}


// Unload Joe
void func_08021e40(struct KarateJoe *arg0) {
	func_0804d504(D_03005380, arg0->sprite);
}


// Update Joe
void func_08021e58(struct KarateJoe *arg0) {
    if (arg0->barely) arg0->barely--;
    if (arg0->miss) arg0->miss--;
    if (arg0->smirk) arg0->smirk--;
    if (arg0->happy) arg0->happy--;
}


// MAIN - Input Event
void karate_input_event(u32 pressed, u32 released) {
    struct KarateJoe *joe = &gKarateManInfo->joe;

    joe->isNotBeat = TRUE;
    if (gKarateManInfo->flowLevel < 3) {
        func_0804d8f8(D_03005380, joe->sprite, karate_anim_joe_punch_low, 0, 1, 0x7f, 0);
    } else {
        func_0804d8f8(D_03005380, joe->sprite, karate_anim_joe_punch_high, 0, 1, 0x7f, 0);
    }
    func_08002634(&s_f_boxing_punch_seqData);
}


// COMMON Func_00 - Beat Animation
void func_08021f04(void) {
    struct KarateManInfo *karateManStruct = gKarateManInfo;
    struct KarateJoe *joe = &karateManStruct->joe;
    u32 temp;
    s8 currentEntity;
    
    func_080221cc();
    if ((s16)karateManStruct->joe.isNotBeat == 1) {
        temp = (u32)func_0804ddb0(D_03005380, joe->sprite, 2); // should be u16?
        currentEntity = func_0804d6cc(D_03005380, joe->sprite);
        if (currentEntity < temp - 4) { // Return if current entity is less than ??
            return;
        }
    }
    karateManStruct->joe.isNotBeat = FALSE;
    func_0804d8f8(D_03005380, joe->sprite, karate_anim_joe_beat, 0, 1, 0x7f, 0);     // Default Beat Animation
    if (joe->smirk) {
        func_0804d8f8(D_03005380, joe->sprite, karate_anim_joe_smirk, 0, 1, 0x7f, 0); // Smirk Beat Animation
    }
    if (joe->barely) {
        func_0804d8f8(D_03005380, joe->sprite, karate_anim_joe_barely, 0, 1, 0x7f, 0); // Barely Beat Animation
    }
    if (joe->happy) {
        func_0804d8f8(D_03005380, joe->sprite, karate_anim_joe_happy, 0, 1, 0x7f, 0); // Happy Beat Animation
    }
    if (joe->miss) {
        func_0804d8f8(D_03005380, joe->sprite, karate_anim_joe_miss, 0, 1, 0x7f, 0); // Miss
        func_08002634(&s_f_boxing_v_nua_seqData);
    }
}


// COMMON Func_01 - Toggle Cue Text
void func_08022010(u32 arg0) {
    func_0804d770(D_03005380, gKarateManInfo->cueTextSprite, arg0 != FALSE);
    if (arg0) {
        func_0804cebc(D_03005380, gKarateManInfo->cueTextSprite, arg0 - 1);
    }
}


// Initialise Flow
void func_08022050(void) {
    gKarateManInfo->flowLevel = 0;
    gKarateManInfo->flowSprite = func_0804d160(D_03005380, karate_anim_flow_meter, gKarateManInfo->flowLevel, 36, 16, 0x47f6, 0, 0, 0);
    gKarateManInfo->flowEnabled = TRUE;
    if (gKarateManInfo->version == KARATE_VER_SERIOUS) { // "Serious Mode"
        func_0804d770(D_03005380, gKarateManInfo->flowSprite, FALSE);
        gKarateManInfo->flowEnabled = FALSE;
    }
    gKarateManInfo->bg = 0;
    gKarateManInfo->bgPalIndex = karate_flow_palette_low;
}


// Reset Flow
void func_080220c4(void) {
    if (gKarateManInfo->flowLevel > 2) {
        func_08002634(&s_f_boxing_score_reset_seqData);
    }
    gKarateManInfo->flowLevel = 0;
    func_0804cebc(D_03005380, gKarateManInfo->flowSprite, gKarateManInfo->flowLevel);
    gKarateManInfo->bg = 0;
    gKarateManInfo->bgPalIndex = karate_flow_palette_low;
    func_080221cc();
}


// Increment Flow
void func_08022114(void) {
    if (gKarateManInfo->flowEnabled) {
        if (gKarateManInfo->flowLevel < 5) { // Flow can't go higher than 5
            gKarateManInfo->flowLevel++;
            func_0804cebc(D_03005380, gKarateManInfo->flowSprite, gKarateManInfo->flowLevel);
            if (gKarateManInfo->flowLevel == 3) { // High Flow
                gKarateManInfo->bg = 0;
                gKarateManInfo->bgPalIndex = karate_flow_palette_high;
                func_080221cc(); // Update BG Palette 
                func_08002634(&s_f_boxing_score_up_seqData);
            }
        }
    }
}


// SUB - Decrement Flow
void func_08022170(void) {
    if (gKarateManInfo->flowEnabled) {
        if (gKarateManInfo->flowLevel) { // Flow can't go lower than 0
            gKarateManInfo->flowLevel--;
            func_0804cebc(D_03005380, gKarateManInfo->flowSprite, gKarateManInfo->flowLevel);
            if (gKarateManInfo->flowLevel == 2) { // Low Flow
                gKarateManInfo->bg = 0;
                gKarateManInfo->bgPalIndex = karate_flow_palette_low;
                func_080221cc(); // Update BG Palette
                func_08002634(&s_f_boxing_score_down_seqData);
            }
        }
    }
}


// SUB - Update BG Palette 
void func_080221cc(void) {
    s8 paletteID;  // BG Palette Table byte
    u8 bg;         // Current BG
    u16 *palette4, *newPalette;
    u32 i;
    
    if (gKarateManInfo->version != KARATE_VER_SERIOUS) { // Don't update if in "Serious Mode"
        bg = gKarateManInfo->bg;
        paletteID = gKarateManInfo->bgPalIndex[bg];
        if (paletteID < 0) {
            bg = 0;
            paletteID = gKarateManInfo->bgPalIndex[0];
        }
        gKarateManInfo->bg = bg + 1;
        newPalette = D_03004b10.bgPalette[paletteID];
        palette4 = D_03004b10.bgPalette[4];
        for (i = 0; i < 4; i++) {
            palette4[i] = newPalette[i];
        }
    }
}


// SUB - Toggle Flow
void func_0802221c(u32 enable) {
    gKarateManInfo->flowEnabled = enable;
    func_0804d770(D_03005380, gKarateManInfo->flowSprite, enable);
}
