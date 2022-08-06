#include "src/engines/fireworks.h"

#include "src/code_08001360.h"
#include "src/code_08003980.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gFireworksInfo D_030055d0->gameInfo.fireworks


/* FIREWORKS */


// [func_0802f3a4] GFX_INIT Func_02
void func_0802f3a4(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_0802f3b4] GFX_INIT Func_01
void func_0802f3b4(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089e43d4[gFireworksInfo.version], 0x2000);
    func_08005d38(data, func_0802f3a4, 0);
}


// [func_0802f3f4] GFX_INIT Func_00
void func_0802f3f4(void) {
    u32 data;

    func_0800c604(0);
    data = func_080087b4(func_0800c3b8(), &D_089e4214);
    func_08005d38(data, func_0802f3b4, 0);
}


// [func_0802f420] MAIN - Init
void func_0802f420(u32 ver) {
    u8 i;
    u32 *textAnim;
    u32 temp;

    gFireworksInfo.version = ver;
    func_0802f3f4();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 0);
    gFireworksInfo.unk4 = func_0800c660(0x340, 2);
    textAnim = func_08004b98(gFireworksInfo.unk4, D_0805a3d0, 1, 15);
    gFireworksInfo.textSprite = func_0804d160(D_03005380, textAnim, 0, 120, 144, 0x7f7, 0, 0, 0);
    gFireworksInfo.unk90E = 0;
    gFireworksInfo.patternTableNext = 0;
    D_03004b10.unk4C = 0x82; // There are probably appropriate macros for this.
    D_03004b10.unk50 = 0;
    gFireworksInfo.skipTutorialSprite = func_0804d160(D_03005380, D_088e93bc, 0, 208, 152, 0x802, 0, 0, 0);
    func_0804d770(D_03005380, gFireworksInfo.skipTutorialSprite, 0);
    gFireworksInfo.patternMode = FIREWORKS_PATTERN_MODE_0;
    gFireworksInfo.patternDefault = FIREWORKS_PATTERN_L3;

    for (i = 0; i < 72; i++) {
        gFireworksInfo.particles[i].sprite = func_0804d160(D_03005380, D_088e8f64, 0, 0, 0, 0x801, 0, 0, 0);
        gFireworksInfo.particles[i].active = FALSE;
        func_0804d770(D_03005380, gFireworksInfo.particles[i].sprite, 0);
    }

    temp = func_0800a204((u16) func_0800c3b8(), 4, 240, 30);
    func_0800ac68(temp, 0, 8);
    func_0800aca0(temp, 0x7f7);
    func_0800acd8(temp, 0);
    func_0800acb0(temp, 0);
    func_0800acbc(temp, 0);
    func_08018630(temp);
    func_08017338(1, 0);
    func_08018078(1);
}


// [func_0802f5b8] ENGINE Func_00 - Set Pattern Mode
void func_0802f5b8(u32 mode) {
    gFireworksInfo.patternMode = mode;

    if (mode == FIREWORKS_PATTERN_MODE_USE_TABLE) {
        func_0804d770(D_03005380, gFireworksInfo.skipTutorialSprite, 0);
    }
}


// [func_0802f5f0] ENGINE Func_01 - Play Sound
void func_0802f5f0(u32 sound) {
    switch (sound) {
        case FIREWORKS_SFX_COME_ON:
            func_0800267c(2, &s_intro_comeon_seqData);
            break;
        case FIREWORKS_SFX_ONE:
            func_0800267c(2, &s_intro_one_seqData);
            break;
        case FIREWORKS_SFX_TWO:
            func_0800267c(2, &s_intro_two_seqData);
            break;
        case FIREWORKS_SFX_THREE:
            func_0800267c(2, &s_intro_three_seqData);
            break;
        case FIREWORKS_SFX_NUEI:
            func_08002634(&s_f_hanabi_v_nuei_seqData);
            break;
    }
}


// [func_0802f650] ENGINE Func_02 - Set Pattern
void func_0802f650(u32 pattern) {
    gFireworksInfo.patternDefault = pattern;
}


