asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e08c \n\
/* 0803e08c */ PUSH {LR} \n\
/* 0803e08e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803e090 */ BL func_0800c604 \n\
/* 0803e094 */ LDR R0, =gCurrentEngineData \n\
/* 0803e096 */ LDR R0, [R0] \n\
/* 0803e098 */ LDRB R0, [R0, 0x1E] \n\
/* 0803e09a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e09c */ BEQ branch_0803e0a8 \n\
/* 0803e09e */ BL beatscript_enable_loops \n\
/* 0803e0a2 */ B branch_0803e0ac \n\
\n\
.ltorg \n\
 \n\
branch_0803e0a8: \n\
/* 0803e0a8 */ BL beatscript_disable_loops \n\
 \n\
branch_0803e0ac: \n\
/* 0803e0ac */ LDR R0, =gCurrentEngineData \n\
/* 0803e0ae */ LDR R1, [R0] \n\
/* 0803e0b0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803e0b2 */ STRB R0, [R1, 0x1E] \n\
/* 0803e0b4 */ POP {R0} \n\
/* 0803e0b6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
