asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003ab8 \n\
/* 08003ab8 */ PUSH {LR} \n\
/* 08003aba */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003abc */ BGE branch_08003ac0 \n\
/* 08003abe */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_08003ac0: \n\
/* 08003ac0 */ POP {R1} \n\
/* 08003ac2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
