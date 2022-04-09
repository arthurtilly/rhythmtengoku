asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802f3f4 \n\
/* 0802f3f4 */ PUSH {LR} \n\
/* 0802f3f6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802f3f8 */ BL func_0800c604 \n\
/* 0802f3fc */ BL func_0800c3b8 \n\
/* 0802f400 */ LSLS R0, R0, 0x10 \n\
/* 0802f402 */ LSRS R0, R0, 0x10 \n\
/* 0802f404 */ LDR R1, =D_089e4214 \n\
/* 0802f406 */ BL func_080087b4 \n\
/* 0802f40a */ LDR R1, =func_0802f3b4 \n\
/* 0802f40c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f40e */ BL func_08005d38 \n\
/* 0802f412 */ POP {R0} \n\
/* 0802f414 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
