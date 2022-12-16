#include "global.h"
#include "code_0800b778.h"
#include "code_08001360.h"
#include "code_08003980.h"
#include "memory_heap.h"
#include "code_08007468.h"
#include "src/lib_08049144.h"
#include "src/lib_0804c870.h"

// Could use better split

asm(".include \"include/gba.inc\"");//Temporary

static s32 D_03001310[2]; // unknown type


/* Main Game Handler */


// BeatScript Engine Init.
void func_0800b778(u32 memID) {
    u32 i;

    D_030053c0.memID = memID;
    D_030053c0.bypassLoops = FALSE;
    D_030053c0.exitLoopNextUpdate = FALSE;
    D_030053c0.paused = FALSE;
    D_030053c0.musicPlayer = NULL;
    D_030053c0.unk0_b7 = FALSE;
    D_030053c0.unk0_b6 = FALSE;
    D_030053c0.unk1C = 2;
    D_030053c0.scriptBaseBPM = 120;
    D_030053c0.musicBaseBPM = 120;
    D_030053c0.scriptSpeed = INT_TO_FIXED(1.0);
    func_0800bdf8(120);
    D_030053c0.musicPitchSrc2 = 0;
    func_0800c088(INT_TO_FIXED(0.0));
    D_030053c0.musicVolume = INT_TO_FIXED(1.0);
    D_030053c0.musicTrkVolume = INT_TO_FIXED(1.0);
    D_030053c0.musicTrkTargets = 0;
    D_030053c0.musicPitchEnv = 0;

    for (i = 0; i < 2; i++) {
        D_030053c0.threads[i].active = FALSE;
    }

    func_0800e948();
    func_0800eb0c();
    func_0800ec20();
    D_030053c0.unk2_b1 = TRUE;
    D_030053c0.unk1C0 = NULL;
    D_030053c0.unk1C4 = 0;
}


// Set SubScenes
void func_0800b834(const struct SubScene **subScenes) {
    struct BeatScriptThread *thread;
    u32 i;

    D_030053c0.paused = FALSE;
    D_030053c0.bypassLoops = FALSE;
    D_030053c0.exitLoopNextUpdate = FALSE;
    D_030053c0.unk18 = 0;

    for (i = 0; i < 2; i++) {
        D_030053c0.threads[i].active = FALSE;
        D_030053c0.threads[i].unk0_b7 = FALSE;
    }

    for (i = 0; (i < 2) && (subScenes[i] != NULL); i++) {
        D_030053c0.currentThread = i;
        func_0800c3c4(D_030053c0.currentThread + 1);
        D_030053c0.threads[i].active = TRUE;
        D_030053c0.threads[i].subScene = subScenes[i];
        D_030053c0.threads[i].current = subScenes[i]->script;
        D_030053c0.threads[i].timeUntilNext = 0;
        D_030053c0.threads[i].stackCounter = 0;
        D_03005588 = &D_030053c0.unk160[i];
        D_0300558c = D_030053c0.threads[i].sprites;
        if ((D_030053c0.memID == 1) && (i == 1)) {
            D_030053c0.threads[1].startDelay = 2;
        } else {
            if (subScenes[i]->initFunc != NULL) {
                subScenes[i]->initFunc(&D_030053c0.unk160[i], subScenes[i]->initParam);
            }
            D_030053c0.threads[i].startDelay = 0;
        }
    }
}


// ? (called each loop after the pause menu has been opened at least once, probably by accident)
void func_0800b974(void) {
    const struct SubScene *subScene;
    u32 i;

    for (i = 0; i < 2; i++) {
        D_030053c0.currentThread = i;
        func_0800c3c4(D_030053c0.currentThread + 1);

        if (D_030053c0.threads[i].active) {
            if (D_030053c0.threads[i].startDelay == 0) {
                D_03005588 = &D_030053c0.unk160[i];
                D_0300558c = D_030053c0.threads[i].sprites;
                subScene = D_030053c0.threads[i].subScene;
                if (subScene->unkFunc != NULL) {
                    subScene->unkFunc(&D_030053c0.unk160[i], subScene->unkParam);
                }
            }
        }
    }
}


