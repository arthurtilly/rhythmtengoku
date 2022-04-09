asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004c40 \n\
/* 08004c40 */ PUSH {LR} \n\
/* 08004c42 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08004c44 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08004c46 */ BL func_08004c50 \n\
/* 08004c4a */ POP {R1} \n\
/* 08004c4c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
