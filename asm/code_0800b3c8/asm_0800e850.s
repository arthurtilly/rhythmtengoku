asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e850 \n\
/* 0800e850 */ PUSH {R4, R5, LR} \n\
/* 0800e852 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800e854 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0800e856 */ B branch_0800e860 \n\
 \n\
branch_0800e858: \n\
/* 0800e858 */ LDMIA R4!, {R1} \n\
/* 0800e85a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800e85c */ BL func_0800e768 \n\
 \n\
branch_0800e860: \n\
/* 0800e860 */ LDR R0, [R4] \n\
/* 0800e862 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800e864 */ BNE branch_0800e858 \n\
/* 0800e866 */ POP {R4, R5} \n\
/* 0800e868 */ POP {R0} \n\
/* 0800e86a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
