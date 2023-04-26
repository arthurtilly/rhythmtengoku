asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e4c4 \n\
/* 0801e4c4 */ PUSH {LR} \n\
/* 0801e4c6 */ LDR R0, =gCurrentSceneData \n\
/* 0801e4c8 */ LDR R0, [R0] \n\
/* 0801e4ca */ LDR R0, [R0, 0x8] \n\
/* 0801e4cc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e4ce */ BNE branch_0801e4d8 \n\
/* 0801e4d0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e4d2 */ B branch_0801e4da \n\
.ltorg \n\
 \n\
branch_0801e4d8: \n\
/* 0801e4d8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0801e4da: \n\
/* 0801e4da */ POP {R1} \n\
/* 0801e4dc */ BX R1 \n\
\n\
.balign 4, 0 \n\
.syntax divided");
