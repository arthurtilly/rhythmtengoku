asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802be58 \n\
/* 0802be58 */ PUSH {R4, LR} \n\
/* 0802be5a */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0802be5c */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 0802be5e */ BL func_0800c3a4 \n\
/* 0802be62 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0802be64 */ BHI branch_0802be6a \n\
/* 0802be66 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802be68 */ B branch_0802be6c \n\
 \n\
branch_0802be6a: \n\
/* 0802be6a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0802be6c: \n\
/* 0802be6c */ POP {R4} \n\
/* 0802be6e */ POP {R1} \n\
/* 0802be70 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
