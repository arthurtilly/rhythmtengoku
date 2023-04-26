asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803934c \n\
/* 0803934c */ PUSH {LR} \n\
/* 0803934e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08039350 */ BNE branch_0803935c \n\
/* 08039352 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08039354 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08039356 */ BL func_08038fbc \n\
/* 0803935a */ B branch_08039374 \n\
 \n\
branch_0803935c: \n\
/* 0803935c */ LDR R0, =gCurrentEngineData \n\
/* 0803935e */ LDR R1, [R0] \n\
/* 08039360 */ MOVS R0, 0xC6 @ Set R0 to 0xC6 \n\
/* 08039362 */ LSLS R0, R0, 0x2 \n\
/* 08039364 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08039366 */ LDRB R0, [R1] \n\
/* 08039368 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0803936a */ STRB R0, [R1] \n\
/* 0803936c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803936e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08039370 */ BL func_08038fbc \n\
 \n\
branch_08039374: \n\
/* 08039374 */ LDR R0, =s_f_rabbit_ready_seqData \n\
/* 08039376 */ BL play_sound \n\
/* 0803937a */ POP {R0} \n\
/* 0803937c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