// [func_0802f664] Update Particles
void func_0802f664(void) {
    u8 i;

    for (i = 0; i < 72; i++) {
        if (gFireworksInfo.particles[i].active) {
            gFireworksInfo.particles[i].x += gFireworksInfo.particles[i].velX;
            gFireworksInfo.particles[i].velX -= gFireworksInfo.particles[i].velX / 32;
            gFireworksInfo.particles[i].y += gFireworksInfo.particles[i].velY;
            gFireworksInfo.particles[i].velY -= (gFireworksInfo.particles[i].velY / 32);
            gFireworksInfo.particles[i].velY += 6;
            func_0804d5d4(D_03005380, gFireworksInfo.particles[i].sprite, FIXED_TO_INT(gFireworksInfo.particles[i].x), FIXED_TO_INT(gFireworksInfo.particles[i].y));
            if ((s8) func_0804d6cc(D_03005380, gFireworksInfo.particles[i].sprite) >= D_0805a41c[gFireworksInfo.particles[i].colour]) {
                gFireworksInfo.particles[i].active = FALSE;
                func_0804d770(D_03005380, gFireworksInfo.particles[i].sprite, 0);
            }
        }
    }
}


// [func_0802f74c] Create Explosion
void func_0802f74c(u8 pattern, s32 x, s32 y) {
    u8 i;
    u8 colour;
    s32 min;
    u32 max;

    switch (pattern) {
        case FIREWORKS_PATTERN_L3:
            min = 0;
            max = 24;
            colour = func_08001980(6);
            break;
        case FIREWORKS_PATTERN_C3:
            min = 24;
            max = 48;
            colour = func_08001980(6);
            break;
        case FIREWORKS_PATTERN_R3:
            min = 48;
            max = 72;
            colour = func_08001980(6);
            break;
        case FIREWORKS_PATTERN_LL2:
            min = 0;
            max = 16;
            colour = func_08001980(3);
            break;
        case FIREWORKS_PATTERN_CL2:
            min = 16;
            max = 32;
            colour = func_08001980(3);
            break;
        case FIREWORKS_PATTERN_CR2:
            min = 32;
            max = 48;
            colour = func_08001980(3);
            break;
        case FIREWORKS_PATTERN_RR2:
            min = 48;
            max = 64;
            colour = func_08001980(3);
            break;
        case FIREWORKS_PATTERN_L3_BARELY:
        case FIREWORKS_PATTERN_LL2_BARELY:
            min = 0;
            max = 8;
            colour = func_08001980(3);
            break;
        case FIREWORKS_PATTERN_C3_BARELY:
        case FIREWORKS_PATTERN_CL2_BARELY:
            min = 16;
            max = 24;
            colour = func_08001980(3);
            break;
        case FIREWORKS_PATTERN_R3_BARELY:
            min = 40;
            max = 48;
            colour = func_08001980(3);
            break;
        case FIREWORKS_PATTERN_CR2_BARELY:
            min = 32;
            max = 40;
            colour = func_08001980(3);
            break;
        case FIREWORKS_PATTERN_RR2_BARELY:
            min = 48;
            max = 56;
            colour = func_08001980(3);
            break;
        case FIREWORKS_PATTERN_SP_STAR:
            min = 16;
            max = 40;
            colour = FIREWORKS_PARTICLE_MULTI;
            break;
        case FIREWORKS_PATTERN_SP_CIRCLE:
        default:
            min = 0;
            max = 32;
            colour = FIREWORKS_PARTICLE_MULTI;
            break;
        case FIREWORKS_PATTERN_SP_SPIRAL:
            min = 0;
            max = 32;
            colour = FIREWORKS_PARTICLE_MULTI;
            break;
        case FIREWORKS_PATTERN_SP_SMILE:
            min = 0;
            max = 24;
            colour = FIREWORKS_PARTICLE_MULTI;
            break;
        case FIREWORKS_PATTERN_SP_TSUNKU:
            min = 0;
            max = 31;
            colour = FIREWORKS_PARTICLE_MULTI;
            break;
    }

    for (i = min; i < max; i++) {
        if (pattern == FIREWORKS_PATTERN_SP_CIRCLE) {
            // Inner Circle [16 Particles]
            if (i < (min + 16)) {
                gFireworksInfo.particles[i].initAngle = (i - min) * 16;
                gFireworksInfo.particles[i].initVel = 240;
            }
            // Outer Circle [16 Particles]
            else {
                gFireworksInfo.particles[i].initAngle = ((i - min - 16) * 16) + 8;
                gFireworksInfo.particles[i].initVel = 480;
            }
        }

        else if (pattern == FIREWORKS_PATTERN_SP_SPIRAL) {
            // Inner Loop [16 Particles]
            if (i < (min + 16)) {
                gFireworksInfo.particles[i].initAngle = (i - min) * 16;
                gFireworksInfo.particles[i].initVel = ((i - min) * 16) + 160;
            }
            // Outer Loop [16 Particles]
            else {
                gFireworksInfo.particles[i].initAngle = (i - min - 16) * 16;
                gFireworksInfo.particles[i].initVel = ((i - min - 16) * 16) + 400;
            }
        }

        else if (pattern == FIREWORKS_PATTERN_SP_SMILE) {
            // Left Eye [8 Particles]
            if (i < (min + 8)) {
                gFireworksInfo.particles[i].initAngle = ((i - min) * 4) - 112;
                gFireworksInfo.particles[i].initVel = 720 - ((i - min) * 64);
            }
            // Right Eye [8 Particles]
            else if (i < (min + 16)) {
                gFireworksInfo.particles[i].initAngle = -16 - ((i - min - 8) * 4);
                gFireworksInfo.particles[i].initVel = 720 - ((i - min - 8) * 64);
            }
            // Mouth [8 Particles]
            else {
                gFireworksInfo.particles[i].initAngle = ((i - min - 16) * 16) + 8;
                gFireworksInfo.particles[i].initVel = 480;
            }
        }

        else if (pattern == FIREWORKS_PATTERN_SP_TSUNKU) {
            // This one just reads it from a table, lol.
            gFireworksInfo.particles[i].initAngle = D_0805a42c[i - min].initAngle;
            gFireworksInfo.particles[i].initVel = D_0805a42c[i - min].initVelocity;
        }

        else { // STANDARD FIREWORK PATTERN
            // Inner Circle [8 Particles]
            if (i < (min + 8)) {
                gFireworksInfo.particles[i].initAngle = (i - min) * 32;
                gFireworksInfo.particles[i].initVel = 240;
            }
            // Middle Circle [8 Particles]
            else if (i < (min + 16)) {
                gFireworksInfo.particles[i].initAngle = ((i - min - 8) * 32) + 16;
                gFireworksInfo.particles[i].initVel = 480;
            }
            // Outer Circle [8 Particles]
            else {
                gFireworksInfo.particles[i].initAngle = ((i - min - 16) * 32);
                gFireworksInfo.particles[i].initVel = 640;
            }
        }

        gFireworksInfo.particles[i].velX = gFireworksInfo.particles[i].initVel * coss2(gFireworksInfo.particles[i].initAngle) / 256;
        gFireworksInfo.particles[i].velY = gFireworksInfo.particles[i].initVel * sins2(gFireworksInfo.particles[i].initAngle) / 256;
        gFireworksInfo.particles[i].x = x + gFireworksInfo.particles[i].velX;
        gFireworksInfo.particles[i].y = y + gFireworksInfo.particles[i].velY;
        gFireworksInfo.particles[i].colour = colour;

        if (pattern <= 2) { // STANDARD FIREWORK PATTERN
            if (i < (min + 8)) {
                gFireworksInfo.particles[i].colour = D_0805a3d4[colour].inner;
            }
            else if (i < (min + 16)) {
                gFireworksInfo.particles[i].colour = D_0805a3d4[colour].middle;
            }
            else {
                gFireworksInfo.particles[i].colour = D_0805a3d4[colour].outer;
            }
        }

        gFireworksInfo.particles[i].active = TRUE;
        func_0804d770(D_03005380, gFireworksInfo.particles[i].sprite, 1);
        func_0804d5d4(D_03005380, gFireworksInfo.particles[i].sprite, FIXED_TO_INT(gFireworksInfo.particles[i].x), FIXED_TO_INT(gFireworksInfo.particles[i].y));

        if (gFireworksInfo.particles[i].colour == FIREWORKS_PARTICLE_RED) {
            func_0804d8f8(D_03005380, gFireworksInfo.particles[i].sprite, D_088e8f64, 0, 1, 127, 0);
        }
        else if (gFireworksInfo.particles[i].colour == FIREWORKS_PARTICLE_GREEN) {
            func_0804d8f8(D_03005380, gFireworksInfo.particles[i].sprite, D_088e8fb4, 0, 1, 127, 0);
        }
        else if (gFireworksInfo.particles[i].colour == FIREWORKS_PARTICLE_BLUE) {
            func_0804d8f8(D_03005380, gFireworksInfo.particles[i].sprite, D_088e905c, 0, 1, 127, 0);
        }
        else {
            func_0804d8f8(D_03005380, gFireworksInfo.particles[i].sprite, D_088e92dc, 0, 1, 127, 0);
        }
    }
}


