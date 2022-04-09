asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b108 \n\
/* 0800b108 */ PUSH {LR} \n\
/* 0800b10a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800b10c */ BEQ branch_0800b112 \n\
/* 0800b10e */ LDR R0, [R0, 0x4] \n\
/* 0800b110 */ B branch_0800b114 \n\
 \n\
branch_0800b112: \n\
/* 0800b112 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800b114: \n\
/* 0800b114 */ POP {R1} \n\
/* 0800b116 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
