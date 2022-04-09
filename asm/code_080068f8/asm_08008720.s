asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008720 \n\
/* 08008720 */ PUSH {R4, LR} \n\
/* 08008722 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08008724 */ BL func_080086c4 \n\
/* 08008728 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800872a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800872c */ BEQ branch_08008736 \n\
/* 0800872e */ LDR R0, [R4] \n\
/* 08008730 */ LDR R1, [R1, 0x4] \n\
/* 08008732 */ BL func_08008608 \n\
 \n\
branch_08008736: \n\
/* 08008736 */ POP {R4} \n\
/* 08008738 */ POP {R0} \n\
/* 0800873a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
