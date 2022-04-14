.ifndef GBA_HEADER
.set GBA_HEADER, 0

.include "include/asm_macros.inc"

.set func_08048350, 0x08048350
.set func_08048384, 0x08048384
.set func_08048744, 0x08048744
.set func_08048b40, 0x08048b40
.set func_08048d44, 0x08048d44
.set func_08048fac, 0x08048fac
.set func_08049144, 0x08049145
.set func_08049b70, 0x08049b70
.set func_08049be4, 0x08049be4
.set func_08049bfc, 0x08049bfc
.set func_0804adb0, 0x0804adb0
.set func_0804b368, 0x0804b368
.set func_0804b534, 0x0804b534
.set func_0804b5a0, 0x0804b5a0
.set func_0804b5d8, 0x0804b5d8
.set func_0804b5e4, 0x0804b5e4
.set func_0804b5f0, 0x0804b5f0
.set func_0804b620, 0x0804b620
.set func_0804b650, 0x0804b650
.set func_0804b654, 0x0804b654
.set func_0804b65c, 0x0804b65c
.set func_0804b66c, 0x0804b66c
.set func_0804b710, 0x0804b710
.set func_0804b7dc, 0x0804b7dc
.set func_0804b7fc, 0x0804b7fc
.set func_0804c170, 0x0804c170
.set func_0804c340, 0x0804c340
.set func_0804c778, 0x0804c778
.set func_0804c868, 0x0804c868
.set func_0804c86c, 0x0804c86c
.set func_0804c8b0, 0x0804c8b0
.set func_0804c96c, 0x0804c96c
.set func_0804ca80, 0x0804ca80
.set func_0804ca94, 0x0804ca94
.set func_0804caa0, 0x0804caa0
.set func_0804cbcc, 0x0804cbcc
.set func_0804cebc, 0x0804cebc
.set func_0804ced0, 0x0804ced0
.set func_0804d160, 0x0804d160
.set func_0804d294, 0x0804d294
.set func_0804d3cc, 0x0804d3cc
.set func_0804d504, 0x0804d504
.set func_0804d55c, 0x0804d55c
.set func_0804d5d4, 0x0804d5d4
.set func_0804d614, 0x0804d614
.set func_0804d648, 0x0804d648
.set func_0804d67c, 0x0804d67c
.set func_0804d6cc, 0x0804d6cc
.set func_0804d708, 0x0804d708
.set func_0804d770, 0x0804d770
.set func_0804d7b4, 0x0804d7b4
.set func_0804d7e8, 0x0804d7e8
.set func_0804d820, 0x0804d820
.set func_0804d858, 0x0804d858
.set func_0804d890, 0x0804d890
.set func_0804d8c4, 0x0804d8c4
.set func_0804d8f8, 0x0804d8f8
.set func_0804d9b0, 0x0804d9b0
.set func_0804da20, 0x0804da20
.set func_0804da68, 0x0804da68
.set func_0804daa8, 0x0804daa8
.set func_0804dae0, 0x0804dae0
.set func_0804db44, 0x0804db44
.set func_0804db90, 0x0804db90
.set func_0804dc10, 0x0804dc10
.set func_0804dc8c, 0x0804dc8c
.set func_0804dcb8, 0x0804dcb8
.set func_0804ddb0, 0x0804ddb0
.set func_0804df4c, 0x0804df4c
.set func_0804df6c, 0x0804df6c
.set func_0804e0bc, 0x0804e0bc
.set func_0804e0c0, 0x0804e0c0
.set func_0804e0c4, 0x0804e0c4
.set func_0804e0f0, 0x0804e0f0
.set func_0804e158, 0x0804e158
.set func_0804e170, 0x0804e170
.set func_0804e188, 0x0804e188
.set func_0804e1bc, 0x0804e1bc
.set func_0804e1c8, 0x0804e1c8
.set func_0804e598, 0x0804e598
.set func_0804e640, 0x0804e640
.set func_0804e690, 0x0804e690
.set func_0804e6c4, 0x0804e6c4
.set func_0804e870, 0x0804e870
.set func_0804e8f8, 0x0804e8f8
.set func_0804e914, 0x0804e914
.set func_0804eaec, 0x0804eaec
.set func_0804eaf0, 0x0804eaf0
.set func_0804eaf4, 0x0804eaf4
.set func_0804eaf8, 0x0804eaf8

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
