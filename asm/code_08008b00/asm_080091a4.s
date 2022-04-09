asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080091a4 \n\
/* 080091a4 */ PUSH {LR} \n\
/* 080091a6 */ LDR R0, =D_030010fc \n\
/* 080091a8 */ LDR R1, [R0] \n\
/* 080091aa */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080091ac */ BEQ branch_080091b6 \n\
/* 080091ae */ LDR R0, =D_03001100 \n\
/* 080091b0 */ LDR R0, [R0] \n\
/* 080091b2 */ BL _call_via_r1 \n\
 \n\
branch_080091b6: \n\
/* 080091b6 */ POP {R0} \n\
/* 080091b8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
