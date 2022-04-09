asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046f30 \n\
/* 08046f30 */ PUSH {LR} \n\
/* 08046f32 */ SUB SP, 0x4 \n\
/* 08046f34 */ LDR R0, =D_03005380 \n\
/* 08046f36 */ LDR R0, [R0] \n\
/* 08046f38 */ LDR R1, =D_030055d0 \n\
/* 08046f3a */ LDR R1, [R1] \n\
/* 08046f3c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08046f3e */ LDRSH R1, [R1, R2] \n\
/* 08046f40 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046f42 */ STR R2, [SP] \n\
/* 08046f44 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08046f46 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08046f48 */ BL func_0804dae0 \n\
/* 08046f4c */ ADD SP, 0x4 \n\
/* 08046f4e */ POP {R0} \n\
/* 08046f50 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
