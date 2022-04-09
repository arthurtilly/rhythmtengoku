asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004058 \n\
/* 08004058 */ LDR R2, =D_03000748 \n\
/* 0800405a */ LDRB R1, [R2] \n\
/* 0800405c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800405e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08004060 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08004062 */ MOVS R1, 0x9 @ Set R1 to 0x9 \n\
/* 08004064 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08004066 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08004068 */ STRB R0, [R2] \n\
/* 0800406a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
