asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003a18 \n\
/* 08003a18 */ PUSH {R4, LR} \n\
/* 08003a1a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08003a1c */ B branch_08003a20 \n\
 \n\
branch_08003a1e: \n\
/* 08003a1e */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
 \n\
branch_08003a20: \n\
/* 08003a20 */ LDR R0, [R4] \n\
/* 08003a22 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003a24 */ BNE branch_08003a1e \n\
/* 08003a26 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08003a28 */ BL func_080039d4 \n\
/* 08003a2c */ POP {R4} \n\
/* 08003a2e */ POP {R0} \n\
/* 08003a30 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
