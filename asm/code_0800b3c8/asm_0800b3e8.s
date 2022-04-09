asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b3e8 \n\
/* 0800b3e8 */ PUSH {LR} \n\
/* 0800b3ea */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800b3ec */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800b3ee */ BEQ branch_0800b3fe \n\
/* 0800b3f0 */ LDR R0, =D_03005380 \n\
/* 0800b3f2 */ LDR R0, [R0] \n\
/* 0800b3f4 */ MOVS R2, 0x2A @ Set R2 to 0x2A \n\
/* 0800b3f6 */ LDRSH R1, [R1, R2] \n\
/* 0800b3f8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800b3fa */ BL func_0804d770 \n\
 \n\
branch_0800b3fe: \n\
/* 0800b3fe */ POP {R0} \n\
/* 0800b400 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
