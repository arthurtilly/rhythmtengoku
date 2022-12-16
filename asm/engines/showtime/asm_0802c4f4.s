asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802c4f4 \n\
/* 0802c4f4 */ PUSH {LR} \n\
/* 0802c4f6 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802c4f8 */ BEQ branch_0802c518 \n\
/* 0802c4fa */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802c4fc */ BGT branch_0802c504 \n\
/* 0802c4fe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802c500 */ BEQ branch_0802c510 \n\
/* 0802c502 */ B branch_0802c51e \n\
 \n\
branch_0802c504: \n\
/* 0802c504 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0802c506 */ BGT branch_0802c51e \n\
/* 0802c508 */ LDR R0, =s_esa_pengin3_2_seqData \n\
/* 0802c50a */ B branch_0802c51a \n\
\n\
.ltorg \n\
 \n\
branch_0802c510: \n\
/* 0802c510 */ LDR R0, =s_esa_pengin1_2_seqData \n\
/* 0802c512 */ B branch_0802c51a \n\
\n\
.ltorg \n\
 \n\
branch_0802c518: \n\
/* 0802c518 */ LDR R0, =s_esa_pengin2_2_seqData \n\
 \n\
branch_0802c51a: \n\
/* 0802c51a */ BL play_sound \n\
 \n\
branch_0802c51e: \n\
/* 0802c51e */ POP {R0} \n\
/* 0802c520 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
