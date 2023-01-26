asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802c4c0 \n\
/* 0802c4c0 */ PUSH {LR} \n\
/* 0802c4c2 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802c4c4 */ BEQ branch_0802c4e4 \n\
/* 0802c4c6 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802c4c8 */ BGT branch_0802c4d0 \n\
/* 0802c4ca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802c4cc */ BEQ branch_0802c4dc \n\
/* 0802c4ce */ B branch_0802c4ea \n\
 \n\
branch_0802c4d0: \n\
/* 0802c4d0 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0802c4d2 */ BGT branch_0802c4ea \n\
/* 0802c4d4 */ LDR R0, =s_esa_pengin3_1_seqData \n\
/* 0802c4d6 */ B branch_0802c4e6 \n\
\n\
.ltorg \n\
 \n\
branch_0802c4dc: \n\
/* 0802c4dc */ LDR R0, =s_esa_pengin1_1_seqData \n\
/* 0802c4de */ B branch_0802c4e6 \n\
\n\
.ltorg \n\
 \n\
branch_0802c4e4: \n\
/* 0802c4e4 */ LDR R0, =s_esa_pengin2_1_seqData \n\
 \n\
branch_0802c4e6: \n\
/* 0802c4e6 */ BL play_sound \n\
 \n\
branch_0802c4ea: \n\
/* 0802c4ea */ POP {R0} \n\
/* 0802c4ec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