// BeatScript Engine Update
void func_0800b9fc(void) {
    struct BeatScriptThread *thread;
    const struct SubScene *subScene;
    void (*subSceneFunc)();
    u32 isId1;
    u32 i, i2;

    isId1 = (D_030053c0.memID == 1);

    if (D_030053c0.exitLoopNextUpdate) {
        D_030053c0.bypassLoops = TRUE;
        D_030053c0.exitLoopNextUpdate = FALSE;
    }
    if (isId1) {
        thread = &D_030053c0.threads[1];
        if (thread->active && (thread->startDelay == 0)) {
            func_0800e004(); // stub function
        }
    }

    for (i = 0; i < 2; i++) {
        D_030053c0.currentThread = i;
        func_0800c3c4(D_030053c0.currentThread + 1);
        thread = &D_030053c0.threads[i];
        i2 = i + 1;

        if (thread->active) {
            D_03005588 = &D_030053c0.unk160[i];
            D_0300558c = D_030053c0.threads[i].sprites;
            while (thread->active && (thread->timeUntilNext < D_030053c0.unk14) && !D_030053c0.paused) {
                func_0800cb28(i);
            }

            subScene = thread->subScene;
            if (thread->active) {
                if (thread->startDelay != 0) {
                    thread->startDelay--;
                    if (thread->startDelay == 0) {
                        subSceneFunc = subScene->initFunc;
                        if (subSceneFunc != NULL) {
                            subSceneFunc(&D_030053c0.unk160[i], subScene->initParam);
                        }
                    }
                } else {
                    subSceneFunc = subScene->loopFunc;
                    if (subSceneFunc != NULL) {
                        subSceneFunc(&D_030053c0.unk160[i], subScene->loopParam);
                    }
                }
            }

            if (!thread->active) {
                subSceneFunc = subScene->endFunc;
                if (subSceneFunc != NULL) {
                    subSceneFunc(&D_030053c0.unk160[i], subScene->endParam);
                }
                if (!thread->unk0_b7) {
                    func_0804e0c4(D_03005380, i2);
                    func_0800222c(i2);
                    mem_heap_dealloc_with_id(i2);
                    task_pool_forced_cancel_id(i2);
                }
            }
        }
    }

    if (D_030053c0.unk2_b1) {
        func_0800e970();
        func_0800eb1c();
        func_0800ec34();
        func_08002934(D_030053c0.musicPlayer, D_030053c0.musicTrkTargets, D_030053c0.musicTrkVolume);
        func_08002920(D_030053c0.musicPlayer, D_030053c0.musicVolume);
    }

    if (!D_030053c0.paused) {
        for (i = 0; i < 2; i++) {
            D_030053c0.threads[i].timeUntilNext -= D_030053c0.unk14;
        }
        D_030053c0.unk18 += D_030053c0.unk14;
    }
}


// Check if No BeatScript Threads Are Active
s32 func_0800bc14(void) {
    u32 i;

    for (i = 0; i < 2; i++) {
        if (D_030053c0.threads[i].active) {
            return FALSE;
        }
    }
    return TRUE;
}


// Start Loop
void func_0800bc40(void) {
    D_030053c0.bypassLoops = FALSE;
    D_030053c0.exitLoopNextUpdate = FALSE;
}


// Delayed Loop Exit Task Function
void func_0800bc58(void) {
    D_030053c0.exitLoopNextUpdate = TRUE;
}


// Exit Loop After Delay
void func_0800bc68(u32 duration) {
    if (D_030053c0.bypassLoops) {
        return;
    }

    if (!D_030053c0.exitLoopNextUpdate) {
        func_0800856c((u16)func_0800c3b8(), func_0800bc58, 0, func_0800c3a4(duration));
        if (D_030053c0.memID == 1) {
            func_0800c3ec(2);
        }
    }
}


// Exit Loop After One Beat
void func_0800bcb8(void) {
    func_0800bc68(0x18);
}


// Exit Loop (If Within a Loop)
void func_0800bcc4(void) {
    if (D_030053c0.bypassLoops) {
        return;
    }

    if (!D_030053c0.exitLoopNextUpdate) {
        D_030053c0.exitLoopNextUpdate = TRUE;
    }
}


// Force Stop Loop
void func_0800bce4(void) {
    D_030053c0.bypassLoops = TRUE;
}


// Exit Loop on Next Update
void func_0800bcf4(void) {
    D_030053c0.exitLoopNextUpdate = TRUE;
}


// Pause Script
void func_0800bd04(u32 pause) {
    D_030053c0.paused = pause;
}


