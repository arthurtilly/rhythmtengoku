asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802308c \n\
/* 0802308c */ PUSH {R4, LR} \n\
/* 0802308e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08023090 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08023092 */ BL func_0800c604 \n\
/* 08023096 */ LDR R0, =gCurrentEngineData \n\
/* 08023098 */ LDR R0, [R0] \n\
/* 0802309a */ LDR R1, =0x0000040c \n\
/* 0802309c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802309e */ LDRB R0, [R0] \n\
/* 080230a0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080230a2 */ BNE branch_080230b8 \n\
/* 080230a4 */ LSRS R1, R4, 0x8 \n\
/* 080230a6 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 080230a8 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 080230aa */ LDR R2, =D_089df404 \n\
/* 080230ac */ LSLS R0, R0, 0x2 \n\
/* 080230ae */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080230b0 */ LDR R0, [R0] \n\
/* 080230b2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080230b4 */ BL play_sound_w_pitch_volume \n\
 \n\
branch_080230b8: \n\
/* 080230b8 */ POP {R4} \n\
/* 080230ba */ POP {R0} \n\
/* 080230bc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
