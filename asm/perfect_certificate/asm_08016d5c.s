asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016d5c \n\
/* 08016d5c */ PUSH {R4, LR} \n\
/* 08016d5e */ LDR R1, =D_089cfc88 \n\
/* 08016d60 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016d62 */ LDRSB R0, [R1, R0] \n\
/* 08016d64 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016d66 */ BLT branch_08016d84 \n\
/* 08016d68 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
 \n\
branch_08016d6a: \n\
/* 08016d6a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016d6c */ LDRSB R0, [R4, R0] \n\
/* 08016d6e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08016d70 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08016d72 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08016d74 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08016d76 */ BL func_0801adf0 \n\
/* 08016d7a */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08016d7c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016d7e */ LDRSB R0, [R4, R0] \n\
/* 08016d80 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016d82 */ BGE branch_08016d6a \n\
 \n\
branch_08016d84: \n\
/* 08016d84 */ POP {R4} \n\
/* 08016d86 */ POP {R0} \n\
/* 08016d88 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
