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
	karate_update_bg_palette();
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
    karate_joe_init(&gKarateManInfo->joe);
    gKarateManInfo->useTheFace = FALSE;
    karate_init_flow();
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
    gKarateManInfo->tutorialCounter = 0;
    func_08017338(A_BUTTON, 0);

    // Initialise BG Face.
    if (gKarateManInfo->version != KARATE_VER_0) {
        if (gKarateManInfo->version == KARATE_VER_FACES) {
            gKarateManInfo->bgFace = 0;
        }
    }
}


// Set the BG Face
void karate_set_bg_face(u32 bgFace, u32 duration) {
    func_08003eb8(karate_bg_face_textures[bgFace], VRAMBase + 0x8000);
    func_0800e030(0);
    gKarateManInfo->bgFace = func_0800c3a4(duration + 1);
}


// ENGINE Func_00 - Reset BG Face?
void karate_reset_bg_face(u32 duration) {
	karate_set_bg_face(0, duration);
}


// Decrement BG Face Counter
void karate_update_bg_face(void) {
   if (gKarateManInfo->bgFace) {
       gKarateManInfo->bgFace--;
       if (!gKarateManInfo->bgFace) {
           func_0800e044(0);
       }
   }
}


// ENGINE Func_01 - Start "Serious Mode"
void karate_start_serious_mode_next_hit(void) {
    if (gKarateManInfo->version == KARATE_VER_0) {
        gKarateManInfo->seriousModeStarted = TRUE;
    }
}


// ENGINE Func_02 - End "Serious Mode"
void karate_stop_serious_mode_next_hit(void) {
    if (gKarateManInfo->version == KARATE_VER_SERIOUS) {
        gKarateManInfo->seriousModeStopped = TRUE;
    }
}


// ENGINE Func_03 - Show Text
void karate_tutorial_display_text(char *text) {
	func_0800aa4c(gKarateManInfo->unk24, text);

}


// ENGINE Func_04 - Wait for Input (Tutorial)
void karate_tutorial_wait_for_input(void) {
    func_0804cebc(D_03005380, gKarateManInfo->textButtonSprite, 0);
    func_0804d770(D_03005380, gKarateManInfo->textButtonSprite, TRUE);
    func_08017338(0, 0);
    func_0800bd04(TRUE);
    gKarateManInfo->awaitingInput = TRUE;
}


