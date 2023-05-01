asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_intro_engine_update \n\
/* 08024cb0 */ PUSH {R4, LR} \n\
/* 08024cb2 */ BL func_080249f0 \n\
/* 08024cb6 */ LDR R4, =gCurrentEngineData \n\
/* 08024cb8 */ LDR R2, [R4] \n\
/* 08024cba */ MOVS R1, 0xE0 @ Set R1 to 0xE0 \n\
/* 08024cbc */ LSLS R1, R1, 0x2 \n\
/* 08024cbe */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08024cc0 */ LDRB R0, [R0] \n\
/* 08024cc2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08024cc4 */ BEQ branch_08024ce0 \n\
/* 08024cc6 */ LDR R1, =drum_intro_kits \n\
/* 08024cc8 */ LDRB R0, [R2] \n\
/* 08024cca */ LSLS R0, R0, 0x2 \n\
/* 08024ccc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08024cce */ LDR R0, [R0] \n\
/* 08024cd0 */ LDR R1, =D_03004afc \n\
/* 08024cd2 */ LDR R3, =0x00000396 \n\
/* 08024cd4 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08024cd6 */ LDRH R3, [R1] \n\
/* 08024cd8 */ LDRH R1, [R2] \n\
/* 08024cda */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 08024cdc */ BL play_drumtech_kit_w_anim \n\
 \n\
branch_08024ce0: \n\
/* 08024ce0 */ LDR R1, [R4] \n\
/* 08024ce2 */ LDRB R0, [R1] \n\
/* 08024ce4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08024ce6 */ BNE branch_08024d14 \n\
/* 08024ce8 */ LDR R0, =0x00000382 \n\
/* 08024cea */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08024cec */ LDRH R0, [R1] \n\
/* 08024cee */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 08024cf0 */ STRH R0, [R1] \n\
/* 08024cf2 */ LDR R2, =gSineTable \n\
/* 08024cf4 */ LDR R1, =0x000007ff \n\
/* 08024cf6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08024cf8 */ LSLS R0, R0, 0x1 \n\
/* 08024cfa */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08024cfc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08024cfe */ LDRSH R1, [R0, R2] \n\
/* 08024d00 */ LSLS R0, R1, 0x1 \n\
/* 08024d02 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08024d04 */ ASRS R0, R0, 0x8 \n\
/* 08024d06 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08024d08 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08024d0a */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08024d0c */ BL clamp_int32 \n\
/* 08024d10 */ LDR R1, =D_03004b10 \n\
/* 08024d12 */ STRH R0, [R1, 0x16] \n\
 \n\
branch_08024d14: \n\
/* 08024d14 */ BL update_drumtech \n\
/* 08024d18 */ BL func_08024c2c \n\
/* 08024d1c */ POP {R4} \n\
/* 08024d1e */ POP {R0} \n\
/* 08024d20 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
