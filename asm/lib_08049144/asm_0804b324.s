asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b324 \n\
/* 0804b324 */ LDRB R1, [R0] \n\
/* 0804b326 */ LSLS R1, R1, 0x8 \n\
/* 0804b328 */ LDRB R0, [R0, 0x1] \n\
/* 0804b32a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804b32c */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
