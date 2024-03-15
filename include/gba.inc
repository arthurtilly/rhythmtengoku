.ifndef GBA_HEADER
.set GBA_HEADER, 0

.include "include/asm_macros.inc"

.set BIOSROMBase,		0x00000000 @ To 0x00004000 (16kb)
.set ExternWorkRAMBase,	0x02000000 @ To 0x02040000 (256kb)
.set InternWorkRAMBase,	0x03000000 @ To 0x03008000 (32kb)
.set IORAMBase,			0x04000000 @ To 0x04000400 (1kb)
.set PaletteRAMBase,	0x05000000 @ To 0x05000400 (1kb)
.set VRAMBase,			0x06000000 @ To 0x06018000 (96kb) Video RAM
.set OAMBase,			0x07000000 @ To 0x07000400 (1kb) Object Attribute Memory
.set GameROMBase,		0x08000000 @ To 0x0A000000 (32mb) Cartridge ROM
.set GameROMImage1Base,	0x0A000000 @ To 0x0C000000 (32mb) Cartridge ROM Mirror 1
.set GameROMImage2Base,	0x0C000000 @ To 0x0E000000 (32mb) Cartridge ROM Mirror 2
.set CartRAMBase,		0x0E000000 @ To 0x0E010000 (64kb) Save data

.set D_03007F00,     	InternWorkRAMBase + 0x7F00
.set D_03007FA0,	    InternWorkRAMBase + 0x7FA0
.set REG_INTERRUPT,   	InternWorkRAMBase + 0x7FFC
.set REG_SOUNDCNT_X,  	IORAMBase + 0x84
.set REG_DMA3SAD,       IORAMBase + 0xD4


.set INTERRUPT_VBLANK, 	(1 << 0)
.set INTERRUPT_HBLANK, 	(1 << 1)
.set INTERRUPT_VCOUNT, 	(1 << 2)
.set INTERRUPT_TIMER0, 	(1 << 3)
.set INTERRUPT_TIMER1, 	(1 << 4)
.set INTERRUPT_TIMER2, 	(1 << 5)
.set INTERRUPT_TIMER3, 	(1 << 6)
.set INTERRUPT_COMM, 	(1 << 7)  @ Serial Communication Interrupt
.set INTERRUPT_DMA0,  	(1 << 8)
.set INTERRUPT_DMA1,	(1 << 9)
.set INTERRUPT_DMA2,  	(1 << 10)
.set INTERRUPT_DMA3,  	(1 << 11)
.set INTERRUPT_BUTTON, 	(1 << 12) @ Button interrupt
.set INTERRUPT_CART,  	(1 << 13) @ Cartridge interrupt

 @ Interrupt Enable Register - Which interrupts are enabled / disabled

.set REG_IE,         	IORAMBase + 0x200



@ Internal Memory Control

.set REG_IMC,			IORAMBase + 0x800


.endif
