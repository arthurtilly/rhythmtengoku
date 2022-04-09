asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800add8 \n\
/* 0800add8 */ PUSH {LR} \n\
/* 0800adda */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800addc */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800adde */ BEQ branch_0800adf8 \n\
/* 0800ade0 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800ade2 */ BLT branch_0800adf8 \n\
/* 0800ade4 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0800ade6 */ LDRSH R0, [R2, R3] \n\
/* 0800ade8 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800adea */ BGE branch_0800adf8 \n\
/* 0800adec */ LDR R0, [R2, 0x10] \n\
/* 0800adee */ LSLS R1, R1, 0x1 \n\
/* 0800adf0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800adf2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800adf4 */ LDRSH R0, [R1, R2] \n\
/* 0800adf6 */ B branch_0800adfc \n\
 \n\
branch_0800adf8: \n\
/* 0800adf8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800adfa */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0800adfc: \n\
/* 0800adfc */ POP {R1} \n\
/* 0800adfe */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
