asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037cd0 \n\
/* 08037cd0 */ PUSH {LR} \n\
/* 08037cd2 */ LDR R0, =gCurrentEngineData \n\
/* 08037cd4 */ LDR R0, [R0] \n\
/* 08037cd6 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08037cd8 */ LDRSH R1, [R0, R2] \n\
/* 08037cda */ MOVS R2, 0x2C @ Set R2 to 0x2C \n\
/* 08037cdc */ LDRSH R0, [R0, R2] \n\
/* 08037cde */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08037ce0 */ BEQ branch_08037cec \n\
/* 08037ce2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08037ce4 */ B branch_08037cee \n\
\n\
.ltorg \n\
 \n\
branch_08037cec: \n\
/* 08037cec */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08037cee: \n\
/* 08037cee */ POP {R1} \n\
/* 08037cf0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
