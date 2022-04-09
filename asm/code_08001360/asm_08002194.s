asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002194 \n\
/* 08002194 */ PUSH {R4, LR} \n\
/* 08002196 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08002198 */ BL func_08002150 \n\
/* 0800219c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800219e */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 080021a0 */ BLT branch_080021aa \n\
/* 080021a2 */ LDR R1, =D_03000368 \n\
/* 080021a4 */ LSLS R0, R2, 0x2 \n\
/* 080021a6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080021a8 */ STR R4, [R0] \n\
 \n\
branch_080021aa: \n\
/* 080021aa */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080021ac */ POP {R4} \n\
/* 080021ae */ POP {R1} \n\
/* 080021b0 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
