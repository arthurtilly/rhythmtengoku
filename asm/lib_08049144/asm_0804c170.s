asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804c170 \n\
/* 0804c170 */ PUSH {R4-R7, LR} \n\
/* 0804c172 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0804c174 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0804c176 */ PUSH {R6, R7} \n\
/* 0804c178 */ LDR R0, =D_03005b90 \n\
/* 0804c17a */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0804c17c */ LDRSB R6, [R0, R6] \n\
/* 0804c17e */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 0804c180 */ LDRSB R7, [R0, R7] \n\
/* 0804c182 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0804c184 */ LDRSB R1, [R0, R1] \n\
/* 0804c186 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804c188 */ LDRB R0, [R0, 0x3] \n\
/* 0804c18a */ LSLS R0, R0, 0x18 \n\
/* 0804c18c */ ASRS R0, R0, 0x18 \n\
/* 0804c18e */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0804c190 */ LDR R1, =D_030055f0 \n\
/* 0804c192 */ LDR R0, =0x04000006 @ !Hardware REG_VCOUNT \n\
/* 0804c194 */ LDRH R0, [R0] \n\
/* 0804c196 */ STRH R0, [R1] \n\
/* 0804c198 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0804c19a */ B branch_0804c214 \n\
\n\
.ltorg \n\
 \n\
branch_0804c1a8: \n\
/* 0804c1a8 */ LDR R1, =D_08aa4324 \n\
/* 0804c1aa */ LSLS R0, R5, 0x2 \n\
/* 0804c1ac */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804c1ae */ LDR R4, [R0] \n\
/* 0804c1b0 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0804c1b2 */ BEQ branch_0804c212 \n\
/* 0804c1b4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804c1b6 */ BL func_0804c040 \n\
/* 0804c1ba */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804c1bc */ BL func_0804c0f8 \n\
/* 0804c1c0 */ LDR R0, [R4, 0x4] \n\
/* 0804c1c2 */ BL func_08049d08 \n\
/* 0804c1c6 */ LDR R0, [R4, 0xC] \n\
/* 0804c1c8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804c1ca */ BEQ branch_0804c212 \n\
/* 0804c1cc */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804c1ce */ SUBS R1, 0x80 @ Subtract 0x80 from R1 \n\
/* 0804c1d0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804c1d2 */ ADDS R0, 0x2D @ Add 0x2D to R0 \n\
/* 0804c1d4 */ LDRB R0, [R0] \n\
/* 0804c1d6 */ LSLS R0, R0, 0x18 \n\
/* 0804c1d8 */ ASRS R0, R0, 0x18 \n\
/* 0804c1da */ LSLS R0, R0, 0x1 \n\
/* 0804c1dc */ ADDS R6, R1, R0 @ Set R6 to R1 + R0 \n\
/* 0804c1de */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0804c1e0 */ SUBS R1, 0x40 @ Subtract 0x40 from R1 \n\
/* 0804c1e2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804c1e4 */ ADDS R0, 0x2E @ Add 0x2E to R0 \n\
/* 0804c1e6 */ LDRB R0, [R0] \n\
/* 0804c1e8 */ LSLS R0, R0, 0x18 \n\
/* 0804c1ea */ ASRS R0, R0, 0x18 \n\
/* 0804c1ec */ ADDS R7, R1, R0 @ Set R7 to R1 + R0 \n\
/* 0804c1ee */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804c1f0 */ SUBS R1, 0x40 @ Subtract 0x40 from R1 \n\
/* 0804c1f2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804c1f4 */ ADDS R0, 0x2F @ Add 0x2F to R0 \n\
/* 0804c1f6 */ LDRB R0, [R0] \n\
/* 0804c1f8 */ LSLS R0, R0, 0x18 \n\
/* 0804c1fa */ ASRS R0, R0, 0x18 \n\
/* 0804c1fc */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804c1fe */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804c200 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0804c202 */ SUBS R1, 0x40 @ Subtract 0x40 from R1 \n\
/* 0804c204 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804c206 */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 0804c208 */ LDRB R0, [R0] \n\
/* 0804c20a */ LSLS R0, R0, 0x18 \n\
/* 0804c20c */ ASRS R0, R0, 0x18 \n\
/* 0804c20e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804c210 */ MOV R9, R1 @ Set R9 to R1 \n\
 \n\
