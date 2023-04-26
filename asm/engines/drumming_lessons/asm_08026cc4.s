asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_live_cue_barely \n\
/* 08026cc4 */ PUSH {R4, R5, LR} \n\
/* 08026cc6 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08026cc8 */ LDR R5, =gCurrentEngineData \n\
/* 08026cca */ LDR R0, [R5] \n\
/* 08026ccc */ MOVS R1, 0xE7 @ Set R1 to 0xE7 \n\
/* 08026cce */ LSLS R1, R1, 0x2 \n\
/* 08026cd0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08026cd2 */ LDR R0, [R0] \n\
/* 08026cd4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08026cd6 */ BEQ branch_08026ce0 \n\
/* 08026cd8 */ LSLS R0, R0, 0x10 \n\
/* 08026cda */ LSRS R0, R0, 0x10 \n\
/* 08026cdc */ BL set_beatscript_tempo \n\
 \n\
branch_08026ce0: \n\
/* 08026ce0 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08026ce2 */ LSLS R2, R2, 0x1 \n\
/* 08026ce4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08026ce6 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08026ce8 */ BL func_08026b3c \n\
/* 08026cec */ LDR R0, [R5] \n\
/* 08026cee */ LDR R1, =0x0000181e \n\
/* 08026cf0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08026cf2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08026cf4 */ STRH R1, [R0] \n\
/* 08026cf6 */ POP {R4, R5} \n\
/* 08026cf8 */ POP {R0} \n\
/* 08026cfa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
