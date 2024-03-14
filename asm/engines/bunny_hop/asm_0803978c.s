asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803978c \n\
/* 0803978c */ PUSH {R4-R6, LR} \n\
/* 0803978e */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 08039790 */ LSLS R0, R0, 0x10 \n\
/* 08039792 */ LSRS R2, R0, 0x10 \n\
/* 08039794 */ LSLS R1, R1, 0x10 \n\
/* 08039796 */ LSRS R1, R1, 0x10 \n\
/* 08039798 */ LDR R0, =gCurrentEngineData \n\
/* 0803979a */ LDR R0, [R0] \n\
/* 0803979c */ MOVS R4, 0xC0 @ Set R4 to 0xC0 \n\
/* 0803979e */ LSLS R4, R4, 0x1 \n\
/* 080397a0 */ ADDS R5, R0, R4 @ Set R5 to R0 + R4 \n\
/* 080397a2 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080397a4 */ B branch_080397b4 \n\
\n\
.ltorg \n\
 \n\
branch_080397ac: \n\
/* 080397ac */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080397ae */ ADDS R5, 0x14 @ Add 0x14 to R5 \n\
/* 080397b0 */ CMP R4, 0x13 @ Compare R4 and 0x13 \n\
/* 080397b2 */ BHI branch_080397ee \n\
 \n\
branch_080397b4: \n\
/* 080397b4 */ LDRB R0, [R5, 0x2] \n\
/* 080397b6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080397b8 */ BNE branch_080397ac \n\
/* 080397ba */ CMP R4, 0x13 @ Compare R4 and 0x13 \n\
/* 080397bc */ BHI branch_080397ee \n\
/* 080397be */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080397c0 */ STRB R0, [R5, 0x2] \n\
/* 080397c2 */ LSLS R0, R2, 0x10 \n\
/* 080397c4 */ ASRS R0, R0, 0x8 \n\
/* 080397c6 */ STR R0, [R5, 0x4] \n\
/* 080397c8 */ LSLS R0, R1, 0x10 \n\
/* 080397ca */ ASRS R0, R0, 0x8 \n\
/* 080397cc */ STR R0, [R5, 0x8] \n\
/* 080397ce */ STR R6, [R5, 0xC] \n\
/* 080397d0 */ STR R3, [R5, 0x10] \n\
/* 080397d2 */ LDR R0, =gSpriteHandler \n\
/* 080397d4 */ LDR R4, [R0] \n\
/* 080397d6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080397d8 */ LDRSH R5, [R5, R0] \n\
/* 080397da */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080397dc */ BL agb_random \n\
/* 080397e0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080397e2 */ LSLS R2, R2, 0x18 \n\
/* 080397e4 */ ASRS R2, R2, 0x18 \n\
/* 080397e6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080397e8 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080397ea */ BL sprite_set_anim_cel \n\
 \n\
branch_080397ee: \n\
/* 080397ee */ POP {R4-R6} \n\
/* 080397f0 */ POP {R0} \n\
/* 080397f2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
