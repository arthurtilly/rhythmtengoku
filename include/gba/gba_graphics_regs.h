// Graphics Hardware Registers

// Display Control Register

#define REG_DISPCNT    	*(volatile u16 *)(IORAMBase + 0x0)

#define VIDEO_MODE_4TEXT 			0 // Backgrounds 0 to 3 are all text backgrounds
#define VIDEO_MODE_2TEXT_1ROT 		1 // Backgrounds 0 and 1 are text backgrounds background 2 is a rotation / scaling background
#define VIDEO_MODE_2ROT 			2 // Backgrounds 2 and 3 are rotation / scaling backgrounds
#define VIDEO_MODE_16BIT_BMP 		3 // 16-bit bitmapped 240x160
#define VIDEO_MODE_8BIT_BMP 		4 // 8-bit bitmapped 240x160
#define VIDEO_MODE_16BIT_BMP_SMALL	5 // 16-bit bitmapped 160x128

#define DISPCNT_VIDEO_MODE_MASK       (0x07 << 0)
#define DISPCNT_GBC_MODE 			  (1 << 3)    // Game Boy Color mode (always 0). Read only
#define DISPCNT_BMP_ADDR			  (1 << 4)    // Controls starting address of bitmap in bitmapped modes
#define DISPCNT_HBLANK_FORCE_PROC     (1 << 5)    // Force processing during hblank
#define DISPCNT_SPRITE_DIM 			  (1 << 6)    // If true sprites are stored 1 dimensionally in VRAM otherwise 2 dimensionally
#define DISPCNT_FORCE_BLANK 		  (1 << 7)    // Force display to go blank
#define DISPCNT_DISPLAY_BG0 		  (1 << 8)    // Enable display of BG0
#define DISPCNT_DISPLAY_BG1 		  (1 << 9)    // Enable display of BG1
#define DISPCNT_DISPLAY_BG2 		  (1 << 10)   // Enable display of BG2
#define DISPCNT_DISPLAY_BG3 		  (1 << 11)   // Enable display of BG3
#define DISPCNT_DISPLAY_OAM 		  (1 << 12)   // Enable display of sprites
#define DISPCNT_ENABLE_WINDOW0 		  (1 << 13)   // Enable Window 0
#define DISPCNT_ENABLE_WINDOW1 		  (1 << 14)   // Enable Window 1
#define DISPCNT_ENABLE_SPRITE_WINDOWS (1 << 15)   // Enable Sprite Windows



#define REG_DISPSTAT   	*(volatile u16 *)(IORAMBase + 0x4)

#define DISPSTAT_VREFRESH 				(1 << 0) 	// V Refresh status. 0 during VDraw 1 during VBlank. Read only
#define DISPSTAT_HREFRESH 				(1 << 1) 	// H Refresh status same as above. Read only
#define DISPSTAT_VCOUNT_TRIGGERED 		(1 << 2) 	// VCount Triggered status set to 1 when Y trigger interrupt occurs. Read only
#define DISPSTAT_VBLANK_IRQ 			(1 << 3) 	// Enables VBlank IRQ interrupt goes off at start of VBlank
#define DISPSTAT_HBLANK_IRQ 			(1 << 4) 	// Enables HBlank IRQ interrupt goes off at start of HBlank
#define DISPSTAT_VCOUNT_IRQ 			(1 << 5) 	// Enables VCount trigger IRQ interrupt goes off when VCount line trigger is reached.
#define DISPSTAT_VCOUNT_LINE_TRIG_MASK 	(0xFF << 8) // Line that will cause the interrupt

#define REG_VCOUNT     	*(volatile u16 *)(IORAMBase + 0x6) // Current Y location of LCD hardware



// Background Registers

#define REG_BG0CNT     	*(volatile u16 *)(IORAMBase + 0x8)
#define REG_BG1CNT     	*(volatile u16 *)(IORAMBase + 0xA)
#define REG_BG2CNT     	*(volatile u16 *)(IORAMBase + 0xC)
#define REG_BG3CNT     	*(volatile u16 *)(IORAMBase + 0xE)

#define BG_PRIORITY_HIGHEST 	0
#define BG_PRIORITY_HIGH 		1
#define BG_PRIORITY_LOW 		2
#define BG_PRIORITY_LOWEST 	    3

#define BG_TXT_TILEMAP_32x32 	0
#define BG_TXT_TILEMAP_64x32 	1
#define BG_TXT_TILEMAP_32x64 	2
#define BG_TXT_TILEMAP_64x64 	3

