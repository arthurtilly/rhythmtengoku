asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003aa4 \n\
/* 08003aa4 */ PUSH {LR} \n\
/* 08003aa6 */ LSLS R0, R0, 0x10 \n\
/* 08003aa8 */ ASRS R0, R0, 0x10 \n\
/* 08003aaa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003aac */ BGE branch_08003ab0 \n\
/* 08003aae */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_08003ab0: \n\
/* 08003ab0 */ LSLS R0, R0, 0x10 \n\
/* 08003ab2 */ ASRS R0, R0, 0x10 \n\
/* 08003ab4 */ POP {R1} \n\
/* 08003ab6 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
