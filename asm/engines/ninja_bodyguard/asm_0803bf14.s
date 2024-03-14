asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803bf14 \n\
/* 0803bf14 */ PUSH {R4-R6, LR} \n\
/* 0803bf16 */ SUB SP, 0x14 \n\
/* 0803bf18 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0803bf1a: \n\
/* 0803bf1a */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0803bf1c */ BL ninja_get_anim \n\
/* 0803bf20 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803bf22 */ LDR R0, =gSpriteHandler \n\
/* 0803bf24 */ LDR R0, [R0] \n\
/* 0803bf26 */ MOVS R2, 0x73 @ Set R2 to 0x73 \n\
/* 0803bf28 */ STR R2, [SP] \n\
/* 0803bf2a */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 0803bf2c */ LSLS R2, R2, 0x7 \n\
/* 0803bf2e */ STR R2, [SP, 0x4] \n\
/* 0803bf30 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0803bf32 */ STR R5, [SP, 0x8] \n\
/* 0803bf34 */ STR R5, [SP, 0xC] \n\
/* 0803bf36 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803bf38 */ LSLS R2, R2, 0x8 \n\
/* 0803bf3a */ STR R2, [SP, 0x10] \n\
/* 0803bf3c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bf3e */ MOVS R3, 0x82 @ Set R3 to 0x82 \n\
/* 0803bf40 */ BL sprite_create \n\
/* 0803bf44 */ LDR R1, =gCurrentEngineData \n\
/* 0803bf46 */ LDR R3, [R1] \n\
/* 0803bf48 */ LSLS R2, R4, 0x1 \n\
/* 0803bf4a */ MOVS R6, 0xB7 @ Set R6 to 0xB7 \n\
/* 0803bf4c */ LSLS R6, R6, 0x2 \n\
/* 0803bf4e */ ADDS R1, R3, R6 @ Set R1 to R3 + R6 \n\
/* 0803bf50 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803bf52 */ STRH R0, [R1] \n\
/* 0803bf54 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0803bf56 */ CMP R4, 0x7 @ Compare R4 and 0x7 \n\
/* 0803bf58 */ BLS branch_0803bf1a \n\
/* 0803bf5a */ MOVS R1, 0xB6 @ Set R1 to 0xB6 \n\
/* 0803bf5c */ LSLS R1, R1, 0x2 \n\
/* 0803bf5e */ ADDS R0, R3, R1 @ Set R0 to R3 + R1 \n\
/* 0803bf60 */ STRH R5, [R0] \n\
/* 0803bf62 */ ADD SP, 0x14 \n\
/* 0803bf64 */ POP {R4-R6} \n\
/* 0803bf66 */ POP {R0} \n\
/* 0803bf68 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
