asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802080c \n\
/* 0802080c */ PUSH {R4-R6, LR} \n\
/* 0802080e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08020810 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08020812 */ LDR R6, =D_030055d0 \n\
 \n\
branch_08020814: \n\
/* 08020814 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08020816 */ BL func_0800c3a4 \n\
/* 0802081a */ LDR R1, [R6] \n\
/* 0802081c */ LSLS R2, R4, 0x1 \n\
/* 0802081e */ ADDS R1, 0x4C @ Add 0x4C to R1 \n\
/* 08020820 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08020822 */ STRH R0, [R1] \n\
/* 08020824 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08020826 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 08020828 */ BLS branch_08020814 \n\
/* 0802082a */ POP {R4-R6} \n\
/* 0802082c */ POP {R0} \n\
/* 0802082e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
