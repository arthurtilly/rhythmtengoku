asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c95c \n\
/* 0800c95c */ PUSH {R4, R5, LR} \n\
/* 0800c95e */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0800c960 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0800c962: \n\
/* 0800c962 */ LDRB R2, [R0] \n\
/* 0800c964 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0800c966 */ LDR R1, [R0, 0x8] \n\
/* 0800c968 */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 0800c96a */ CMP R2, 0x1B @ Compare R2 and 0x1B \n\
/* 0800c96c */ BEQ branch_0800c996 \n\
/* 0800c96e */ CMP R2, 0x1B @ Compare R2 and 0x1B \n\
/* 0800c970 */ BGT branch_0800c978 \n\
/* 0800c972 */ CMP R2, 0x1A @ Compare R2 and 0x1A \n\
/* 0800c974 */ BEQ branch_0800c982 \n\
/* 0800c976 */ B branch_0800c962 \n\
 \n\
branch_0800c978: \n\
/* 0800c978 */ CMP R3, 0x1C @ Compare R3 and 0x1C \n\
/* 0800c97a */ BEQ branch_0800c986 \n\
/* 0800c97c */ CMP R3, 0x4F @ Compare R3 and 0x4F \n\
/* 0800c97e */ BEQ branch_0800c990 \n\
/* 0800c980 */ B branch_0800c962 \n\
 \n\
branch_0800c982: \n\
/* 0800c982 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0800c984 */ B branch_0800c962 \n\
 \n\
branch_0800c986: \n\
/* 0800c986 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800c988 */ BNE branch_0800c962 \n\
/* 0800c98a */ CMP R1, R5 @ Check R1 - R5 \n\
/* 0800c98c */ BNE branch_0800c962 \n\
/* 0800c98e */ B branch_0800c99e \n\
 \n\
branch_0800c990: \n\
/* 0800c990 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800c992 */ BNE branch_0800c962 \n\
/* 0800c994 */ B branch_0800c99e \n\
 \n\
branch_0800c996: \n\
/* 0800c996 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800c998 */ BEQ branch_0800c99e \n\
/* 0800c99a */ SUBS R4, 0x1 @ Subtract 0x1 from R4 \n\
/* 0800c99c */ B branch_0800c962 \n\
 \n\
branch_0800c99e: \n\
/* 0800c99e */ POP {R4, R5} \n\
/* 0800c9a0 */ POP {R1} \n\
/* 0800c9a2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
