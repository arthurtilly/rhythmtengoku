asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004bfc \n\
/* 08004bfc */ PUSH {LR} \n\
/* 08004bfe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08004c00 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08004c02 */ BL func_08004c0c \n\
/* 08004c06 */ POP {R1} \n\
/* 08004c08 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
