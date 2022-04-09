asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804698c \n\
/* 0804698c */ PUSH {R4, R5, LR} \n\
/* 0804698e */ SUB SP, 0x14 \n\
/* 08046990 */ LDR R5, =D_030055d0 \n\
/* 08046992 */ LDR R1, [R5] \n\
/* 08046994 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08046996 */ STRB R0, [R1] \n\
/* 08046998 */ BL func_0804695c \n\
/* 0804699c */ BL func_0800e0ec \n\
/* 080469a0 */ STR R4, [SP] \n\
/* 080469a2 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 080469a4 */ STR R0, [SP, 0x4] \n\
/* 080469a6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080469a8 */ STR R0, [SP, 0x8] \n\
/* 080469aa */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080469ac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080469ae */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080469b0 */ BL func_0800e0a0 \n\
/* 080469b4 */ LDR R0, =D_03005380 \n\
/* 080469b6 */ LDR R0, [R0] \n\
/* 080469b8 */ LDR R1, =D_088b23ec \n\
/* 080469ba */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080469bc */ STR R2, [SP] \n\
/* 080469be */ STR R4, [SP, 0x4] \n\
/* 080469c0 */ STR R4, [SP, 0x8] \n\
/* 080469c2 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080469c4 */ STR R2, [SP, 0xC] \n\
/* 080469c6 */ STR R4, [SP, 0x10] \n\
/* 080469c8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080469ca */ MOVS R3, 0x70 @ Set R3 to 0x70 \n\
/* 080469cc */ BL func_0804d160 \n\
/* 080469d0 */ LDR R1, [R5] \n\
/* 080469d2 */ STRH R0, [R1, 0x2] \n\
/* 080469d4 */ ADD SP, 0x14 \n\
/* 080469d6 */ POP {R4, R5} \n\
/* 080469d8 */ POP {R0} \n\
/* 080469da */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
