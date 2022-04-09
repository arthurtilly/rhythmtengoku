asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035eac \n\
/* 08035eac */ PUSH {R4, R5, LR} \n\
/* 08035eae */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08035eb0 */ ADDS R4, R3, 0x0 @ Set R4 to R3 + 0x0 \n\
/* 08035eb2 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08035eb4 */ BL func_0800c3a4 \n\
/* 08035eb8 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08035eba */ CMP R5, R4 @ Check R5 - R4 \n\
/* 08035ebc */ BHI branch_08035ec2 \n\
/* 08035ebe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08035ec0 */ B branch_08035ec4 \n\
 \n\
branch_08035ec2: \n\
/* 08035ec2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08035ec4: \n\
/* 08035ec4 */ POP {R4, R5} \n\
/* 08035ec6 */ POP {R1} \n\
/* 08035ec8 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
