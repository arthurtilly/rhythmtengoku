asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802fc70 \n\
/* 0802fc70 */ PUSH {R4-R7, LR} \n\
/* 0802fc72 */ SUB SP, 0x14 \n\
/* 0802fc74 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0802fc76 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802fc78 */ STRB R2, [R6, 0x1E] \n\
/* 0802fc7a */ STRB R0, [R6, 0x1D] \n\
/* 0802fc7c */ STRB R0, [R6, 0x1F] \n\
/* 0802fc7e */ LDR R1, =D_030055d0 \n\
/* 0802fc80 */ LDR R3, [R1] \n\
/* 0802fc82 */ MOVS R2, 0x91 @ Set R2 to 0x91 \n\
/* 0802fc84 */ LSLS R2, R2, 0x4 \n\
/* 0802fc86 */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 0802fc88 */ LDRB R0, [R0] \n\
/* 0802fc8a */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0802fc8c */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802fc8e */ BEQ branch_0802fce4 \n\
/* 0802fc90 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802fc92 */ BGT branch_0802fca0 \n\
/* 0802fc94 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802fc96 */ BEQ branch_0802fcaa \n\
/* 0802fc98 */ B branch_0802fcdc \n\
\n\
.ltorg \n\
 \n\
branch_0802fca0: \n\
/* 0802fca0 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0802fca2 */ BEQ branch_0802fcae \n\
/* 0802fca4 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0802fca6 */ BEQ branch_0802fcb2 \n\
/* 0802fca8 */ B branch_0802fcdc \n\
 \n\
branch_0802fcaa: \n\
/* 0802fcaa */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802fcac */ B branch_0802fce4 \n\
 \n\
branch_0802fcae: \n\
/* 0802fcae */ MOVS R0, 0x13 @ Set R0 to 0x13 \n\
/* 0802fcb0 */ B branch_0802fce4 \n\
 \n\
branch_0802fcb2: \n\
/* 0802fcb2 */ LDR R1, =D_0805a524 \n\
/* 0802fcb4 */ LDR R2, =0x90f \n\
/* 0802fcb6 */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 0802fcb8 */ LDRB R0, [R0] \n\
/* 0802fcba */ LSLS R0, R0, 0x2 \n\
/* 0802fcbc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802fcbe */ LDR R0, [R0] \n\
/* 0802fcc0 */ STRB R0, [R6, 0x1C] \n\
/* 0802fcc2 */ LDR R0, [R4] \n\
/* 0802fcc4 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0802fcc6 */ LDRB R0, [R1] \n\
/* 0802fcc8 */ CMP R0, 0x29 @ Compare R0 and 0x29 \n\
/* 0802fcca */ BHI branch_0802fce6 \n\
/* 0802fccc */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802fcce */ STRB R0, [R1] \n\
/* 0802fcd0 */ B branch_0802fce6 \n\
\n\
.ltorg \n\
 \n\
branch_0802fcdc: \n\
/* 0802fcdc */ LDR R0, [R4] \n\
/* 0802fcde */ LDR R1, =0x911 \n\
/* 0802fce0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802fce2 */ LDRB R0, [R0] \n\
 \n\
branch_0802fce4: \n\
/* 0802fce4 */ STRB R0, [R6, 0x1C] \n\
 \n\
branch_0802fce6: \n\
/* 0802fce6 */ LDRB R0, [R6, 0x1C] \n\
/* 0802fce8 */ CMP R0, 0x13 @ Compare R0 and 0x13 \n\
/* 0802fcea */ BLS branch_0802fcee \n\
/* 0802fcec */ B branch_0802fe04 \n\
 \n\
