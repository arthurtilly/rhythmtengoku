asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800298c \n\
/* 0800298c */ PUSH {LR} \n\
/* 0800298e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08002990 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08002992 */ BLT branch_080029a8 \n\
/* 08002994 */ LDR R0, =D_08aa4460 \n\
/* 08002996 */ LSLS R1, R2, 0x1 \n\
/* 08002998 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800299a */ LSLS R1, R1, 0x2 \n\
/* 0800299c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800299e */ LDR R0, [R1] \n\
/* 080029a0 */ B branch_080029aa \n\
\n\
.ltorg \n\
 \n\
branch_080029a8: \n\
/* 080029a8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080029aa: \n\
/* 080029aa */ POP {R1} \n\
/* 080029ac */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
