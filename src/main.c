#include "main.h"
#include "memory.h"
#include "code_08003980.h"

asm(".include \"include/gba.inc\"");//Temporary

static const struct Scene *gCurrentScene;
static const struct Scene *gNextScene;
static struct SceneUnk03000008 D_03000008[10];
static u8 D_03000080;
static const struct Scene *D_03000084;
static const struct Scene *D_03000088;

void func_080001f4_stub(void) {
	
}

// Initialise Scenes (Init. Static Variables)
void init_scene_static_var(void) {
	func_0801350c(); // Game Select
	func_08018e60(); // Results (Score-Type)
	func_0801242c(); // Main Menu
	func_08016e94(); // Gameplay
	func_08010490(); // Rhythm Library
	func_08011ec0(); // Rhythm Data Room
	func_0801c1b8(); // Studio
	func_0801d580(); // Medal Corner Menus
	func_080113d0(); // Cafe
}

void func_08000224(void) {
	func_08001464();
	func_0800b564();
	func_08007b4c();
	func_08002f68();
	mem_heap_init(get_memory_heap_start(), get_memory_heap_length());
	func_08005a0c();
	func_08003e64();
	func_08003f28();
	func_080073b8();
	func_080073f0();
	func_08009844();
	func_0800861c();
	func_08000804();
	if (func_080008bc() != 0) {
		if (func_080008d0() != 0) {
			func_0800081c();
		} else {
			func_080009a0();
		}
	}
	func_080009b4();
	func_080029d8(D_030046a8->data.unk294[8]); // Set DirectSound Mode (Stereo/Mono)
	func_0800584c(func_0800c490());
	init_scene_static_var(); // Initialise Scenes
	func_08001360();
	func_08009150();
	func_080091d8();
	D_03004498 = TRUE;
}

#define RESET_BUTTON_COMBO (A_BUTTON | B_BUTTON | SELECT_BUTTON | START_BUTTON)

void agb_main(void) {
	REG_WAITCNT = (WAITCNT_SRAM_8
		| WAITCNT_WS0_N_3 | WAITCNT_WS0_S_1
		| WAITCNT_WS1_N_3 | WAITCNT_WS1_S_1
		| WAITCNT_WS2_N_3 | WAITCNT_WS2_S_1
		| WAITCNT_PHI_OUT_NONE | WAITCNT_PREFETCH_ENABLE | WAITCNT_TYPE_GBA);
	
    // Clear RAM
	DmaFill32(3, 0, ExternWorkRAMBase, 0x40000);
	DmaFill32(3, 0, InternWorkRAMBase, 0x7E00);
	
    // Set up interrupt handler
	DmaCopy32(3, &interrupt_handler_rom, &interrupt_handler, 0x200);
	DmaCopy32(3, &interrupt_handler_jtbl_rom, &interrupt_handler_jtbl, 0x38);
	REG_INTERRUPT = &interrupt_handler;
	
    // Clear VRAM
	DmaFill32(3, 0, VRAMBase, 0x18000);
	*(u16 *)PaletteRAMBase = 0x7FFF;
    
	REG_DISPCNT = 0;
	REG_IME = 0;
	
	D_03004498 = FALSE;
	
	init_ewram();
	func_08000224();
	func_0801e100(); // Init. Debug Menu Scene (Init. Static Variables)
	func_0804c778(); // Init. MIDI Sound Library
	func_0804c340(35, 2, 2, 4); // Set Sound Reverb Levels
	func_080029d8(D_030046a8->data.unk294[8]); // Set DirectSound Mode (Stereo/Mono)
	
	REG_DISPSTAT = 8;
	REG_IE = (INTERRUPT_CART | INTERRUPT_DMA2 | INTERRUPT_TIMER3 | INTERRUPT_VBLANK);
	REG_IF = 0xFFFF;
	REG_IME = 1;
	
	func_0801d860(0); // Init. Script Operator (Init. Static Variables)
	func_0800046c(&D_089dda4c); // Warning Screen
	func_080006b0(&D_089dda4c, D_08935fac); // Warning Screen, Title Screen
	func_080015bc();
	
	while (1) {
		func_080013a8();
		func_08001964();
		func_080015bc();
		D_030046a0 += 1;
		process_scenes();
		
		if (D_03004498) {
			u16 keysPressed = ~REG_KEY;
			
			if ((keysPressed & RESET_BUTTON_COMBO) == RESET_BUTTON_COMBO) {
				func_08001724(0,0x3FF,0,0);
				func_08000568(&D_089dd97c);
				func_08009548();
				D_03004498 = FALSE;
			}
		}
		
		func_0804c170();
		func_0800b590();
		func_08003ff0();
	}
	
}

