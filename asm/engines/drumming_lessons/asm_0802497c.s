asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802497c \n\
/* 0802497c */ PUSH {R4-R7, LR} \n\
/* 0802497e */ SUB SP, 0x4 \n\
/* 08024980 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08024982 */ LDR R1, [R4] \n\
/* 08024984 */ STR R1, [SP] \n\
/* 08024986 */ BL gameplay_get_loop_counter \n\
/* 0802498a */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0802498c */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802498e */ LDR R1, [SP] \n\
/* 08024990 */ CMP R6, R7 @ Check R6 - R7 \n\
/* 08024992 */ BHI branch_080249b8 \n\
/* 08024994 */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
 \n\
branch_08024996: \n\
/* 08024996 */ LDR R4, [R5] \n\
/* 08024998 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802499a */ BNE branch_080249a4 \n\
/* 0802499c */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802499e */ BL gameplay_display_text \n\
/* 080249a2 */ B branch_080249b8 \n\
 \n\
branch_080249a4: \n\
/* 080249a4 */ CMP R6, R7 @ Check R6 - R7 \n\
/* 080249a6 */ BNE branch_080249ae \n\
/* 080249a8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080249aa */ BL gameplay_display_text \n\
 \n\
branch_080249ae: \n\
/* 080249ae */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080249b0 */ ADDS R5, 0x4 @ Add 0x4 to R5 \n\
/* 080249b2 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 080249b4 */ CMP R6, R7 @ Check R6 - R7 \n\
/* 080249b6 */ BLS branch_08024996 \n\
 \n\
branch_080249b8: \n\
/* 080249b8 */ ADD SP, 0x4 \n\
/* 080249ba */ POP {R4-R7} \n\
/* 080249bc */ POP {R0} \n\
/* 080249be */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
