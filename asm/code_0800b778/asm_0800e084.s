asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e084 \n\
/* 0800e084 */ LDR R2, =(D_03004b10 + 4) \n\
/* 0800e086 */ LSLS R0, R0, 0x1 \n\
/* 0800e088 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800e08a */ LDRH R3, [R0] \n\
/* 0800e08c */ LDR R2, =0xfffc \n\
/* 0800e08e */ ANDS R2, R3 @ Set R2 to R2 & R3 \n\
/* 0800e090 */ ORRS R2, R1 @ Set R2 to R2 | R1 \n\
/* 0800e092 */ STRH R2, [R0] \n\
/* 0800e094 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
