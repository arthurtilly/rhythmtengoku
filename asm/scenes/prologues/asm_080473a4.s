asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080473a4 \n\
/* 080473a4 */ PUSH {LR} \n\
/* 080473a6 */ SUB SP, 0x4 \n\
/* 080473a8 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080473aa */ LDR R0, =D_03005380 \n\
/* 080473ac */ LDR R0, [R0] \n\
/* 080473ae */ LDR R1, =D_030055d0 \n\
/* 080473b0 */ LDR R1, [R1] \n\
/* 080473b2 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080473b4 */ LDRSH R1, [R1, R3] \n\
/* 080473b6 */ LSLS R2, R2, 0x18 \n\
/* 080473b8 */ ASRS R2, R2, 0x18 \n\
/* 080473ba */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080473bc */ STR R3, [SP] \n\
/* 080473be */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080473c0 */ BL func_0804dae0 \n\
/* 080473c4 */ ADD SP, 0x4 \n\
/* 080473c6 */ POP {R0} \n\
/* 080473c8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
