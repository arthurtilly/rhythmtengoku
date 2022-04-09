asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080089c0 \n\
/* 080089c0 */ PUSH {R4-R7, LR} \n\
/* 080089c2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080089c4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080089c6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080089c8 */ PUSH {R5-R7} \n\
/* 080089ca */ SUB SP, 0x20 \n\
/* 080089cc */ STR R0, [SP, 0x14] \n\
/* 080089ce */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 080089d0 */ STR R2, [SP, 0x18] \n\
/* 080089d2 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 080089d4 */ LDR R6, [SP, 0x40] \n\
/* 080089d6 */ LDR R0, [SP, 0x4C] \n\
/* 080089d8 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080089da */ LDR R4, [SP, 0x50] \n\
/* 080089dc */ LDR R5, [SP, 0x54] \n\
/* 080089de */ LSLS R6, R6, 0x10 \n\
/* 080089e0 */ LSRS R6, R6, 0x10 \n\
/* 080089e2 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080089e4 */ LSLS R1, R1, 0x10 \n\
/* 080089e6 */ LSRS R1, R1, 0x10 \n\
/* 080089e8 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 080089ea */ LSLS R4, R4, 0x10 \n\
/* 080089ec */ LSRS R4, R4, 0x10 \n\
/* 080089ee */ LSLS R5, R5, 0x10 \n\
/* 080089f0 */ LSRS R5, R5, 0x10 \n\
/* 080089f2 */ LSLS R0, R3, 0x4 \n\
/* 080089f4 */ SUBS R0, R0, R3 @ Set R0 to R0 - R3 \n\
/* 080089f6 */ LSLS R0, R0, 0x4 \n\
/* 080089f8 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080089fa */ BL func_08007b80 \n\
/* 080089fe */ STR R0, [SP, 0x1C] \n\
/* 08008a00 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08008a02 */ LSLS R0, R1, 0x2 \n\
/* 08008a04 */ ADD R0, R9 @ Add R9 to R0 \n\
/* 08008a06 */ LSLS R0, R0, 0x5 \n\
/* 08008a08 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08008a0a */ BL func_08007b80 \n\
/* 08008a0e */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08008a10 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08008a12 */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 08008a14 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08008a16 */ BL func_08007b80 \n\
/* 08008a1a */ LSLS R4, R4, 0x10 \n\
/* 08008a1c */ ASRS R4, R4, 0x10 \n\
/* 08008a1e */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08008a20 */ LSLS R4, R4, 0x10 \n\
/* 08008a22 */ LSRS R4, R4, 0x10 \n\
/* 08008a24 */ LDR R1, [SP, 0x18] \n\
/* 08008a26 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08008a28 */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 08008a2a */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08008a2c */ BL func_08007b80 \n\
/* 08008a30 */ LSLS R5, R5, 0x10 \n\
/* 08008a32 */ ASRS R5, R5, 0x10 \n\
/* 08008a34 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 08008a36 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 08008a38 */ STR R0, [SP] \n\
/* 08008a3a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08008a3c */ LSLS R1, R1, 0x10 \n\
/* 08008a3e */ ASRS R1, R1, 0x10 \n\
/* 08008a40 */ STR R1, [SP, 0x4] \n\
/* 08008a42 */ LSLS R4, R4, 0x10 \n\
/* 08008a44 */ ASRS R4, R4, 0x10 \n\
/* 08008a46 */ STR R4, [SP, 0x8] \n\
/* 08008a48 */ LSLS R5, R5, 0x10 \n\
/* 08008a4a */ ASRS R5, R5, 0x10 \n\
/* 08008a4c */ STR R5, [SP, 0xC] \n\
/* 08008a4e */ LDR R0, [SP, 0x58] \n\
/* 08008a50 */ STR R0, [SP, 0x10] \n\
/* 08008a52 */ LDR R0, [SP, 0x14] \n\
/* 08008a54 */ LDR R1, [SP, 0x44] \n\
/* 08008a56 */ LDR R2, [SP, 0x48] \n\
/* 08008a58 */ LDR R3, [SP, 0x1C] \n\
/* 08008a5a */ BL func_080087e8 \n\
/* 08008a5e */ ADD SP, 0x20 \n\
/* 08008a60 */ POP {R3-R5} \n\
/* 08008a62 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08008a64 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08008a66 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08008a68 */ POP {R4-R7} \n\
/* 08008a6a */ POP {R0} \n\
/* 08008a6c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