// Check if BeatScript Handler Is Paused
u32 func_0800bd1c(void) {
    return D_030053c0.paused;
}


// BeatScript Engine Force Quit
void func_0800bd2c(void) {
    struct BeatScriptThread *thread;
    const struct SubScene *subScene;
    u32 i, i2;

    for (i = 0; i < 2; i++) {
        D_030053c0.currentThread = i;
        func_0800c3c4(D_030053c0.currentThread + 1);
        thread = &D_030053c0.threads[i];
        subScene = thread->subScene;
        i2 = i + 1;

        if (thread->active) {
            D_03005588 = &D_030053c0.unk160[i];
            D_0300558c = D_030053c0.threads[i].sprites;
            if (subScene->endFunc != NULL) {
                subScene->endFunc(&D_030053c0.unk160[i], subScene->endParam);
            }
            func_0804e0c4(D_03005380, i2);
            func_0800222c(i2);
            mem_heap_dealloc_with_id(i2);
            task_pool_forced_cancel_id(i2);
            thread->active = FALSE;
        }
    }
}


// Set Tempo
void func_0800bdf8(u16 tempo) {
    s32 speed;

    D_030053c0.scriptBaseBPM = tempo;
    if (D_030053c0.unk0_b6 && D_030053c0.unk0_b7) {
        tempo *= D_030053c0.unk1C;
    }
    tempo = FIXED_POINT_MUL(D_030053c0.scriptSpeed, tempo);
    D_030053c0.scriptBPM = tempo;

    speed = INT_TO_FIXED(tempo);
    D_030053c0.unk10 = speed / 140;
    speed /= D_030053c0.musicBaseBPM;
    D_030053c0.unk14 = D_030053c0.musicBaseBPM * speed / 150u;
    if (D_030053c0.musicPlayer != NULL) {
        func_08002894(D_030053c0.musicPlayer, speed);
    }
    D_030053c0.unk1_b7 = FALSE;
}


// Update Script Tempo (retain unk1_b7)
void func_0800be64(void) {
    u32 flag;

    flag = D_030053c0.unk1_b7;
    func_0800bdf8(D_030053c0.scriptBaseBPM);
    D_030053c0.unk1_b7 = flag;
}


// Set Script Speed (Q8.8)
void func_0800be88(u16 speed) {
    D_030053c0.scriptSpeed = speed;
    func_0800be64();
}


// Stub
void func_0800be9c(void) {
}


// Set unk0_b7
void func_0800bea0(u32 arg) {
    D_030053c0.unk0_b7 = arg;
    func_0800be64();
}


// Set unk1C
void func_0800bebc(u32 arg) {
    D_030053c0.unk1C = arg;
    func_0800be64();
}


// Play Music
u32 func_0800bed0(const struct SequenceData *music, u32 override, s32 soundPlayer) {
    if ((D_030053c0.musicPlayer != NULL) && override) {
        func_08002828(D_030053c0.musicPlayer);
    }
    if (music == NULL) {
        D_030053c0.musicPlayer = NULL;
        return;
    }
    D_03005b3c = LFO_MODE_DISABLED;
    func_08049be4();
    func_08049b70(0);
    D_030053c0.musicPlayer = (soundPlayer < 0) ? func_08002634(music) : func_0800267c(soundPlayer, music);
    D_030053c0.musicBaseBPM = func_080102d0(music);
    func_0800be64();
    func_0800c060();
    func_08002920(D_030053c0.musicPlayer, D_030053c0.musicVolume);
    func_08002934(D_030053c0.musicPlayer, D_030053c0.musicTrkTargets, D_030053c0.musicTrkVolume);
    func_080029c4(D_030053c0.musicPlayer, D_030053c0.musicPitchEnv);
}


// Play Music (Override Existing)
void func_0800bf7c(const struct SequenceData *music) {
    func_0800bed0(music, TRUE, -1);
}


// Play Music (No Override)
void func_0800bf8c(const struct SequenceData *music) {
    func_0800bed0(music, FALSE, -1);
}


// Play Music in Given SoundPlayer (Override)
void func_0800bf9c(const struct SequenceData *music, s32 soundPlayer) {
    func_0800bed0(music, TRUE, soundPlayer);
}


// Play Music in Given SoundPlayer (No Override)
void func_0800bfac(const struct SequenceData *music, s32 soundPlayer) {
    func_0800bed0(music, FALSE, soundPlayer);
}


