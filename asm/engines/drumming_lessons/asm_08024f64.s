asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08024f64 \n\
/* 08024f64 */ PUSH {R4-R6, LR} \n\
/* 08024f66 */ LDR R6, =gCurrentEngineData \n\
/* 08024f68 */ LDR R2, [R6] \n\
/* 08024f6a */ MOVS R1, 0xE3 @ Set R1 to 0xE3 \n\
/* 08024f6c */ LSLS R1, R1, 0x2 \n\
/* 08024f6e */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08024f70 */ LDR R3, [R0] \n\
/* 08024f72 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08024f74 */ BEQ branch_08024fa6 \n\
/* 08024f76 */ MOVS R5, 0xE2 @ Set R5 to 0xE2 \n\
/* 08024f78 */ LSLS R5, R5, 0x2 \n\
/* 08024f7a */ ADDS R1, R2, R5 @ Set R1 to R2 + R5 \n\
/* 08024f7c */ LDR R0, =D_08059f94 \n\
/* 08024f7e */ STR R0, [R1] \n\
/* 08024f80 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08024f82 */ LDR R1, [R3, 0x14] \n\
/* 08024f84 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08024f86 */ BEQ branch_08024f96 \n\
/* 08024f88 */ MOVS R3, 0xE4 @ Set R3 to 0xE4 \n\
/* 08024f8a */ LSLS R3, R3, 0x2 \n\
/* 08024f8c */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 08024f8e */ LDR R0, [R0] \n\
/* 08024f90 */ BL _call_via_r1 \n\
/* 08024f94 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
 \n\
branch_08024f96: \n\
/* 08024f96 */ LDR R0, [R6] \n\
/* 08024f98 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08024f9a */ LDR R0, [R0] \n\
/* 08024f9c */ BL gameplay_display_text \n\
/* 08024fa0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08024fa2 */ BL play_sound \n\
 \n\
branch_08024fa6: \n\
/* 08024fa6 */ POP {R4-R6} \n\
/* 08024fa8 */ POP {R0} \n\
/* 08024faa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
