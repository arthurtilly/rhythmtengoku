asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c138 \n\
/* 0800c138 */ PUSH {LR} \n\
/* 0800c13a */ SUB SP, 0x4 \n\
/* 0800c13c */ LDR R2, =D_03005550 \n\
/* 0800c13e */ LDRH R3, [R2] \n\
/* 0800c140 */ STR R0, [SP] \n\
/* 0800c142 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800c144 */ BL func_0800c4b0 \n\
/* 0800c148 */ ADD SP, 0x4 \n\
/* 0800c14a */ POP {R0} \n\
/* 0800c14c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
