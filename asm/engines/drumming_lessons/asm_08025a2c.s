asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025a2c \n\
/* 08025a2c */ PUSH {R4, LR} \n\
/* 08025a2e */ LDR R4, =gCurrentEngineData \n\
/* 08025a30 */ LDR R1, [R4] \n\
/* 08025a32 */ LDR R2, =0x00001415 \n\
/* 08025a34 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08025a36 */ STRB R0, [R1] \n\
/* 08025a38 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 08025a3a */ BL ticks_to_frames \n\
/* 08025a3e */ LDR R1, [R4] \n\
/* 08025a40 */ LDR R2, =0x00001416 \n\
/* 08025a42 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08025a44 */ STRH R0, [R1] \n\
/* 08025a46 */ POP {R4} \n\
/* 08025a48 */ POP {R0} \n\
/* 08025a4a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