branch_0802fcee: \n\
/* 0802fcee */ LSLS R0, R0, 0x2 \n\
/* 0802fcf0 */ LDR R1, =jtbl_0802fd00 \n\
/* 0802fcf2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802fcf4 */ LDR R0, [R0] \n\
/* 0802fcf6 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0802fd00: \n\
.word jump_0802fd50 \n\
.word jump_0802fd68 \n\
.word jump_0802fd80 \n\
.word jump_0802fd98 \n\
.word jump_0802fdb0 \n\
.word jump_0802fdc8 \n\
.word jump_0802fde0 \n\
.word branch_0802fe04 \n\
.word branch_0802fe04 \n\
.word branch_0802fe04 \n\
.word branch_0802fe04 \n\
.word branch_0802fe04 \n\
.word branch_0802fe04 \n\
.word branch_0802fe04 \n\
.word branch_0802fe04 \n\
.word branch_0802fe04 \n\
.word branch_0802fe04 \n\
.word branch_0802fe04 \n\
.word branch_0802fe04 \n\
.word 0x0802fdf8 \n\
jump_0802fd50: \n\
/* 0802fd50 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0802fd52 */ LSLS R0, R0, 0x6 \n\
/* 0802fd54 */ STR R0, [R6, 0x14] \n\
/* 0802fd56 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0802fd58 */ BL func_08001980 \n\
/* 0802fd5c */ LSLS R0, R0, 0x10 \n\
/* 0802fd5e */ LSRS R0, R0, 0x5 \n\
/* 0802fd60 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0802fd62 */ LSLS R2, R2, 0x6 \n\
/* 0802fd64 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802fd66 */ B branch_0802fe0e \n\
jump_0802fd68: \n\
/* 0802fd68 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0802fd6a */ LSLS R0, R0, 0x7 \n\
/* 0802fd6c */ STR R0, [R6, 0x14] \n\
/* 0802fd6e */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0802fd70 */ BL func_08001980 \n\
/* 0802fd74 */ LSLS R0, R0, 0x10 \n\
/* 0802fd76 */ LSRS R0, R0, 0x5 \n\
/* 0802fd78 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 0802fd7a */ LSLS R1, R1, 0x6 \n\
/* 0802fd7c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802fd7e */ B branch_0802fe0e \n\
jump_0802fd80: \n\
/* 0802fd80 */ MOVS R0, 0xB4 @ Set R0 to 0xB4 \n\
/* 0802fd82 */ LSLS R0, R0, 0x8 \n\
/* 0802fd84 */ STR R0, [R6, 0x14] \n\
/* 0802fd86 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0802fd88 */ BL func_08001980 \n\
/* 0802fd8c */ LSLS R0, R0, 0x10 \n\
/* 0802fd8e */ LSRS R0, R0, 0x5 \n\
/* 0802fd90 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0802fd92 */ LSLS R2, R2, 0x6 \n\
/* 0802fd94 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802fd96 */ B branch_0802fe0e \n\
jump_0802fd98: \n\
/* 0802fd98 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0802fd9a */ LSLS R0, R0, 0x5 \n\
/* 0802fd9c */ STR R0, [R6, 0x14] \n\
/* 0802fd9e */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0802fda0 */ BL func_08001980 \n\
/* 0802fda4 */ LSLS R0, R0, 0x10 \n\
/* 0802fda6 */ LSRS R0, R0, 0x5 \n\
/* 0802fda8 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 0802fdaa */ LSLS R1, R1, 0x6 \n\
/* 0802fdac */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802fdae */ B branch_0802fe0e \n\
jump_0802fdb0: \n\
/* 0802fdb0 */ MOVS R0, 0xB4 @ Set R0 to 0xB4 \n\
/* 0802fdb2 */ LSLS R0, R0, 0x7 \n\
/* 0802fdb4 */ STR R0, [R6, 0x14] \n\
/* 0802fdb6 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0802fdb8 */ BL func_08001980 \n\
/* 0802fdbc */ LSLS R0, R0, 0x10 \n\
/* 0802fdbe */ LSRS R0, R0, 0x5 \n\
/* 0802fdc0 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0802fdc2 */ LSLS R2, R2, 0x6 \n\
/* 0802fdc4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802fdc6 */ B branch_0802fe0e \n\
jump_0802fdc8: \n\
/* 0802fdc8 */ MOVS R0, 0x96 @ Set R0 to 0x96 \n\
/* 0802fdca */ LSLS R0, R0, 0x8 \n\
/* 0802fdcc */ STR R0, [R6, 0x14] \n\
/* 0802fdce */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0802fdd0 */ BL func_08001980 \n\
/* 0802fdd4 */ LSLS R0, R0, 0x10 \n\
/* 0802fdd6 */ LSRS R0, R0, 0x5 \n\
/* 0802fdd8 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 0802fdda */ LSLS R1, R1, 0x6 \n\
/* 0802fddc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802fdde */ B branch_0802fe0e \n\
jump_0802fde0: \n\
/* 0802fde0 */ MOVS R0, 0xD2 @ Set R0 to 0xD2 \n\
/* 0802fde2 */ LSLS R0, R0, 0x8 \n\
/* 0802fde4 */ STR R0, [R6, 0x14] \n\
/* 0802fde6 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0802fde8 */ BL func_08001980 \n\
/* 0802fdec */ LSLS R0, R0, 0x10 \n\
/* 0802fdee */ LSRS R0, R0, 0x5 \n\
/* 0802fdf0 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0802fdf2 */ LSLS R2, R2, 0x6 \n\
/* 0802fdf4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802fdf6 */ B branch_0802fe0e \n\
/* 0802fdf8 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0802fdfa */ LSLS R0, R0, 0x7 \n\
/* 0802fdfc */ STR R0, [R6, 0x14] \n\
/* 0802fdfe */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 0802fe00 */ LSLS R0, R0, 0x7 \n\
/* 0802fe02 */ STR R0, [R6, 0x18] \n\
 \n\
