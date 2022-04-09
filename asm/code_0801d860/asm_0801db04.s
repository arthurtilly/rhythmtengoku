asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801db04 \n\
/* 0801db04 */ LDR R3, =D_030055e0 \n\
/* 0801db06 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801db08 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801db0a */ LDRB R2, [R3, 0x1] \n\
/* 0801db0c */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801db0e */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0801db10 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0801db12 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0801db14 */ STRB R1, [R3, 0x1] \n\
/* 0801db16 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
