asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start space_dance_engine_update \n\
/* 0803d598 */ PUSH {LR} \n\
/* 0803d59a */ BL func_0803d388 \n\
/* 0803d59e */ BL func_0803d478 \n\
/* 0803d5a2 */ BL func_0803d4f0 \n\
/* 0803d5a6 */ LDR R0, =gCurrentEngineData \n\
/* 0803d5a8 */ LDR R1, [R0] \n\
/* 0803d5aa */ LDRH R0, [R1, 0x36] \n\
/* 0803d5ac */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803d5ae */ BEQ branch_0803d5b4 \n\
/* 0803d5b0 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0803d5b2 */ STRH R0, [R1, 0x36] \n\
 \n\
branch_0803d5b4: \n\
/* 0803d5b4 */ POP {R0} \n\
/* 0803d5b6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