branch_0802fe04: \n\
/* 0802fe04 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0802fe06 */ LSLS R0, R0, 0x7 \n\
/* 0802fe08 */ STR R0, [R6, 0x14] \n\
/* 0802fe0a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0802fe0c */ LSLS R0, R0, 0x7 \n\
 \n\
branch_0802fe0e: \n\
/* 0802fe0e */ STR R0, [R6, 0x18] \n\
/* 0802fe10 */ LDRB R7, [R6, 0x1E] \n\
/* 0802fe12 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0802fe14 */ BEQ branch_0802fe7c \n\
/* 0802fe16 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0802fe18 */ BGT branch_0802fe20 \n\
/* 0802fe1a */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0802fe1c */ BEQ branch_0802fe26 \n\
/* 0802fe1e */ B branch_0802ff58 \n\
 \n\
branch_0802fe20: \n\
/* 0802fe20 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0802fe22 */ BEQ branch_0802fedc \n\
/* 0802fe24 */ B branch_0802ff58 \n\
 \n\
branch_0802fe26: \n\
/* 0802fe26 */ LDR R0, [R6, 0x14] \n\
/* 0802fe28 */ STR R0, [R6, 0x4] \n\
/* 0802fe2a */ STR R7, [R6, 0xC] \n\
/* 0802fe2c */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 0802fe2e */ LSLS R0, R0, 0x8 \n\
/* 0802fe30 */ STR R0, [R6, 0x8] \n\
/* 0802fe32 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0802fe34 */ BL func_0800c3a4 \n\
/* 0802fe38 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802fe3a */ LDR R0, [R6, 0x18] \n\
/* 0802fe3c */ LDR R4, [R6, 0x8] \n\
/* 0802fe3e */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0802fe40 */ BL __divsi3 \n\
/* 0802fe44 */ STR R0, [R6, 0x10] \n\
/* 0802fe46 */ LDR R0, =D_03005380 \n\
/* 0802fe48 */ LDR R0, [R0] \n\
/* 0802fe4a */ LDR R1, =D_088e93ec \n\
/* 0802fe4c */ LDR R3, [R6, 0x4] \n\
/* 0802fe4e */ LSLS R3, R3, 0x8 \n\
/* 0802fe50 */ ASRS R3, R3, 0x10 \n\
/* 0802fe52 */ LSLS R4, R4, 0x8 \n\
/* 0802fe54 */ ASRS R4, R4, 0x10 \n\
/* 0802fe56 */ STR R4, [SP] \n\
/* 0802fe58 */ LDR R2, =0x801 \n\
/* 0802fe5a */ STR R2, [SP, 0x4] \n\
/* 0802fe5c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802fe5e */ STR R2, [SP, 0x8] \n\
/* 0802fe60 */ STR R7, [SP, 0xC] \n\
/* 0802fe62 */ STR R7, [SP, 0x10] \n\
/* 0802fe64 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802fe66 */ BL func_0804d160 \n\
/* 0802fe6a */ STRH R0, [R6] \n\
/* 0802fe6c */ B branch_0802ff58 \n\
\n\
.ltorg \n\
 \n\
branch_0802fe7c: \n\
/* 0802fe7c */ LDR R0, [R6, 0x14] \n\
/* 0802fe7e */ STR R0, [R6, 0x4] \n\
/* 0802fe80 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802fe82 */ STR R5, [R6, 0xC] \n\
/* 0802fe84 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 0802fe86 */ LSLS R0, R0, 0x8 \n\
/* 0802fe88 */ STR R0, [R6, 0x8] \n\
/* 0802fe8a */ MOVS R0, 0x48 @ Set R0 to 0x48 \n\
/* 0802fe8c */ BL func_0800c3a4 \n\
/* 0802fe90 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802fe92 */ LDR R0, [R6, 0x18] \n\
/* 0802fe94 */ LDR R4, [R6, 0x8] \n\
/* 0802fe96 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0802fe98 */ BL __divsi3 \n\
/* 0802fe9c */ STR R0, [R6, 0x10] \n\
/* 0802fe9e */ LDR R0, =D_03005380 \n\
/* 0802fea0 */ LDR R0, [R0] \n\
/* 0802fea2 */ LDR R1, =D_088e940c \n\
/* 0802fea4 */ LDR R3, [R6, 0x4] \n\
/* 0802fea6 */ LSLS R3, R3, 0x8 \n\
/* 0802fea8 */ ASRS R3, R3, 0x10 \n\
/* 0802feaa */ LSLS R4, R4, 0x8 \n\
/* 0802feac */ ASRS R4, R4, 0x10 \n\
/* 0802feae */ STR R4, [SP] \n\
/* 0802feb0 */ LDR R2, =0x801 \n\
/* 0802feb2 */ STR R2, [SP, 0x4] \n\
/* 0802feb4 */ STR R7, [SP, 0x8] \n\
/* 0802feb6 */ STR R5, [SP, 0xC] \n\
/* 0802feb8 */ STR R5, [SP, 0x10] \n\
/* 0802feba */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802febc */ BL func_0804d160 \n\
/* 0802fec0 */ STRH R0, [R6] \n\
/* 0802fec2 */ LDR R0, =s_hanabi_hyu_seqData \n\
/* 0802fec4 */ BL func_08002634 \n\
/* 0802fec8 */ B branch_0802ff58 \n\
\n\
.ltorg \n\
 \n\
