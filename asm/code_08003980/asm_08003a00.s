asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003a00 \n\
/* 08003a00 */ PUSH {LR} \n\
/* 08003a02 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08003a04 */ B branch_08003a08 \n\
 \n\
branch_08003a06: \n\
/* 08003a06 */ ADDS R3, 0x8 @ Add 0x8 to R3 \n\
 \n\
branch_08003a08: \n\
/* 08003a08 */ LDR R0, [R3] \n\
/* 08003a0a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003a0c */ BNE branch_08003a06 \n\
/* 08003a0e */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08003a10 */ BL func_080039a8 \n\
/* 08003a14 */ POP {R0} \n\
/* 08003a16 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
