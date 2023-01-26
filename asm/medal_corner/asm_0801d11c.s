asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d11c \n\
/* 0801d11c */ PUSH {R4, R5, LR} \n\
/* 0801d11e */ LDR R5, =D_03005380 \n\
/* 0801d120 */ LDR R0, [R5] \n\
/* 0801d122 */ LDR R4, =D_030046a4 \n\
/* 0801d124 */ LDR R1, [R4] \n\
/* 0801d126 */ MOVS R2, 0x12 @ Set R2 to 0x12 \n\
/* 0801d128 */ LDRSH R1, [R1, R2] \n\
/* 0801d12a */ BL func_0804d3cc \n\
/* 0801d12e */ LDR R1, [R4] \n\
/* 0801d130 */ STRH R0, [R1, 0x10] \n\
/* 0801d132 */ LDR R0, [R5] \n\
/* 0801d134 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0801d136 */ LDRSH R1, [R1, R2] \n\
/* 0801d138 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801d13a */ BL func_0804d890 \n\
/* 0801d13e */ POP {R4, R5} \n\
/* 0801d140 */ POP {R0} \n\
/* 0801d142 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
