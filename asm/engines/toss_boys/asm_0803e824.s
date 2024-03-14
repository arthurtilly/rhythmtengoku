asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e824 \n\
/* 0803e824 */ PUSH {R4, LR} \n\
/* 0803e826 */ SUB SP, 0x14 \n\
/* 0803e828 */ LDR R4, =gCurrentEngineData \n\
/* 0803e82a */ LDR R1, [R4] \n\
/* 0803e82c */ LDRB R3, [R1] \n\
/* 0803e82e */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 0803e830 */ BNE branch_0803e86c \n\
/* 0803e832 */ LDR R0, =gSpriteHandler \n\
/* 0803e834 */ LDR R0, [R0] \n\
/* 0803e836 */ LDR R1, =anim_toss_remix_5_soshi_strum_pop \n\
/* 0803e838 */ MOVS R2, 0x38 @ Set R2 to 0x38 \n\
/* 0803e83a */ STR R2, [SP] \n\
/* 0803e83c */ MOVS R2, 0x98 @ Set R2 to 0x98 \n\
/* 0803e83e */ LSLS R2, R2, 0x7 \n\
/* 0803e840 */ STR R2, [SP, 0x4] \n\
/* 0803e842 */ STR R3, [SP, 0x8] \n\
/* 0803e844 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0803e846 */ STR R2, [SP, 0xC] \n\
/* 0803e848 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803e84a */ LSLS R2, R2, 0x8 \n\
/* 0803e84c */ STR R2, [SP, 0x10] \n\
/* 0803e84e */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0803e850 */ MOVS R3, 0x74 @ Set R3 to 0x74 \n\
/* 0803e852 */ BL sprite_create \n\
/* 0803e856 */ LDR R1, [R4] \n\
/* 0803e858 */ MOVS R2, 0xE7 @ Set R2 to 0xE7 \n\
/* 0803e85a */ LSLS R2, R2, 0x2 \n\
/* 0803e85c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803e85e */ B branch_0803e874 \n\
\n\
.ltorg \n\
 \n\
branch_0803e86c: \n\
/* 0803e86c */ MOVS R0, 0xE7 @ Set R0 to 0xE7 \n\
/* 0803e86e */ LSLS R0, R0, 0x2 \n\
/* 0803e870 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803e872 */ LDR R0, =0xffff \n\
 \n\
branch_0803e874: \n\
/* 0803e874 */ STRH R0, [R1] \n\
/* 0803e876 */ ADD SP, 0x14 \n\
/* 0803e878 */ POP {R4} \n\
/* 0803e87a */ POP {R0} \n\
/* 0803e87c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
