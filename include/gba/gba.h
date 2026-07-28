#pragma once

#define BIOSROMBase		0x00000000 // To 0x00004000 (16kb)
#define ExternWorkRAMBase	0x02000000 // To 0x02040000 (256kb)
#define InternWorkRAMBase	0x03000000 // To 0x03008000 (32kb)
#define IORAMBase			0x04000000 // To 0x04000400 (1kb)
#define PaletteRAMBase	0x05000000 // To 0x05000400 (1kb)
#define VRAMBase			0x06000000 // To 0x06018000 (96kb) Video RAM
#define OAMBase			0x07000000 // To 0x07000400 (1kb) Object Attribute Memory
#define GameROMBase		0x08000000 // To 0x0A000000 (32mb) Cartridge ROM
#define GameROMImage1Base	0x0A000000 // To 0x0C000000 (32mb) Cartridge ROM Mirror 1
#define GameROMImage2Base	0x0C000000 // To 0x0E000000 (32mb) Cartridge ROM Mirror 2
#define CartRAMBase		0x0E000000 // To 0x0E010000 (64kb) Save data


#define VideoBuffer     (VRAMBase + 0x0)
#define BackBuffer		(VRAMBase + 0xA000)
#define BGPaletteMem    (PaletteRAMBase + 0x0)
#define OBJPaletteMem 	(PaletteRAMBase + 0x200)

#define D_03007F00 		(InternWorkRAMBase + 0x7F00)
#define D_03007FA0 		(InternWorkRAMBase + 0x7FA0)
#define REG_INTERRUPT   *(volatile void **)(InternWorkRAMBase + 0x7FFC)

#define D_0E000000		*(volatile u8*)(CartRAMBase)
#define D_0E000001		*(volatile u8*)(CartRAMBase + 1)
#define D_0E000002		*(volatile u8*)(CartRAMBase + 2)
#define D_0E000003		*(volatile u8*)(CartRAMBase + 3)

#include "include/gba/gba_graphics_regs.h"
#include "include/gba/gba_dma_regs.h"
#include "include/gba/gba_input_regs.h"
#include "include/gba/gba_interrupt_regs.h"
#include "include/gba/gba_timer_regs.h"
#include "include/gba/gba_sound_regs.h"
#include "include/gba/macros.h"
