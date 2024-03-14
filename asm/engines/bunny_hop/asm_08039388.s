asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08039388 \n\
/* 08039388 */ PUSH {R4-R7, LR} \n\
/* 0803938a */ LDR R7, =gCurrentEngineData \n\
/* 0803938c */ LDR R6, [R7] \n\
/* 0803938e */ ADDS R5, R6, 0x4 @ Set R5 to R6 + 0x4 \n\
/* 08039390 */ BL func_0800c398 \n\
/* 08039394 */ LDR R1, [R5, 0xC] \n\
/* 08039396 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08039398 */ STR R1, [R5, 0xC] \n\
/* 0803939a */ BL func_0800c398 \n\
/* 0803939e */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 080393a0 */ BL __udivsi3 \n\
/* 080393a4 */ LDR R1, [R5, 0x8] \n\
/* 080393a6 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080393a8 */ STR R1, [R5, 0x8] \n\
/* 080393aa */ LDR R0, [R5, 0xC] \n\
/* 080393ac */ ASRS R0, R0, 0x8 \n\
/* 080393ae */ CMP R0, 0x77 @ Compare R0 and 0x77 \n\
/* 080393b0 */ BLE branch_080393de \n\
/* 080393b2 */ LDR R0, =s_rabbit_moon_seqData \n\
/* 080393b4 */ BL play_sound \n\
/* 080393b8 */ LDR R4, =gSpriteHandler \n\
/* 080393ba */ LDR R0, [R4] \n\
/* 080393bc */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080393be */ LDRSH R1, [R6, R2] \n\
/* 080393c0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080393c2 */ BL sprite_set_visible \n\
/* 080393c6 */ LDR R0, [R4] \n\
/* 080393c8 */ LDR R1, [R7] \n\
/* 080393ca */ MOVS R2, 0xBC @ Set R2 to 0xBC \n\
/* 080393cc */ LSLS R2, R2, 0x1 \n\
/* 080393ce */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080393d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080393d2 */ LDRSH R1, [R1, R2] \n\
/* 080393d4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080393d6 */ BL sprite_set_anim_cel \n\
/* 080393da */ MOVS R0, 0xB @ Set R0 to 0xB \n\
/* 080393dc */ STRB R0, [R5, 0x2] \n\
 \n\
branch_080393de: \n\
/* 080393de */ LDR R0, =gSpriteHandler \n\
/* 080393e0 */ LDR R0, [R0] \n\
/* 080393e2 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080393e4 */ LDRSH R1, [R6, R2] \n\
/* 080393e6 */ LDR R2, [R5, 0x8] \n\
/* 080393e8 */ LSLS R2, R2, 0x8 \n\
/* 080393ea */ ASRS R2, R2, 0x10 \n\
/* 080393ec */ BL sprite_set_y \n\
/* 080393f0 */ POP {R4-R7} \n\
/* 080393f2 */ POP {R0} \n\
/* 080393f4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
