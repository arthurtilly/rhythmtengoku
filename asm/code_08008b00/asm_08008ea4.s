asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008ea4 \n\
/* 08008ea4 */ PUSH {R4, R5, LR} \n\
/* 08008ea6 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08008ea8 */ LSLS R2, R2, 0x4 \n\
/* 08008eaa */ CMP R4, R2 @ Check R4 - R2 \n\
/* 08008eac */ BCS branch_08008ec4 \n\
/* 08008eae */ LDR R3, =0x7fff \n\
/* 08008eb0 */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 08008eb2 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
 \n\
branch_08008eb4: \n\
/* 08008eb4 */ LDRH R0, [R3] \n\
/* 08008eb6 */ SUBS R0, R5, R0 @ Set R0 to R5 - R0 \n\
/* 08008eb8 */ STRH R0, [R1] \n\
/* 08008eba */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 08008ebc */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08008ebe */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08008ec0 */ CMP R4, R2 @ Check R4 - R2 \n\
/* 08008ec2 */ BCC branch_08008eb4 \n\
 \n\
branch_08008ec4: \n\
/* 08008ec4 */ POP {R4, R5} \n\
/* 08008ec6 */ POP {R0} \n\
/* 08008ec8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