branch_0802fedc: \n\
/* 0802fedc */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0802fede */ LSLS R0, R0, 0x2 \n\
/* 0802fee0 */ STR R0, [R6, 0xC] \n\
/* 0802fee2 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 0802fee4 */ BL func_0800c3a4 \n\
/* 0802fee8 */ LSLS R0, R0, 0x6 \n\
/* 0802feea */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802feec */ STR R0, [R6, 0x10] \n\
/* 0802feee */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 0802fef0 */ BL func_0800c3a4 \n\
/* 0802fef4 */ LDR R1, [R6, 0xC] \n\
/* 0802fef6 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0802fef8 */ LDR R0, [R6, 0x14] \n\
/* 0802fefa */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0802fefc */ STR R0, [R6, 0x4] \n\
/* 0802fefe */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802ff00 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802ff02 */ B branch_0802ff10 \n\
 \n\
branch_0802ff04: \n\
/* 0802ff04 */ ADDS R0, R5, R4 @ Set R0 to R5 + R4 \n\
/* 0802ff06 */ LSLS R0, R0, 0x10 \n\
/* 0802ff08 */ LSRS R5, R0, 0x10 \n\
/* 0802ff0a */ ADDS R0, R4, 0x1 @ Set R0 to R4 + 0x1 \n\
/* 0802ff0c */ LSLS R0, R0, 0x18 \n\
/* 0802ff0e */ LSRS R4, R0, 0x18 \n\
 \n\
branch_0802ff10: \n\
/* 0802ff10 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 0802ff12 */ BL func_0800c3a4 \n\
/* 0802ff16 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0802ff18 */ BLT branch_0802ff04 \n\
/* 0802ff1a */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 0802ff1c */ BL func_0800c3a4 \n\
/* 0802ff20 */ LDR R1, [R6, 0x10] \n\
/* 0802ff22 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0802ff24 */ LDR R2, [R6, 0x18] \n\
/* 0802ff26 */ SUBS R2, R2, R0 @ Set R2 to R2 - R0 \n\
/* 0802ff28 */ LSLS R0, R5, 0x6 \n\
/* 0802ff2a */ SUBS R2, R2, R0 @ Set R2 to R2 - R0 \n\
/* 0802ff2c */ STR R2, [R6, 0x8] \n\
/* 0802ff2e */ LDR R0, =D_03005380 \n\
/* 0802ff30 */ LDR R0, [R0] \n\
/* 0802ff32 */ LDR R1, =D_088e90ac \n\
/* 0802ff34 */ LDR R3, [R6, 0x4] \n\
/* 0802ff36 */ LSLS R3, R3, 0x8 \n\
/* 0802ff38 */ ASRS R3, R3, 0x10 \n\
/* 0802ff3a */ LSLS R2, R2, 0x8 \n\
/* 0802ff3c */ ASRS R2, R2, 0x10 \n\
/* 0802ff3e */ STR R2, [SP] \n\
/* 0802ff40 */ LDR R2, =0x801 \n\
/* 0802ff42 */ STR R2, [SP, 0x4] \n\
/* 0802ff44 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ff46 */ STR R2, [SP, 0x8] \n\
/* 0802ff48 */ STR R2, [SP, 0xC] \n\
/* 0802ff4a */ STR R2, [SP, 0x10] \n\
/* 0802ff4c */ BL func_0804d160 \n\
/* 0802ff50 */ STRH R0, [R6] \n\
/* 0802ff52 */ LDR R0, =s_f_hanabi_v_tamaya_seqData \n\
/* 0802ff54 */ BL func_08002634 \n\
 \n\
branch_0802ff58: \n\
/* 0802ff58 */ ADD SP, 0x14 \n\
/* 0802ff5a */ POP {R4-R7} \n\
/* 0802ff5c */ POP {R0} \n\
/* 0802ff5e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
