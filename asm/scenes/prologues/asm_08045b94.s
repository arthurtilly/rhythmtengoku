asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045b94 \n\
/* 08045b94 */ PUSH {LR} \n\
/* 08045b96 */ SUB SP, 0x4 \n\
/* 08045b98 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08045b9a */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08045b9c */ BEQ branch_08045ba4 \n\
/* 08045b9e */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 08045ba0 */ BEQ branch_08045bc4 \n\
/* 08045ba2 */ B branch_08045bdc \n\
 \n\
branch_08045ba4: \n\
/* 08045ba4 */ LDR R0, =D_03005380 \n\
/* 08045ba6 */ LDR R0, [R0] \n\
/* 08045ba8 */ LDR R1, =D_030055d0 \n\
/* 08045baa */ LDR R1, [R1] \n\
/* 08045bac */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08045bae */ LDRSH R1, [R1, R3] \n\
/* 08045bb0 */ STR R2, [SP] \n\
/* 08045bb2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08045bb4 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08045bb6 */ BL func_0804dae0 \n\
/* 08045bba */ B branch_08045bdc \n\
\n\
.ltorg \n\
 \n\
branch_08045bc4: \n\
/* 08045bc4 */ LDR R0, =D_03005380 \n\
/* 08045bc6 */ LDR R0, [R0] \n\
/* 08045bc8 */ LDR R1, =D_030055d0 \n\
/* 08045bca */ LDR R1, [R1] \n\
/* 08045bcc */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08045bce */ LDRSH R1, [R1, R2] \n\
/* 08045bd0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045bd2 */ STR R2, [SP] \n\
/* 08045bd4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08045bd6 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08045bd8 */ BL func_0804dae0 \n\
 \n\
branch_08045bdc: \n\
/* 08045bdc */ ADD SP, 0x4 \n\
/* 08045bde */ POP {R0} \n\
/* 08045be0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
