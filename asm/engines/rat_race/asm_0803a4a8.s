asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a4a8 \n\
/* 0803a4a8 */ PUSH {R4-R6, LR} \n\
/* 0803a4aa */ LSLS R0, R0, 0x18 \n\
/* 0803a4ac */ LDR R1, =gCurrentEngineData \n\
/* 0803a4ae */ LDR R2, [R1] \n\
/* 0803a4b0 */ LDR R4, [R2, 0x20] \n\
/* 0803a4b2 */ LDR R6, [R2, 0x24] \n\
/* 0803a4b4 */ LDR R1, [R2, 0x18] \n\
/* 0803a4b6 */ LDR R2, [R2, 0x44] \n\
/* 0803a4b8 */ SUBS R1, R1, R2 @ Set R1 to R1 - R2 \n\
/* 0803a4ba */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 0803a4bc */ LSLS R2, R2, 0x7 \n\
/* 0803a4be */ ADDS R5, R1, R2 @ Set R5 to R1 + R2 \n\
/* 0803a4c0 */ LDR R1, =D_089e66bc \n\
/* 0803a4c2 */ LSRS R0, R0, 0x16 \n\
/* 0803a4c4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803a4c6 */ LDR R0, [R0] \n\
/* 0803a4c8 */ LSLS R0, R0, 0x8 \n\
/* 0803a4ca */ B branch_0803a4e0 \n\
\n\
.ltorg \n\
 \n\
branch_0803a4d4: \n\
/* 0803a4d4 */ LSLS R0, R4, 0x1 \n\
/* 0803a4d6 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803a4d8 */ LSLS R0, R0, 0x9 \n\
/* 0803a4da */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0803a4dc */ BL __divsi3 \n\
 \n\
branch_0803a4e0: \n\
/* 0803a4e0 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 0803a4e2 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803a4e4 */ BLE branch_0803a4f0 \n\
/* 0803a4e6 */ BL func_0800c398 \n\
/* 0803a4ea */ SUBS R4, R4, R0 @ Set R4 to R4 - R0 \n\
/* 0803a4ec */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803a4ee */ BGT branch_0803a4d4 \n\
 \n\
branch_0803a4f0: \n\
/* 0803a4f0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803a4f2 */ POP {R4-R6} \n\
/* 0803a4f4 */ POP {R1} \n\
/* 0803a4f6 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
