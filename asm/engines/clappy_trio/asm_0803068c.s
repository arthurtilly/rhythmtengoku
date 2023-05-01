asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803068c \n\
/* 0803068c */ PUSH {R4-R7, LR} \n\
/* 0803068e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08030690 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08030692 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08030694 */ PUSH {R5-R7} \n\
/* 08030696 */ SUB SP, 0xC \n\
/* 08030698 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0803069a */ LDR R0, =gCurrentEngineData \n\
/* 0803069c */ LDR R4, [R0] \n\
/* 0803069e */ ADDS R0, R4, 0x4 @ Set R0 to R4 + 0x4 \n\
/* 080306a0 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 080306a2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080306a4 */ BL clappy_trio_get_anim \n\
/* 080306a8 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080306aa */ LDR R1, =D_03005380 \n\
/* 080306ac */ MOV R8, R1 @ Set R8 to R1 \n\
/* 080306ae */ LDR R0, [R1] \n\
/* 080306b0 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 080306b2 */ LDRSH R1, [R4, R3] \n\
/* 080306b4 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080306b6 */ LSLS R4, R7, 0x18 \n\
/* 080306b8 */ ASRS R4, R4, 0x18 \n\
/* 080306ba */ STR R4, [SP] \n\
/* 080306bc */ MOVS R6, 0x7F @ Set R6 to 0x7F \n\
/* 080306be */ STR R6, [SP, 0x4] \n\
/* 080306c0 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080306c2 */ STR R5, [SP, 0x8] \n\
/* 080306c4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080306c6 */ BL func_0804d8f8 \n\
/* 080306ca */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080306cc */ BL clappy_trio_get_anim \n\
/* 080306d0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080306d2 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080306d4 */ LDR R0, [R1] \n\
/* 080306d6 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080306d8 */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 080306da */ LDRSH R1, [R3, R7] \n\
/* 080306dc */ STR R4, [SP] \n\
/* 080306de */ STR R6, [SP, 0x4] \n\
/* 080306e0 */ STR R5, [SP, 0x8] \n\
/* 080306e2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080306e4 */ BL func_0804d8f8 \n\
/* 080306e8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080306ea */ BL clappy_trio_get_anim \n\
/* 080306ee */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080306f0 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080306f2 */ LDR R0, [R1] \n\
/* 080306f4 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080306f6 */ MOVS R7, 0x4 @ Set R7 to 0x4 \n\
/* 080306f8 */ LDRSH R1, [R3, R7] \n\
/* 080306fa */ STR R4, [SP] \n\
/* 080306fc */ STR R6, [SP, 0x4] \n\
/* 080306fe */ STR R5, [SP, 0x8] \n\
/* 08030700 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030702 */ BL func_0804d8f8 \n\
/* 08030706 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030708 */ BL clappy_trio_get_anim \n\
/* 0803070c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803070e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08030710 */ LDR R0, [R1] \n\
/* 08030712 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08030714 */ MOVS R7, 0x6 @ Set R7 to 0x6 \n\
/* 08030716 */ LDRSH R1, [R3, R7] \n\
/* 08030718 */ STR R4, [SP] \n\
/* 0803071a */ STR R6, [SP, 0x4] \n\
/* 0803071c */ STR R5, [SP, 0x8] \n\
/* 0803071e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030720 */ BL func_0804d8f8 \n\
/* 08030724 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08030726 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08030728 */ BNE branch_08030730 \n\
/* 0803072a */ LDR R0, =s_f_handclap_ready_seqData \n\
/* 0803072c */ BL play_sound \n\
 \n\
branch_08030730: \n\
/* 08030730 */ ADD SP, 0xC \n\
/* 08030732 */ POP {R3-R5} \n\
/* 08030734 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08030736 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08030738 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803073a */ POP {R4-R7} \n\
/* 0803073c */ POP {R0} \n\
/* 0803073e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
