asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e644 \n\
/* 0802e644 */ PUSH {LR} \n\
/* 0802e646 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802e648 */ BL func_0802de60 \n\
/* 0802e64c */ POP {R0} \n\
/* 0802e64e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
