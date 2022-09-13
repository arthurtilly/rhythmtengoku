asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08014dbc \n\
/* 08014dbc */ PUSH {R4, LR} \n\
/* 08014dbe */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08014dc0 */ LDR R0, =D_030046a8 \n\
/* 08014dc2 */ LDR R0, [R0] \n\
/* 08014dc4 */ LDR R1, =0x29e \n\
/* 08014dc6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08014dc8 */ LDRB R0, [R0] \n\
/* 08014dca */ BL func_08014b68 \n\
/* 08014dce */ LDR R0, =D_030046a4 \n\
/* 08014dd0 */ LDR R0, [R0] \n\
/* 08014dd2 */ LDR R1, =0x4ee \n\
/* 08014dd4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08014dd6 */ STRH R4, [R0] \n\
/* 08014dd8 */ POP {R4} \n\
/* 08014dda */ POP {R0} \n\
/* 08014ddc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