void func_0800046c(const struct Scene *next) {
	gCurrentScene = NULL;
	gNextScene = next;
	D_030046a4 = NULL;
	func_08000598();
}

void process_scenes(void) {
    union struct_030046a4 *temp;
    
	if (gCurrentScene != NULL) {
		if (gCurrentScene->loopFunc != NULL) {
            // Update Scene
            u32 sceneEnded = gCurrentScene->loopFunc(gCurrentScene->loopParam);
            
            if (sceneEnded) {
                // Close Scene
                if (gCurrentScene->endFunc != NULL) {
                    gCurrentScene->endFunc(gCurrentScene->endParam);
                }
                if (D_030046a4 != NULL) {
                    mem_heap_dealloc(D_030046a4);
                }
                
                D_030046a4 = NULL;
                gNextScene = func_080005e0(gCurrentScene);
                
                if (D_03000080) {
                    func_080006b0(gCurrentScene, D_03000084);
                    func_080006d0(gCurrentScene, D_03000088);
                } else {
                    func_08000674(gCurrentScene);
                }
                
                gCurrentScene = NULL;
            }
        }
	} else {
        // Initialise next scene
		if (gNextScene == NULL) {
			gNextScene = D_08935fb0;
		}
		
		gCurrentScene = gNextScene;
		gNextScene = NULL;
		D_03000080 = FALSE;
		
		if (gCurrentScene->requiredMemory != 0) {
			temp = mem_heap_alloc(gCurrentScene->requiredMemory);
            D_030046a4 = temp;
		}
		
		if (gCurrentScene->initFunc != NULL) {
			gCurrentScene->initFunc(gCurrentScene->initParam);
		}
	}
}

void func_08000568(const struct Scene *next) {
	gCurrentScene = NULL;
	gNextScene = next;
	func_08000598();
}

void func_08000584(const struct Scene *arg1) {
	func_080006b0(gCurrentScene, arg1);
}

void func_08000598(void) {
	u32 i;
	for (i = 0; i < 10; i++) {
		D_03000008[i].unk0 = NULL;
		D_03000008[i].unk4 = NULL;
		D_03000008[i].unk8 = NULL;
	}
}

struct SceneUnk03000008 *func_080005b8(const struct Scene *arg1) {
	u32 i;
	for (i = 0; i < 10; i++) {
		if (D_03000008[i].unk0 == arg1) {
			return &D_03000008[i];
		}
	}
	return NULL;
}

const struct Scene *func_080005e0(const struct Scene *arg1) {
	struct SceneUnk03000008 *temp = func_080005b8(arg1);
	if (temp == NULL) {
		return NULL;
	}
	return temp->unk4;
}

const struct Scene *func_080005f4(const struct Scene *arg1) {
	struct SceneUnk03000008 *temp = func_080005b8(arg1);
	if (temp == NULL) {
		return NULL;
	}
	return temp->unk8;
}

const struct Scene *func_08000608(void) {
	return func_080005e0(gCurrentScene);
}

const struct Scene *func_0800061c(void) {
	return func_080005f4(gCurrentScene);
}

struct SceneUnk03000008 *func_08000630(const struct Scene *arg1) {
	u32 i;
	if (arg1 == NULL) {
		return NULL;
	}
	for (i = 0; i < 10; i++) {
		if (D_03000008[i].unk0 == NULL) {
			D_03000008[i].unk0 = arg1;
			D_03000008[i].unk4 = NULL;
			D_03000008[i].unk8 = NULL;
			return &D_03000008[i];
		}
	}
	return NULL;
}

void func_08000674(const struct Scene *arg1) {
	if (arg1 != NULL) {
		u32 i;
		for (i = 0; i < 10; i++) {
			if (D_03000008[i].unk0 == arg1) {
				D_03000008[i].unk0 = NULL;
				D_03000008[i].unk4 = NULL;
				D_03000008[i].unk8 = NULL;
			}
		}
	}
}

void func_080006b0(const struct Scene *arg1, const struct Scene *arg2) {
	struct SceneUnk03000008 *temp;
	if (((temp = func_080005b8(arg1)) != NULL) || ((temp = func_08000630(arg1)) != NULL)) {
		temp->unk4 = arg2;
	}
}

void func_080006d0(const struct Scene *arg1, const struct Scene *arg2) {
	struct SceneUnk03000008 *temp;
	if (((temp = func_080005b8(arg1)) != NULL) || ((temp = func_08000630(arg1)) != NULL)) {
		temp->unk8 = arg2;
	}
}

void func_080006f0(const struct Scene *arg1, const struct Scene *arg2) {
	D_03000080 = TRUE;
	D_03000084 = arg1;
	D_03000088 = arg2;
}

const struct Scene *func_0800070c(void) {
	return gCurrentScene;
}
