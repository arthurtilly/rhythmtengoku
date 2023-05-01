asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mr_upbeat_cue_miss \n\
/* 080353ec */ PUSH {LR} \n\
/* 080353ee */ LDR R0, =gCurrentEngineData \n\
/* 080353f0 */ LDR R0, [R0] \n\
/* 080353f2 */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 080353f4 */ LDRB R0, [R0] \n\
/* 080353f6 */ BL func_08035094 \n\
/* 080353fa */ POP {R0} \n\
/* 080353fc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
