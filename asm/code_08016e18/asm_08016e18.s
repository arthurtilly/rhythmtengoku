asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016e18 \n\
/* 08016e18 */ PUSH {R4, R5, LR} \n\
/* 08016e1a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08016e1c */ LDR R0, =D_030046a4 \n\
/* 08016e1e */ LDR R0, [R0] \n\
/* 08016e20 */ LDR R1, =0x4ae \n\
/* 08016e22 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08016e24 */ LDRH R4, [R0] \n\
/* 08016e26 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08016e28 */ BEQ branch_08016e42 \n\
/* 08016e2a */ BL func_0800c1a8 \n\
/* 08016e2e */ LSLS R0, R0, 0x8 \n\
/* 08016e30 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08016e32 */ BL Div \n\
/* 08016e36 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08016e38 */ LSLS R1, R1, 0x10 \n\
/* 08016e3a */ LSRS R1, R1, 0x10 \n\
/* 08016e3c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08016e3e */ BL func_08002894 \n\
 \n\
branch_08016e42: \n\
/* 08016e42 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08016e44 */ POP {R4, R5} \n\
/* 08016e46 */ POP {R1} \n\
/* 08016e48 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
