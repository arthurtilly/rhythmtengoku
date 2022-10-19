asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025ed8 \n\
/* 08025ed8 */ PUSH {R4, R5, LR} \n\
/* 08025eda */ SUB SP, 0xC \n\
/* 08025edc */ LDR R0, =D_030055d0 \n\
/* 08025ede */ LDR R4, [R0] \n\
/* 08025ee0 */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 08025ee2 */ LSLS R0, R0, 0x2 \n\
/* 08025ee4 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08025ee6 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08025ee8 */ BL func_08025228 \n\
/* 08025eec */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08025eee */ LDR R5, =D_03005380 \n\
/* 08025ef0 */ LDR R0, [R5] \n\
/* 08025ef2 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 08025ef4 */ LDRSH R1, [R4, R3] \n\
/* 08025ef6 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08025ef8 */ STR R3, [SP] \n\
/* 08025efa */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08025efc */ STR R3, [SP, 0x4] \n\
/* 08025efe */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08025f00 */ STR R3, [SP, 0x8] \n\
/* 08025f02 */ BL func_0804d8f8 \n\
/* 08025f06 */ LDR R0, [R5] \n\
/* 08025f08 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08025f0a */ LDRSH R1, [R4, R2] \n\
/* 08025f0c */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08025f0e */ MOVS R3, 0x46 @ Set R3 to 0x46 \n\
/* 08025f10 */ BL func_0804d5d4 \n\
/* 08025f14 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 08025f16 */ LDRSH R0, [R4, R3] \n\
/* 08025f18 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08025f1a */ BL func_08025fbc \n\
/* 08025f1e */ LDR R0, [R5] \n\
/* 08025f20 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08025f22 */ LDRSH R1, [R4, R2] \n\
/* 08025f24 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025f26 */ BL func_0804cebc \n\
/* 08025f2a */ ADD SP, 0xC \n\
/* 08025f2c */ POP {R4, R5} \n\
/* 08025f2e */ POP {R0} \n\
/* 08025f30 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
