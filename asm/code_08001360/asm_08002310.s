asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002310 \n\
/* 08002310 */ PUSH {LR} \n\
/* 08002312 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08002314 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08002316 */ BLT branch_08002324 \n\
/* 08002318 */ LDR R0, =D_03000340 \n\
/* 0800231a */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0800231c */ LDRB R2, [R0] \n\
/* 0800231e */ MOVS R1, 0xEF @ Set R1 to 0xEF \n\
/* 08002320 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08002322 */ STRB R1, [R0] \n\
 \n\
branch_08002324: \n\
/* 08002324 */ POP {R0} \n\
/* 08002326 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
