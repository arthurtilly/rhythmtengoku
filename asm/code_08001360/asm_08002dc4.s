asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002dc4 \n\
/* 08002dc4 */ PUSH {LR} \n\
/* 08002dc6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08002dc8 */ B branch_08002dda \n\
 \n\
branch_08002dca: \n\
/* 08002dca */ LDR R0, [R1] \n\
/* 08002dcc */ STR R0, [R2] \n\
/* 08002dce */ LDR R0, [R1, 0x4] \n\
/* 08002dd0 */ STR R0, [R2, 0x4] \n\
/* 08002dd2 */ LDR R0, [R1, 0x8] \n\
/* 08002dd4 */ STR R0, [R2, 0x8] \n\
/* 08002dd6 */ ADDS R2, 0xC @ Add 0xC to R2 \n\
/* 08002dd8 */ ADDS R1, 0xC @ Add 0xC to R1 \n\
 \n\
branch_08002dda: \n\
/* 08002dda */ LDR R0, [R1] \n\
/* 08002ddc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002dde */ BNE branch_08002dca \n\
/* 08002de0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08002de2 */ STR R0, [R2, 0x4] \n\
/* 08002de4 */ STR R0, [R2] \n\
/* 08002de6 */ STR R0, [R2, 0x8] \n\
/* 08002de8 */ POP {R0} \n\
/* 08002dea */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
