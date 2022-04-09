asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08015a24 \n\
/* 08015a24 */ PUSH {R4, R5, LR} \n\
/* 08015a26 */ SUB SP, 0x4 \n\
/* 08015a28 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08015a2a */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08015a2c */ LSLS R4, R4, 0xE \n\
/* 08015a2e */ LSLS R2, R2, 0x5 \n\
/* 08015a30 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 08015a32 */ LSLS R0, R0, 0x13 \n\
/* 08015a34 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 08015a36 */ ADDS R4, R4, R2 @ Set R4 to R4 + R2 \n\
/* 08015a38 */ BL func_0800c3b8 \n\
/* 08015a3c */ LSLS R0, R0, 0x10 \n\
/* 08015a3e */ LSRS R0, R0, 0x10 \n\
/* 08015a40 */ LDR R1, [R5, 0x4] \n\
/* 08015a42 */ LDRB R3, [R5] \n\
/* 08015a44 */ LDRB R2, [R5, 0x1] \n\
/* 08015a46 */ MULS R3, R2 @ Multiply R3 by R2 \n\
/* 08015a48 */ LSLS R3, R3, 0x5 \n\
/* 08015a4a */ LDR R2, [R5, 0x8] \n\
/* 08015a4c */ STR R2, [SP] \n\
/* 08015a4e */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08015a50 */ BL func_080159f4 \n\
/* 08015a54 */ ADD SP, 0x4 \n\
/* 08015a56 */ POP {R4, R5} \n\
/* 08015a58 */ POP {R1} \n\
/* 08015a5a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
