asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025e00 \n\
/* 08025e00 */ PUSH {R4-R6, LR} \n\
/* 08025e02 */ SUB SP, 0xC \n\
/* 08025e04 */ LDR R0, =gCurrentEngineData \n\
/* 08025e06 */ LDR R4, [R0] \n\
/* 08025e08 */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 08025e0a */ LSLS R0, R0, 0x2 \n\
/* 08025e0c */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08025e0e */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08025e10 */ BL drum_live_get_anim \n\
/* 08025e14 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08025e16 */ LDR R5, =D_03005380 \n\
/* 08025e18 */ LDR R0, [R5] \n\
/* 08025e1a */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08025e1c */ LDRSH R1, [R4, R3] \n\
/* 08025e1e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08025e20 */ STR R3, [SP] \n\
/* 08025e22 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08025e24 */ STR R3, [SP, 0x4] \n\
/* 08025e26 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08025e28 */ STR R6, [SP, 0x8] \n\
/* 08025e2a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08025e2c */ BL func_0804d8f8 \n\
/* 08025e30 */ LDR R0, [R5] \n\
/* 08025e32 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08025e34 */ LDRSH R1, [R4, R2] \n\
/* 08025e36 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08025e38 */ MOVS R3, 0x46 @ Set R3 to 0x46 \n\
/* 08025e3a */ BL func_0804d5d4 \n\
/* 08025e3e */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08025e40 */ LDRSH R0, [R4, R3] \n\
/* 08025e42 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08025e44 */ BL func_08025fbc \n\
/* 08025e48 */ LDR R0, [R5] \n\
/* 08025e4a */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 08025e4c */ LDRSH R1, [R4, R2] \n\
/* 08025e4e */ STR R6, [SP] \n\
/* 08025e50 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08025e52 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08025e54 */ BL func_0804dae0 \n\
/* 08025e58 */ LDR R0, [R5] \n\
/* 08025e5a */ MOVS R3, 0x14 @ Set R3 to 0x14 \n\
/* 08025e5c */ LDRSH R1, [R4, R3] \n\
/* 08025e5e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025e60 */ BL func_0804cebc \n\
/* 08025e64 */ ADD SP, 0xC \n\
/* 08025e66 */ POP {R4-R6} \n\
/* 08025e68 */ POP {R0} \n\
/* 08025e6a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
