asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a8e4 \n\
/* 0803a8e4 */ PUSH {R4, R5, LR} \n\
/* 0803a8e6 */ BL func_0800c398 \n\
/* 0803a8ea */ LDR R1, =gCurrentEngineData \n\
/* 0803a8ec */ LDR R2, [R1] \n\
/* 0803a8ee */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0803a8f0 */ ADDS R3, 0x80 @ Add 0x80 to R3 \n\
/* 0803a8f2 */ LDR R1, [R3] \n\
/* 0803a8f4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803a8f6 */ STR R1, [R3] \n\
/* 0803a8f8 */ ADDS R2, 0x7C @ Add 0x7C to R2 \n\
/* 0803a8fa */ LDRB R0, [R2] \n\
/* 0803a8fc */ CMP R0, 0x6 @ Compare R0 and 0x6 \n\
/* 0803a8fe */ BHI branch_0803a9ee \n\
/* 0803a900 */ LSLS R0, R0, 0x2 \n\
/* 0803a902 */ LDR R1, =jtbl_0803a914 \n\
/* 0803a904 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803a906 */ LDR R0, [R0] \n\
/* 0803a908 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0803a914: \n\
.word branch_0803a9ee \n\
.word branch_0803a9ee \n\
.word branch_0803a9ee \n\
.word jump_0803a930 \n\
.word jump_0803a954 \n\
.word jump_0803a9a0 \n\
.word jump_0803a9d0 \n\
jump_0803a930: \n\
/* 0803a930 */ BL func_0800c398 \n\
/* 0803a934 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803a936 */ LDR R0, =gCurrentEngineData \n\
/* 0803a938 */ LDR R4, [R0] \n\
/* 0803a93a */ ADDS R4, 0x84 @ Add 0x84 to R4 \n\
/* 0803a93c */ LSLS R0, R1, 0x2 \n\
/* 0803a93e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803a940 */ LSLS R0, R0, 0x4 \n\
/* 0803a942 */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 0803a944 */ BL __udivsi3 \n\
/* 0803a948 */ LDR R1, [R4] \n\
/* 0803a94a */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0803a94c */ B branch_0803a9ec \n\
\n\
.ltorg \n\
jump_0803a954: \n\
/* 0803a954 */ LDR R0, =gCurrentEngineData \n\
/* 0803a956 */ LDR R0, [R0] \n\
/* 0803a958 */ ADDS R0, 0x80 @ Add 0x80 to R0 \n\
/* 0803a95a */ LDR R0, [R0] \n\
/* 0803a95c */ LSRS R2, R0, 0x8 \n\
/* 0803a95e */ CMP R2, 0x17 @ Compare R2 and 0x17 \n\
/* 0803a960 */ BHI branch_0803a970 \n\
/* 0803a962 */ LDR R0, =D_089e6834 \n\
/* 0803a964 */ B branch_0803a97c \n\
\n\
.ltorg \n\
 \n\
branch_0803a970: \n\
/* 0803a970 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0803a972 */ MOVS R1, 0x30 @ Set R1 to 0x30 \n\
/* 0803a974 */ BL __umodsi3 \n\
/* 0803a978 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803a97a */ LDR R0, =D_089e684c \n\
 \n\
branch_0803a97c: \n\
/* 0803a97c */ ADDS R0, R2, R0 @ Set R0 to R2 + R0 \n\
/* 0803a97e */ LDRB R2, [R0] \n\
/* 0803a980 */ LDR R0, =gSpriteHandler \n\
/* 0803a982 */ LDR R0, [R0] \n\
/* 0803a984 */ LDR R1, =gCurrentEngineData \n\
/* 0803a986 */ LDR R1, [R1] \n\
/* 0803a988 */ ADDS R1, 0x74 @ Add 0x74 to R1 \n\
/* 0803a98a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803a98c */ LDRSH R1, [R1, R3] \n\
/* 0803a98e */ LSLS R2, R2, 0x18 \n\
/* 0803a990 */ B branch_0803a9be \n\
\n\
.ltorg \n\
jump_0803a9a0: \n\
/* 0803a9a0 */ LDR R0, =gCurrentEngineData \n\
/* 0803a9a2 */ LDR R1, [R0] \n\
/* 0803a9a4 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803a9a6 */ ADDS R0, 0x80 @ Add 0x80 to R0 \n\
/* 0803a9a8 */ LDR R0, [R0] \n\
/* 0803a9aa */ LSRS R2, R0, 0x8 \n\
/* 0803a9ac */ CMP R2, 0x6 @ Compare R2 and 0x6 \n\
/* 0803a9ae */ BLS branch_0803a9b2 \n\
/* 0803a9b0 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
 \n\
branch_0803a9b2: \n\
/* 0803a9b2 */ LDR R0, =gSpriteHandler \n\
/* 0803a9b4 */ LDR R0, [R0] \n\
/* 0803a9b6 */ ADDS R1, 0x76 @ Add 0x76 to R1 \n\
/* 0803a9b8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803a9ba */ LDRSH R1, [R1, R3] \n\
/* 0803a9bc */ LSLS R2, R2, 0x17 \n\
 \n\
