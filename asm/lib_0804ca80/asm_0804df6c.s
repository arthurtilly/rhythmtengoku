asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804df6c \n\
/* 0804df6c */ PUSH {LR} \n\
/* 0804df6e */ LSLS R1, R1, 0x10 \n\
/* 0804df70 */ ASRS R1, R1, 0x10 \n\
/* 0804df72 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0804df74 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0804df76 */ BL func_0804df4c \n\
/* 0804df7a */ POP {R0} \n\
/* 0804df7c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
