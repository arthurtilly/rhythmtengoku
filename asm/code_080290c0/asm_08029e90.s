asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08029e90 \n\
/* 08029e90 */ PUSH {LR} \n\
/* 08029e92 */ LDR R0, [R1] \n\
/* 08029e94 */ LSLS R0, R0, 0x19 \n\
/* 08029e96 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029e98 */ BGE branch_08029e9e \n\
/* 08029e9a */ BL func_08018068 \n\
 \n\
branch_08029e9e: \n\
/* 08029e9e */ BL func_08029e10 \n\
/* 08029ea2 */ BL func_08027f1c \n\
/* 08029ea6 */ POP {R0} \n\
/* 08029ea8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
