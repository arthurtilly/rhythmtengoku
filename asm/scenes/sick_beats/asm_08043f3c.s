asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08043f3c \n\
/* 08043f3c */ PUSH {R4-R7, LR} \n\
/* 08043f3e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08043f40 */ PUSH {R7} \n\
/* 08043f42 */ SUB SP, 0xC \n\
/* 08043f44 */ LDR R7, =D_030055d0 \n\
/* 08043f46 */ LDR R4, [R7] \n\
/* 08043f48 */ ADDS R0, R4, 0x4 @ Set R0 to R4 + 0x4 \n\
/* 08043f4a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08043f4c */ MOVS R6, 0xF9 @ Set R6 to 0xF9 \n\
/* 08043f4e */ LSLS R6, R6, 0x1 \n\
/* 08043f50 */ ADDS R0, R4, R6 @ Set R0 to R4 + R6 \n\
/* 08043f52 */ LDRB R5, [R0] \n\
/* 08043f54 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08043f56 */ BNE branch_08043f8c \n\
/* 08043f58 */ LDR R0, =D_03005380 \n\
/* 08043f5a */ LDR R0, [R0] \n\
/* 08043f5c */ MOVS R2, 0xFB @ Set R2 to 0xFB \n\
/* 08043f5e */ LSLS R2, R2, 0x1 \n\
/* 08043f60 */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 08043f62 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08043f64 */ LDRSH R1, [R1, R3] \n\
/* 08043f66 */ LDR R2, =D_089e92f4 \n\
/* 08043f68 */ MOV R12, R2 @ Set R12 to R2 \n\
/* 08043f6a */ MOVS R3, 0xF8 @ Set R3 to 0xF8 \n\
/* 08043f6c */ LSLS R3, R3, 0x1 \n\
/* 08043f6e */ ADDS R2, R4, R3 @ Set R2 to R4 + R3 \n\
/* 08043f70 */ LDRB R2, [R2] \n\
/* 08043f72 */ LSLS R2, R2, 0x18 \n\
/* 08043f74 */ ASRS R2, R2, 0x18 \n\
/* 08043f76 */ LSLS R2, R2, 0x2 \n\
/* 08043f78 */ ADD R2, R12 @ Add R12 to R2 \n\
/* 08043f7a */ LDR R2, [R2] \n\
/* 08043f7c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08043f7e */ STR R3, [SP] \n\
/* 08043f80 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08043f82 */ STR R3, [SP, 0x4] \n\
/* 08043f84 */ STR R5, [SP, 0x8] \n\
/* 08043f86 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08043f88 */ BL func_0804d8f8 \n\
 \n\
branch_08043f8c: \n\
/* 08043f8c */ LDR R1, [R7] \n\
/* 08043f8e */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08043f90 */ LDRB R0, [R1] \n\
/* 08043f92 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08043f94 */ STRB R0, [R1] \n\
/* 08043f96 */ LDR R0, [R7] \n\
/* 08043f98 */ ADDS R2, R0, R6 @ Set R2 to R0 + R6 \n\
/* 08043f9a */ LDR R1, =D_089e92f0 \n\
/* 08043f9c */ MOVS R5, 0xF8 @ Set R5 to 0xF8 \n\
/* 08043f9e */ LSLS R5, R5, 0x1 \n\
/* 08043fa0 */ ADDS R3, R0, R5 @ Set R3 to R0 + R5 \n\
/* 08043fa2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08043fa4 */ LDRSB R0, [R3, R0] \n\
/* 08043fa6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08043fa8 */ LDRB R1, [R2] \n\
/* 08043faa */ LDRB R0, [R0] \n\
/* 08043fac */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08043fae */ BCC branch_08043fb8 \n\
/* 08043fb0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08043fb2 */ STRB R0, [R3] \n\
/* 08043fb4 */ BL func_080435e8 \n\
 \n\
branch_08043fb8: \n\
/* 08043fb8 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08043fba */ BL func_0800c3a4 \n\
/* 08043fbe */ LDR R1, [R7] \n\
/* 08043fc0 */ MOVS R2, 0xFA @ Set R2 to 0xFA \n\
/* 08043fc2 */ LSLS R2, R2, 0x1 \n\
/* 08043fc4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08043fc6 */ STRH R0, [R1] \n\
/* 08043fc8 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08043fca */ LDRB R0, [R3, 0x2] \n\
/* 08043fcc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043fce */ BNE branch_08043fde \n\
/* 08043fd0 */ LDR R0, =D_03005380 \n\
/* 08043fd2 */ LDR R0, [R0] \n\
/* 08043fd4 */ MOVS R5, 0x4 @ Set R5 to 0x4 \n\
/* 08043fd6 */ LDRSH R1, [R4, R5] \n\
/* 08043fd8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08043fda */ BL func_0804cebc \n\
 \n\
branch_08043fde: \n\
/* 08043fde */ LDR R0, =D_03005380 \n\
/* 08043fe0 */ LDR R0, [R0] \n\
/* 08043fe2 */ LDR R1, [R7] \n\
/* 08043fe4 */ MOVS R2, 0xFC @ Set R2 to 0xFC \n\
/* 08043fe6 */ LSLS R2, R2, 0x1 \n\
/* 08043fe8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08043fea */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08043fec */ LDRSH R1, [R1, R3] \n\
/* 08043fee */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08043ff0 */ BL func_0804cebc \n\
/* 08043ff4 */ ADD SP, 0xC \n\
/* 08043ff6 */ POP {R3} \n\
/* 08043ff8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08043ffa */ POP {R4-R7} \n\
/* 08043ffc */ POP {R0} \n\
/* 08043ffe */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
