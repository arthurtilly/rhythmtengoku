asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002968 \n\
/* 08002968 */ PUSH {LR} \n\
/* 0800296a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800296c */ BEQ branch_08002972 \n\
/* 0800296e */ LDR R0, [R0, 0xC] \n\
/* 08002970 */ B branch_08002974 \n\
 \n\
branch_08002972: \n\
/* 08002972 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08002974: \n\
/* 08002974 */ POP {R1} \n\
/* 08002976 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
