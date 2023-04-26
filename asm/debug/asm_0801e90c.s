asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e90c \n\
/* 0801e90c */ PUSH {LR} \n\
/* 0801e90e */ LDR R0, =gCurrentSceneData \n\
/* 0801e910 */ LDR R0, [R0] \n\
/* 0801e912 */ LDR R0, [R0, 0x8] \n\
/* 0801e914 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e916 */ BNE branch_0801e920 \n\
/* 0801e918 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e91a */ B branch_0801e922 \n\
 \n\
.ltorg \n\
\n\
branch_0801e920: \n\
/* 0801e920 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0801e922: \n\
/* 0801e922 */ POP {R1} \n\
/* 0801e924 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
