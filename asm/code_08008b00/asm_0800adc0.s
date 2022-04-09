asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800adc0 \n\
/* 0800adc0 */ PUSH {R4, R5, LR} \n\
/* 0800adc2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800adc4 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0800adc6 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800adc8 */ BEQ branch_0800add0 \n\
/* 0800adca */ BL func_0800a934 \n\
/* 0800adce */ STRB R5, [R4, 0x2] \n\
 \n\
branch_0800add0: \n\
/* 0800add0 */ POP {R4, R5} \n\
/* 0800add2 */ POP {R0} \n\
/* 0800add4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
