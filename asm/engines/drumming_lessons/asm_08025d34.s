asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025d34 \n\
/* 08025d34 */ PUSH {R4, R5, LR} \n\
/* 08025d36 */ SUB SP, 0xC \n\
/* 08025d38 */ LDR R0, =D_030055d0 \n\
/* 08025d3a */ LDR R4, [R0] \n\
/* 08025d3c */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 08025d3e */ LSLS R0, R0, 0x2 \n\
/* 08025d40 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08025d42 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 08025d44 */ BL drum_live_get_anim \n\
/* 08025d48 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08025d4a */ LDR R5, =D_03005380 \n\
/* 08025d4c */ LDR R0, [R5] \n\
/* 08025d4e */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 08025d50 */ LDRSH R1, [R4, R3] \n\
/* 08025d52 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08025d54 */ STR R3, [SP] \n\
/* 08025d56 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08025d58 */ STR R3, [SP, 0x4] \n\
/* 08025d5a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08025d5c */ STR R3, [SP, 0x8] \n\
/* 08025d5e */ BL func_0804d8f8 \n\
/* 08025d62 */ LDR R0, [R5] \n\
/* 08025d64 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08025d66 */ LDRSH R1, [R4, R2] \n\
/* 08025d68 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08025d6a */ MOVS R3, 0x46 @ Set R3 to 0x46 \n\
/* 08025d6c */ BL func_0804d5d4 \n\
/* 08025d70 */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 08025d72 */ LDRSH R0, [R4, R3] \n\
/* 08025d74 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08025d76 */ BL func_08025fbc \n\
/* 08025d7a */ LDR R0, [R5] \n\
/* 08025d7c */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 08025d7e */ LDRSH R1, [R4, R2] \n\
/* 08025d80 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025d82 */ BL func_0804cebc \n\
/* 08025d86 */ ADD SP, 0xC \n\
/* 08025d88 */ POP {R4, R5} \n\
/* 08025d8a */ POP {R0} \n\
/* 08025d8c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