// Play Music (override, use predefined SoundPlayer ID)
void func_0800bfbc(const struct SequenceData *music) {
    struct SoundPlayer *player;

    player = func_08002a18(music);
    if (player == NULL) return;

    D_030053c0.musicPlayer = player;
    D_030053c0.musicBaseBPM = func_080102d0(music);
    func_0800be64();
    func_0800c060();
    func_08002920(D_030053c0.musicPlayer, D_030053c0.musicVolume);
    func_08002934(D_030053c0.musicPlayer, D_030053c0.musicTrkTargets, D_030053c0.musicTrkVolume);
    func_080029c4(D_030053c0.musicPlayer, D_030053c0.musicPitchEnv);
}


// Stop Music
void func_0800c01c(void) {
    func_08002828(D_030053c0.musicPlayer);
}


// Fade-In Music
void func_0800c030(u16 duration) {
    func_080028c4(D_030053c0.musicPlayer, duration);
}


// Fade-Out Music
void func_0800c048(u16 duration) {
    func_080028d8(D_030053c0.musicPlayer, duration);
}


// Update Music Pitch (retain unk2_b0)
void func_0800c060(void) {
    u32 flag;

    flag = D_030053c0.unk2_b0;
    func_0800c088(D_030053c0.musicPitchSrc1);
    D_030053c0.unk2_b0 = flag;
}


// Set Music Pitch
void func_0800c088(s16 pitch) {
    D_030053c0.musicPitchSrc1 = pitch;
    pitch += D_030053c0.musicPitchSrc2;
    D_030053c0.musicPitch = pitch;
    if (D_030053c0.musicPlayer != NULL) {
        func_080028a8(D_030053c0.musicPlayer, pitch);
    }
    D_030053c0.unk2_b0 = FALSE;
}


// Set Music Pitch Source 2
void func_0800c0c4(s16 pitch) {
    D_030053c0.musicPitchSrc2 = pitch;
    func_0800c060();
}


// Set Music Volume
void func_0800c0d8(u16 volume) {
    D_030053c0.musicVolume = volume;
    func_08002920(D_030053c0.musicPlayer, volume);
}


// Set Volume for Selected Music Channels
void func_0800c0f8(u16 selection, u16 volume) {
    D_030053c0.musicTrkVolume = volume;
    D_030053c0.musicTrkTargets = selection;
    func_08002934(D_030053c0.musicPlayer, selection, volume);
}


// Set Music Volume (it just calls func_0800c0d8())
void func_0800c128(u16 volume) {
    func_0800c0d8(volume);
}


#include "asm/code_0800b778/asm_0800c138.s"

#include "asm/code_0800b778/asm_0800c154.s"

#include "asm/code_0800b778/asm_0800c168.s"

#include "asm/code_0800b778/asm_0800c184.s"


void func_0800c1a4_stub(void) {
}


// Get Current Script Tempo
u32 func_0800c1a8(void) {
    return D_030053c0.scriptBPM;
}


#include "asm/code_0800b778/asm_0800c1b4.s"

#include "asm/code_0800b778/asm_0800c1c0.s"

#include "asm/code_0800b778/asm_0800c1d0.s"

#include "asm/code_0800b778/asm_0800c1e8.s"

#include "asm/code_0800b778/asm_0800c228.s"

#include "asm/code_0800b778/asm_0800c280.s"

#include "asm/code_0800b778/asm_0800c2b0.s"

#include "asm/code_0800b778/asm_0800c2d0.s"

#include "asm/code_0800b778/asm_0800c310.s"

#include "asm/code_0800b778/asm_0800c350.s"

#include "asm/code_0800b778/asm_0800c390.s"

#include "asm/code_0800b778/asm_0800c394.s"

#include "asm/code_0800b778/asm_0800c398.s"


// Convert Script Beats To Real-Time Ticks
s32 func_0800c3a4(u32 beats) {
    fast_divsi3(INT_TO_FIXED(beats), D_030053c0.unk14);
}


// Get Current Active Thread (Memory ID / SubScene)
u32 func_0800c3b8() {
    return D_03001310[0];
}


// Set Current Active Thread (Memory ID / SubScene)
void func_0800c3c4(u32 id) {
    D_03001310[0] = id;
    func_0804e0bc(D_03005380, id);
}


#include "asm/code_0800b778/asm_0800c3e4.s"

