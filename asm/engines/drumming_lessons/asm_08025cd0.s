asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025cd0 \n\
/* 08025cd0 */ PUSH {R4, R5, LR} \n\
/* 08025cd2 */ SUB SP, 0xC \n\
/* 08025cd4 */ LDR R0, =gCurrentEngineData \n\
/* 08025cd6 */ LDR R4, [R0] \n\
/* 08025cd8 */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 08025cda */ LSLS R0, R0, 0x2 \n\
/* 08025cdc */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08025cde */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 08025ce0 */ BL drum_live_get_anim \n\
/* 08025ce4 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08025ce6 */ LDR R5, =D_03005380 \n\
/* 08025ce8 */ LDR R0, [R5] \n\
/* 08025cea */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08025cec */ LDRSH R1, [R4, R3] \n\
/* 08025cee */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08025cf0 */ STR R3, [SP] \n\
/* 08025cf2 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08025cf4 */ STR R3, [SP, 0x4] \n\
/* 08025cf6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08025cf8 */ STR R3, [SP, 0x8] \n\
/* 08025cfa */ BL func_0804d8f8 \n\
/* 08025cfe */ LDR R0, [R5] \n\
/* 08025d00 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08025d02 */ LDRSH R1, [R4, R2] \n\
/* 08025d04 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08025d06 */ MOVS R3, 0x46 @ Set R3 to 0x46 \n\
/* 08025d08 */ BL func_0804d5d4 \n\
/* 08025d0c */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08025d0e */ LDRSH R0, [R4, R3] \n\
/* 08025d10 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08025d12 */ BL func_08025fbc \n\
/* 08025d16 */ LDR R0, [R5] \n\
/* 08025d18 */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 08025d1a */ LDRSH R1, [R4, R2] \n\
/* 08025d1c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025d1e */ BL func_0804cebc \n\
/* 08025d22 */ ADD SP, 0xC \n\
/* 08025d24 */ POP {R4, R5} \n\
/* 08025d26 */ POP {R0} \n\
/* 08025d28 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