branch_0803a9be: \n\
/* 0803a9be */ ASRS R2, R2, 0x18 \n\
/* 0803a9c0 */ BL sprite_set_anim_cel \n\
/* 0803a9c4 */ B branch_0803a9ee \n\
\n\
.ltorg \n\
jump_0803a9d0: \n\
/* 0803a9d0 */ BL func_0800c398 \n\
/* 0803a9d4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803a9d6 */ LDR R0, =gCurrentEngineData \n\
/* 0803a9d8 */ LDR R4, [R0] \n\
/* 0803a9da */ ADDS R4, 0x84 @ Add 0x84 to R4 \n\
/* 0803a9dc */ LSLS R0, R1, 0x2 \n\
/* 0803a9de */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803a9e0 */ LSLS R0, R0, 0x4 \n\
/* 0803a9e2 */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 0803a9e4 */ BL __udivsi3 \n\
/* 0803a9e8 */ LDR R1, [R4] \n\
/* 0803a9ea */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
 \n\
branch_0803a9ec: \n\
/* 0803a9ec */ STR R1, [R4] \n\
 \n\
branch_0803a9ee: \n\
/* 0803a9ee */ LDR R5, =gSpriteHandler \n\
/* 0803a9f0 */ LDR R0, [R5] \n\
/* 0803a9f2 */ LDR R4, =gCurrentEngineData \n\
/* 0803a9f4 */ LDR R2, [R4] \n\
/* 0803a9f6 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0803a9f8 */ ADDS R1, 0x74 @ Add 0x74 to R1 \n\
/* 0803a9fa */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803a9fc */ LDRSH R1, [R1, R3] \n\
/* 0803a9fe */ ADDS R2, 0x84 @ Add 0x84 to R2 \n\
/* 0803aa00 */ LDR R2, [R2] \n\
/* 0803aa02 */ ASRS R2, R2, 0x8 \n\
/* 0803aa04 */ ADDS R2, 0x44 @ Add 0x44 to R2 \n\
/* 0803aa06 */ LSLS R2, R2, 0x10 \n\
/* 0803aa08 */ ASRS R2, R2, 0x10 \n\
/* 0803aa0a */ BL sprite_set_y \n\
/* 0803aa0e */ LDR R0, [R5] \n\
/* 0803aa10 */ LDR R2, [R4] \n\
/* 0803aa12 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0803aa14 */ ADDS R1, 0x76 @ Add 0x76 to R1 \n\
/* 0803aa16 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803aa18 */ LDRSH R1, [R1, R3] \n\
/* 0803aa1a */ ADDS R2, 0x84 @ Add 0x84 to R2 \n\
/* 0803aa1c */ LDR R2, [R2] \n\
/* 0803aa1e */ ASRS R2, R2, 0x8 \n\
/* 0803aa20 */ ADDS R2, 0x44 @ Add 0x44 to R2 \n\
/* 0803aa22 */ LSLS R2, R2, 0x10 \n\
/* 0803aa24 */ ASRS R2, R2, 0x10 \n\
/* 0803aa26 */ BL sprite_set_y \n\
/* 0803aa2a */ LDR R4, [R4] \n\
/* 0803aa2c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803aa2e */ ADDS R0, 0xD3 @ Add 0xD3 to R0 \n\
/* 0803aa30 */ LDRB R0, [R0] \n\
/* 0803aa32 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803aa34 */ BNE branch_0803aa4a \n\
/* 0803aa36 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803aa38 */ ADDS R0, 0x84 @ Add 0x84 to R0 \n\
/* 0803aa3a */ LDR R2, [R0] \n\
/* 0803aa3c */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0803aa3e */ LSLS R2, R2, 0x8 \n\
/* 0803aa40 */ ASRS R2, R2, 0x10 \n\
/* 0803aa42 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803aa44 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803aa46 */ BL scene_set_bg_layer_pos \n\
 \n\
branch_0803aa4a: \n\
/* 0803aa4a */ POP {R4, R5} \n\
/* 0803aa4c */ POP {R0} \n\
/* 0803aa4e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
