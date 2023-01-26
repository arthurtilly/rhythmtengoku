asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bouncy_road_cue_hit \n\
/* 0802e650 */ PUSH {R4-R7, LR} \n\
/* 0802e652 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0802e654 */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 0802e656 */ LDRH R0, [R6] \n\
/* 0802e658 */ BL func_0802df08 \n\
/* 0802e65c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802e65e */ BL gameplay_get_last_hit_offset \n\
/* 0802e662 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802e664 */ LDRB R0, [R5, 0x4] \n\
/* 0802e666 */ LSLS R1, R0, 0x19 \n\
/* 0802e668 */ LSRS R1, R1, 0x1F \n\
/* 0802e66a */ LSLS R0, R0, 0x1F \n\
/* 0802e66c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e66e */ BEQ branch_0802e674 \n\
/* 0802e670 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0802e672 */ BEQ branch_0802e682 \n\
 \n\
branch_0802e674: \n\
/* 0802e674 */ BL gameplay_ignore_this_cue_result \n\
/* 0802e678 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0802e67a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802e67c */ BL bouncy_road_input_event \n\
/* 0802e680 */ B branch_0802e6d6 \n\
 \n\
branch_0802e682: \n\
/* 0802e682 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802e684 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802e686 */ LDRB R1, [R6, 0x2] \n\
/* 0802e688 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802e68a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802e68c */ STRB R1, [R0] \n\
/* 0802e68e */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802e690 */ BGE branch_0802e6ac \n\
/* 0802e692 */ BL get_current_mem_id \n\
/* 0802e696 */ LSLS R0, R0, 0x10 \n\
/* 0802e698 */ LSRS R0, R0, 0x10 \n\
/* 0802e69a */ LDR R1, =func_0802e644 \n\
/* 0802e69c */ LDRH R2, [R6] \n\
/* 0802e69e */ NEGS R3, R4 @ Set R3 to -R4 \n\
/* 0802e6a0 */ BL func_0800856c \n\
/* 0802e6a4 */ B branch_0802e6b4 \n\
\n\
.ltorg \n\
 \n\
branch_0802e6ac: \n\
/* 0802e6ac */ LDRH R0, [R6] \n\
/* 0802e6ae */ NEGS R1, R4 @ Set R1 to -R4 \n\
/* 0802e6b0 */ BL func_0802de60 \n\
 \n\
branch_0802e6b4: \n\
/* 0802e6b4 */ BL func_0802dfa4 \n\
/* 0802e6b8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802e6ba */ ANDS R0, R7 @ Set R0 to R0 & R7 \n\
/* 0802e6bc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e6be */ BEQ branch_0802e6cc \n\
/* 0802e6c0 */ LDR R0, =s_change_hit_a_seqData \n\
/* 0802e6c2 */ BL play_sound \n\
/* 0802e6c6 */ B branch_0802e6d2 \n\
\n\
.ltorg \n\
 \n\
branch_0802e6cc: \n\
/* 0802e6cc */ LDR R0, =s_change_hit_b_seqData \n\
/* 0802e6ce */ BL play_sound \n\
 \n\
branch_0802e6d2: \n\
/* 0802e6d2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802e6d4 */ STRB R0, [R6, 0x3] \n\
 \n\
branch_0802e6d6: \n\
/* 0802e6d6 */ POP {R4-R7} \n\
/* 0802e6d8 */ POP {R0} \n\
/* 0802e6da */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
