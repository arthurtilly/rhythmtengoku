asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801cb0c \n\
/* 0801cb0c */ PUSH {R4-R7, LR} \n\
/* 0801cb0e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0801cb10 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801cb12 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801cb14 */ PUSH {R5-R7} \n\
/* 0801cb16 */ SUB SP, 0x14 \n\
/* 0801cb18 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0801cb1a */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0801cb1c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801cb1e */ LSLS R0, R0, 0x8 \n\
/* 0801cb20 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0801cb22 */ MOV R10, R6 @ Set R10 to R6 \n\
/* 0801cb24 */ MOVS R1, 0x14 @ Set R1 to 0x14 \n\
/* 0801cb26 */ MOV R8, R1 @ Set R8 to R1 \n\
 \n\
branch_0801cb28: \n\
/* 0801cb28 */ LDR R2, =D_030046a4 \n\
/* 0801cb2a */ LDR R4, [R2] \n\
/* 0801cb2c */ ADD R4, R8 @ Add R8 to R4 \n\
/* 0801cb2e */ LDR R5, =D_089dcf68 \n\
/* 0801cb30 */ ADD R5, R10 @ Add R10 to R5 \n\
/* 0801cb32 */ STRB R6, [R4] \n\
/* 0801cb34 */ LDR R3, =D_03005380 \n\
/* 0801cb36 */ LDR R0, [R3] \n\
/* 0801cb38 */ LDR R1, [R5] \n\
/* 0801cb3a */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0801cb3c */ LDRSH R2, [R5, R3] \n\
/* 0801cb3e */ MOV R12, R2 @ Set R12 to R2 \n\
/* 0801cb40 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 0801cb42 */ LDRSH R2, [R5, R3] \n\
/* 0801cb44 */ STR R2, [SP] \n\
/* 0801cb46 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 0801cb48 */ LSLS R2, R2, 0x7 \n\
/* 0801cb4a */ STR R2, [SP, 0x4] \n\
/* 0801cb4c */ STR R6, [SP, 0x8] \n\
/* 0801cb4e */ STR R6, [SP, 0xC] \n\
/* 0801cb50 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0801cb52 */ STR R2, [SP, 0x10] \n\
/* 0801cb54 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801cb56 */ MOV R3, R12 @ Set R3 to R12 \n\
/* 0801cb58 */ BL func_0804d160 \n\
/* 0801cb5c */ STRH R0, [R4, 0x6] \n\
/* 0801cb5e */ LDR R3, =D_03005380 \n\
/* 0801cb60 */ LDR R0, [R3] \n\
/* 0801cb62 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0801cb64 */ LDRSH R3, [R5, R1] \n\
/* 0801cb66 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0801cb68 */ LDRSH R1, [R5, R2] \n\
/* 0801cb6a */ STR R1, [SP] \n\
/* 0801cb6c */ LDR R1, =0x4801 \n\
/* 0801cb6e */ STR R1, [SP, 0x4] \n\
/* 0801cb70 */ STR R6, [SP, 0x8] \n\
/* 0801cb72 */ STR R6, [SP, 0xC] \n\
/* 0801cb74 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0801cb76 */ STR R1, [SP, 0x10] \n\
/* 0801cb78 */ LDR R1, =D_0890d4f0 \n\
/* 0801cb7a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801cb7c */ BL func_0804d160 \n\
/* 0801cb80 */ STRH R0, [R4, 0x2] \n\
/* 0801cb82 */ LDR R2, =D_03005380 \n\
/* 0801cb84 */ LDR R0, [R2] \n\
/* 0801cb86 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0801cb88 */ LDRSH R3, [R5, R1] \n\
/* 0801cb8a */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0801cb8c */ LDRSH R1, [R5, R2] \n\
/* 0801cb8e */ STR R1, [SP] \n\
/* 0801cb90 */ LDR R1, =0x4802 \n\
/* 0801cb92 */ STR R1, [SP, 0x4] \n\
/* 0801cb94 */ STR R6, [SP, 0x8] \n\
/* 0801cb96 */ STR R6, [SP, 0xC] \n\
/* 0801cb98 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0801cb9a */ STR R1, [SP, 0x10] \n\
/* 0801cb9c */ LDR R1, =D_0890d500 \n\
/* 0801cb9e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801cba0 */ BL func_0804d160 \n\
/* 0801cba4 */ STRH R0, [R4, 0x4] \n\
/* 0801cba6 */ LDRH R0, [R5, 0x4] \n\
/* 0801cba8 */ STRH R0, [R4, 0x8] \n\
/* 0801cbaa */ LDRH R0, [R5, 0x6] \n\
/* 0801cbac */ STRH R0, [R4, 0xA] \n\
/* 0801cbae */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0801cbb0 */ BL agb_random \n\
/* 0801cbb4 */ ADDS R0, 0x96 @ Add 0x96 to R0 \n\
/* 0801cbb6 */ STRH R0, [R4, 0xC] \n\
/* 0801cbb8 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0801cbba */ BL agb_random \n\
/* 0801cbbe */ ADDS R0, 0xEE @ Add 0xEE to R0 \n\
/* 0801cbc0 */ STRH R0, [R4, 0xE] \n\
/* 0801cbc2 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0801cbc4 */ BL agb_random \n\
/* 0801cbc8 */ SUBS R0, 0x10 @ Subtract 0x10 from R0 \n\
/* 0801cbca */ STRH R0, [R4, 0x10] \n\
/* 0801cbcc */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0801cbce */ BL agb_random \n\
/* 0801cbd2 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0801cbd4 */ STRH R0, [R4, 0x12] \n\
/* 0801cbd6 */ LDRH R0, [R5, 0x8] \n\
/* 0801cbd8 */ STRH R0, [R4, 0x14] \n\
/* 0801cbda */ LDRH R0, [R5, 0x8] \n\
/* 0801cbdc */ STRH R0, [R4, 0x16] \n\
/* 0801cbde */ STRH R6, [R4, 0x18] \n\
/* 0801cbe0 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0801cbe2 */ BL func_0801ca34 \n\
/* 0801cbe6 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0801cbe8 */ ADD R10, R2 @ Add R2 to R10 \n\
/* 0801cbea */ MOVS R3, 0x1C @ Set R3 to 0x1C \n\
/* 0801cbec */ ADD R8, R3 @ Add R3 to R8 \n\
/* 0801cbee */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0801cbf0 */ CMP R7, 0x4 @ Compare R7 and 0x4 \n\
/* 0801cbf2 */ BLS branch_0801cb28 \n\
/* 0801cbf4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801cbf6 */ LDR R2, =D_030046a4 \n\
/* 0801cbf8 */ LDR R0, [R2] \n\
/* 0801cbfa */ ADDS R0, 0xA0 @ Add 0xA0 to R0 \n\
/* 0801cbfc */ STR R1, [R0] \n\
/* 0801cbfe */ ADD SP, 0x14 \n\
/* 0801cc00 */ POP {R3-R5} \n\
/* 0801cc02 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801cc04 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801cc06 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0801cc08 */ POP {R4-R7} \n\
/* 0801cc0a */ POP {R0} \n\
/* 0801cc0c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
