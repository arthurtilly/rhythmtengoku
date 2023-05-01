asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801b4b4 \n\
/* 0801b4b4 */ PUSH {R4-R6, LR} \n\
/* 0801b4b6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801b4b8 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0801b4ba */ BL func_0801aea4 \n\
/* 0801b4be */ CMP R4, R5 @ Check R4 - R5 \n\
/* 0801b4c0 */ BGE branch_0801b4c8 \n\
/* 0801b4c2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801b4c4 */ ADDS R6, R5, 0x0 @ Set R6 to R5 + 0x0 \n\
/* 0801b4c6 */ B branch_0801b4cc \n\
 \n\
branch_0801b4c8: \n\
/* 0801b4c8 */ ADDS R6, R4, 0x0 @ Set R6 to R4 + 0x0 \n\
/* 0801b4ca */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
 \n\
branch_0801b4cc: \n\
/* 0801b4cc */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801b4ce */ CMP R4, R6 @ Check R4 - R6 \n\
/* 0801b4d0 */ BGT branch_0801b4ea \n\
/* 0801b4d2 */ LDR R5, =gCurrentSceneData \n\
 \n\
branch_0801b4d4: \n\
/* 0801b4d4 */ LDR R0, [R5] \n\
/* 0801b4d6 */ MOVS R1, 0xD8 @ Set R1 to 0xD8 \n\
/* 0801b4d8 */ LSLS R1, R1, 0x2 \n\
/* 0801b4da */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801b4dc */ LDR R0, [R0] \n\
/* 0801b4de */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801b4e0 */ BL func_0800b454 \n\
/* 0801b4e4 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0801b4e6 */ CMP R4, R6 @ Check R4 - R6 \n\
/* 0801b4e8 */ BLE branch_0801b4d4 \n\
 \n\
branch_0801b4ea: \n\
/* 0801b4ea */ POP {R4-R6} \n\
/* 0801b4ec */ POP {R0} \n\
/* 0801b4ee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
