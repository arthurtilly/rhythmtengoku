asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08001a28 \n\
/* 08001a28 */ PUSH {R4, R5, LR} \n\
/* 08001a2a */ SUB SP, 0x18 \n\
/* 08001a2c */ LDR R4, [SP, 0x24] \n\
/* 08001a2e */ LDR R5, =D_030000b8 \n\
/* 08001a30 */ STR R1, [SP, 0x4] \n\
/* 08001a32 */ STR R0, [SP, 0x8] \n\
/* 08001a34 */ STR R2, [SP, 0xC] \n\
/* 08001a36 */ STR R3, [SP, 0x10] \n\
/* 08001a38 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08001a3a */ LSLS R1, R1, 0x1 \n\
/* 08001a3c */ SUBS R4, R1, R4 @ Set R4 to R1 - R4 \n\
/* 08001a3e */ STR R4, [SP, 0x14] \n\
/* 08001a40 */ LDR R0, =func_080012bc \n\
/* 08001a42 */ STR R1, [SP] \n\
/* 08001a44 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08001a46 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08001a48 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08001a4a */ BL dma3_set \n\
/* 08001a4e */ ADD R0, SP, 0x4 \n\
/* 08001a50 */ BL _call_via_r5 \n\
/* 08001a54 */ ADD SP, 0x18 \n\
/* 08001a56 */ POP {R4, R5} \n\
/* 08001a58 */ POP {R0} \n\
/* 08001a5a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