#define BG_ROT_TILEMAP_16x16 	0
#define BG_ROT_TILEMAP_32x32 	1
#define BG_ROT_TILEMAP_64x64 	2
#define BG_ROT_TILEMAP_128x128  3

#define BGCNT_PRIORITY_MASK 	 (0x03 << 0)  // Priority 0 highest 3 lowest
#define BGCNT_TILEDATA_ADDR_MASK (0x03 << 2)  // Starting address of tile data. Address = 0x06000000 + S * 0x4000
#define BGCNT_MOSAIC_EFFECT 	 (1 << 6) 	 // Mosaic effect
#define BGCNT_256_PALETTE 		 (1 << 7) 	 // Color palette type 1 = 256 color palette 0 = 16 different 16 color palettes
#define BGCNT_TILEMAP_ADDR_MASK  (0x1F << 8)	 // Starting address of character tile map. Address = 0x06000000 + M * 0x800
#define BGCNT_SCREEN_OVER 		 (1 << 13) 	 // Screen Over. Forced to 0 and read only for bgs 0 and 1.
#define BGCNT_TILEMAP_SIZE_MASK  (0x03 << 14) // Size of tile map



// Horizontal and vertical scroll coordinates for backgrounds. Only first 10 bits (up to 0x3FF) are used. (Write Only)

#define REG_BG0HOFS    	*(volatile u16 *)(IORAMBase + 0x10)
#define REG_BG0VOFS    	*(volatile u16 *)(IORAMBase + 0x12)
#define REG_BG1HOFS    	*(volatile u16 *)(IORAMBase + 0x14)
#define REG_BG1VOFS    	*(volatile u16 *)(IORAMBase + 0x16)
#define REG_BG2HOFS    	*(volatile u16 *)(IORAMBase + 0x18)
#define REG_BG2VOFS    	*(volatile u16 *)(IORAMBase + 0x1A)
#define REG_BG3HOFS    	*(volatile u16 *)(IORAMBase + 0x1C)
#define REG_BG3VOFS    	*(volatile u16 *)(IORAMBase + 0x1E)



// Background Rotation / Scaling Registers (Write Only)

// Fixed point - 8 fraction bits 7 integer bits
// PA - Read Source Pixel X Increment
// PB - Write Destination Pixel X Increment
// PC - Read Source Pixel Y Increment
// PD - Write Destination Pixel Y Increment

// Fixed point - 8 fraction bits 19 integer bits
// X Y - X/Y Coordinate for BG Rotational Background

#define REG_BG2PA      	*(volatile u16 *)(IORAMBase + 0x20)
#define REG_BG2PB      	*(volatile u16 *)(IORAMBase + 0x22)
#define REG_BG2PC      	*(volatile u16 *)(IORAMBase + 0x24)
#define REG_BG2PD      	*(volatile u16 *)(IORAMBase + 0x26)

#define REG_BG2X       	*(volatile u32 *)(IORAMBase + 0x28)
#define REG_BG2X_L     	*(volatile u16 *)(IORAMBase + 0x28)
#define REG_BG2X_H     	*(volatile u16 *)(IORAMBase + 0x2A)
#define REG_BG2Y       	*(volatile u32 *)(IORAMBase + 0x2C)
#define REG_BG2Y_L     	*(volatile u16 *)(IORAMBase + 0x2C)
#define REG_BG2Y_H     	*(volatile u16 *)(IORAMBase + 0x2E)

#define REG_BG3PA      	*(volatile u16 *)(IORAMBase + 0x30)
#define REG_BG3PB      	*(volatile u16 *)(IORAMBase + 0x32)
#define REG_BG3PC      	*(volatile u16 *)(IORAMBase + 0x34)
#define REG_BG3PD      	*(volatile u16 *)(IORAMBase + 0x36)

#define REG_BG3X       	*(volatile u32 *)(IORAMBase + 0x38)
#define REG_BG3X_L     	*(volatile u16 *)(IORAMBase + 0x38)
#define REG_BG3X_H     	*(volatile u16 *)(IORAMBase + 0x3A)
#define REG_BG3Y       	*(volatile u32 *)(IORAMBase + 0x3C)
#define REG_BG3Y_L     	*(volatile u16 *)(IORAMBase + 0x3C)
#define REG_BG3Y_H     	*(volatile u16 *)(IORAMBase + 0x3E)



