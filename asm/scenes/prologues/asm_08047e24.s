asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047e24 \n\
/* 08047e24 */ PUSH {LR} \n\
/* 08047e26 */ SUB SP, 0x4 \n\
/* 08047e28 */ LDR R0, =D_03005380 \n\
/* 08047e2a */ LDR R0, [R0] \n\
/* 08047e2c */ LDR R1, =D_030055d0 \n\
/* 08047e2e */ LDR R1, [R1] \n\
/* 08047e30 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08047e32 */ LDRSH R1, [R1, R2] \n\
/* 08047e34 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047e36 */ STR R2, [SP] \n\
/* 08047e38 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08047e3a */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08047e3c */ BL func_0804dae0 \n\
/* 08047e40 */ ADD SP, 0x4 \n\
/* 08047e42 */ POP {R0} \n\
/* 08047e44 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
