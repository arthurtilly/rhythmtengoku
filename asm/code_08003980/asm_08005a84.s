asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005a84 \n\
/* 08005a84 */ PUSH {R4, R5, LR} \n\
/* 08005a86 */ LDR R1, =D_03000900 \n\
/* 08005a88 */ LDR R0, [R1, 0x4] \n\
/* 08005a8a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005a8c */ BNE branch_08005ace \n\
/* 08005a8e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08005a90 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08005a92 */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
 \n\
branch_08005a94: \n\
/* 08005a94 */ LDRH R0, [R4] \n\
/* 08005a96 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08005a98 */ BNE branch_08005ac6 \n\
/* 08005a9a */ LDR R0, [R4, 0x4] \n\
/* 08005a9c */ LDR R1, [R0, 0x4] \n\
/* 08005a9e */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08005aa0 */ BEQ branch_08005ac6 \n\
/* 08005aa2 */ LDRH R0, [R4, 0x18] \n\
/* 08005aa4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005aa6 */ BEQ branch_08005ab4 \n\
/* 08005aa8 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08005aaa */ STRH R0, [R4, 0x18] \n\
/* 08005aac */ B branch_08005ac6 \n\
\n\
.ltorg \n\
 \n\
branch_08005ab4: \n\
/* 08005ab4 */ LDR R0, [R4, 0xC] \n\
/* 08005ab6 */ BL _call_via_r1 \n\
/* 08005aba */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005abc */ BEQ branch_08005ac6 \n\
/* 08005abe */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08005ac0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08005ac2 */ BL func_08005a40 \n\
 \n\
branch_08005ac6: \n\
/* 08005ac6 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08005ac8 */ ADDS R4, 0x1C @ Add 0x1C to R4 \n\
/* 08005aca */ CMP R5, 0x2F @ Compare R5 and 0x2F \n\
/* 08005acc */ BLS branch_08005a94 \n\
 \n\
branch_08005ace: \n\
/* 08005ace */ POP {R4, R5} \n\
/* 08005ad0 */ POP {R0} \n\
/* 08005ad2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
