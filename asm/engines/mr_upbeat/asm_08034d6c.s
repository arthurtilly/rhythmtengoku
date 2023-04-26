asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034d6c \n\
/* 08034d6c */ PUSH {LR} \n\
/* 08034d6e */ LDR R1, =gCurrentEngineData \n\
/* 08034d70 */ LDR R0, [R1] \n\
/* 08034d72 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08034d74 */ ADDS R2, 0x4E @ Add 0x4E to R2 \n\
/* 08034d76 */ LDRH R0, [R2] \n\
/* 08034d78 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08034d7a */ STRH R0, [R2] \n\
/* 08034d7c */ LSLS R0, R0, 0x10 \n\
/* 08034d7e */ LSRS R0, R0, 0x10 \n\
/* 08034d80 */ CMP R0, 0x63 @ Compare R0 and 0x63 \n\
/* 08034d82 */ BLS branch_08034d88 \n\
/* 08034d84 */ MOVS R0, 0x63 @ Set R0 to 0x63 \n\
/* 08034d86 */ STRH R0, [R2] \n\
 \n\
branch_08034d88: \n\
/* 08034d88 */ LDR R1, [R1] \n\
/* 08034d8a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08034d8c */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 08034d8e */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08034d90 */ ADDS R2, 0x50 @ Add 0x50 to R2 \n\
/* 08034d92 */ LDRH R0, [R0] \n\
/* 08034d94 */ LDRH R3, [R2] \n\
/* 08034d96 */ CMP R0, R3 @ Check R0 - R3 \n\
/* 08034d98 */ BLS branch_08034da2 \n\
/* 08034d9a */ STRH R0, [R2] \n\
/* 08034d9c */ ADDS R1, 0x52 @ Add 0x52 to R1 \n\
/* 08034d9e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08034da0 */ STRB R0, [R1] \n\
 \n\
branch_08034da2: \n\
/* 08034da2 */ BL func_08034bf4 \n\
/* 08034da6 */ POP {R0} \n\
/* 08034da8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
