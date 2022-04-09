asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ecec \n\
/* 0800ecec */ PUSH {LR} \n\
/* 0800ecee */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800ecf0 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0800ecf2 */ LDR R0, =D_030053c0 \n\
/* 0800ecf4 */ MOVS R1, 0x1E @ Set R1 to 0x1E \n\
/* 0800ecf6 */ LDRSH R0, [R0, R1] \n\
/* 0800ecf8 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0800ecfa */ BL func_0800ecac \n\
/* 0800ecfe */ POP {R0} \n\
/* 0800ed00 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
