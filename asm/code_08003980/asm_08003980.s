asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003980 \n\
/* 08003980 */ PUSH {LR} \n\
/* 08003982 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08003984 */ B branch_08003996 \n\
 \n\
branch_08003986: \n\
/* 08003986 */ LDR R0, [R1] \n\
/* 08003988 */ STR R0, [R2] \n\
/* 0800398a */ LDRB R0, [R1, 0x4] \n\
/* 0800398c */ STRB R0, [R2, 0x4] \n\
/* 0800398e */ LDRB R0, [R1, 0x5] \n\
/* 08003990 */ STRB R0, [R2, 0x5] \n\
/* 08003992 */ ADDS R2, 0x8 @ Add 0x8 to R2 \n\
/* 08003994 */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
 \n\
branch_08003996: \n\
/* 08003996 */ LDR R0, [R1] \n\
/* 08003998 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800399a */ BNE branch_08003986 \n\
/* 0800399c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800399e */ STR R0, [R2] \n\
/* 080039a0 */ STRB R0, [R2, 0x5] \n\
/* 080039a2 */ STRB R0, [R2, 0x4] \n\
/* 080039a4 */ POP {R0} \n\
/* 080039a6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
