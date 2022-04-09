asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c694 \n\
/* 0800c694 */ PUSH {LR} \n\
/* 0800c696 */ CMP R0, 0x18 @ Compare R0 and 0x18 \n\
/* 0800c698 */ BLS branch_0800c69c \n\
/* 0800c69a */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
 \n\
branch_0800c69c: \n\
/* 0800c69c */ BL func_08009564 \n\
/* 0800c6a0 */ POP {R0} \n\
/* 0800c6a2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