// Windowing Registers

// Window 0/1 X Coordinates (Nibble 1 rightmost nibble 2 leftmost)
#define REG_WIN0H      	*(volatile u16 *)(IORAMBase + 0x40)
#define REG_WIN1H      	*(volatile u16 *)(IORAMBase + 0x42)

// Window 0/1 Y Coordinates (Nibble 1 buttom nibble 2 top)
#define REG_WIN0V      	*(volatile u16 *)(IORAMBase + 0x44)
#define REG_WIN1V      	*(volatile u16 *)(IORAMBase + 0x46)

// Inside Window Settings

#define REG_WININ      	*(volatile u16 *)(IORAMBase + 0x48)

#define WININ_W0_BG0 		(1 << 0)
#define WININ_W0_BG1 		(1 << 1)
#define WININ_W0_BG2 		(1 << 2)
#define WININ_W0_BG3 		(1 << 3)
#define WININ_W0_SPRITES 	(1 << 4)
#define WININ_W0_BLENDS 	(1 << 5)
#define WININ_W1_BG0 		(1 << 8)
#define WININ_W1_BG1 		(1 << 9)
#define WININ_W1_BG2 		(1 << 10)
#define WININ_W1_BG3 		(1 << 11)
#define WININ_W1_SPRITES 	(1 << 12)
#define WININ_W1_BLENDS 	(1 << 13)

// Outside Window and Sprite Window Settings

#define REG_WINOUT     	*(volatile u16 *)(IORAMBase + 0x4A)

#define WINOUT_OUT_BG0 		(1 << 0)
#define WINOUT_OUT_BG1 		(1 << 1)
#define WINOUT_OUT_BG2 		(1 << 2)
#define WINOUT_OUT_BG3 		(1 << 3)
#define WINOUT_OUT_SPRITES 	(1 << 4)
#define WINOUT_OUT_BLENDS 	(1 << 5)
#define WINOUT_SPRW_BG0 	(1 << 8)
#define WINOUT_SPRW_BG1 	(1 << 9)
#define WINOUT_SPRW_BG2 	(1 << 10)
#define WINOUT_SPRW_BG3 	(1 << 11)
#define WINOUT_SPRW_SPRITES (1 << 12)
#define WINOUT_SPRW_BLENDS 	(1 << 13)



// REG_MOSAIC - Controls size of mosaic

#define REG_MOSAIC     	*(volatile u16 *)(IORAMBase + 0x4C)

#define MOSAIC_BG_XSIZE_MASK  0x000F
#define MOSAIC_BG_YSIZE_MASK  0x00F0
#define MOSAIC_SPR_XSIZE_MASK 0x0F00
#define MOSAIC_SPR_YSIZE_MASK 0xF000



// Blend Mode

#define REG_BLDMOD     	*(volatile u16 *)(IORAMBase + 0x50)

#define BLEND_MODE_OFF 	   0
#define BLEND_MODE_ALPHA   1
#define BLEND_MODE_LIGHTEN 2
#define BLEND_MODE_DARKEN  3

#define BLDMOD_BG0_SRC 	       (1 << 0)
#define BLDMOD_BG1_SRC 	       (1 << 1)
#define BLDMOD_BG2_SRC 	       (1 << 2)
#define BLDMOD_BG3_SRC 	       (1 << 3)
#define BLDMOD_SPRITES_SRC     (1 << 4)
#define BLDMOD_BACKDROP_SRC    (1 << 5)
#define BLDMOD_BLEND_MODE_MASK (0x3 << 6)
#define BLDMOD_BG0_TGT 	       (1 << 8)
#define BLDMOD_BG1_TGT 	       (1 << 9)
#define BLDMOD_BG2_TGT 	       (1 << 10)
#define BLDMOD_BG3_TGT 	       (1 << 11)
#define BLDMOD_SPRITES_TGT 	   (1 << 12)
#define BLDMOD_BACKDROP_TGT    (1 << 13)

// Amount of blending

#define REG_COLEV      	*(volatile u16 *)(IORAMBase + 0x52)

#define COLEV_SRC_PIXEL_MASK (0x1F << 0)  // Layer above
#define COLEV_TGT_PIXEL_MASK (0x1F << 8)  // Layer below

// Amount to lighten or darken source layer. Only first 5 bits matter and all values over 16 (from 16-31) result in pure black or white

#define REG_COLEY      	*(volatile u16 *)(IORAMBase + 0x54)
