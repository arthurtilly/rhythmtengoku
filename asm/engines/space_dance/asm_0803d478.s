asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d478 \n\
/* 0803d478 */ LDR R0, =gCurrentEngineData \n\
/* 0803d47a */ LDR R3, [R0] \n\
/* 0803d47c */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0803d47e */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0803d480 */ LDRB R0, [R0] \n\
/* 0803d482 */ LSLS R0, R0, 0x18 \n\
/* 0803d484 */ ASRS R0, R0, 0x18 \n\
/* 0803d486 */ LDR R1, [R3, 0x20] \n\
/* 0803d488 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803d48a */ STR R1, [R3, 0x20] \n\
/* 0803d48c */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0803d48e */ ADDS R0, 0x29 @ Add 0x29 to R0 \n\
/* 0803d490 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803d492 */ LDRSB R2, [R0, R2] \n\
/* 0803d494 */ LDR R0, [R3, 0x24] \n\
/* 0803d496 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803d498 */ STR R0, [R3, 0x24] \n\
/* 0803d49a */ LDR R2, =D_03004b10 \n\
/* 0803d49c */ ASRS R1, R1, 0x2 \n\
/* 0803d49e */ STRH R1, [R2, 0x10] \n\
/* 0803d4a0 */ LDR R0, [R3, 0x24] \n\
/* 0803d4a2 */ ASRS R0, R0, 0x2 \n\
/* 0803d4a4 */ STRH R0, [R2, 0x12] \n\
/* 0803d4a6 */ LDR R0, [R3, 0x20] \n\
/* 0803d4a8 */ ASRS R0, R0, 0x2 \n\
/* 0803d4aa */ STRH R0, [R2, 0x14] \n\
/* 0803d4ac */ LDR R0, [R3, 0x24] \n\
/* 0803d4ae */ ASRS R0, R0, 0x2 \n\
/* 0803d4b0 */ STRH R0, [R2, 0x16] \n\
/* 0803d4b2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
