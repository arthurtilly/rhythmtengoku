asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b60c \n\
/* 0800b60c */ PUSH {LR} \n\
/* 0800b60e */ LDR R1, =0x7fffffff \n\
/* 0800b610 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0800b612 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800b614 */ BGE branch_0800b624 \n\
/* 0800b616 */ LDR R0, =D_03001308 \n\
/* 0800b618 */ B branch_0800b626 \n\
\n\
.ltorg \n\
 \n\
branch_0800b624: \n\
/* 0800b624 */ LDR R0, =D_03001304 \n\
 \n\
branch_0800b626: \n\
/* 0800b626 */ LDR R0, [R0] \n\
/* 0800b628 */ BL __udivsi3 \n\
/* 0800b62c */ POP {R1} \n\
/* 0800b62e */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
