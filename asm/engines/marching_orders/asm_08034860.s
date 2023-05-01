asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start marching_engine_update \n\
/* 08034860 */ PUSH {LR} \n\
/* 08034862 */ BL func_080346b0 \n\
/* 08034866 */ BL func_0803482c \n\
/* 0803486a */ LDR R0, =gCurrentEngineData \n\
/* 0803486c */ LDR R1, [R0] \n\
/* 0803486e */ LDRH R0, [R1, 0x3E] \n\
/* 08034870 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08034872 */ BEQ branch_08034878 \n\
/* 08034874 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08034876 */ STRH R0, [R1, 0x3E] \n\
 \n\
branch_08034878: \n\
/* 08034878 */ POP {R0} \n\
/* 0803487a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
