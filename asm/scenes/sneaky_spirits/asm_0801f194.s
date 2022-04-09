asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801f194 \n\
/* 0801f194 */ PUSH {R4-R7, LR} \n\
/* 0801f196 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0801f198 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0801f19a */ PUSH {R6, R7} \n\
/* 0801f19c */ SUB SP, 0xC \n\
/* 0801f19e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801f1a0 */ LDR R0, =D_030055d0 \n\
/* 0801f1a2 */ LDR R2, [R0] \n\
/* 0801f1a4 */ LDRB R0, [R2, 0x5] \n\
/* 0801f1a6 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0801f1a8 */ BNE branch_0801f1ac \n\
/* 0801f1aa */ B branch_0801f2f6 \n\
 \n\
branch_0801f1ac: \n\
/* 0801f1ac */ STRB R1, [R2, 0x5] \n\
/* 0801f1ae */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801f1b0 */ BEQ branch_0801f298 \n\
/* 0801f1b2 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0801f1b4 */ LDR R0, =D_03005380 \n\
/* 0801f1b6 */ MOV R9, R0 @ Set R9 to R0 \n\
 \n\
branch_0801f1b8: \n\
/* 0801f1b8 */ LDR R0, =D_030055d0 \n\
/* 0801f1ba */ LDR R1, [R0] \n\
/* 0801f1bc */ LSLS R2, R7, 0x1 \n\
/* 0801f1be */ ADDS R0, R1, 0x6 @ Set R0 to R1 + 0x6 \n\
/* 0801f1c0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801f1c2 */ LDRH R5, [R0] \n\
/* 0801f1c4 */ ADDS R1, 0x8B @ Add 0x8B to R1 \n\
/* 0801f1c6 */ LDRB R0, [R1] \n\
/* 0801f1c8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801f1ca */ BNE branch_0801f1f0 \n\
/* 0801f1cc */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0801f1ce */ BL func_08001980 \n\
/* 0801f1d2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801f1d4 */ LSLS R1, R1, 0x10 \n\
/* 0801f1d6 */ LSRS R1, R1, 0x10 \n\
/* 0801f1d8 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0801f1da */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801f1dc */ LSLS R0, R0, 0x1 \n\
/* 0801f1de */ BL __divsi3 \n\
/* 0801f1e2 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801f1e4 */ B branch_0801f1f4 \n\
\n\
.ltorg \n\
branch_0801f1f0: \n\
/* 0801f1f0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801f1f2 */ MOV R8, R1 @ Set R8 to R1 \n\
 \n\
branch_0801f1f4: \n\
/* 0801f1f4 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0801f1f6 */ LDR R0, [R2] \n\
/* 0801f1f8 */ LSLS R5, R5, 0x10 \n\
/* 0801f1fa */ ASRS R5, R5, 0x10 \n\
/* 0801f1fc */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801f1fe */ STR R1, [SP] \n\
/* 0801f200 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 0801f202 */ STR R1, [SP, 0x4] \n\
/* 0801f204 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801f206 */ STR R1, [SP, 0x8] \n\
/* 0801f208 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801f20a */ LDR R2, =D_088a1010 \n\
/* 0801f20c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801f20e */ BL func_0804d8f8 \n\
/* 0801f212 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0801f214 */ LDR R6, [R0] \n\
/* 0801f216 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0801f218 */ BL func_08001980 \n\
/* 0801f21c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801f21e */ LSLS R4, R4, 0x10 \n\
/* 0801f220 */ ASRS R4, R4, 0x10 \n\
/* 0801f222 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 0801f224 */ BL func_08001980 \n\
/* 0801f228 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0801f22a */ LSLS R3, R3, 0x10 \n\
/* 0801f22c */ ASRS R3, R3, 0x10 \n\
/* 0801f22e */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0801f230 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801f232 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0801f234 */ BL func_0804d5d4 \n\
/* 0801f238 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0801f23a */ LDR R0, [R1] \n\
/* 0801f23c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0801f23e */ LSLS R2, R1, 0x10 \n\
/* 0801f240 */ LSRS R2, R2, 0x10 \n\
/* 0801f242 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801f244 */ BL func_0804dcb8 \n\
/* 0801f248 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0801f24a */ LDR R0, [R2] \n\
/* 0801f24c */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801f24e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801f250 */ BL func_0804d770 \n\
/* 0801f254 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0801f256 */ CMP R7, 0x1D @ Compare R7 and 0x1D \n\
/* 0801f258 */ BLS branch_0801f1b8 \n\
/* 0801f25a */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_0801f25c: \n\
/* 0801f25c */ LDR R5, =D_030055d0 \n\
/* 0801f25e */ LDR R1, [R5] \n\
/* 0801f260 */ LSLS R0, R7, 0x1 \n\
/* 0801f262 */ ADDS R1, 0x44 @ Add 0x44 to R1 \n\
/* 0801f264 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801f266 */ LDR R4, =D_03005380 \n\
/* 0801f268 */ LDR R0, [R4] \n\
/* 0801f26a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f26c */ LDRSH R1, [R1, R2] \n\
/* 0801f26e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801f270 */ BL func_0804da20 \n\
/* 0801f274 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0801f276 */ CMP R7, 0x13 @ Compare R7 and 0x13 \n\
/* 0801f278 */ BLS branch_0801f25c \n\
/* 0801f27a */ LDR R0, [R4] \n\
/* 0801f27c */ LDR R1, [R5] \n\
/* 0801f27e */ ADDS R1, 0x6E @ Add 0x6E to R1 \n\
/* 0801f280 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f282 */ LDRSH R1, [R1, R2] \n\
/* 0801f284 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801f286 */ BL func_0804da20 \n\
/* 0801f28a */ B branch_0801f2f6 \n\
\n\
.ltorg \n\
 \n\
