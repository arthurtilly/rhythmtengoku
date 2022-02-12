asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08029e74 \n\
/* 08029e74 */ PUSH {LR} \n\
/* 08029e76 */ LDR R0, [R1] \n\
/* 08029e78 */ LSLS R0, R0, 0x19 \n\
/* 08029e7a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029e7c */ BGE branch_08029e82 \n\
/* 08029e7e */ BL func_08018068 \n\
 \n\
branch_08029e82: \n\
/* 08029e82 */ BL func_08029e10 \n\
/* 08029e86 */ BL func_08027f1c \n\
/* 08029e8a */ POP {R0} \n\
/* 08029e8c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
