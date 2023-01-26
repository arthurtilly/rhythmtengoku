asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804cebc \n\
/* 0804cebc */ PUSH {LR} \n\
/* 0804cebe */ LSLS R1, R1, 0x10 \n\
/* 0804cec0 */ ASRS R1, R1, 0x10 \n\
/* 0804cec2 */ LSLS R2, R2, 0x18 \n\
/* 0804cec4 */ ASRS R2, R2, 0x18 \n\
/* 0804cec6 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0804cec8 */ BL func_0804cd1c \n\
/* 0804cecc */ POP {R0} \n\
/* 0804cece */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
