asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003f50 \n\
/* 08003f50 */ PUSH {R4-R7, LR} \n\
/* 08003f52 */ LDR R0, =0x040000b8 @ !Hardware REG_DMA0CNT_L \n\
/* 08003f54 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 08003f56 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08003f58 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 08003f5a */ STR R0, [R1] \n\
/* 08003f5c */ LDR R7, =D_03000748 \n\
/* 08003f5e */ LDRB R2, [R7] \n\
/* 08003f60 */ LSLS R0, R2, 0x1F \n\
/* 08003f62 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003f64 */ BEQ branch_08003f9a \n\
/* 08003f66 */ LDR R6, =0x040000b0 @ !Hardware REG_DMA0SAD \n\
/* 08003f68 */ LDR R3, [R7, 0x8] \n\
/* 08003f6a */ STR R3, [R6] \n\
/* 08003f6c */ LDR R5, =0x040000b4 @ !Hardware REG_DMA0DAD \n\
/* 08003f6e */ LDR R4, [R7, 0xC] \n\
/* 08003f70 */ STR R4, [R5] \n\
/* 08003f72 */ LDRH R1, [R7, 0x2] \n\
/* 08003f74 */ LSLS R2, R2, 0x1E \n\
/* 08003f76 */ LSRS R2, R2, 0x1F \n\
/* 08003f78 */ LSLS R0, R2, 0xA \n\
/* 08003f7a */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08003f7c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08003f7e */ LSLS R0, R0, 0x18 \n\
/* 08003f80 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08003f82 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08003f84 */ STR R1, [R0] \n\
/* 08003f86 */ LDRH R0, [R7, 0x2] \n\
/* 08003f88 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08003f8a */ LSLS R0, R2 @ Set R0 to R0 << R2 (logical) \n\
/* 08003f8c */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 08003f8e */ STR R3, [R6] \n\
/* 08003f90 */ STR R4, [R5] \n\
/* 08003f92 */ LDR R0, =0x22600000 \n\
/* 08003f94 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08003f96 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08003f98 */ STR R1, [R0] \n\
 \n\
branch_08003f9a: \n\
/* 08003f9a */ POP {R4-R7} \n\
/* 08003f9c */ POP {R0} \n\
/* 08003f9e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