#include "asm/code_0800b778/asm_0800c3e8.s"

#include "asm/code_0800b778/asm_0800c3ec.s"

#include "asm/code_0800b778/asm_0800c3fc.s"

#include "asm/code_0800b778/asm_0800c400.s"

#include "asm/code_0800b778/asm_0800c404.s"

#include "asm/code_0800b778/asm_0800c408.s"

#include "asm/code_0800b778/asm_0800c40c.s"

#include "asm/code_0800b778/asm_0800c410.s"

#include "asm/code_0800b778/asm_0800c414.s"

#include "asm/code_0800b778/asm_0800c418.s"

#include "asm/code_0800b778/asm_0800c41c.s"

#include "asm/code_0800b778/asm_0800c420.s"

#include "asm/code_0800b778/asm_0800c424.s"

#include "asm/code_0800b778/asm_0800c428.s"

#include "asm/code_0800b778/asm_0800c42c.s"


// Allocate memory for a struct of size [arg0] (bytes). (?)
void *func_0800c43c(u32 size) {
    return mem_heap_alloc_id(func_0800c3b8(), size);
}


#include "asm/code_0800b778/asm_0800c454.s"

#include "asm/code_0800b778/asm_0800c484.s"

#include "asm/code_0800b778/asm_0800c490.s"

#include "asm/code_0800b778/asm_0800c494.s"

#include "asm/code_0800b778/asm_0800c4ac.s"

#include "asm/code_0800b778/asm_0800c4b0.s"

#include "asm/code_0800b778/asm_0800c508.s"

#include "asm/code_0800b778/asm_0800c560.s"

#include "asm/code_0800b778/asm_0800c5b8.s"

#include "asm/code_0800b778/asm_0800c604.s"

#include "asm/code_0800b778/asm_0800c654.s"

#include "asm/code_0800b778/asm_0800c658.s"

#include "asm/code_0800b778/asm_0800c65c.s"

#include "asm/code_0800b778/asm_0800c660.s"

#include "asm/code_0800b778/asm_0800c694.s"

#include "asm/code_0800b778/asm_0800c6a4.s"

#include "asm/code_0800b778/asm_0800c6c8.s"

#include "asm/code_0800b778/asm_0800c6d4.s"

#include "asm/code_0800b778/asm_0800c6d8.s"

#include "asm/code_0800b778/asm_0800c6dc.s"

#include "asm/code_0800b778/asm_0800c6e0.s"

#include "asm/code_0800b778/asm_0800c6e4.s"

#include "asm/code_0800b778/asm_0800c824.s"

#include "asm/code_0800b778/asm_0800c95c.s"

#include "asm/code_0800b778/asm_0800c9a4.s"

#include "asm/code_0800b778/asm_0800c9c8.s"

#include "asm/code_0800b778/asm_0800ca1c.s"

#include "asm/code_0800b778/asm_0800ca70.s"

#include "asm/code_0800b778/asm_0800cb28.s"


// Stub
void func_0800dfbc(void) {
}


// Stub
void func_0800dfc0(void) {
}


// a very broken (and unused) function
s32 func_0800dfc4(void) {
    void *r0;

    r0 = (s32 *)((func_0800c3b8() * 0x9c));
    r0 += ((s32)&D_030053c0 - 0x74); // ((s32)&D_03004b10 + 0x83c)
    r0 += 0x98;
    return *((s32 *)r0);

    // return *((s32 *)&D_030053c0.threads[func_0800c3b8()]-1);
}


// Stub
void func_0800dfe0(void) {
}


// Stub
void func_0800dfe4(void) {
}


// Stub
void func_0800dfe8(void) {
}


// Stub
void func_0800dfec(void) {
}


// Stub
void func_0800dff0(void) {
}


// Stub
void func_0800dff4(void) {
}


// Stub
void func_0800dff8(void) {
}


// Stub
void func_0800dffc(void) {
}


// Stub
void func_0800e000(void) {
}


// Stub
void func_0800e004(void) {
}


// Stub
void func_0800e008(void) {
}


// Stub
void func_0800e00c(void) {
}


// Stub
void func_0800e010(void) {
}


// Stub
void func_0800e014(void) {
}


// Set Video Mode
void func_0800e018(s32 videoMode) {
    u16 *displayControls = &D_03004b10.DISPCNT;

    *displayControls &= ~DISPCNT_VIDEO_MODE_MASK;
    *displayControls |= videoMode;
}


