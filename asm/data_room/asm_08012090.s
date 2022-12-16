asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08012090 \n\
/* 08012090 */ PUSH {R4, R5, LR} \n\
/* 08012092 */ SUB SP, 0xC \n\
/* 08012094 */ BL func_08011fa8 \n\
/* 08012098 */ LDR R5, =D_030046a4 \n\
/* 0801209a */ LDR R1, [R5] \n\
/* 0801209c */ LDRB R0, [R1, 0x1C] \n\
/* 0801209e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080120a0 */ BEQ branch_080120c4 \n\
/* 080120a2 */ LDR R0, =D_03005380 \n\
/* 080120a4 */ LDR R0, [R0] \n\
/* 080120a6 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 080120a8 */ LDRSH R1, [R1, R2] \n\
/* 080120aa */ LDR R2, =D_08901930 \n\
/* 080120ac */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 080120ae */ STR R4, [SP] \n\
/* 080120b0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080120b2 */ STR R3, [SP, 0x4] \n\
/* 080120b4 */ STR R3, [SP, 0x8] \n\
/* 080120b6 */ BL func_0804d8f8 \n\
/* 080120ba */ LDR R0, [R5] \n\
/* 080120bc */ STRB R4, [R0, 0x1C] \n\
/* 080120be */ LDR R1, [R5] \n\
/* 080120c0 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 080120c2 */ STRH R0, [R1, 0x1A] \n\
 \n\
branch_080120c4: \n\
/* 080120c4 */ LDR R0, =s_menu_cursor1_seqData \n\
/* 080120c6 */ BL play_sound \n\
/* 080120ca */ ADD SP, 0xC \n\
/* 080120cc */ POP {R4, R5} \n\
/* 080120ce */ POP {R0} \n\
/* 080120d0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