// [func_0802fc38] MAIN - Update
void func_0802fc38(void) {
    func_0802f664();
    if (gFireworksInfo.unk90E != 0) {
        gFireworksInfo.unk90E--;
        D_03004b10.unk50 = gFireworksInfo.unk90E;
    }
}


// [func_0802fc6c] MAIN - Close (STUB)
void func_0802fc6c(void) {
}


// [func_0802fc70] CUE - Spawn
void func_0802fc70(u32 arg0, struct FireworksCue *cue, u32 type, u32 arg3) {
    u8 i;
    u16 accum;

    cue->type = type;
    cue->state = 0;
    cue->exploded = FALSE;

    switch (gFireworksInfo.patternMode) {
        case FIREWORKS_PATTERN_MODE_0:
            cue->pattern = FIREWORKS_PATTERN_C3;
            break;
        case FIREWORKS_PATTERN_MODE_1:
            cue->pattern = FIREWORKS_PATTERN_C3;
            break;
        case FIREWORKS_PATTERN_MODE_TAIKO_BOMBER:
            cue->pattern = FIREWORKS_PATTERN_TAIKO_BOMBER;
            break;
        case FIREWORKS_PATTERN_MODE_USE_TABLE:
            cue->pattern = D_0805a524[gFireworksInfo.patternTableNext];
            if (gFireworksInfo.patternTableNext < 42) gFireworksInfo.patternTableNext++;
            break;
        default: // Use pattern set by ENGINE Func_02
            cue->pattern = gFireworksInfo.patternDefault;
            break;
    }

    switch (cue->pattern) {
        case FIREWORKS_PATTERN_L3:
            cue->targetX = INT_TO_FIXED(60);
            cue->targetY = INT_TO_FIXED(48) + (func_08001980(5) << 11);
            break;
        case FIREWORKS_PATTERN_C3:
            cue->targetX = INT_TO_FIXED(120);
            cue->targetY = INT_TO_FIXED(48) + (func_08001980(5) << 11);
            break;
        case FIREWORKS_PATTERN_R3:
            cue->targetX = INT_TO_FIXED(180);
            cue->targetY = INT_TO_FIXED(48) + (func_08001980(5) << 11);
            break;
        case FIREWORKS_PATTERN_LL2:
            cue->targetX = INT_TO_FIXED(30);
            cue->targetY = INT_TO_FIXED(48) + (func_08001980(5) << 11);
            break;
        case FIREWORKS_PATTERN_CL2:
            cue->targetX = INT_TO_FIXED(90);
            cue->targetY = INT_TO_FIXED(48) + (func_08001980(5) << 11);
            break;
        case FIREWORKS_PATTERN_CR2:
            cue->targetX = INT_TO_FIXED(150);
            cue->targetY = INT_TO_FIXED(48) + (func_08001980(5) << 11);
            break;
        case FIREWORKS_PATTERN_RR2:
            cue->targetX = INT_TO_FIXED(210);
            cue->targetY = INT_TO_FIXED(48) + (func_08001980(5) << 11);
            break;
        case FIREWORKS_PATTERN_TAIKO_BOMBER:
            cue->targetX = INT_TO_FIXED(120);
            cue->targetY = INT_TO_FIXED(80);
        default:
            cue->targetX = INT_TO_FIXED(120);
            cue->targetY = INT_TO_FIXED(64);
    }

    switch (cue->type) {
        case FIREWORKS_CUE_TYPE_SPIRIT_SPARKLER:
            cue->x = cue->targetX;
            cue->velX = 0;
            cue->y = INT_TO_FIXED(160);
            cue->velY = (cue->targetY - cue->y) / func_0800c3a4(0x18);
            cue->sprite = func_0804d160(D_03005380, D_088e93ec, 0, FIXED_TO_INT(cue->x), FIXED_TO_INT(cue->y), 0x801, 1, 0, 0);
            break;

        case FIREWORKS_CUE_TYPE_NORMAL_FIREWORK:
            cue->x = cue->targetX;
            cue->velX = 0;
            cue->y = INT_TO_FIXED(160);
            cue->velY = (cue->targetY - cue->y) / func_0800c3a4(0x48);
            cue->sprite = func_0804d160(D_03005380, D_088e940c, 0, FIXED_TO_INT(cue->x), FIXED_TO_INT(cue->y), 0x801, 1, 0, 0);
            func_08002634(&s_hanabi_hyu_seqData);
            break;

        case FIREWORKS_CUE_TYPE_HAWFINCH_TAIKO_BOMBER:
            cue->velX = INT_TO_FIXED(2);
            cue->velY = -(func_0800c3a4(0x30) * 64);
            cue->x = cue->targetX - (func_0800c3a4(0x30) * cue->velX);
            accum = 0;
            for (i = 0; i < (s32) func_0800c3a4(0x30); i++) {
                accum += i;
            }
            cue->y = cue->targetY - (func_0800c3a4(0x30) * cue->velY) - (accum * 64);
            cue->sprite = func_0804d160(D_03005380, D_088e90ac, 0, FIXED_TO_INT(cue->x), FIXED_TO_INT(cue->y), 0x801, 0, 0, 0);
            func_08002634(&s_f_hanabi_v_tamaya_seqData);
            break;
    }
}


