asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080471d4 \n\
/* 080471d4 */ PUSH {R4-R6, LR} \n\
/* 080471d6 */ SUB SP, 0x14 \n\
/* 080471d8 */ LDR R5, =D_030055d0 \n\
/* 080471da */ LDR R1, [R5] \n\
/* 080471dc */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080471de */ STRB R0, [R1] \n\
/* 080471e0 */ BL func_080471a4 \n\
/* 080471e4 */ BL func_0800e0ec \n\
/* 080471e8 */ STR R4, [SP] \n\
/* 080471ea */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 080471ec */ STR R0, [SP, 0x4] \n\
/* 080471ee */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080471f0 */ STR R0, [SP, 0x8] \n\
/* 080471f2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080471f4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080471f6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080471f8 */ BL func_0800e0a0 \n\
/* 080471fc */ LDR R6, =D_03005380 \n\
/* 080471fe */ LDR R0, [R6] \n\
/* 08047200 */ LDR R1, =D_088b3d54 \n\
/* 08047202 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08047204 */ STR R2, [SP] \n\
/* 08047206 */ STR R4, [SP, 0x4] \n\
/* 08047208 */ STR R4, [SP, 0x8] \n\
/* 0804720a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0804720c */ STR R2, [SP, 0xC] \n\
/* 0804720e */ STR R4, [SP, 0x10] \n\
/* 08047210 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047212 */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 08047214 */ BL func_0804d160 \n\
/* 08047218 */ LDR R1, [R5] \n\
/* 0804721a */ STRH R0, [R1, 0x2] \n\
/* 0804721c */ LDR R0, [R6] \n\
/* 0804721e */ LDR R1, =D_088b3d1c \n\
/* 08047220 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 08047222 */ STR R2, [SP] \n\
/* 08047224 */ STR R4, [SP, 0x4] \n\
/* 08047226 */ STR R4, [SP, 0x8] \n\
/* 08047228 */ STR R4, [SP, 0xC] \n\
/* 0804722a */ STR R4, [SP, 0x10] \n\
/* 0804722c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804722e */ MOVS R3, 0xBE @ Set R3 to 0xBE \n\
/* 08047230 */ BL func_0804d160 \n\
/* 08047234 */ LDR R1, [R5] \n\
/* 08047236 */ STRH R0, [R1, 0x4] \n\
/* 08047238 */ ADD SP, 0x14 \n\
/* 0804723a */ POP {R4-R6} \n\
/* 0804723c */ POP {R0} \n\
/* 0804723e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
