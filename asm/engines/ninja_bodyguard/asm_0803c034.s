asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c034 \n\
/* 0803c034 */ PUSH {R4, R5, LR} \n\
/* 0803c036 */ SUB SP, 0x4 \n\
/* 0803c038 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803c03a */ LDR R1, =gCurrentEngineData \n\
/* 0803c03c */ LDR R0, [R1] \n\
/* 0803c03e */ MOVS R2, 0xB6 @ Set R2 to 0xB6 \n\
/* 0803c040 */ LSLS R2, R2, 0x2 \n\
/* 0803c042 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803c044 */ LDRH R0, [R0] \n\
/* 0803c046 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0803c048 */ BCS branch_0803c07c \n\
/* 0803c04a */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
 \n\
branch_0803c04c: \n\
/* 0803c04c */ LDR R0, =gSpriteHandler \n\
/* 0803c04e */ LDR R0, [R0] \n\
/* 0803c050 */ LDR R1, [R5] \n\
/* 0803c052 */ LSLS R2, R4, 0x1 \n\
/* 0803c054 */ MOVS R3, 0xB7 @ Set R3 to 0xB7 \n\
/* 0803c056 */ LSLS R3, R3, 0x2 \n\
/* 0803c058 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803c05a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803c05c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c05e */ LDRSH R1, [R1, R2] \n\
/* 0803c060 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c062 */ STR R2, [SP] \n\
/* 0803c064 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803c066 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803c068 */ BL sprite_set_playback \n\
/* 0803c06c */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0803c06e */ LDR R0, [R5] \n\
/* 0803c070 */ MOVS R3, 0xB6 @ Set R3 to 0xB6 \n\
/* 0803c072 */ LSLS R3, R3, 0x2 \n\
/* 0803c074 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803c076 */ LDRH R0, [R0] \n\
/* 0803c078 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 0803c07a */ BCC branch_0803c04c \n\
 \n\
branch_0803c07c: \n\
/* 0803c07c */ ADD SP, 0x4 \n\
/* 0803c07e */ POP {R4, R5} \n\
/* 0803c080 */ POP {R0} \n\
/* 0803c082 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
