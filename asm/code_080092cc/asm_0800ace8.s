asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ace8 \n\
/* 0800ace8 */ PUSH {LR} \n\
/* 0800acea */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800acec */ BEQ branch_0800acf2 \n\
/* 0800acee */ LDRH R0, [R0, 0x26] \n\
/* 0800acf0 */ B branch_0800acf4 \n\
 \n\
branch_0800acf2: \n\
/* 0800acf2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800acf4: \n\
/* 0800acf4 */ POP {R1} \n\
/* 0800acf6 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
