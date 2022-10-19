asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080271f0 \n\
/* 080271f0 */ PUSH {R4-R7, LR} \n\
/* 080271f2 */ SUB SP, 0xC \n\
/* 080271f4 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080271f6 */ LDR R0, =D_030055d0 \n\
/* 080271f8 */ LDR R0, [R0] \n\
/* 080271fa */ MOVS R1, 0xE3 @ Set R1 to 0xE3 \n\
/* 080271fc */ LSLS R1, R1, 0x2 \n\
/* 080271fe */ ADDS R5, R0, R1 @ Set R5 to R0 + R1 \n\
/* 08027200 */ LDR R2, =0x000003c1 \n\
/* 08027202 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08027204 */ LDRB R0, [R0] \n\
/* 08027206 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027208 */ BEQ branch_080272f4 \n\
/* 0802720a */ LDR R2, =D_089e0ce0 \n\
/* 0802720c */ LSLS R1, R3, 0x1 \n\
/* 0802720e */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08027210 */ LSLS R1, R1, 0x2 \n\
/* 08027212 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08027214 */ LDR R4, [R0] \n\
/* 08027216 */ ADDS R0, R2, 0x4 @ Set R0 to R2 + 0x4 \n\
/* 08027218 */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0802721a */ LDR R6, [R0] \n\
/* 0802721c */ ADDS R2, 0x8 @ Add 0x8 to R2 \n\
/* 0802721e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08027220 */ LDR R7, [R1] \n\
/* 08027222 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08027224 */ BEQ branch_08027254 \n\
/* 08027226 */ LDR R0, =D_03005380 \n\
/* 08027228 */ LDR R0, [R0] \n\
/* 0802722a */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 0802722c */ LDRSH R1, [R5, R2] \n\
/* 0802722e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08027230 */ STR R2, [SP] \n\
/* 08027232 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08027234 */ STR R2, [SP, 0x4] \n\
/* 08027236 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027238 */ STR R2, [SP, 0x8] \n\
/* 0802723a */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0802723c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802723e */ BL func_0804d8f8 \n\
/* 08027242 */ B branch_0802726c \n\
\n\
.ltorg \n\
 \n\
branch_08027254: \n\
/* 08027254 */ LDR R0, =D_03005380 \n\
/* 08027256 */ LDR R0, [R0] \n\
/* 08027258 */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 0802725a */ LDRSH R1, [R5, R2] \n\
/* 0802725c */ LDR R2, =D_088c82f8 \n\
/* 0802725e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08027260 */ STR R3, [SP] \n\
/* 08027262 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08027264 */ STR R3, [SP, 0x4] \n\
/* 08027266 */ STR R4, [SP, 0x8] \n\
/* 08027268 */ BL func_0804d8f8 \n\
 \n\
branch_0802726c: \n\
/* 0802726c */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0802726e */ BEQ branch_08027298 \n\
/* 08027270 */ LDR R0, =D_03005380 \n\
/* 08027272 */ LDR R0, [R0] \n\
/* 08027274 */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 08027276 */ LDRSH R1, [R5, R2] \n\
/* 08027278 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802727a */ STR R2, [SP] \n\
/* 0802727c */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0802727e */ STR R2, [SP, 0x4] \n\
/* 08027280 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08027282 */ STR R2, [SP, 0x8] \n\
/* 08027284 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08027286 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08027288 */ BL func_0804d8f8 \n\
/* 0802728c */ B branch_080272b0 \n\
\n\
.ltorg \n\
 \n\
branch_08027298: \n\
/* 08027298 */ LDR R0, =D_03005380 \n\
/* 0802729a */ LDR R0, [R0] \n\
/* 0802729c */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 0802729e */ LDRSH R1, [R5, R2] \n\
/* 080272a0 */ LDR R2, =D_088c80f0 \n\
/* 080272a2 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080272a4 */ STR R3, [SP] \n\
/* 080272a6 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080272a8 */ STR R3, [SP, 0x4] \n\
/* 080272aa */ STR R6, [SP, 0x8] \n\
/* 080272ac */ BL func_0804d8f8 \n\
 \n\
branch_080272b0: \n\
/* 080272b0 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 080272b2 */ BEQ branch_080272dc \n\
/* 080272b4 */ LDR R0, =D_03005380 \n\
/* 080272b6 */ LDR R0, [R0] \n\
/* 080272b8 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 080272ba */ LDRSH R1, [R5, R2] \n\
/* 080272bc */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080272be */ STR R2, [SP] \n\
/* 080272c0 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080272c2 */ STR R2, [SP, 0x4] \n\
/* 080272c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080272c6 */ STR R2, [SP, 0x8] \n\
/* 080272c8 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 080272ca */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080272cc */ BL func_0804d8f8 \n\
/* 080272d0 */ B branch_080272f4 \n\
\n\
.ltorg \n\
 \n\
branch_080272dc: \n\
/* 080272dc */ LDR R0, =D_03005380 \n\
/* 080272de */ LDR R0, [R0] \n\
/* 080272e0 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 080272e2 */ LDRSH R1, [R5, R2] \n\
/* 080272e4 */ LDR R2, =D_088c81b0 \n\
/* 080272e6 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080272e8 */ STR R3, [SP] \n\
/* 080272ea */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080272ec */ STR R3, [SP, 0x4] \n\
/* 080272ee */ STR R7, [SP, 0x8] \n\
/* 080272f0 */ BL func_0804d8f8 \n\
 \n\
branch_080272f4: \n\
/* 080272f4 */ ADD SP, 0xC \n\
/* 080272f6 */ POP {R4-R7} \n\
/* 080272f8 */ POP {R0} \n\
/* 080272fa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
