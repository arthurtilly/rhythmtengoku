asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080474ac \n\
/* 080474ac */ PUSH {LR} \n\
/* 080474ae */ SUB SP, 0x4 \n\
/* 080474b0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080474b2 */ LDR R0, =D_03005380 \n\
/* 080474b4 */ LDR R0, [R0] \n\
/* 080474b6 */ LDR R1, =D_030055d0 \n\
/* 080474b8 */ LDR R1, [R1] \n\
/* 080474ba */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080474bc */ LDRSH R1, [R1, R3] \n\
/* 080474be */ LSLS R2, R2, 0x18 \n\
/* 080474c0 */ ASRS R2, R2, 0x18 \n\
/* 080474c2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080474c4 */ STR R3, [SP] \n\
/* 080474c6 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080474c8 */ BL func_0804dae0 \n\
/* 080474cc */ ADD SP, 0x4 \n\
/* 080474ce */ POP {R0} \n\
/* 080474d0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
