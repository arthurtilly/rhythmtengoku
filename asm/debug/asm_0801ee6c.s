asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ee6c \n\
/* 0801ee6c */ PUSH {LR} \n\
/* 0801ee6e */ LDR R0, =gCurrentSceneData \n\
/* 0801ee70 */ LDR R0, [R0] \n\
/* 0801ee72 */ LDR R0, [R0, 0x8] \n\
/* 0801ee74 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801ee76 */ BNE branch_0801ee80 \n\
/* 0801ee78 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ee7a */ B branch_0801ee82 \n\
\n\
.ltorg \n\
 \n\
branch_0801ee80: \n\
/* 0801ee80 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0801ee82: \n\
/* 0801ee82 */ POP {R1} \n\
/* 0801ee84 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
