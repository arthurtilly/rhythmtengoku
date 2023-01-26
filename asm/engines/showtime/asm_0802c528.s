asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802c528 \n\
/* 0802c528 */ PUSH {LR} \n\
/* 0802c52a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802c52c */ BEQ branch_0802c54c \n\
/* 0802c52e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802c530 */ BGT branch_0802c538 \n\
/* 0802c532 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802c534 */ BEQ branch_0802c544 \n\
/* 0802c536 */ B branch_0802c552 \n\
 \n\
branch_0802c538: \n\
/* 0802c538 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0802c53a */ BGT branch_0802c552 \n\
/* 0802c53c */ LDR R0, =s_esa_pengin3_3_seqData \n\
/* 0802c53e */ B branch_0802c54e \n\
\n\
.ltorg \n\
 \n\
branch_0802c544: \n\
/* 0802c544 */ LDR R0, =s_esa_pengin1_3_seqData \n\
/* 0802c546 */ B branch_0802c54e \n\
\n\
.ltorg \n\
 \n\
branch_0802c54c: \n\
/* 0802c54c */ LDR R0, =s_esa_pengin2_3_seqData \n\
 \n\
branch_0802c54e: \n\
/* 0802c54e */ BL play_sound \n\
 \n\
branch_0802c552: \n\
/* 0802c552 */ POP {R0} \n\
/* 0802c554 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
