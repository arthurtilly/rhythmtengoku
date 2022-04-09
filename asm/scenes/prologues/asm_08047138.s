asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047138 \n\
/* 08047138 */ PUSH {LR} \n\
/* 0804713a */ SUB SP, 0x4 \n\
/* 0804713c */ LDR R0, =D_03005380 \n\
/* 0804713e */ LDR R0, [R0] \n\
/* 08047140 */ LDR R1, =D_030055d0 \n\
/* 08047142 */ LDR R1, [R1] \n\
/* 08047144 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08047146 */ LDRSH R1, [R1, R2] \n\
/* 08047148 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804714a */ STR R2, [SP] \n\
/* 0804714c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804714e */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08047150 */ BL func_0804dae0 \n\
/* 08047154 */ ADD SP, 0x4 \n\
/* 08047156 */ POP {R0} \n\
/* 08047158 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
