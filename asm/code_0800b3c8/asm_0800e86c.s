asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e86c \n\
/* 0800e86c */ PUSH {R4, R5, LR} \n\
/* 0800e86e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800e870 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0800e872 */ B branch_0800e87c \n\
 \n\
branch_0800e874: \n\
/* 0800e874 */ LDMIA R4!, {R1} \n\
/* 0800e876 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800e878 */ BL func_0800e7e8 \n\
 \n\
branch_0800e87c: \n\
/* 0800e87c */ LDR R0, [R4] \n\
/* 0800e87e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800e880 */ BNE branch_0800e874 \n\
/* 0800e882 */ POP {R4, R5} \n\
/* 0800e884 */ POP {R0} \n\
/* 0800e886 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
