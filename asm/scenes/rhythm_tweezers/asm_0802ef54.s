asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ef54 \n\
/* 0802ef54 */ PUSH {LR} \n\
/* 0802ef56 */ LSLS R3, R3, 0x1 \n\
/* 0802ef58 */ CMP R2, R3 @ Check R2 - R3 \n\
/* 0802ef5a */ BHI branch_0802ef60 \n\
/* 0802ef5c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802ef5e */ B branch_0802ef62 \n\
 \n\
branch_0802ef60: \n\
/* 0802ef60 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0802ef62: \n\
/* 0802ef62 */ POP {R1} \n\
/* 0802ef64 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
