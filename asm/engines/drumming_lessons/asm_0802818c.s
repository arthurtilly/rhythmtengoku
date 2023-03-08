asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802818c \n\
/* 0802818c */ PUSH {R4, LR} \n\
/* 0802818e */ LDR R2, =D_030046a8 \n\
/* 08028190 */ LDR R4, [R2] \n\
/* 08028192 */ MOVS R2, 0xAD @ Set R2 to 0xAD \n\
/* 08028194 */ LSLS R2, R2, 0x2 \n\
/* 08028196 */ ADDS R4, R4, R2 @ Set R4 to R4 + R2 \n\
/* 08028198 */ LSRS R2, R0, 0x3 \n\
/* 0802819a */ LSLS R2, R2, 0x2 \n\
/* 0802819c */ ADDS R4, R4, R2 @ Set R4 to R4 + R2 \n\
/* 0802819e */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 080281a0 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 080281a2 */ LSLS R2, R2, 0x2 \n\
/* 080281a4 */ MOVS R3, 0xF @ Set R3 to 0xF \n\
/* 080281a6 */ LSLS R3, R2 @ Set R3 to R3 << R2 (logical) \n\
/* 080281a8 */ LSLS R1, R2 @ Set R1 to R1 << R2 (logical) \n\
/* 080281aa */ LDR R0, [R4] \n\
/* 080281ac */ BICS R0, R3 @ Clear bits in R3 from R0 \n\
/* 080281ae */ ANDS R3, R1 @ Set R3 to R3 & R1 \n\
/* 080281b0 */ ORRS R0, R3 @ Set R0 to R0 | R3 \n\
/* 080281b2 */ STR R0, [R4] \n\
/* 080281b4 */ BL write_game_save_data \n\
/* 080281b8 */ POP {R4} \n\
/* 080281ba */ POP {R0} \n\
/* 080281bc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
