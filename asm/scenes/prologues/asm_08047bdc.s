asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047bdc \n\
/* 08047bdc */ PUSH {LR} \n\
/* 08047bde */ SUB SP, 0x4 \n\
/* 08047be0 */ LDR R0, =D_03005380 \n\
/* 08047be2 */ LDR R0, [R0] \n\
/* 08047be4 */ LDR R1, =D_030055d0 \n\
/* 08047be6 */ LDR R1, [R1] \n\
/* 08047be8 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08047bea */ LDRSH R1, [R1, R2] \n\
/* 08047bec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047bee */ STR R2, [SP] \n\
/* 08047bf0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08047bf2 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08047bf4 */ BL func_0804dae0 \n\
/* 08047bf8 */ ADD SP, 0x4 \n\
/* 08047bfa */ POP {R0} \n\
/* 08047bfc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
