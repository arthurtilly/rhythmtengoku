asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080039e8 \n\
/* 080039e8 */ PUSH {LR} \n\
/* 080039ea */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080039ec */ B branch_080039f0 \n\
 \n\
branch_080039ee: \n\
/* 080039ee */ ADDS R2, 0x8 @ Add 0x8 to R2 \n\
 \n\
branch_080039f0: \n\
/* 080039f0 */ LDR R0, [R2] \n\
/* 080039f2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080039f4 */ BNE branch_080039ee \n\
/* 080039f6 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080039f8 */ BL func_08003980 \n\
/* 080039fc */ POP {R0} \n\
/* 080039fe */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
