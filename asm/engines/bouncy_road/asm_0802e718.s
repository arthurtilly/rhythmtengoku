asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start bouncy_road_input_event \n\
/* 0802e718 */ PUSH {R4, LR} \n\
/* 0802e71a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0802e71c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802e71e */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0802e720 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e722 */ BEQ branch_0802e72a \n\
/* 0802e724 */ LDR R0, =s_change_a_seqData \n\
/* 0802e726 */ BL play_sound \n\
 \n\
branch_0802e72a: \n\
/* 0802e72a */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0802e72c */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0802e72e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802e730 */ BEQ branch_0802e738 \n\
/* 0802e732 */ LDR R0, =s_change_b_seqData \n\
/* 0802e734 */ BL play_sound \n\
 \n\
branch_0802e738: \n\
/* 0802e738 */ POP {R4} \n\
/* 0802e73a */ POP {R0} \n\
/* 0802e73c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
