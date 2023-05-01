asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08038598 \n\
/* 08038598 */ PUSH {R4, R5, LR} \n\
/* 0803859a */ LDR R0, =gCurrentEngineData \n\
/* 0803859c */ LDR R0, [R0] \n\
/* 0803859e */ ADDS R0, 0xF0 @ Add 0xF0 to R0 \n\
/* 080385a0 */ LDR R4, [R0] \n\
/* 080385a2 */ LSRS R4, R4, 0x8 \n\
/* 080385a4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080385a6 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 080385a8 */ BL __udivsi3 \n\
/* 080385ac */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080385ae */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080385b0 */ MOVS R1, 0x18 @ Set R1 to 0x18 \n\
/* 080385b2 */ BL __umodsi3 \n\
/* 080385b6 */ CMP R0, 0xC @ Compare R0 and 0xC \n\
/* 080385b8 */ BLS branch_080385bc \n\
/* 080385ba */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
 \n\
branch_080385bc: \n\
/* 080385bc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080385be */ ANDS R0, R5 @ Set R0 to R0 & R5 \n\
/* 080385c0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080385c2 */ BNE branch_080385dc \n\
/* 080385c4 */ LDR R0, =s_BD5_seqData \n\
/* 080385c6 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 080385c8 */ LSLS R1, R1, 0x1 \n\
/* 080385ca */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080385cc */ BL play_sound_w_pitch_volume \n\
/* 080385d0 */ B branch_080385e8 \n\
\n\
.ltorg \n\
 \n\
branch_080385dc: \n\
/* 080385dc */ LDR R0, =s_SD5_seqData \n\
/* 080385de */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 080385e0 */ LSLS R1, R1, 0x1 \n\
/* 080385e2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080385e4 */ BL play_sound_w_pitch_volume \n\
 \n\
branch_080385e8: \n\
/* 080385e8 */ POP {R4, R5} \n\
/* 080385ea */ POP {R0} \n\
/* 080385ec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
