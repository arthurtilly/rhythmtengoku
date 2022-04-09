asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08014ef8 \n\
/* 08014ef8 */ PUSH {R4-R6, LR} \n\
/* 08014efa */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08014efc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08014efe */ LDRSH R5, [R6, R0] \n\
/* 08014f00 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08014f02 */ BLT branch_08014f24 \n\
/* 08014f04 */ LDR R4, =D_03005380 \n\
/* 08014f06 */ LDR R0, [R4] \n\
/* 08014f08 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08014f0a */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08014f0c */ BL func_0804ddb0 \n\
/* 08014f10 */ BL func_0800a068 \n\
/* 08014f14 */ LDR R0, [R4] \n\
/* 08014f16 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08014f18 */ BL func_0804d504 \n\
/* 08014f1c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08014f1e */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08014f20 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08014f22 */ STRH R0, [R6] \n\
 \n\
branch_08014f24: \n\
/* 08014f24 */ POP {R4-R6} \n\
/* 08014f26 */ POP {R0} \n\
/* 08014f28 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
