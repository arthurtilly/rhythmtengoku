asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803bf74 \n\
/* 0803bf74 */ PUSH {R4-R7, LR} \n\
/* 0803bf76 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0803bf78 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803bf7a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803bf7c */ PUSH {R5-R7} \n\
/* 0803bf7e */ SUB SP, 0xC \n\
/* 0803bf80 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0803bf82 */ LDR R3, =gCurrentEngineData \n\
/* 0803bf84 */ LDR R0, [R3] \n\
/* 0803bf86 */ MOVS R2, 0xB6 @ Set R2 to 0xB6 \n\
/* 0803bf88 */ LSLS R2, R2, 0x2 \n\
/* 0803bf8a */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0803bf8c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bf8e */ STRH R7, [R1] \n\
/* 0803bf90 */ LDR R4, =0x2da \n\
/* 0803bf92 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803bf94 */ STRH R2, [R0] \n\
/* 0803bf96 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803bf98 */ CMP R6, R7 @ Check R6 - R7 \n\
/* 0803bf9a */ BCS branch_0803c012 \n\
/* 0803bf9c */ SUBS R0, R7, 0x1 @ Set R0 to R7 - 0x1 \n\
/* 0803bf9e */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0803bfa0 */ LSLS R0, R0, 0x3 \n\
/* 0803bfa2 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0803bfa4 */ ADDS R0, 0x73 @ Add 0x73 to R0 \n\
/* 0803bfa6 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0803bfa8 */ MOVS R1, 0xB7 @ Set R1 to 0xB7 \n\
/* 0803bfaa */ LSLS R1, R1, 0x2 \n\
/* 0803bfac */ MOV R10, R1 @ Set R10 to R1 \n\
 \n\
branch_0803bfae: \n\
/* 0803bfae */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803bfb0 */ LSLS R1, R2, 0x4 \n\
/* 0803bfb2 */ LSLS R0, R6, 0x5 \n\
/* 0803bfb4 */ SUBS R2, R1, R0 @ Set R2 to R1 - R0 \n\
/* 0803bfb6 */ ADDS R2, 0x62 @ Add 0x62 to R2 \n\
/* 0803bfb8 */ LDR R3, =gSpriteHandler \n\
/* 0803bfba */ LDR R0, [R3] \n\
/* 0803bfbc */ LDR R4, =gCurrentEngineData \n\
/* 0803bfbe */ LDR R1, [R4] \n\
/* 0803bfc0 */ LSLS R5, R6, 0x1 \n\
/* 0803bfc2 */ ADD R1, R10 @ Add R10 to R1 \n\
/* 0803bfc4 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0803bfc6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803bfc8 */ LDRSH R1, [R1, R3] \n\
/* 0803bfca */ LSLS R2, R2, 0x10 \n\
/* 0803bfcc */ ASRS R2, R2, 0x10 \n\
/* 0803bfce */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0803bfd0 */ LSLS R3, R4, 0x10 \n\
/* 0803bfd2 */ ASRS R3, R3, 0x10 \n\
/* 0803bfd4 */ LDR R4, =0xffffb800 \n\
/* 0803bfd6 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 0803bfd8 */ SUBS R4, R7, R4 @ Set R4 to R7 - R4 \n\
/* 0803bfda */ LSLS R4, R4, 0x10 \n\
/* 0803bfdc */ LSRS R4, R4, 0x10 \n\
/* 0803bfde */ STR R4, [SP] \n\
/* 0803bfe0 */ BL sprite_set_x_y_z \n\
/* 0803bfe4 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 0803bfe6 */ BL ninja_get_anim \n\
/* 0803bfea */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803bfec */ LDR R1, =gSpriteHandler \n\
/* 0803bfee */ LDR R0, [R1] \n\
/* 0803bff0 */ LDR R3, =gCurrentEngineData \n\
/* 0803bff2 */ LDR R1, [R3] \n\
/* 0803bff4 */ ADD R1, R10 @ Add R10 to R1 \n\
/* 0803bff6 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 0803bff8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803bffa */ LDRSH R1, [R1, R4] \n\
/* 0803bffc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803bffe */ STR R3, [SP] \n\
/* 0803c000 */ STR R3, [SP, 0x4] \n\
/* 0803c002 */ STR R3, [SP, 0x8] \n\
/* 0803c004 */ BL sprite_set_anim \n\
/* 0803c008 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0803c00a */ ADD R8, R0 @ Add R0 to R8 \n\
/* 0803c00c */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0803c00e */ CMP R6, R7 @ Check R6 - R7 \n\
/* 0803c010 */ BCC branch_0803bfae \n\
 \n\
branch_0803c012: \n\
/* 0803c012 */ ADD SP, 0xC \n\
/* 0803c014 */ POP {R3-R5} \n\
/* 0803c016 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803c018 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803c01a */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803c01c */ POP {R4-R7} \n\
/* 0803c01e */ POP {R0} \n\
/* 0803c020 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
