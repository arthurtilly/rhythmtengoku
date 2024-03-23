asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start clappy_trio_cue_hit \n\
/* 080308f4 */ PUSH {R4-R7, LR} \n\
/* 080308f6 */ SUB SP, 0xC \n\
/* 080308f8 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 080308fa */ LDR R6, =gCurrentEngineData \n\
/* 080308fc */ LDR R0, [R6] \n\
/* 080308fe */ ADDS R5, R0, 0x4 @ Set R5 to R0 + 0x4 \n\
/* 08030900 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08030902 */ BL clappy_trio_get_anim \n\
/* 08030906 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08030908 */ LDR R0, =gSpriteHandler \n\
/* 0803090a */ LDR R0, [R0] \n\
/* 0803090c */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 0803090e */ LDRSH R1, [R5, R3] \n\
/* 08030910 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 08030912 */ STR R7, [SP] \n\
/* 08030914 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08030916 */ STR R3, [SP, 0x4] \n\
/* 08030918 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803091a */ STR R3, [SP, 0x8] \n\
/* 0803091c */ BL sprite_set_anim \n\
/* 08030920 */ LDR R0, =s_HC_seqData \n\
/* 08030922 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08030924 */ LSLS R1, R1, 0x1 \n\
/* 08030926 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08030928 */ LSLS R2, R2, 0x3 \n\
/* 0803092a */ BL play_sound_w_pitch_volume \n\
/* 0803092e */ LDRH R0, [R4] \n\
/* 08030930 */ LSLS R0, R0, 0x17 \n\
/* 08030932 */ LSRS R0, R0, 0x1C \n\
/* 08030934 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08030936 */ BNE branch_0803093e \n\
/* 08030938 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803093a */ STRB R0, [R5, 0x8] \n\
/* 0803093c */ STRB R0, [R5, 0x9] \n\
 \n\
branch_0803093e: \n\
/* 0803093e */ LDR R0, [R6] \n\
/* 08030940 */ LDRB R0, [R0, 0x10] \n\
/* 08030942 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08030944 */ BEQ branch_08030984 \n\
/* 08030946 */ BL get_current_mem_id \n\
/* 0803094a */ LSLS R0, R0, 0x10 \n\
/* 0803094c */ LSRS R0, R0, 0x10 \n\
/* 0803094e */ LDR R5, =0x7fff \n\
/* 08030950 */ LDR R1, =(clappy_trio_bg_pal + 0x80) \n\
/* 08030952 */ STR R1, [SP] \n\
/* 08030954 */ LDR R4, =(D_03004b10 + 0x54) \n\
/* 08030956 */ STR R4, [SP, 0x4] \n\
/* 08030958 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0803095a */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0803095c */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0803095e */ BL palette_fade_in \n\
/* 08030962 */ BL get_current_mem_id \n\
/* 08030966 */ LSLS R0, R0, 0x10 \n\
/* 08030968 */ LSRS R0, R0, 0x10 \n\
/* 0803096a */ LDR R1, =(clappy_trio_bg_pal + 0x20) \n\
/* 0803096c */ STR R1, [SP] \n\
/* 0803096e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08030970 */ LSLS R1, R1, 0x2 \n\
/* 08030972 */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 08030974 */ STR R4, [SP, 0x4] \n\
/* 08030976 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08030978 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0803097a */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0803097c */ BL palette_fade_in \n\
/* 08030980 */ LDR R0, [R6] \n\
/* 08030982 */ STRB R7, [R0, 0x11] \n\
 \n\
branch_08030984: \n\
/* 08030984 */ ADD SP, 0xC \n\
/* 08030986 */ POP {R4-R7} \n\
/* 08030988 */ POP {R0} \n\
/* 0803098a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
