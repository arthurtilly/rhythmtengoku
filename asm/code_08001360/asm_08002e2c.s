asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002e2c \n\
/* 08002e2c */ PUSH {LR} \n\
/* 08002e2e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08002e30 */ B branch_08002e34 \n\
 \n\
branch_08002e32: \n\
/* 08002e32 */ ADDS R2, 0xC @ Add 0xC to R2 \n\
 \n\
branch_08002e34: \n\
/* 08002e34 */ LDR R0, [R2] \n\
/* 08002e36 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002e38 */ BNE branch_08002e32 \n\
/* 08002e3a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08002e3c */ BL func_08002dc4 \n\
/* 08002e40 */ POP {R0} \n\
/* 08002e42 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
