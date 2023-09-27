asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035780 \n\
/* 08035780 */ PUSH {R4-R7, LR} \n\
/* 08035782 */ SUB SP, 0x4 \n\
/* 08035784 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08035786 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08035788 */ BNE branch_08035792 \n\
/* 0803578a */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0803578c */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 0803578e */ LSLS R5, R5, 0x3 \n\
/* 08035790 */ B branch_0803579a \n\
 \n\
branch_08035792: \n\
/* 08035792 */ MOVS R7, 0x80 @ Set R7 to 0x80 \n\
/* 08035794 */ LSLS R7, R7, 0x3 \n\
/* 08035796 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 08035798 */ LSLS R5, R5, 0x4 \n\
 \n\
branch_0803579a: \n\
/* 0803579a */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0803579c */ BL ticks_to_frames \n\
/* 080357a0 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080357a2 */ LDR R4, =gCurrentEngineData \n\
/* 080357a4 */ LDR R2, [R4] \n\
/* 080357a6 */ ADDS R2, 0xA @ Add 0xA to R2 \n\
/* 080357a8 */ STR R5, [SP] \n\
/* 080357aa */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080357ac */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 080357ae */ BL scene_start_integer_interp \n\
/* 080357b2 */ LDR R0, [R4] \n\
/* 080357b4 */ STRB R6, [R0, 0xC] \n\
/* 080357b6 */ ADD SP, 0x4 \n\
/* 080357b8 */ POP {R4-R7} \n\
/* 080357ba */ POP {R0} \n\
/* 080357bc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
