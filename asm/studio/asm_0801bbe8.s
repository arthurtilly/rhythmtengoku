asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801bbe8 \n\
/* 0801bbe8 */ PUSH {LR} \n\
/* 0801bbea */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0801bbec */ BNE branch_0801bbf4 \n\
/* 0801bbee */ BL func_0801bb60 \n\
/* 0801bbf2 */ B branch_0801bc02 \n\
 \n\
branch_0801bbf4: \n\
/* 0801bbf4 */ LDR R0, =gCurrentSceneData \n\
/* 0801bbf6 */ LDR R0, [R0] \n\
/* 0801bbf8 */ MOVS R1, 0xD7 @ Set R1 to 0xD7 \n\
/* 0801bbfa */ LSLS R1, R1, 0x2 \n\
/* 0801bbfc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801bbfe */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801bc00 */ STRB R1, [R0] \n\
 \n\
branch_0801bc02: \n\
/* 0801bc02 */ POP {R0} \n\
/* 0801bc04 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
