asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801b834 \n\
/* 0801b834 */ PUSH {LR} \n\
/* 0801b836 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0801b838 */ BNE branch_0801b840 \n\
/* 0801b83a */ BL func_0801b7b8 \n\
/* 0801b83e */ B branch_0801b84e \n\
 \n\
branch_0801b840: \n\
/* 0801b840 */ LDR R0, =gCurrentSceneData \n\
/* 0801b842 */ LDR R0, [R0] \n\
/* 0801b844 */ MOVS R1, 0xD7 @ Set R1 to 0xD7 \n\
/* 0801b846 */ LSLS R1, R1, 0x2 \n\
/* 0801b848 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b84a */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0801b84c */ STRB R1, [R0] \n\
 \n\
branch_0801b84e: \n\
/* 0801b84e */ POP {R0} \n\
/* 0801b850 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
