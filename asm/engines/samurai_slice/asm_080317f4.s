asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080317f4 \n\
/* 080317f4 */ PUSH {R4-R7, LR} \n\
/* 080317f6 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080317f8 */ PUSH {R7} \n\
/* 080317fa */ SUB SP, 0xC \n\
/* 080317fc */ LDR R0, =gSpriteHandler \n\
/* 080317fe */ LDR R3, [R0] \n\
/* 08031800 */ LDR R0, =gCurrentEngineData \n\
/* 08031802 */ LDR R0, [R0] \n\
/* 08031804 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08031806 */ LDRSH R1, [R0, R2] \n\
/* 08031808 */ LDR R4, =samurai_slicing_anim \n\
/* 0803180a */ MOVS R5, 0xEC @ Set R5 to 0xEC \n\
/* 0803180c */ LSLS R5, R5, 0x1 \n\
/* 0803180e */ ADDS R2, R0, R5 @ Set R2 to R0 + R5 \n\
/* 08031810 */ LDRH R0, [R2] \n\
/* 08031812 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08031814 */ BHI branch_08031828 \n\
/* 08031816 */ LSLS R0, R0, 0x2 \n\
/* 08031818 */ B branch_0803182a \n\
\n\
.ltorg \n\
 \n\
branch_08031828: \n\
/* 08031828 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
 \n\
branch_0803182a: \n\
/* 0803182a */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 0803182c */ LDR R2, [R0] \n\
/* 0803182e */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 08031830 */ STR R6, [SP] \n\
/* 08031832 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08031834 */ STR R0, [SP, 0x4] \n\
/* 08031836 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08031838 */ STR R0, [SP, 0x8] \n\
/* 0803183a */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0803183c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803183e */ BL sprite_set_anim \n\
/* 08031842 */ LDR R0, =gSpriteHandler \n\
/* 08031844 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08031846 */ LDR R0, [R0] \n\
/* 08031848 */ LDR R7, =gCurrentEngineData \n\
/* 0803184a */ LDR R1, [R7] \n\
/* 0803184c */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0803184e */ LDRSH R1, [R1, R2] \n\
/* 08031850 */ LDR R2, =func_080316ec \n\
/* 08031852 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08031854 */ BL sprite_set_callback \n\
/* 08031858 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803185a */ LDR R5, [R3] \n\
/* 0803185c */ LDR R0, [R7] \n\
/* 0803185e */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 08031860 */ LDRSH R4, [R0, R1] \n\
/* 08031862 */ BL get_beatscript_tempo \n\
/* 08031866 */ LSLS R0, R0, 0x8 \n\
/* 08031868 */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 0803186a */ BL __udivsi3 \n\
/* 0803186e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08031870 */ LSLS R2, R2, 0x10 \n\
/* 08031872 */ LSRS R2, R2, 0x10 \n\
/* 08031874 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08031876 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08031878 */ BL sprite_set_anim_speed \n\
/* 0803187c */ LDR R0, [R7] \n\
/* 0803187e */ STRB R6, [R0, 0xE] \n\
/* 08031880 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08031882 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08031884 */ BL gameplay_set_input_buttons \n\
/* 08031888 */ LDR R1, [R7] \n\
/* 0803188a */ MOVS R5, 0xEC @ Set R5 to 0xEC \n\
/* 0803188c */ LSLS R5, R5, 0x1 \n\
/* 0803188e */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 08031890 */ LDRH R0, [R0] \n\
/* 08031892 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08031894 */ BLS branch_08031924 \n\
/* 08031896 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08031898 */ LDR R0, [R2] \n\
/* 0803189a */ MOVS R6, 0xED @ Set R6 to 0xED \n\
/* 0803189c */ LSLS R6, R6, 0x1 \n\
/* 0803189e */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 080318a0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080318a2 */ LDRSH R1, [R1, R3] \n\
/* 080318a4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080318a6 */ BL sprite_set_visible \n\
/* 080318aa */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080318ac */ LDR R3, [R0] \n\
/* 080318ae */ LDR R0, [R7] \n\
/* 080318b0 */ ADDS R1, R0, R6 @ Set R1 to R0 + R6 \n\
/* 080318b2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080318b4 */ LDRSH R1, [R1, R2] \n\
/* 080318b6 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080318b8 */ LDRH R0, [R0] \n\
/* 080318ba */ SUBS R0, 0x3 @ Subtract 0x3 from R0 \n\
/* 080318bc */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 080318be */ BLE branch_080318c2 \n\
/* 080318c0 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
 \n\
branch_080318c2: \n\
/* 080318c2 */ LSLS R2, R0, 0x18 \n\
/* 080318c4 */ ASRS R2, R2, 0x18 \n\
/* 080318c6 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080318c8 */ BL sprite_set_base_palette \n\
/* 080318cc */ LDR R3, [R7] \n\
/* 080318ce */ MOVS R0, 0xEE @ Set R0 to 0xEE \n\
/* 080318d0 */ LSLS R0, R0, 0x1 \n\
/* 080318d2 */ ADDS R4, R3, R0 @ Set R4 to R3 + R0 \n\
/* 080318d4 */ ADDS R0, R3, R5 @ Set R0 to R3 + R5 \n\
/* 080318d6 */ LDRH R0, [R0] \n\
/* 080318d8 */ SUBS R0, 0x3 @ Subtract 0x3 from R0 \n\
/* 080318da */ LSLS R1, R0, 0x2 \n\
/* 080318dc */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080318de */ CMP R1, 0x1E @ Compare R1 and 0x1E \n\
/* 080318e0 */ BLE branch_080318e4 \n\
/* 080318e2 */ MOVS R1, 0x1E @ Set R1 to 0x1E \n\
 \n\
branch_080318e4: \n\
/* 080318e4 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080318e6 */ SUBS R2, R2, R1 @ Set R2 to R2 - R1 \n\
/* 080318e8 */ LSLS R2, R2, 0x8 \n\
/* 080318ea */ STR R2, [R4] \n\
/* 080318ec */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080318ee */ LDR R0, [R1] \n\
/* 080318f0 */ ADDS R1, R3, R6 @ Set R1 to R3 + R6 \n\
/* 080318f2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080318f4 */ LDRSH R1, [R1, R3] \n\
/* 080318f6 */ LSLS R2, R2, 0x8 \n\
/* 080318f8 */ ASRS R2, R2, 0x10 \n\
/* 080318fa */ BL sprite_set_y \n\
/* 080318fe */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08031900 */ LDR R5, [R0] \n\
/* 08031902 */ LDR R0, [R7] \n\
/* 08031904 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08031906 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08031908 */ LDRSH R4, [R0, R1] \n\
/* 0803190a */ BL get_beatscript_tempo \n\
/* 0803190e */ LSLS R0, R0, 0x8 \n\
/* 08031910 */ MOVS R1, 0x8C @ Set R1 to 0x8C \n\
/* 08031912 */ BL __udivsi3 \n\
/* 08031916 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08031918 */ LSLS R2, R2, 0x10 \n\
/* 0803191a */ LSRS R2, R2, 0x10 \n\
/* 0803191c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803191e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08031920 */ BL sprite_set_anim_speed \n\
 \n\
branch_08031924: \n\
/* 08031924 */ ADD SP, 0xC \n\
/* 08031926 */ POP {R3} \n\
/* 08031928 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803192a */ POP {R4-R7} \n\
/* 0803192c */ POP {R0} \n\
/* 0803192e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
