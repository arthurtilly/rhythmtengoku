asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002e5c \n\
/* 08002e5c */ PUSH {R4, LR} \n\
/* 08002e5e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08002e60 */ B branch_08002e64 \n\
 \n\
branch_08002e62: \n\
/* 08002e62 */ ADDS R4, 0xC @ Add 0xC to R4 \n\
 \n\
branch_08002e64: \n\
/* 08002e64 */ LDR R0, [R4] \n\
/* 08002e66 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002e68 */ BNE branch_08002e62 \n\
/* 08002e6a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08002e6c */ BL func_08002e18 \n\
/* 08002e70 */ POP {R4} \n\
/* 08002e72 */ POP {R0} \n\
/* 08002e74 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
