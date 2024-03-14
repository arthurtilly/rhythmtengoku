asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_intro_common_beat_animation \n\
/* 08024e48 */ PUSH {R4, R5, LR} \n\
/* 08024e4a */ LDR R5, =gCurrentEngineData \n\
/* 08024e4c */ LDR R1, [R5] \n\
/* 08024e4e */ LDRB R0, [R1] \n\
/* 08024e50 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08024e52 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08024e54 */ BEQ branch_08024e84 \n\
/* 08024e56 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08024e58 */ BGT branch_08024e64 \n\
/* 08024e5a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08024e5c */ BLT branch_08024ec0 \n\
/* 08024e5e */ B branch_08024e68 \n\
\n\
.ltorg \n\
 \n\
branch_08024e64: \n\
/* 08024e64 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08024e66 */ BNE branch_08024ec0 \n\
 \n\
branch_08024e68: \n\
/* 08024e68 */ LDR R0, =gSpriteHandler \n\
/* 08024e6a */ LDR R0, [R0] \n\
/* 08024e6c */ LDR R1, [R2] \n\
/* 08024e6e */ MOVS R2, 0xD5 @ Set R2 to 0xD5 \n\
/* 08024e70 */ LSLS R2, R2, 0x2 \n\
/* 08024e72 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08024e74 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024e76 */ LDRSH R1, [R1, R2] \n\
/* 08024e78 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024e7a */ BL sprite_set_anim_cel \n\
/* 08024e7e */ B branch_08024ec0 \n\
\n\
.ltorg \n\
 \n\
branch_08024e84: \n\
/* 08024e84 */ LDR R4, =gSpriteHandler \n\
/* 08024e86 */ LDR R0, [R4] \n\
/* 08024e88 */ MOVS R2, 0xD5 @ Set R2 to 0xD5 \n\
/* 08024e8a */ LSLS R2, R2, 0x2 \n\
/* 08024e8c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08024e8e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024e90 */ LDRSH R1, [R1, R2] \n\
/* 08024e92 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024e94 */ BL sprite_set_anim_cel \n\
/* 08024e98 */ LDR R0, [R4] \n\
/* 08024e9a */ LDR R1, [R5] \n\
/* 08024e9c */ MOVS R2, 0xE6 @ Set R2 to 0xE6 \n\
/* 08024e9e */ LSLS R2, R2, 0x2 \n\
/* 08024ea0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08024ea2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024ea4 */ LDRSH R1, [R1, R2] \n\
/* 08024ea6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08024ea8 */ BL sprite_set_anim_cel \n\
/* 08024eac */ LDR R0, [R4] \n\
/* 08024eae */ LDR R1, [R5] \n\
/* 08024eb0 */ MOVS R2, 0xE8 @ Set R2 to 0xE8 \n\
/* 08024eb2 */ LSLS R2, R2, 0x2 \n\
/* 08024eb4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08024eb6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024eb8 */ LDRSH R1, [R1, R2] \n\
/* 08024eba */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08024ebc */ BL sprite_set_anim_cel \n\
 \n\
branch_08024ec0: \n\
/* 08024ec0 */ POP {R4, R5} \n\
/* 08024ec2 */ POP {R0} \n\
/* 08024ec4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
