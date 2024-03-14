asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c964 \n\
/* 0803c964 */ PUSH {R4-R6, LR} \n\
/* 0803c966 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803c968 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803c96a */ PUSH {R5, R6} \n\
/* 0803c96c */ SUB SP, 0x14 \n\
/* 0803c96e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803c970 */ BL ninja_get_anim \n\
/* 0803c974 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803c976 */ LDR R0, =gSpriteHandler \n\
/* 0803c978 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0803c97a */ LDR R0, [R0] \n\
/* 0803c97c */ MOVS R2, 0x69 @ Set R2 to 0x69 \n\
/* 0803c97e */ STR R2, [SP] \n\
/* 0803c980 */ LDR R2, =0x4864 \n\
/* 0803c982 */ STR R2, [SP, 0x4] \n\
/* 0803c984 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803c986 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0803c988 */ STR R2, [SP, 0x8] \n\
/* 0803c98a */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803c98c */ STR R6, [SP, 0xC] \n\
/* 0803c98e */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 0803c990 */ LSLS R5, R5, 0x8 \n\
/* 0803c992 */ STR R5, [SP, 0x10] \n\
/* 0803c994 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c996 */ MOVS R3, 0x8C @ Set R3 to 0x8C \n\
/* 0803c998 */ BL sprite_create \n\
/* 0803c99c */ LDR R4, =gCurrentEngineData \n\
/* 0803c99e */ LDR R1, [R4] \n\
/* 0803c9a0 */ MOVS R2, 0xB4 @ Set R2 to 0xB4 \n\
/* 0803c9a2 */ LSLS R2, R2, 0x2 \n\
/* 0803c9a4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803c9a6 */ STRH R0, [R1] \n\
/* 0803c9a8 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0803c9aa */ BL ninja_get_anim \n\
/* 0803c9ae */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803c9b0 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803c9b2 */ LDR R0, [R2] \n\
/* 0803c9b4 */ MOVS R2, 0x4B @ Set R2 to 0x4B \n\
/* 0803c9b6 */ STR R2, [SP] \n\
/* 0803c9b8 */ LDR R2, =0x4863 \n\
/* 0803c9ba */ STR R2, [SP, 0x4] \n\
/* 0803c9bc */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803c9be */ STR R2, [SP, 0x8] \n\
/* 0803c9c0 */ STR R6, [SP, 0xC] \n\
/* 0803c9c2 */ STR R5, [SP, 0x10] \n\
/* 0803c9c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803c9c6 */ MOVS R3, 0x8A @ Set R3 to 0x8A \n\
/* 0803c9c8 */ BL sprite_create \n\
/* 0803c9cc */ LDR R1, [R4] \n\
/* 0803c9ce */ MOVS R2, 0xB5 @ Set R2 to 0xB5 \n\
/* 0803c9d0 */ LSLS R2, R2, 0x2 \n\
/* 0803c9d2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803c9d4 */ STRH R0, [R1] \n\
/* 0803c9d6 */ ADD SP, 0x14 \n\
/* 0803c9d8 */ POP {R3, R4} \n\
/* 0803c9da */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803c9dc */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803c9de */ POP {R4-R6} \n\
/* 0803c9e0 */ POP {R0} \n\
/* 0803c9e2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
