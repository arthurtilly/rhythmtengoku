asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008dcc \n\
/* 08008dcc */ PUSH {LR} \n\
/* 08008dce */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08008dd0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08008dd2 */ CMP R2, R1 @ Check R2 - R1 \n\
/* 08008dd4 */ BCS branch_08008de0 \n\
 \n\
branch_08008dd6: \n\
/* 08008dd6 */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 08008dd8 */ STRB R2, [R0] \n\
/* 08008dda */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08008ddc */ CMP R2, R1 @ Check R2 - R1 \n\
/* 08008dde */ BCC branch_08008dd6 \n\
 \n\
branch_08008de0: \n\
/* 08008de0 */ POP {R0} \n\
/* 08008de2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
