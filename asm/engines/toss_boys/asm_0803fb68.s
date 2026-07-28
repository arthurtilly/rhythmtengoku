asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start toss_boys_input_event \n\
/* 0803fb68 */ PUSH {R4, LR} \n\
/* 0803fb6a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803fb6c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803fb6e */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0803fb70 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803fb72 */ BEQ branch_0803fb8a \n\
/* 0803fb74 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803fb76 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803fb78 */ BL func_0803f9a0 \n\
/* 0803fb7c */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0803fb7e */ BL ticks_to_frames \n\
/* 0803fb82 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803fb84 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803fb86 */ BL func_0803ee58 \n\
 \n\
branch_0803fb8a: \n\
/* 0803fb8a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803fb8c */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0803fb8e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803fb90 */ BEQ branch_0803fba8 \n\
/* 0803fb92 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803fb94 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803fb96 */ BL func_0803f9a0 \n\
/* 0803fb9a */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0803fb9c */ BL ticks_to_frames \n\
/* 0803fba0 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803fba2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803fba4 */ BL func_0803ee58 \n\
 \n\
branch_0803fba8: \n\
/* 0803fba8 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0803fbaa */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0803fbac */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803fbae */ BEQ branch_0803fbc6 \n\
/* 0803fbb0 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803fbb2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803fbb4 */ BL func_0803f9a0 \n\
/* 0803fbb8 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0803fbba */ BL ticks_to_frames \n\
/* 0803fbbe */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803fbc0 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803fbc2 */ BL func_0803ee58 \n\
 \n\
branch_0803fbc6: \n\
/* 0803fbc6 */ LDR R0, =s_f_toss_swing_seqData \n\
/* 0803fbc8 */ BL play_sound \n\
/* 0803fbcc */ POP {R4} \n\
/* 0803fbce */ POP {R0} \n\
/* 0803fbd0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