branch_0804c212: \n\
/* 0804c212 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
 \n\
branch_0804c214: \n\
/* 0804c214 */ LDR R0, =D_08aa4318 \n\
/* 0804c216 */ LDR R0, [R0] \n\
/* 0804c218 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0804c21a */ BLS branch_0804c1a8 \n\
/* 0804c21c */ LDR R0, =D_03001598 \n\
/* 0804c21e */ LDR R4, [R0] \n\
/* 0804c220 */ LDR R0, =D_08aa431c \n\
/* 0804c222 */ LDRB R0, [R0] \n\
/* 0804c224 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804c226 */ BEQ branch_0804c276 \n\
/* 0804c228 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0804c22a */ BEQ branch_0804c276 \n\
/* 0804c22c */ BL func_0804c6c8 \n\
/* 0804c230 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804c232 */ SUBS R1, 0x80 @ Subtract 0x80 from R1 \n\
/* 0804c234 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804c236 */ ADDS R0, 0x2D @ Add 0x2D to R0 \n\
/* 0804c238 */ LDRB R0, [R0] \n\
/* 0804c23a */ LSLS R0, R0, 0x18 \n\
/* 0804c23c */ ASRS R0, R0, 0x18 \n\
/* 0804c23e */ LSLS R0, R0, 0x1 \n\
/* 0804c240 */ ADDS R6, R1, R0 @ Set R6 to R1 + R0 \n\
/* 0804c242 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0804c244 */ SUBS R1, 0x40 @ Subtract 0x40 from R1 \n\
/* 0804c246 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804c248 */ ADDS R0, 0x2E @ Add 0x2E to R0 \n\
/* 0804c24a */ LDRB R0, [R0] \n\
/* 0804c24c */ LSLS R0, R0, 0x18 \n\
/* 0804c24e */ ASRS R0, R0, 0x18 \n\
/* 0804c250 */ ADDS R7, R1, R0 @ Set R7 to R1 + R0 \n\
/* 0804c252 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804c254 */ SUBS R1, 0x40 @ Subtract 0x40 from R1 \n\
/* 0804c256 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804c258 */ ADDS R0, 0x2F @ Add 0x2F to R0 \n\
/* 0804c25a */ LDRB R0, [R0] \n\
/* 0804c25c */ LSLS R0, R0, 0x18 \n\
/* 0804c25e */ ASRS R0, R0, 0x18 \n\
/* 0804c260 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804c262 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804c264 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0804c266 */ SUBS R1, 0x40 @ Subtract 0x40 from R1 \n\
/* 0804c268 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804c26a */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 0804c26c */ LDRB R0, [R0] \n\
/* 0804c26e */ LSLS R0, R0, 0x18 \n\
/* 0804c270 */ ASRS R0, R0, 0x18 \n\
/* 0804c272 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804c274 */ MOV R9, R1 @ Set R9 to R1 \n\
 \n\
