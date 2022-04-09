asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080140a4 \n\
/* 080140a4 */ PUSH {R4, LR} \n\
/* 080140a6 */ SUB SP, 0xC \n\
/* 080140a8 */ LDR R1, =D_03005380 \n\
/* 080140aa */ LDR R3, [R1] \n\
/* 080140ac */ LDR R4, =D_030046a4 \n\
/* 080140ae */ LDR R1, [R4] \n\
/* 080140b0 */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 080140b2 */ LDRSH R1, [R1, R2] \n\
/* 080140b4 */ LDR R2, =D_089cf9ac \n\
/* 080140b6 */ LSLS R0, R0, 0x2 \n\
/* 080140b8 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080140ba */ LDR R2, [R0] \n\
/* 080140bc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080140be */ STR R0, [SP] \n\
/* 080140c0 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 080140c2 */ STR R0, [SP, 0x4] \n\
/* 080140c4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080140c6 */ STR R0, [SP, 0x8] \n\
/* 080140c8 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080140ca */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080140cc */ BL func_0804d8f8 \n\
/* 080140d0 */ LDR R1, [R4] \n\
/* 080140d2 */ MOVS R0, 0x64 @ Set R0 to 0x64 \n\
/* 080140d4 */ STRH R0, [R1, 0x1A] \n\
/* 080140d6 */ ADD SP, 0xC \n\
/* 080140d8 */ POP {R4} \n\
/* 080140da */ POP {R0} \n\
/* 080140dc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