// COMMON Func_03 - Set Tutorial Destination Scene
void karate_common_init_tutorial(const struct Scene *scene) {
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
void karate_tutorial_loop_start(u32 inputs) {
    gKarateManInfo->tutorialCounter = inputs;
    if (inputs) {
        func_0804d770(D_03005380, gKarateManInfo->tutorialText, TRUE);
        func_0804cebc(D_03005380, gKarateManInfo->tutorialText, inputs);
    } else {
        func_0804d770(D_03005380, gKarateManInfo->tutorialText, FALSE);
    }
}


// ENGINE Func_07 - Unknown (Tutorial Related)
void karate_tutorial_loop_end(void) {
    if (gKarateManInfo->tutorialCounter != 0) {
        func_0800bc40();
    } else {
        func_0800bce4();
    }
}

// ENGINE Func_08 - Set Expression
void karate_use_the_face(u8 use) {
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
    karate_joe_update(&gKarateManInfo->joe);
    if (gKarateManInfo->version) {
        if (gKarateManInfo->version == KARATE_VER_FACES) { // Decrement BG Face if version is BG Face
            karate_update_bg_face();
        }
    }

    // Update text.
    func_0800a914(gKarateManInfo->unk24);
}


// MAIN - Close
void karate_engine_stop(void) {
    karate_joe_delete(&gKarateManInfo->joe);
    func_0804d504(D_03005380, gKarateManInfo->cueTextSprite);
    func_0804d504(D_03005380, gKarateManInfo->flowSprite);
    func_0800e044(0);
    func_0800e044(1);
}


// ???
void karate_cue_increment_z_for_existing_objects(struct Cue *targetCue) {
    struct Cue *cue;
    struct KarateManCue *data;

    func_08018124(&cue, &data);
    while (cue != NULL) {
        if (cue != targetCue) {
            data->unk2E++;
        }
        func_08018138(cue, &cue, &data);
    }
}


// CUE - Spawn
void karate_cue_spawn(struct Cue *cue, struct KarateManCue *data, u32 type) {
    data->isHit = FALSE;
    data->unk8 = func_0800c42c();
    data->sprite = func_0804d160(D_03005380, karate_anim_object, 0, 156, 52, 0x4800, 0, 0, 0);
    func_08007468(data->sprite, data->unk8);
    data->unk9 = func_0800c42c();
    data->shadow = func_0804d160(D_03005380, karate_anim_object_shadow, 0, 156, 133, 0x4a00, 0, 0, 0);
    func_08007468(data->shadow, data->unk9);
    data->unk1C = 0;
    data->unk18 = 0;
    data->unk24 = 0;
    data->unk20 = 0;
    data->unk28 = 0;
    data->unk2E = 0;
    data->unk2D = 0;
    data->unk2C = 0;
    data->miss = 0;
    data->type = type;
    func_0804d8f8(D_03005380, data->sprite, karate_anim_object, type, 0, 0, 0);
    karate_cue_increment_z_for_existing_objects(cue);
}


// Update Object Entity
void karate_cue_update_object(struct KarateManCue *cue) {
    s24_8 x, y;

    if (cue->unk28 < 0x80) { // Some distance check
        func_0804d770(D_03005380, cue->sprite, FALSE);
        func_0804d770(D_03005380, cue->shadow, FALSE);
    }

    x = cue->unkC;
    y = cue->unk10;
    func_0804d55c(D_03005380, cue->sprite, FIXED_TO_INT(x), FIXED_TO_INT(y), (0x4700 + cue->unk28 + cue->unk2E));
    func_0804d5d4(D_03005380, cue->shadow, FIXED_TO_INT(x), cue->unk14);
    func_08007498(cue->unk8, cue->unk2A, cue->unk2C);
    func_08007498(cue->unk9, cue->unk2A, 0);
    func_0804d770(D_03005380, cue->sprite, TRUE);
    func_0804d770(D_03005380, cue->shadow, TRUE);
}


// Update Hit Object
void karate_cue_update_punched_object(struct KarateManCue *cue) {
    cue->unk18 += cue->unk20;
    cue->unk1C += cue->unk24;
    cue->unkC += cue->unk18;
    cue->unk10 += cue->unk1C;
    cue->unk2C += cue->unk2D;
}


// Update Not Hit Object
void karate_cue_update_launched_object(struct KarateManCue *cue) {
    s32 temparg = cue->unk28; // Distance?
    s32 temp;
    s32 temp1;
    s32 temp2;
    s32 temp3; // s24_8
    s32 temp4; // s24_8

    // Calculate the Y position
    temp = temparg - 0x100;
    temp1 = 81;
    temp1 -= FIXED_TO_INT(FIXED_TO_INT(temp * temp1 * temp));
    temp2 = 53 - temp1;

    temp3 = fast_divsi3(INT_TO_FIXED(36.0), temparg) + SCREEN_CENTER_X;    // Object's X Position
    temp4 = fast_divsi3(INT_TO_FIXED(temp2), temparg) + SCREEN_CENTER_Y; // Object's Y Position
    cue->unkC = INT_TO_FIXED(temp3);
    cue->unk10 = INT_TO_FIXED(temp4);
    cue->unk14 = fast_divsi3(INT_TO_FIXED(53.0), temparg) + SCREEN_CENTER_Y;
    cue->unk2A = Div(INT_TO_FIXED(256.0), temparg);  // Calculate Scale
}


// CUE - Update
u32 karate_cue_update(struct Cue *cue, struct KarateManCue *data, u32 runningTime, u32 duration) {
    struct KarateJoe *joe = &gKarateManInfo->joe;
    u16 temp;
    u32 zero;

    if (runningTime > func_0800c3a4(0x78)) {
        return TRUE; // Cue is over
    }

    zero = 0;
    switch (data->isHit) {
        case FALSE: // Object wasn't hit
            temp = data->unk28 = Div(INT_TO_FIXED(runningTime), duration);
            if (temp > 0x200) { // Object is on the floor
                data->isHit = TRUE;
                data->unk2C += func_08001980(16);
                karate_reset_flow(); // Reset Flow
                func_08002634(&s_f_boxing_land_seqData);
                return FALSE;
            }
            if (temp > 0x180) { // Object is out of player's range
                if ((s16)data->miss <= 0) {
                    data->miss = TRUE;
                    joe->miss = func_0800c3a4(0x24);
                }
            }
            karate_cue_update_launched_object(data);
            karate_cue_update_object(data);
            break;

        case TRUE: // Object was hit
            karate_cue_update_punched_object(data);
            if (FIXED_TO_INT(data->unkC) > 0x110) {
                return TRUE;
            }

            if (FIXED_TO_INT(data->unk10) > data->unk14) {
                data->unk10 = INT_TO_FIXED(data->unk14);
                data->unk18 = 0;
                data->unk1C = 0;
                data->unk24 = 0;
                data->unk2D = 0;
            }
            karate_cue_update_object(data);
    }

    return zero;
}


// CUE - Despawn 
void karate_cue_despawn(struct Cue *cue, struct KarateManCue *data) {
    func_0804d504(D_03005380, data->sprite);
    func_0804d504(D_03005380, data->shadow);
    func_080021b8(data->unk8);
    func_080021b8(data->unk9);
}


// Enter "Serious Mode"
void karate_start_serious_mode(void) {
    gKarateManInfo->seriousModeStarted = FALSE;
    func_0804d8c4(D_03005380, gKarateManInfo->joe.sprite, KARATE_PALETTE_SERIOUS);
    func_0800e030(0);
    func_0800e044(1);
    func_0804d770(D_03005380, gKarateManInfo->flowSprite, FALSE);
    gKarateManInfo->version = KARATE_VER_SERIOUS;
    func_0800c128(0);
    func_0800c138(0x100, func_0800c3a4(0x60));
}


// Stop "Serious Mode"
void karate_stop_serious_mode(void) {
    gKarateManInfo->seriousModeStopped = FALSE;
    func_0804d8c4(D_03005380, gKarateManInfo->joe.sprite, KARATE_PALETTE_NORMAL);
    func_0800e044(0);
    func_0800e030(1);
    func_0804d770(D_03005380, gKarateManInfo->flowSprite, TRUE);
    gKarateManInfo->version = KARATE_VER_0;
    karate_update_bg_palette();
    func_080173c4(FALSE); // Disable inputs
}


// CUE - Hit
void karate_cue_hit(struct Cue *cue, struct KarateManCue *data) {
    struct KarateManInfo *karateManStruct = gKarateManInfo;
    struct KarateJoe *joe = &karateManStruct->joe;
    const struct Animation *anim;
    u32 bgFace;
    u32 isBgFaceVer;
    u32 isHigh;
    u32 useTheFace;
    u32 isHighBgFace = 0;

    isBgFaceVer = (karateManStruct->version == KARATE_VER_FACES);
    isHigh = FALSE;
    data->isHit = TRUE;

    // "Serious Mode"
    if (gKarateManInfo->seriousModeStarted) {
        karate_start_serious_mode();
    }

    if (gKarateManInfo->seriousModeStopped) {
        karate_stop_serious_mode();
    }
    
    // Check if Flow is more than 2 or if Version is 2 ("Serious Mode")
    if ((gKarateManInfo->flowLevel > 2)) {
        isHigh = TRUE;
    }

    if (gKarateManInfo->version == KARATE_VER_SERIOUS) {
        isHigh = TRUE;
    }

    if (!isHigh) {
        // Low Flow
        switch (data->type) {
            case 1:
            case 3: // Rock, Bomb 
                data->unk18 = 0;
                data->unk1C = 0;
                data->unk24 = 0x20;
                data->unk2C = 0xa;
                data->unk2D = 0;
                karateManStruct->joe.isNotBeat = TRUE;
                func_0804d8f8(D_03005380, joe->sprite, karate_anim_joe_punch_ouch, 0, 1, 0x7f, 0);
                if (isBgFaceVer) {
                    func_08002634(func_080180a0(cue));
                } else {
                    func_08002634(&s_f_boxing_hard_seqData);
                }
                func_08018068();
                func_08017928(func_080180bc(cue), 1, func_08018054());
                karate_decrement_flow();
                isHighBgFace = TRUE;
                break;

            default: // Pot, Soccerball, Lightbulb
                data->unk18 = 0x400;
                data->unk1C = -0x200;
                data->unk24 = 0x40;
                data->unk2D = -6;
                useTheFace = gKarateManInfo->useTheFace;
                anim = karate_anim_joe_punch_low;
                if (useTheFace) {
                    anim = karate_anim_joe_smug_low;
                }
                karateManStruct->joe.isNotBeat = TRUE;
                func_0804d8f8(D_03005380, joe->sprite, anim, 0, 1, 0x7f, 0);
                func_0804d160(D_03005380, karate_anim_hit_effect, 0, 0x9e, 0x36, 0x4f00, 1, 0, 3);
                if (!isBgFaceVer) {
                    func_0801808c(cue, &s_f_boxing_normal_seqData);
                }
                karate_increment_flow(); // Increment Flow
                break;
        }
    } else {
        // High Flow
        data->unk18 = 0x800;
        data->unk1C = -0x200;
        data->unk2D = -0x10;
        useTheFace = gKarateManInfo->useTheFace;
        anim = karate_anim_joe_punch_high;
        if (useTheFace) {
            anim = karate_anim_joe_smug_high;
        }
        karateManStruct->joe.isNotBeat = TRUE;
        func_0804d8f8(D_03005380, joe->sprite, anim, 0, 1, 0x7f, 0);
        func_0804d160(D_03005380, karate_anim_hit_effect, 0, 0x9e, 0x36, 0x4f00, 1, 0, 3);
        switch (data->type) {
            case 1: // Rock
                joe->smirk = func_0800c3a4(0x24);
                func_08002634(&s_f_boxing_kansei_seqData);
                break;
            case 3: // Bomb
                joe->happy = func_0800c3a4(0x6c);
                break;
        }
        if (gKarateManInfo->version == KARATE_VER_SERIOUS) { // BG Flash ("Serious Mode" version)
            func_08001fe0((u16)func_0800c3b8(), 0x0A, 1, karate_man_pal[6], karate_man_pal[5], BG_PALETTE_BUFFER(4));
        }
        karate_increment_flow(); // Increment Flow
    }

    // BG Face
    if (isBgFaceVer) {
        bgFace = 1;
        if (isHighBgFace) {
            bgFace = 2;
        }
        karate_set_bg_face(bgFace, 0x30);
    }

    // Tutorial
    if (gKarateManInfo->tutorialCounter) {
        gKarateManInfo->tutorialCounter--;
        func_0804cebc(D_03005380, gKarateManInfo->tutorialText, (s8)gKarateManInfo->tutorialCounter);
    }
}


// CUE - Barely
void karate_cue_barely(struct Cue *cue, struct KarateManCue *data) {
    u32 isBgFaceVer;
    struct KarateJoe *joe = &gKarateManInfo->joe;

    isBgFaceVer = gKarateManInfo->version == 1;
    data->isHit = 1;
    data->unk18 = 0x40;
    data->unk1C = -0x200;
    data->unk24 = 0x20;
    data->unk2D = 4;
    joe->isNotBeat = TRUE;
    func_0804d8f8(D_03005380, joe->sprite, karate_anim_joe_punch_high, 0, 1, 0x7f, 0);
    joe->barely = func_0800c3a4(0x24);
    karate_decrement_flow(); // Decrement Flow

    // BG Face
    if (isBgFaceVer) {
        karate_set_bg_face(2, 0x30);
    }
    func_0800bc40();
}


// CUE - Miss
void karate_cue_miss(struct Cue *cue, struct KarateManCue *data) {
	func_0800bc40();
}


// Initialise Joe
void karate_joe_init(struct KarateJoe *joe) {
    joe->isNotBeat = FALSE;
    joe->sprite = func_0804d160(D_03005380, karate_anim_joe_test, 0, 0x50, 0x58, 0x4800, 1, 0, 0);
    if (gKarateManInfo->version == 2) { // "Serious Mode"
        func_0804d8c4(D_03005380, joe->sprite, 1);
    }
    joe->barely = 0;
    joe->miss = 0;
    joe->smirk = 0;
    joe->happy = 0;
}


// Unload Joe
void karate_joe_delete(struct KarateJoe *joe) {
	func_0804d504(D_03005380, joe->sprite);
}


// Update Joe
void karate_joe_update(struct KarateJoe *joe) {
    if (joe->barely) joe->barely--;
    if (joe->miss) joe->miss--;
    if (joe->smirk) joe->smirk--;
    if (joe->happy) joe->happy--;
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
void karate_common_beat_animation(void) {
    struct KarateManInfo *karateManStruct = gKarateManInfo;
    struct KarateJoe *joe = &karateManStruct->joe;
    u32 temp;
    s8 currentEntity;
    
    karate_update_bg_palette();
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
void karate_common_display_text(u32 id) {
    func_0804d770(D_03005380, gKarateManInfo->cueTextSprite, id != 0);
    if (id != 0) {
        func_0804cebc(D_03005380, gKarateManInfo->cueTextSprite, id - 1);
    }
}


// Initialise Flow
void karate_init_flow(void) {
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
void karate_reset_flow(void) {
    if (gKarateManInfo->flowLevel > 2) {
        func_08002634(&s_f_boxing_score_reset_seqData);
    }
    gKarateManInfo->flowLevel = 0;
    func_0804cebc(D_03005380, gKarateManInfo->flowSprite, gKarateManInfo->flowLevel);
    gKarateManInfo->bg = 0;
    gKarateManInfo->bgPalIndex = karate_flow_palette_low;
    karate_update_bg_palette();
}


// Increment Flow
void karate_increment_flow(void) {
    if (gKarateManInfo->flowEnabled) {
        if (gKarateManInfo->flowLevel < 5) { // Flow can't go higher than 5
            gKarateManInfo->flowLevel++;
            func_0804cebc(D_03005380, gKarateManInfo->flowSprite, gKarateManInfo->flowLevel);
            if (gKarateManInfo->flowLevel == 3) { // High Flow
                gKarateManInfo->bg = 0;
                gKarateManInfo->bgPalIndex = karate_flow_palette_high;
                karate_update_bg_palette(); // Update BG Palette
                func_08002634(&s_f_boxing_score_up_seqData);
            }
        }
    }
}


// SUB - Decrement Flow
void karate_decrement_flow(void) {
    if (gKarateManInfo->flowEnabled) {
        if (gKarateManInfo->flowLevel) { // Flow can't go lower than 0
            gKarateManInfo->flowLevel--;
            func_0804cebc(D_03005380, gKarateManInfo->flowSprite, gKarateManInfo->flowLevel);
            if (gKarateManInfo->flowLevel == 2) { // Low Flow
                gKarateManInfo->bg = 0;
                gKarateManInfo->bgPalIndex = karate_flow_palette_low;
                karate_update_bg_palette(); // Update BG Palette
                func_08002634(&s_f_boxing_score_down_seqData);
            }
        }
    }
}


// SUB - Update BG Palette 
void karate_update_bg_palette(void) {
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
        newPalette = BG_PALETTE_BUFFER(paletteID);
        palette4 = BG_PALETTE_BUFFER(4);
        for (i = 0; i < 4; i++) {
            palette4[i] = newPalette[i];
        }
    }
}


// SUB - Toggle Flow
void karate_enable_flow(u32 enable) {
    gKarateManInfo->flowEnabled = enable;
    func_0804d770(D_03005380, gKarateManInfo->flowSprite, enable);
}