// [func_0802ff70] CUE - Update
u32 func_0802ff70(u32 arg0, struct FireworksCue *cue, u32 arg2, u32 arg3) {
    switch (cue->type) {
        case FIREWORKS_CUE_TYPE_SPIRIT_SPARKLER:
            cue->y += cue->velY;
            func_0804d648(D_03005380, cue->sprite, FIXED_TO_INT(cue->y));
            if (cue->state == 0) {
                if (arg2 > func_0800c3a4(7)) {
                    cue->state = 1;
                    func_0804d8f8(D_03005380, cue->sprite, D_088e93cc, 0, 1, 0, 0);
                }
            } else if (cue->state == 1) {
                if (arg2 > func_0800c3a4(0x13)) {
                    cue->state = 2;
                    func_0804d8f8(D_03005380, cue->sprite, D_088e8f14, 0, 1, 0, 0);
                }
            }
            break;

        case FIREWORKS_CUE_TYPE_NORMAL_FIREWORK:
            cue->y += cue->velY;
            func_0804d648(D_03005380, cue->sprite, FIXED_TO_INT(cue->y));
            switch (cue->state) {
                case 0:
                    if (arg2 > func_0800c3a4(0x13)) {
                        cue->state = 1;
                        func_0804d8f8(D_03005380, cue->sprite, D_088e93ec, 0, 1, 0, 0);
                    }
                    break;
                case 1:
                    if (arg2 > func_0800c3a4(0x2b)) {
                        cue->state = 2;
                        func_0804d8f8(D_03005380, cue->sprite, D_088e93cc, 0, 1, 0, 0);
                    }
                    break;
                case 2:
                    if (arg2 > func_0800c3a4(0x43)) {
                        cue->state = 3;
                        func_0804d8f8(D_03005380, cue->sprite, D_088e8f14, 0, 1, 0, 0);
                    }
                    break;
            }
            break;

        case FIREWORKS_CUE_TYPE_HAWFINCH_TAIKO_BOMBER:
            if (cue->state == 0) {
                cue->x += cue->velX;
                cue->y += cue->velY;
                cue->velY += INT_TO_FIXED(0.25);
                func_0804d5d4(D_03005380, cue->sprite, FIXED_TO_INT(cue->x), FIXED_TO_INT(cue->y));
            }
            break;
    }

    if (arg2 > func_0800c3a4(D_089e43e8[cue->type])) {
        if (!cue->exploded) {
            func_08002698(&s_hanabi_ah_seqData, 48, 0);
        }
        return TRUE;
    }

    return FALSE;
}