// Show BG Layer
void func_0800e030(s32 layer) {
    D_03004b10.DISPCNT |= (DISPCNT_DISPLAY_BG(layer));
}


// Hide BG Layer
void func_0800e044(s32 layer) {
    D_03004b10.DISPCNT &= ~(DISPCNT_DISPLAY_BG(layer));
}


// Set BG Layer Position
void func_0800e058(s32 layer, s16 x, s16 y) {
    struct Vector2 *bgOfs = D_03004b10.BG_OFS;

    bgOfs[layer].x = x;
    bgOfs[layer].y = y;
}


// Set BG Layer Render Data
void func_0800e068(s32 layer, s32 tileset, s32 map, s32 priority) {
    u16 *bgControls = D_03004b10.BG_CNT;

    bgControls[layer] = BGCNT_TILEDATA_ADDR(tileset) | BGCNT_TILEMAP_ADDR(map) | BGCNT_PRIORITY(priority);
}


// Set BG Layer Priority
void func_0800e084(s32 layer, s32 priority) {
    u16 *bgControls = D_03004b10.BG_CNT;

    bgControls[layer] &= ~BGCNT_PRIORITY_MASK;
    bgControls[layer] |= priority;
}


// Set BG Layer Controls
void func_0800e0a0(s32 layer, s32 show, s32 x, s32 y, s32 tileset, s32 map, s32 priority) {
    func_0800e058(layer, x, y);
    func_0800e068(layer, tileset, map, priority);

    if (show) {
        func_0800e030(layer);
    } else {
        func_0800e044(layer);
    }
}


// Display OBJ Layer
void func_0800e0ec(void) {
    u16 *displayControls = &D_03004b10.DISPCNT;

    *displayControls |= DISPCNT_DISPLAY_OAM;
}


// Hide OBJ Layer
void func_0800e100(void) {
    u16 *displayControls = &D_03004b10.DISPCNT;

    *displayControls &= ~DISPCNT_DISPLAY_OAM;
}


// Enable OBJ Windows
void func_0800e114(void) {
    u16 *displayControls = &D_03004b10.DISPCNT;

    *displayControls |= DISPCNT_ENABLE_SPRITE_WINDOWS;
}


// Disable OBJ Windows
void func_0800e128(void) {
    u16 *displayControls = &D_03004b10.DISPCNT;

    *displayControls &= ~DISPCNT_ENABLE_SPRITE_WINDOWS;
}


// Set OBJ Mosaic Size
void func_0800e13c(s16 xSize, s16 ySize) {
    if (xSize >= 0) {
        D_03004b10.MOSAIC &= ~MOSAIC_SPR_XSIZE_MASK;
        D_03004b10.MOSAIC |= MOSAIC_SPR_XSIZE(xSize);
    }
    if (ySize >= 0) {
        D_03004b10.MOSAIC &= ~MOSAIC_SPR_YSIZE_MASK;
        D_03004b10.MOSAIC |= MOSAIC_SPR_YSIZE(ySize);
    }
}


// Set BG Mosaic Size
void func_0800e184(s16 xSize, s16 ySize) {
    if (xSize >= 0) {
        D_03004b10.MOSAIC &= ~MOSAIC_BG_XSIZE_MASK;
        D_03004b10.MOSAIC |= MOSAIC_BG_XSIZE(xSize);
    }
    if (ySize >= 0) {
        D_03004b10.MOSAIC &= ~MOSAIC_BG_YSIZE_MASK;
        D_03004b10.MOSAIC |= MOSAIC_BG_YSIZE(ySize);
    }
}


#include "asm/code_0800b778/asm_0800e1cc.s"

#include "asm/code_0800b778/asm_0800e208.s"

#include "asm/code_0800b778/asm_0800e25c.s"

#include "asm/code_0800b778/asm_0800e2a8.s"

#include "asm/code_0800b778/asm_0800e30c.s"

#include "asm/code_0800b778/asm_0800e364.s"

#include "asm/code_0800b778/asm_0800e3e4.s"

#include "asm/code_0800b778/asm_0800e430.s"

#include "asm/code_0800b778/asm_0800e490.s"

#include "asm/code_0800b778/asm_0800e4f8.s"

#include "asm/code_0800b778/asm_0800e57c.s"

