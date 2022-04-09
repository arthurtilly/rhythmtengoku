asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023964 \n\
/* 08023964 */ PUSH {R4, LR} \n\
/* 08023966 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08023968 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 0802396a */ BL func_0800c3a4 \n\
/* 0802396e */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08023970 */ BHI branch_08023976 \n\
/* 08023972 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08023974 */ B branch_08023978 \n\
 \n\
branch_08023976: \n\
/* 08023976 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08023978: \n\
/* 08023978 */ POP {R4} \n\
/* 0802397a */ POP {R1} \n\
/* 0802397c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
