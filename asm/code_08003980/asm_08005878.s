asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005878 \n\
/* 08005878 */ PUSH {R4, R5, LR} \n\
/* 0800587a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800587c */ LDR R4, [R5, 0x8] \n\
/* 0800587e */ B branch_080058a0 \n\
 \n\
branch_08005880: \n\
/* 08005880 */ LDR R0, [R5] \n\
/* 08005882 */ LDR R1, [R5, 0x4] \n\
/* 08005884 */ LDR R2, [R4] \n\
/* 08005886 */ LDR R3, [R5, 0xC] \n\
/* 08005888 */ BL func_0800568c \n\
/* 0800588c */ LDMIA R4!, {R0} \n\
/* 0800588e */ LDRB R0, [R0] \n\
/* 08005890 */ STR R4, [R5, 0x8] \n\
/* 08005892 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08005894 */ BNE branch_080058a0 \n\
/* 08005896 */ LDR R0, [R4] \n\
/* 08005898 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800589a */ BEQ branch_080058a6 \n\
/* 0800589c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800589e */ B branch_080058a8 \n\
 \n\
branch_080058a0: \n\
/* 080058a0 */ LDR R0, [R4] \n\
/* 080058a2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080058a4 */ BNE branch_08005880 \n\
 \n\
branch_080058a6: \n\
/* 080058a6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_080058a8: \n\
/* 080058a8 */ POP {R4, R5} \n\
/* 080058aa */ POP {R1} \n\
/* 080058ac */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
