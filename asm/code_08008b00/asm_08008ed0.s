asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008ed0 \n\
/* 08008ed0 */ PUSH {R4, LR} \n\
/* 08008ed2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08008ed4 */ BL func_0800c490 \n\
/* 08008ed8 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08008eda */ BEQ branch_08008ee4 \n\
/* 08008edc */ LSLS R0, R0, 0x2 \n\
/* 08008ede */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08008ee0 */ LDR R0, [R0] \n\
/* 08008ee2 */ B branch_08008ee6 \n\
 \n\
branch_08008ee4: \n\
/* 08008ee4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08008ee6: \n\
/* 08008ee6 */ POP {R4} \n\
/* 08008ee8 */ POP {R1} \n\
/* 08008eea */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
