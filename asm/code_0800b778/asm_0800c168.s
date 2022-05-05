asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c168 \n\
/* 0800c168 */ PUSH {LR} \n\
/* 0800c16a */ SUB SP, 0x4 \n\
/* 0800c16c */ LDR R2, =(D_030053c0 + 0x192) \n\
/* 0800c16e */ LDRH R3, [R2] \n\
/* 0800c170 */ STR R0, [SP] \n\
/* 0800c172 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800c174 */ BL func_0800c4b0 \n\
/* 0800c178 */ ADD SP, 0x4 \n\
/* 0800c17a */ POP {R0} \n\
/* 0800c17c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
