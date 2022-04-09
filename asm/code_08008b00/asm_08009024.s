asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009024 \n\
/* 08009024 */ PUSH {R4, R5, LR} \n\
/* 08009026 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08009028 */ LDR R5, =0x3ff \n\
 \n\
branch_0800902a: \n\
/* 0800902a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800902c */ BL func_08008ff8 \n\
/* 08009030 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009032 */ BNE branch_0800903c \n\
/* 08009034 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08009036 */ CMP R4, R5 @ Check R4 - R5 \n\
/* 08009038 */ BLS branch_0800902a \n\
/* 0800903a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800903c: \n\
/* 0800903c */ POP {R4, R5} \n\
/* 0800903e */ POP {R1} \n\
/* 08009040 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
