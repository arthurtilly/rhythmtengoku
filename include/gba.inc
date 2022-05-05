.ifndef GBA_HEADER
.set GBA_HEADER, 0

.include "include/asm_macros.inc"

.set func_08000a00, 0x08000a00
.set func_08000a00_end, 0x08000b2c
.set func_08000b2c, 0x08000b2c
.set func_08000b2c_end, 0x08000cfc
.set func_08000cfc, 0x08000cfc
.set func_08000cfc_end, 0x08000f08
.set func_08000f08, 0x08000f08
.set func_08000f08_end, 0x0800112c
.set mem_heap_alloc_block_rom, 0x0800112c
.set mem_heap_alloc_block_rom_end, 0x0800116c
.set func_0800116c, 0x0800116c
.set func_0800116c_end, 0x08001240
.set func_08001240, 0x08001240
.set func_08001240_end, 0x080012bc
.set func_080012bc, 0x080012bc
.set func_080012bc_end, 0x08001334
.set func_08001334, 0x08001334
.set func_08001334_end, 0x08001360

.set func_08048350, 0x08048350
.set func_0804833e, 0x0804833e
.set func_08048384, 0x08048384
.set func_080483b8, 0x080483b8
.set func_08048744, 0x08048744
.set func_08048758, 0x08048758
.set func_08048a00, 0x08048a00
.set func_08048b40, 0x08048b40
.set func_08048b9c, 0x08048b9c
.set func_08048d44, 0x08048d44
.set func_08048d58, 0x08048d58
.set func_08048fac, 0x08048fac
.set func_08048fc0, 0x08048fc0

.set func_0804e418, 0x0804e418
.set func_0804e938, 0x0804e938

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
