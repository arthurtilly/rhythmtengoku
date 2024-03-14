asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08039698 \n\
/* 08039698 */ PUSH {R4-R7, LR} \n\
/* 0803969a */ LDR R1, =gCurrentEngineData \n\
/* 0803969c */ LDR R0, [R1] \n\
/* 0803969e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080396a0 */ ADDS R5, 0xF8 @ Add 0xF8 to R5 \n\
/* 080396a2 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080396a4 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
 \n\
branch_080396a6: \n\
/* 080396a6 */ LDR R0, [R7] \n\
/* 080396a8 */ MOVS R1, 0xBB @ Set R1 to 0xBB \n\
/* 080396aa */ LSLS R1, R1, 0x1 \n\
/* 080396ac */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080396ae */ LDRB R0, [R0] \n\
/* 080396b0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080396b2 */ BNE branch_080396d0 \n\
/* 080396b4 */ BL func_0800c398 \n\
/* 080396b8 */ LSLS R1, R0, 0x1 \n\
/* 080396ba */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080396bc */ LSLS R0, R1, 0x4 \n\
/* 080396be */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 080396c0 */ LSLS R0, R0, 0x9 \n\
/* 080396c2 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 080396c4 */ LSLS R1, R1, 0x5 \n\
/* 080396c6 */ BL __udivsi3 \n\
/* 080396ca */ LDR R1, [R5, 0x4] \n\
/* 080396cc */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080396ce */ STR R1, [R5, 0x4] \n\
 \n\
branch_080396d0: \n\
/* 080396d0 */ LDR R2, [R5, 0x4] \n\
/* 080396d2 */ ASRS R1, R2, 0x8 \n\
/* 080396d4 */ LDR R0, =0x10f \n\
/* 080396d6 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080396d8 */ BLE branch_080396f4 \n\
/* 080396da */ LDR R1, =0xfffed000 \n\
/* 080396dc */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 080396de */ STR R0, [R5, 0x4] \n\
/* 080396e0 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 080396e2 */ LSLS R0, R0, 0x1 \n\
/* 080396e4 */ BL agb_random \n\
/* 080396e8 */ LSLS R0, R0, 0x10 \n\
/* 080396ea */ LSRS R0, R0, 0x10 \n\
/* 080396ec */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080396ee */ SUBS R0, 0x20 @ Subtract 0x20 from R0 \n\
/* 080396f0 */ LSLS R0, R0, 0x8 \n\
/* 080396f2 */ STR R0, [R5, 0x8] \n\
 \n\
branch_080396f4: \n\
/* 080396f4 */ LDR R0, =gSpriteHandler \n\
/* 080396f6 */ LDR R0, [R0] \n\
/* 080396f8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080396fa */ LDRSH R1, [R5, R2] \n\
/* 080396fc */ LDR R2, [R5, 0x4] \n\
/* 080396fe */ LSLS R2, R2, 0x8 \n\
/* 08039700 */ ASRS R2, R2, 0x10 \n\
/* 08039702 */ LDR R4, [R7] \n\
/* 08039704 */ ADDS R4, 0xE0 @ Add 0xE0 to R4 \n\
/* 08039706 */ LDR R3, [R5, 0x8] \n\
/* 08039708 */ LDR R4, [R4] \n\
/* 0803970a */ SUBS R3, R3, R4 @ Set R3 to R3 - R4 \n\
/* 0803970c */ LSLS R3, R3, 0x8 \n\
/* 0803970e */ ASRS R3, R3, 0x10 \n\
/* 08039710 */ BL sprite_set_x_y \n\
/* 08039714 */ ADDS R0, R6, 0x1 @ Set R0 to R6 + 0x1 \n\
/* 08039716 */ LSLS R0, R0, 0x18 \n\
/* 08039718 */ LSRS R6, R0, 0x18 \n\
/* 0803971a */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 0803971c */ CMP R6, 0x9 @ Compare R6 and 0x9 \n\
/* 0803971e */ BLS branch_080396a6 \n\
/* 08039720 */ POP {R4-R7} \n\
/* 08039722 */ POP {R0} \n\
/* 08039724 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
