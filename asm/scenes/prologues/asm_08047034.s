asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047034 \n\
/* 08047034 */ PUSH {LR} \n\
/* 08047036 */ SUB SP, 0x4 \n\
/* 08047038 */ LDR R0, =D_03005380 \n\
/* 0804703a */ LDR R0, [R0] \n\
/* 0804703c */ LDR R1, =D_030055d0 \n\
/* 0804703e */ LDR R1, [R1] \n\
/* 08047040 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08047042 */ LDRSH R1, [R1, R2] \n\
/* 08047044 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047046 */ STR R2, [SP] \n\
/* 08047048 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804704a */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0804704c */ BL func_0804dae0 \n\
/* 08047050 */ ADD SP, 0x4 \n\
/* 08047052 */ POP {R0} \n\
/* 08047054 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
