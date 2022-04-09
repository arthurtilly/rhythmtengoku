asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800aa78 \n\
/* 0800aa78 */ PUSH {LR} \n\
/* 0800aa7a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800aa7c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800aa7e */ BEQ branch_0800aa96 \n\
/* 0800aa80 */ LDRB R0, [R1, 0x2] \n\
/* 0800aa82 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800aa84 */ BNE branch_0800aa96 \n\
/* 0800aa86 */ LDR R1, [R1, 0x34] \n\
/* 0800aa88 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800aa8a */ BEQ branch_0800aa96 \n\
/* 0800aa8c */ LDRB R0, [R1] \n\
/* 0800aa8e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800aa90 */ BEQ branch_0800aa96 \n\
/* 0800aa92 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800aa94 */ B branch_0800aa98 \n\
 \n\
branch_0800aa96: \n\
/* 0800aa96 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800aa98: \n\
/* 0800aa98 */ POP {R1} \n\
/* 0800aa9a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