branch_0801f298: \n\
/* 0801f298 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0801f29a */ LDR R5, =D_03005380 \n\
 \n\
branch_0801f29c: \n\
/* 0801f29c */ LDR R0, =D_030055d0 \n\
/* 0801f29e */ LDR R1, [R0] \n\
/* 0801f2a0 */ LSLS R0, R7, 0x1 \n\
/* 0801f2a2 */ ADDS R1, 0x6 @ Add 0x6 to R1 \n\
/* 0801f2a4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801f2a6 */ LDR R0, [R5] \n\
/* 0801f2a8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f2aa */ LDRSH R4, [R1, R2] \n\
/* 0801f2ac */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801f2ae */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f2b0 */ BL func_0804d770 \n\
/* 0801f2b4 */ LDR R0, [R5] \n\
/* 0801f2b6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801f2b8 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801f2ba */ LSLS R2, R2, 0x1 \n\
/* 0801f2bc */ BL func_0804dcb8 \n\
/* 0801f2c0 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0801f2c2 */ CMP R7, 0x1D @ Compare R7 and 0x1D \n\
/* 0801f2c4 */ BLS branch_0801f29c \n\
/* 0801f2c6 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_0801f2c8: \n\
/* 0801f2c8 */ LDR R5, =D_030055d0 \n\
/* 0801f2ca */ LDR R1, [R5] \n\
/* 0801f2cc */ LSLS R0, R7, 0x1 \n\
/* 0801f2ce */ ADDS R1, 0x44 @ Add 0x44 to R1 \n\
/* 0801f2d0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801f2d2 */ LDR R4, =D_03005380 \n\
/* 0801f2d4 */ LDR R0, [R4] \n\
/* 0801f2d6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f2d8 */ LDRSH R1, [R1, R2] \n\
/* 0801f2da */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f2dc */ BL func_0804da20 \n\
/* 0801f2e0 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0801f2e2 */ CMP R7, 0x13 @ Compare R7 and 0x13 \n\
/* 0801f2e4 */ BLS branch_0801f2c8 \n\
/* 0801f2e6 */ LDR R0, [R4] \n\
/* 0801f2e8 */ LDR R1, [R5] \n\
/* 0801f2ea */ ADDS R1, 0x6E @ Add 0x6E to R1 \n\
/* 0801f2ec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f2ee */ LDRSH R1, [R1, R2] \n\
/* 0801f2f0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f2f2 */ BL func_0804da20 \n\
 \n\
branch_0801f2f6: \n\
/* 0801f2f6 */ ADD SP, 0xC \n\
/* 0801f2f8 */ POP {R3, R4} \n\
/* 0801f2fa */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801f2fc */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801f2fe */ POP {R4-R7} \n\
/* 0801f300 */ POP {R0} \n\
/* 0801f302 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
