#include "global.h"
#include "riq_main_scene.h"
#include "src/code_08001360.h"
#include "src/bitmap_font.h"
#include "src/task_pool.h"
#include "src/memory_heap.h"
#include "src/lib_0804ca80.h"

asm(".include \"include/gba.inc\"");//Temporary

static u8 D_0300155c;


/* GLOBAL RIQ SCENE */


// [func_0801d860] Set D_0300155c
void func_0801d860(u32 arg) {
	D_0300155c = arg;
}


// [func_0801d86c] Script Init.
void func_0801d86c(const struct SubScene *subScene) {
    const struct SubScene *subScenes[4];

    gPauseMenu.state = PAUSE_STATE_PLAY;
    gPauseMenu.enabled = FALSE;
    gPauseMenu.hasBeenUsed = FALSE;
    gPauseMenu.data = NULL;
    if (D_0300155c) {
        func_08006d80();
    }
    func_08006da8(); // Reset Graphics
    func_08007014(0); // Fill Palette (Black)
    func_08006fec(); // Clear OAM Buffer
    func_080073f0(); // Init. OAM Buffer
    func_08003f28();
    func_080013e8(func_0801d9cc);
    subScenes[0] = subScene;
    subScenes[1] = NULL;
    start_beatscript_scene(0);
    set_beatscript_subscenes(subScenes);
}


// [func_0801d8d8] Script Main
u32 func_0801d8d8(void) {
    func_08006e88(); // Flush Graphics Buffer
    func_08003fb4();
    if (gPauseMenu.hasBeenUsed) {
        update_paused_beatscript_scene();
    }
    task_pool_update_constant();
    task_pool_update_delayed();

    /* Script/Pause Handling */
    switch (gPauseMenu.state) {
        case PAUSE_STATE_PLAY:
            /* Check if Pause Screen should open. */
            if (func_0801d9d0()) {
                break;
            }
            /* Otherwise, update Script. */
            update_active_beatscript_scene();
            if (beatscript_scene_is_inactive()) {
                func_0801d98c();
                return TRUE;
            }
            break;

        case PAUSE_STATE_PAUSE:
            /* Update the Pause Screen. */
            func_0801da48();
            if (gPauseMenu.state != PAUSE_STATE_PLAY) {
                break;
            }
            /* If "Continue" was selected, update Script. */
            update_active_beatscript_scene();
            if (beatscript_scene_is_inactive()) {
                func_0801d98c();
                return TRUE;
            }
            break;

        case PAUSE_STATE_STOP:
            if (func_0801dabc()) {
                return TRUE;
            }
            break;
    }

    func_08007410(); // Update OAM
    func_08006f84(); // Update Palette
    func_080042a4();
    return FALSE;
}


// [func_0801d95c] Change Script
void func_0801d95c(const struct Beatscript *script) {
	D_030053c0.threads[0].current = script;
}


// [func_0801d968] Change Script (w/ Timer Reset)
void func_0801d968(const struct Beatscript *script) {
	D_030053c0.threads[0].current = script;
	D_030053c0.threads[0].timeUntilNext = 0;
}


// [func_0801d978] Reset BranchStack Position
void func_0801d978(void) {
	D_030053c0.threads[0].stackCounter = 0;
}


// [func_0801d98c] Script Close
void func_0801d98c(void) {
    u32 i;

    func_080013e8(0);
    func_08003f28();

    for (i = 0; i < 2;) {
        i++;
        func_0804e0c4(D_03005380, i);
        func_0800222c(i);
        task_pool_forced_cancel_id(i);
        mem_heap_dealloc_with_id(i);
    }
}


u32 func_0801d9cc(void) {
}


// [func_0801d9d0] Update Pause Menu (State: Play)
u32 func_0801d9d0(void) {
    u32 i;

    if (!gPauseMenu.enabled
     || gPauseMenu.data == NULL
     || (D_03004afc & gPauseMenu.data->pauseButton) != gPauseMenu.data->pauseButton) {
        return FALSE;
    }

    pause_all_soundplayers(TRUE); // Pause Sound
    func_0804e1bc(D_03005380, 1); // Pause Sprites..?
    for (i = 0; i < 2; i++) {
        task_pool_pause_id(i+1, TRUE);
    }

    if (gPauseMenu.data->onPause != NULL) {
        gPauseMenu.data->onPause();
    }
    gPauseMenu.state = PAUSE_STATE_PAUSE;
    gPauseMenu.hasBeenUsed = TRUE;
    return TRUE;
}


// [func_0801da48] Update Pause Menu (State: Pause)
void func_0801da48(void) {
    u32 i;

    switch (gPauseMenu.data->update()) {
        case PAUSE_MENU_SELECTION_CONTINUE:
            pause_all_soundplayers(FALSE); // Unpause Sound
            func_0804e1bc(D_03005380, 0); // Unpause Sprites..?
            for (i = 0; i < 2; i++) {
                task_pool_pause_id(i+1, FALSE);
            }
            gPauseMenu.state = PAUSE_STATE_PLAY;
            break;

        case PAUSE_MENU_SELECTION_QUIT:
            func_080070c4(0x20, 0);
            pause_all_soundplayers(FALSE); // Unpause Sound
            stop_all_soundplayers(); // Fade-Out & Stop Sound
            play_sound(gPauseMenu.data->quitSfx);
            gPauseMenu.state = PAUSE_STATE_STOP;
            break;
    }
}


// [func_0801dabc] Update Pause Menu (State: Stop)
u32 func_0801dabc(void) {
    if (!D_03004b10.unk854_3) return FALSE;

    stop_soundplayer(D_030053c0.musicPlayer); // Stop Music
    task_pool_pause(FALSE);
    stop_beatscript_scene();
    return TRUE;
}


// [func_0801daf8] Set Pause Handler Definition
void func_0801daf8(const struct PauseMenuDefinition *data) {
    gPauseMenu.data = data;
}


// [func_0801db04] Enable Pause Menu
void func_0801db04(u32 enable) {
    gPauseMenu.enabled = enable;
}


// ??? (debug related?)

#include "asm/script/asm_0801db1c.s"

#include "asm/script/asm_0801db74.s"

#include "asm/script/asm_0801dbe8.s"

#include "asm/script/asm_0801dcb0.s"

#include "asm/script/asm_0801dd58.s"

#include "asm/script/asm_0801de38.s"

#include "asm/script/asm_0801de6c.s"

#include "asm/script/asm_0801debc.s"

#include "asm/script/asm_0801dec0.s"

#include "asm/script/asm_0801dec4.s"

#include "asm/script/asm_0801decc.s"

#include "asm/script/asm_0801ded4.s"

// Soft reset

#include "asm/script/asm_0801dedc.s"

#include "asm/script/asm_0801def4.s"

#include "asm/script/asm_0801df1c.s"