// [func_08030114] CUE - Despawn
void func_08030114(u32 arg0, struct FireworksCue *cue, u32 arg2, u32 arg3) {
    func_0804d504(D_03005380, cue->sprite);
}


// [func_0803012c] CUE - Hit
void func_0803012c(u32 arg0, struct FireworksCue *cue, u32 arg2, u32 arg3) {
    cue->exploded = TRUE;

    if (cue->pattern == FIREWORKS_PATTERN_TAIKO_BOMBER) {
        cue->state = 1;
        func_0804d8f8(D_03005380, cue->sprite, D_088e90c4, 0, 1, 127, 0);
        gFireworksInfo.unk90E = 0x10;
    }
    else {
        func_0804d8f8(D_03005380, cue->sprite, D_088e8f34, 0, 1, 127, 0);
        func_0802f74c(cue->pattern, cue->targetX, cue->targetY);
    }

    if ((gFireworksInfo.patternTableNext == 19) || (gFireworksInfo.patternTableNext == 42)) {
        func_08002634(&s_f_hanabi_kansei_seqData);
    }
}


// [func_080301d0] CUE - Barely
void func_080301d0(u32 arg0, struct FireworksCue *cue, u32 arg2, u32 arg3) {
    u32 pattern;

    cue->exploded = TRUE;

    if (cue->pattern == FIREWORKS_PATTERN_TAIKO_BOMBER) {
        cue->state = 1;
        func_0804d8f8(D_03005380, cue->sprite, D_088e90c4, 0, 1, 127, 0);
    }
    else {
        func_0804d8f8(D_03005380, cue->sprite, D_088e8f34, 0, 1, 127, 0);
        switch (cue->pattern) {
            case FIREWORKS_PATTERN_L3:
                pattern = FIREWORKS_PATTERN_L3_BARELY;
                break;
            case FIREWORKS_PATTERN_R3:
                pattern = FIREWORKS_PATTERN_R3_BARELY;
                break;
            case FIREWORKS_PATTERN_LL2:
                pattern = FIREWORKS_PATTERN_LL2_BARELY;
                break;
            case FIREWORKS_PATTERN_CL2:
                pattern = FIREWORKS_PATTERN_CL2_BARELY;
                break;
            case FIREWORKS_PATTERN_CR2:
                pattern = FIREWORKS_PATTERN_CR2_BARELY;
                break;
            case FIREWORKS_PATTERN_RR2:
                pattern = FIREWORKS_PATTERN_RR2_BARELY;
                break;
            default:
                pattern = FIREWORKS_PATTERN_C3_BARELY;
        }
        func_0802f74c(pattern, cue->targetX, cue->targetY);
    }

    func_0800bc40();
}


