asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800acd8 \n\
/* 0800acd8 */ PUSH {LR} \n\
/* 0800acda */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800acdc */ BEQ branch_0800ace2 \n\
/* 0800acde */ ADDS R0, 0x38 @ Add 0x38 to R0 \n\
/* 0800ace0 */ STRB R1, [R0] \n\
 \n\
branch_0800ace2: \n\
/* 0800ace2 */ POP {R0} \n\
/* 0800ace4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
