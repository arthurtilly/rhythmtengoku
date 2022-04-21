asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08001a64 \n\
/* 08001a64 */ PUSH {R4-R6, LR} \n\
/* 08001a66 */ SUB SP, 0x18 \n\
/* 08001a68 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08001a6a */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08001a6c */ LDR R6, =D_030000b8 \n\
/* 08001a6e */ LDR R0, [R4] \n\
/* 08001a70 */ LSLS R0, R0, 0xF \n\
/* 08001a72 */ LSRS R0, R0, 0x18 \n\
/* 08001a74 */ LDRH R1, [R4] \n\
/* 08001a76 */ LSLS R1, R1, 0x17 \n\
/* 08001a78 */ LSRS R1, R1, 0x18 \n\
/* 08001a7a */ LSLS R0, R0, 0x8 \n\
/* 08001a7c */ BL __divsi3 \n\
/* 08001a80 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08001a82 */ LDRH R0, [R4, 0x2] \n\
/* 08001a84 */ LSLS R0, R0, 0x17 \n\
/* 08001a86 */ LSRS R0, R0, 0x1E \n\
/* 08001a88 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08001a8a */ BEQ branch_08001ac6 \n\
/* 08001a8c */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08001a8e */ BGT branch_08001ac0 \n\
/* 08001a90 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08001a92 */ BLT branch_08001b3c \n\
/* 08001a94 */ LSLS R1, R5, 0x1 \n\
/* 08001a96 */ LDR R0, [R4, 0x4] \n\
/* 08001a98 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08001a9a */ STR R0, [SP, 0x4] \n\
/* 08001a9c */ LDR R0, [R4, 0x8] \n\
/* 08001a9e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08001aa0 */ STR R0, [SP, 0x8] \n\
/* 08001aa2 */ LDR R0, [R4, 0x10] \n\
/* 08001aa4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08001aa6 */ STR R0, [SP, 0xC] \n\
/* 08001aa8 */ LDRB R0, [R4, 0x2] \n\
/* 08001aaa */ LSLS R0, R0, 0x19 \n\
/* 08001aac */ LSRS R0, R0, 0x1A \n\
/* 08001aae */ LSLS R0, R0, 0x4 \n\
/* 08001ab0 */ STR R0, [SP, 0x10] \n\
/* 08001ab2 */ STR R2, [SP, 0x14] \n\
/* 08001ab4 */ LDR R0, =func_08001240 \n\
/* 08001ab6 */ B branch_08001ae6 \n\
\n\
.ltorg \n\
 \n\
branch_08001ac0: \n\
/* 08001ac0 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08001ac2 */ BEQ branch_08001b04 \n\
/* 08001ac4 */ B branch_08001b3c \n\
 \n\
branch_08001ac6: \n\
/* 08001ac6 */ LDR R0, [R4, 0x4] \n\
/* 08001ac8 */ STR R0, [SP, 0x4] \n\
/* 08001aca */ LSLS R1, R5, 0x1 \n\
/* 08001acc */ LDR R0, [R4, 0x8] \n\
/* 08001ace */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08001ad0 */ STR R0, [SP, 0x8] \n\
/* 08001ad2 */ LDR R0, [R4, 0x10] \n\
/* 08001ad4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08001ad6 */ STR R0, [SP, 0xC] \n\
/* 08001ad8 */ LDRB R0, [R4, 0x2] \n\
/* 08001ada */ LSLS R0, R0, 0x19 \n\
/* 08001adc */ LSRS R0, R0, 0x1A \n\
/* 08001ade */ LSLS R0, R0, 0x4 \n\
/* 08001ae0 */ STR R0, [SP, 0x10] \n\
/* 08001ae2 */ STR R2, [SP, 0x14] \n\
/* 08001ae4 */ LDR R0, =func_080012bc \n\
 \n\
branch_08001ae6: \n\
/* 08001ae6 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08001ae8 */ LSLS R1, R1, 0x1 \n\
/* 08001aea */ STR R1, [SP] \n\
/* 08001aec */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08001aee */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08001af0 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08001af2 */ BL func_0800186c \n\
/* 08001af6 */ ADD R0, SP, 0x4 \n\
/* 08001af8 */ BL _call_via_r6 \n\
/* 08001afc */ B branch_08001b3c \n\
\n\
.ltorg \n\
 \n\
branch_08001b04: \n\
/* 08001b04 */ LDR R0, [R4, 0x8] \n\
/* 08001b06 */ STR R0, [SP, 0x4] \n\
/* 08001b08 */ LSLS R1, R5, 0x1 \n\
/* 08001b0a */ LDR R0, [R4, 0x4] \n\
/* 08001b0c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08001b0e */ STR R0, [SP, 0x8] \n\
/* 08001b10 */ LDR R0, [R4, 0x10] \n\
/* 08001b12 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08001b14 */ STR R0, [SP, 0xC] \n\
/* 08001b16 */ LDRB R0, [R4, 0x2] \n\
/* 08001b18 */ LSLS R0, R0, 0x19 \n\
/* 08001b1a */ LSRS R0, R0, 0x1A \n\
/* 08001b1c */ LSLS R0, R0, 0x4 \n\
/* 08001b1e */ STR R0, [SP, 0x10] \n\
/* 08001b20 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08001b22 */ LSLS R1, R1, 0x1 \n\
/* 08001b24 */ SUBS R0, R1, R2 @ Set R0 to R1 - R2 \n\
/* 08001b26 */ STR R0, [SP, 0x14] \n\
/* 08001b28 */ LDR R0, =func_080012bc \n\
/* 08001b2a */ STR R1, [SP] \n\
/* 08001b2c */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08001b2e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08001b30 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08001b32 */ BL func_0800186c \n\
/* 08001b36 */ ADD R0, SP, 0x4 \n\
/* 08001b38 */ BL _call_via_r6 \n\
 \n\
branch_08001b3c: \n\
/* 08001b3c */ ADD SP, 0x18 \n\
/* 08001b3e */ POP {R4-R6} \n\
/* 08001b40 */ POP {R0} \n\
/* 08001b42 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