#include "asm/code_0800b778/asm_0800e62c.s"

#include "asm/code_0800b778/asm_0800e694.s"

#include "asm/code_0800b778/asm_0800e6ec.s"

#include "asm/code_0800b778/asm_0800e75c.s"

#include "asm/code_0800b778/asm_0800e768.s"

#include "asm/code_0800b778/asm_0800e7e8.s"

#include "asm/code_0800b778/asm_0800e830.s"

#include "asm/code_0800b778/asm_0800e850.s"

#include "asm/code_0800b778/asm_0800e86c.s"

#include "asm/code_0800b778/asm_0800e888.s"

#include "asm/code_0800b778/asm_0800e8b0.s"

#include "asm/code_0800b778/asm_0800e8d8.s"

#include "asm/code_0800b778/asm_0800e8f4.s"

#include "asm/code_0800b778/asm_0800e940.s"

#include "asm/code_0800b778/asm_0800e944.s"

#include "asm/code_0800b778/asm_0800e948.s"

#include "asm/code_0800b778/asm_0800e970.s"

#include "asm/code_0800b778/asm_0800e9d8.s"

#include "asm/code_0800b778/asm_0800e9f8.s"

#include "asm/code_0800b778/asm_0800ea1c.s"

#include "asm/code_0800b778/asm_0800ea2c.s"

#include "asm/code_0800b778/asm_0800ea3c.s"

#include "asm/code_0800b778/asm_0800ea70.s"

#include "asm/code_0800b778/asm_0800eaa0.s"

#include "asm/code_0800b778/asm_0800eb0c.s"

#include "asm/code_0800b778/asm_0800eb1c.s"

#include "asm/code_0800b778/asm_0800ebac.s"

#include "asm/code_0800b778/asm_0800ebf8.s"

#include "asm/code_0800b778/asm_0800ec20.s"

#include "asm/code_0800b778/asm_0800ec34.s"

#include "asm/code_0800b778/asm_0800ecac.s"

#include "asm/code_0800b778/asm_0800ecec.s"

#include "asm/code_0800b778/asm_0800ed08.s"

#include "asm/code_0800b778/asm_0800ed24.s"

#include "asm/code_0800b778/asm_0800ed3c.s"

#include "asm/code_0800b778/asm_0800ed54.s"

#include "asm/code_0800b778/asm_0800ed58.s"

#include "asm/code_0800b778/asm_0800ed5c.s"

#include "asm/code_0800b778/asm_0800ed60.s"

#include "asm/code_0800b778/asm_0800ed64.s"

#include "asm/code_0800b778/asm_0800edb8.s"

#include "asm/code_0800b778/asm_0800edc8.s"

#include "asm/code_0800b778/asm_0800edfc.s"

#include "asm/code_0800b778/asm_0800ee1c.s"

#include "asm/code_0800b778/asm_0800ee3c.s"

#include "asm/code_0800b778/asm_0800ee5c.s"

#include "asm/code_0800b778/asm_0800ee7c.s"

#include "asm/code_0800b778/asm_0800ee9c.s"

#include "asm/code_0800b778/asm_0800eebc.s"

#include "asm/code_0800b778/asm_0800f070.s"

#include "asm/code_0800b778/asm_0800f084.s"

#include "asm/code_0800b778/asm_0800f09c.s"

#include "asm/code_0800b778/asm_0800f0b4.s"

#include "asm/code_0800b778/asm_0800f180.s"

#include "asm/code_0800b778/asm_0800f1ec.s"

#include "asm/code_0800b778/asm_0800f218.s"

#include "asm/code_0800b778/asm_0800f22c.s"

#include "asm/code_0800b778/asm_0800f4a0.s"

#include "asm/code_0800b778/asm_0800f524.s"

#include "asm/code_0800b778/asm_0800f570.s"

#include "asm/code_0800b778/asm_0800f578.s"

#include "asm/code_0800b778/asm_0800f580.s"

#include "asm/code_0800b778/asm_0800f588.s"

#include "asm/code_0800b778/asm_0800f614.s"

#include "asm/code_0800b778/asm_0800f7c0.s"

#include "asm/code_0800b778/asm_0800f89c.s"

#include "asm/code_0800b778/asm_0800f8d8.s"

#include "asm/code_0800b778/asm_0800f8ec.s"

#include "asm/code_0800b778/asm_0800f8f8.s"
