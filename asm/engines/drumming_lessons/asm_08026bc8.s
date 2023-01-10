asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_live_cue_spawn \n\
/* 08026bc8 */ PUSH {R4, R5, LR} \n\
/* 08026bca */ STRB R2, [R1] \n\
/* 08026bcc */ LDR R4, =D_030055d0 \n\
/* 08026bce */ LDR R3, [R4] \n\
/* 08026bd0 */ LDRB R2, [R1] \n\
/* 08026bd2 */ LSLS R2, R2, 0x1 \n\
/* 08026bd4 */ MOVS R5, 0x9F @ Set R5 to 0x9F \n\
/* 08026bd6 */ LSLS R5, R5, 0x5 \n\
/* 08026bd8 */ ADDS R0, R3, R5 @ Set R0 to R3 + R5 \n\
/* 08026bda */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08026bdc */ LDRH R0, [R0] \n\
/* 08026bde */ STRH R0, [R1, 0x2] \n\
/* 08026be0 */ LDRB R2, [R1] \n\
/* 08026be2 */ LSLS R2, R2, 0x1 \n\
/* 08026be4 */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 08026be6 */ ADDS R0, R3, R5 @ Set R0 to R3 + R5 \n\
/* 08026be8 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08026bea */ LDRH R0, [R0] \n\
/* 08026bec */ STRH R0, [R1, 0x4] \n\
/* 08026bee */ LDR R2, =0x000013d8 \n\
/* 08026bf0 */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 08026bf2 */ LDR R0, [R0] \n\
/* 08026bf4 */ STRH R0, [R1, 0x6] \n\
/* 08026bf6 */ SUBS R5, 0x10 @ Subtract 0x10 from R5 \n\
/* 08026bf8 */ ADDS R0, R3, R5 @ Set R0 to R3 + R5 \n\
/* 08026bfa */ LDR R0, [R0] \n\
/* 08026bfc */ STRH R0, [R1, 0x8] \n\
/* 08026bfe */ ADDS R2, 0x22 @ Add 0x22 to R2 \n\
/* 08026c00 */ ADDS R3, R3, R2 @ Set R3 to R3 + R2 \n\
/* 08026c02 */ LDRB R0, [R3] \n\
/* 08026c04 */ STRB R0, [R1, 0x1] \n\
/* 08026c06 */ LDR R0, [R4] \n\
/* 08026c08 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08026c0a */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 08026c0c */ STRB R1, [R0] \n\
/* 08026c0e */ POP {R4, R5} \n\
/* 08026c10 */ POP {R0} \n\
/* 08026c12 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
