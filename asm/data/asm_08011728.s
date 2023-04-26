asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011728 \n\
/* 08011728 */ PUSH {LR} \n\
/* 0801172a */ LDR R0, =gCurrentSceneData \n\
/* 0801172c */ LDR R0, [R0] \n\
/* 0801172e */ LDR R0, [R0, 0x8] \n\
/* 08011730 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08011732 */ BNE branch_0801173c \n\
/* 08011734 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08011736 */ B branch_0801173e \n\
\n\
.ltorg \n\
 \n\
branch_0801173c: \n\
/* 0801173c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0801173e: \n\
/* 0801173e */ POP {R1} \n\
/* 08011740 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