branch_0804c276: \n\
/* 0804c276 */ LDR R0, =D_03005644 \n\
/* 0804c278 */ LDR R1, [R0] \n\
/* 0804c27a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804c27c */ BEQ branch_0804c2ae \n\
/* 0804c27e */ LDR R0, =D_03005b3c \n\
/* 0804c280 */ LDRB R0, [R0] \n\
/* 0804c282 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804c284 */ BEQ branch_0804c2ae \n\
/* 0804c286 */ LDR R0, [R1] \n\
/* 0804c288 */ LSLS R0, R0, 0xB \n\
/* 0804c28a */ LSRS R0, R0, 0x17 \n\
/* 0804c28c */ LDRH R1, [R1, 0x26] \n\
/* 0804c28e */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 0804c290 */ BL func_0804b6f0 \n\
/* 0804c294 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804c296 */ LDR R4, =D_03005b30 \n\
/* 0804c298 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804c29a */ BL func_0804ae6c \n\
/* 0804c29e */ MOVS R1, 0x7 @ Set R1 to 0x7 \n\
/* 0804c2a0 */ LDRSB R1, [R4, R1] \n\
/* 0804c2a2 */ LDR R0, =D_03005640 \n\
/* 0804c2a4 */ LDRB R0, [R0] \n\
/* 0804c2a6 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0804c2a8 */ ASRS R0, R0, 0x8 \n\
/* 0804c2aa */ BL func_08049b70 \n\
 \n\
branch_0804c2ae: \n\
/* 0804c2ae */ BL func_0804a334 \n\
/* 0804c2b2 */ LDR R0, =D_03005b80 \n\
/* 0804c2b4 */ LDR R1, =0x04000006 @ !Hardware REG_VCOUNT \n\
/* 0804c2b6 */ LDRH R1, [R1] \n\
/* 0804c2b8 */ STRH R1, [R0] \n\
/* 0804c2ba */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0804c2bc */ BGE branch_0804c2c0 \n\
/* 0804c2be */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
 \n\
branch_0804c2c0: \n\
/* 0804c2c0 */ CMP R6, 0x7F @ Compare R6 and 0x7F \n\
/* 0804c2c2 */ BLE branch_0804c2c6 \n\
/* 0804c2c4 */ MOVS R6, 0x7F @ Set R6 to 0x7F \n\
 \n\
branch_0804c2c6: \n\
/* 0804c2c6 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0804c2c8 */ BGE branch_0804c2cc \n\
/* 0804c2ca */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_0804c2cc: \n\
/* 0804c2cc */ CMP R7, 0x7F @ Compare R7 and 0x7F \n\
/* 0804c2ce */ BLE branch_0804c2d2 \n\
/* 0804c2d0 */ MOVS R7, 0x7F @ Set R7 to 0x7F \n\
 \n\
branch_0804c2d2: \n\
/* 0804c2d2 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804c2d4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804c2d6 */ BGE branch_0804c2dc \n\
/* 0804c2d8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804c2da */ MOV R8, R1 @ Set R8 to R1 \n\
 \n\
branch_0804c2dc: \n\
/* 0804c2dc */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804c2de */ CMP R0, 0x7F @ Compare R0 and 0x7F \n\
/* 0804c2e0 */ BLE branch_0804c2e6 \n\
/* 0804c2e2 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 0804c2e4 */ MOV R8, R1 @ Set R8 to R1 \n\
 \n\
branch_0804c2e6: \n\
/* 0804c2e6 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804c2e8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804c2ea */ BGE branch_0804c2f0 \n\
/* 0804c2ec */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804c2ee */ MOV R9, R1 @ Set R9 to R1 \n\
 \n\
branch_0804c2f0: \n\
/* 0804c2f0 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804c2f2 */ CMP R0, 0x7F @ Compare R0 and 0x7F \n\
/* 0804c2f4 */ BLE branch_0804c2fa \n\
/* 0804c2f6 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 0804c2f8 */ MOV R9, R1 @ Set R9 to R1 \n\
 \n\
branch_0804c2fa: \n\
/* 0804c2fa */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804c2fc */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0804c2fe */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0804c300 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0804c302 */ BL func_08049b34 \n\
/* 0804c306 */ BL func_080497f8 \n\
/* 0804c30a */ POP {R3, R4} \n\
/* 0804c30c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804c30e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804c310 */ POP {R4-R7} \n\
/* 0804c312 */ POP {R0} \n\
/* 0804c314 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
