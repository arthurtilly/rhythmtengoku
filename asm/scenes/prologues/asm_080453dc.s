asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080453dc \n\
/* 080453dc */ PUSH {LR} \n\
/* 080453de */ SUB SP, 0x4 \n\
/* 080453e0 */ LDR R0, =D_03005380 \n\
/* 080453e2 */ LDR R0, [R0] \n\
/* 080453e4 */ LDR R1, =D_030055d0 \n\
/* 080453e6 */ LDR R1, [R1] \n\
/* 080453e8 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080453ea */ LDRSH R1, [R1, R2] \n\
/* 080453ec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080453ee */ STR R2, [SP] \n\
/* 080453f0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080453f2 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080453f4 */ BL func_0804dae0 \n\
/* 080453f8 */ ADD SP, 0x4 \n\
/* 080453fa */ POP {R0} \n\
/* 080453fc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
