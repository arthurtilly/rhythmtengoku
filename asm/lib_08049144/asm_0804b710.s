asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b710 \n\
/* 0804b710 */ PUSH {R4, LR} \n\
/* 0804b712 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804b714 */ LSLS R1, R1, 0x10 \n\
/* 0804b716 */ LSRS R1, R1, 0x10 \n\
/* 0804b718 */ STRH R1, [R4, 0x26] \n\
/* 0804b71a */ LDR R0, [R4] \n\
/* 0804b71c */ LSLS R0, R0, 0xB \n\
/* 0804b71e */ LSRS R0, R0, 0x17 \n\
/* 0804b720 */ LDRH R2, [R4, 0x1E] \n\
/* 0804b722 */ BL func_0804b6f0 \n\
/* 0804b726 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b728 */ BNE branch_0804b72c \n\
/* 0804b72a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0804b72c: \n\
/* 0804b72c */ STR R0, [R4, 0x10] \n\
/* 0804b72e */ POP {R4} \n\
/* 0804b730 */ POP {R0} \n\
/* 0804b732 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
