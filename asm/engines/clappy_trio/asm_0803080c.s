asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803080c \n\
/* 0803080c */ PUSH {R4, LR} \n\
/* 0803080e */ SUB SP, 0xC \n\
/* 08030810 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08030812 */ LDR R0, =gCurrentEngineData \n\
/* 08030814 */ LDR R0, [R0] \n\
/* 08030816 */ ADDS R1, R0, 0x4 @ Set R1 to R0 + 0x4 \n\
/* 08030818 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 0803081a */ BEQ branch_08030838 \n\
/* 0803081c */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 0803081e */ BCC branch_08030834 \n\
/* 08030820 */ CMP R2, 0x2 @ Compare R2 and 0x2 \n\
/* 08030822 */ BEQ branch_0803083c \n\
/* 08030824 */ CMP R2, 0x3 @ Compare R2 and 0x3 \n\
/* 08030826 */ BEQ branch_08030840 \n\
/* 08030828 */ LDR R4, =0xffff \n\
/* 0803082a */ B branch_08030842 \n\
\n\
.ltorg \n\
 \n\
branch_08030834: \n\
/* 08030834 */ LDRH R4, [R1, 0x2] \n\
/* 08030836 */ B branch_08030842 \n\
 \n\
branch_08030838: \n\
/* 08030838 */ LDRH R4, [R1, 0x4] \n\
/* 0803083a */ B branch_08030842 \n\
 \n\
branch_0803083c: \n\
/* 0803083c */ LDRH R4, [R1, 0x6] \n\
/* 0803083e */ B branch_08030842 \n\
 \n\
branch_08030840: \n\
/* 08030840 */ LDRH R4, [R0, 0x4] \n\
 \n\
branch_08030842: \n\
/* 08030842 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08030844 */ BL clappy_trio_get_anim \n\
/* 08030848 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803084a */ LDR R0, =gSpriteHandler \n\
/* 0803084c */ LDR R0, [R0] \n\
/* 0803084e */ LSLS R1, R4, 0x10 \n\
/* 08030850 */ ASRS R1, R1, 0x10 \n\
/* 08030852 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08030854 */ STR R3, [SP] \n\
/* 08030856 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08030858 */ STR R3, [SP, 0x4] \n\
/* 0803085a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803085c */ STR R3, [SP, 0x8] \n\
/* 0803085e */ BL sprite_set_anim \n\
/* 08030862 */ LDR R0, =gCurrentEngineData \n\
/* 08030864 */ LDR R0, [R0] \n\
/* 08030866 */ LDRH R0, [R0, 0x18] \n\
/* 08030868 */ LSLS R1, R0, 0x2 \n\
/* 0803086a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803086c */ LSRS R1, R1, 0x3 \n\
/* 0803086e */ LDR R0, =s_HC_seqData \n\
/* 08030870 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08030872 */ LSLS R2, R2, 0x2 \n\
/* 08030874 */ BL play_sound_w_pitch_volume \n\
/* 08030878 */ ADD SP, 0xC \n\
/* 0803087a */ POP {R4} \n\
/* 0803087c */ POP {R0} \n\
/* 0803087e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
