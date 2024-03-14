asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080397f8 \n\
/* 080397f8 */ PUSH {R4-R7, LR} \n\
/* 080397fa */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080397fc */ PUSH {R7} \n\
/* 080397fe */ LDR R0, =gCurrentEngineData \n\
/* 08039800 */ LDR R0, [R0] \n\
/* 08039802 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 08039804 */ LSLS R1, R1, 0x1 \n\
/* 08039806 */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 08039808 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803980a */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0803980c */ LDR R7, =gSpriteHandler \n\
 \n\
branch_0803980e: \n\
/* 0803980e */ LDRB R0, [R4, 0x2] \n\
/* 08039810 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08039812 */ BEQ branch_0803989c \n\
/* 08039814 */ LDR R0, [R4, 0x4] \n\
/* 08039816 */ LDR R1, [R4, 0xC] \n\
/* 08039818 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803981a */ STR R0, [R4, 0x4] \n\
/* 0803981c */ LDR R6, =gCurrentEngineData \n\
/* 0803981e */ LDR R0, [R6] \n\
/* 08039820 */ MOVS R1, 0xBB @ Set R1 to 0xBB \n\
/* 08039822 */ LSLS R1, R1, 0x1 \n\
/* 08039824 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08039826 */ LDRB R0, [R0] \n\
/* 08039828 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803982a */ BNE branch_08039848 \n\
/* 0803982c */ BL func_0800c398 \n\
/* 08039830 */ LSLS R1, R0, 0x1 \n\
/* 08039832 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08039834 */ LSLS R0, R1, 0x4 \n\
/* 08039836 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08039838 */ LSLS R0, R0, 0x9 \n\
/* 0803983a */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 0803983c */ LSLS R1, R1, 0x5 \n\
/* 0803983e */ BL __udivsi3 \n\
/* 08039842 */ LDR R1, [R4, 0x4] \n\
/* 08039844 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08039846 */ STR R1, [R4, 0x4] \n\
 \n\
branch_08039848: \n\
/* 08039848 */ LDR R0, [R4, 0x10] \n\
/* 0803984a */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 0803984c */ STR R0, [R4, 0x10] \n\
/* 0803984e */ LDR R1, [R4, 0x8] \n\
/* 08039850 */ ADDS R5, R1, R0 @ Set R5 to R1 + R0 \n\
/* 08039852 */ STR R5, [R4, 0x8] \n\
/* 08039854 */ ASRS R0, R5, 0x8 \n\
/* 08039856 */ CMP R0, 0xA7 @ Compare R0 and 0xA7 \n\
/* 08039858 */ BLE branch_08039874 \n\
/* 0803985a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803985c */ STRB R0, [R4, 0x2] \n\
/* 0803985e */ LDR R0, [R7] \n\
/* 08039860 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039862 */ LDRSH R1, [R4, R2] \n\
/* 08039864 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039866 */ BL sprite_set_visible \n\
/* 0803986a */ B branch_0803989c \n\
\n\
.ltorg \n\
 \n\
branch_08039874: \n\
/* 08039874 */ LDR R0, [R7] \n\
/* 08039876 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039878 */ LDRSH R1, [R4, R2] \n\
/* 0803987a */ LDR R2, [R4, 0x4] \n\
/* 0803987c */ LSLS R2, R2, 0x8 \n\
/* 0803987e */ ASRS R2, R2, 0x10 \n\
/* 08039880 */ LDR R3, [R6] \n\
/* 08039882 */ ADDS R3, 0xE0 @ Add 0xE0 to R3 \n\
/* 08039884 */ LDR R3, [R3] \n\
/* 08039886 */ SUBS R3, R5, R3 @ Set R3 to R5 - R3 \n\
/* 08039888 */ LSLS R3, R3, 0x8 \n\
/* 0803988a */ ASRS R3, R3, 0x10 \n\
/* 0803988c */ BL sprite_set_x_y \n\
/* 08039890 */ LDR R0, [R7] \n\
/* 08039892 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08039894 */ LDRSH R1, [R4, R2] \n\
/* 08039896 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08039898 */ BL sprite_set_visible \n\
 \n\
branch_0803989c: \n\
/* 0803989c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803989e */ ADD R8, R0 @ Add R0 to R8 \n\
/* 080398a0 */ ADDS R4, 0x14 @ Add 0x14 to R4 \n\
/* 080398a2 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080398a4 */ CMP R1, 0x13 @ Compare R1 and 0x13 \n\
/* 080398a6 */ BLS branch_0803980e \n\
/* 080398a8 */ POP {R3} \n\
/* 080398aa */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080398ac */ POP {R4-R7} \n\
/* 080398ae */ POP {R0} \n\
/* 080398b0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
