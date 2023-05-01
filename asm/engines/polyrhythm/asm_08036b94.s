asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start polyrhythm_play_applause \n\
/* 08036b94 */ PUSH {R4, R5, LR} \n\
/* 08036b96 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08036b98 */ LDR R5, =gCurrentEngineData \n\
/* 08036b9a */ MOVS R3, 0x84 @ Set R3 to 0x84 \n\
/* 08036b9c */ LSLS R3, R3, 0x1 \n\
 \n\
branch_08036b9e: \n\
/* 08036b9e */ LDR R0, [R5] \n\
/* 08036ba0 */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 08036ba2 */ LDRB R2, [R1] \n\
/* 08036ba4 */ LSLS R0, R2, 0x1F \n\
/* 08036ba6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08036ba8 */ BEQ branch_08036bd0 \n\
/* 08036baa */ LDRB R0, [R1, 0x1] \n\
/* 08036bac */ LSLS R0, R0, 0x1F \n\
/* 08036bae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08036bb0 */ BNE branch_08036bd0 \n\
/* 08036bb2 */ LSLS R0, R2, 0x19 \n\
/* 08036bb4 */ LSRS R0, R0, 0x1D \n\
/* 08036bb6 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08036bb8 */ BHI branch_08036bd0 \n\
/* 08036bba */ LDR R0, =s_kansei_seqData \n\
/* 08036bbc */ BL play_sound \n\
/* 08036bc0 */ MOVS R1, 0x78 @ Set R1 to 0x78 \n\
/* 08036bc2 */ BL set_soundplayer_volume \n\
/* 08036bc6 */ B branch_08036bd8 \n\
\n\
.ltorg \n\
 \n\
branch_08036bd0: \n\
/* 08036bd0 */ ADDS R3, 0x3C @ Add 0x3C to R3 \n\
/* 08036bd2 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08036bd4 */ CMP R4, 0x7 @ Compare R4 and 0x7 \n\
/* 08036bd6 */ BLS branch_08036b9e \n\
 \n\
branch_08036bd8: \n\
/* 08036bd8 */ POP {R4, R5} \n\
/* 08036bda */ POP {R0} \n\
/* 08036bdc */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
