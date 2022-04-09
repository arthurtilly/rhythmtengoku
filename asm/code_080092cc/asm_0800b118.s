asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b118 \n\
/* 0800b118 */ PUSH {LR} \n\
/* 0800b11a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800b11c */ BEQ branch_0800b124 \n\
/* 0800b11e */ MOVS R1, 0x26 @ Set R1 to 0x26 \n\
/* 0800b120 */ LDRSH R0, [R0, R1] \n\
/* 0800b122 */ B branch_0800b126 \n\
 \n\
branch_0800b124: \n\
/* 0800b124 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800b126: \n\
/* 0800b126 */ POP {R1} \n\
/* 0800b128 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