// [func_08030288] CUE - Miss
void func_08030288(u32 arg0, struct FireworksCue *cue, u32 arg2, u32 arg3) {
    func_0800bc40();
}


// [func_08030294] MAIN - Input Event (STUB)
void func_08030294(void) {
}


// [func_08030298] COMMON Func_00 - STUB
void func_08030298(void) {
}


// [func_0803029c] COMMON Func_01 - Display Text
void func_0803029c(char *text) {
    u32 *textAnim;

    if (text == NULL) {
        func_0804d770(D_03005380, gFireworksInfo.textSprite, 0);
    } else {
        textAnim = func_08004b98(gFireworksInfo.unk4, text, 1, 12);
        func_08007b04(gFireworksInfo.unk4, gFireworksInfo.textSprite);
        func_0804d8f8(D_03005380, gFireworksInfo.textSprite, textAnim, 0, 1, 0, 0);
        func_0804d770(D_03005380, gFireworksInfo.textSprite, 1);
    }
}


// [func_0803031c] COMMON Func_02 - Set Tutorial Mode?
void func_0803031c(u32 arg) {
    if (arg) {
        func_08017448(1);
        func_08017458(arg);
        func_0804d770(D_03005380, gFireworksInfo.skipTutorialSprite, 1);
    } else {
        func_08017448(0);
        func_0804d770(D_03005380, gFireworksInfo.skipTutorialSprite, 0);
    }
}
