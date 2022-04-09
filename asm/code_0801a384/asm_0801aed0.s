asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801aed0 \n\
/* 0801aed0 */ PUSH {R4-R7, LR} \n\
/* 0801aed2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0801aed4 */ PUSH {R7} \n\
/* 0801aed6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801aed8 */ LDR R0, =D_030046a8 \n\
/* 0801aeda */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801aedc */ LDR R2, [R0] \n\
/* 0801aede */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0801aee0 */ ADDS R0, 0xC2 @ Add 0xC2 to R0 \n\
/* 0801aee2 */ LDRB R5, [R0] \n\
/* 0801aee4 */ LSLS R7, R4, 0x2 \n\
/* 0801aee6 */ ADDS R0, R2, R7 @ Set R0 to R2 + R7 \n\
/* 0801aee8 */ ADDS R0, 0xC5 @ Add 0xC5 to R0 \n\
/* 0801aeea */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801aeec */ LDRSB R1, [R0, R1] \n\
/* 0801aeee */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801aef0 */ BLT branch_0801aefc \n\
/* 0801aef2 */ MOVS R3, 0xB9 @ Set R3 to 0xB9 \n\
/* 0801aef4 */ LSLS R3, R3, 0x2 \n\
/* 0801aef6 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0801aef8 */ BL func_08011b50 \n\
 \n\
branch_0801aefc: \n\
/* 0801aefc */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0801aefe */ SUBS R6, R5, 0x1 @ Set R6 to R5 - 0x1 \n\
/* 0801af00 */ CMP R3, R6 @ Check R3 - R6 \n\
/* 0801af02 */ BCS branch_0801af4a \n\
/* 0801af04 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801af06 */ ADDS R4, R7, 0x4 @ Set R4 to R7 + 0x4 \n\
 \n\
branch_0801af08: \n\
/* 0801af08 */ LDR R0, [R5] \n\
/* 0801af0a */ LSLS R2, R3, 0x2 \n\
/* 0801af0c */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0801af0e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801af10 */ ADDS R0, 0xC4 @ Add 0xC4 to R0 \n\
/* 0801af12 */ LDRB R0, [R0] \n\
/* 0801af14 */ ADDS R1, 0xC4 @ Add 0xC4 to R1 \n\
/* 0801af16 */ STRB R0, [R1] \n\
/* 0801af18 */ LDR R0, [R5] \n\
/* 0801af1a */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0801af1c */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801af1e */ ADDS R0, 0xC5 @ Add 0xC5 to R0 \n\
/* 0801af20 */ LDRB R0, [R0] \n\
/* 0801af22 */ ADDS R1, 0xC5 @ Add 0xC5 to R1 \n\
/* 0801af24 */ STRB R0, [R1] \n\
/* 0801af26 */ LDR R0, [R5] \n\
/* 0801af28 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0801af2a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801af2c */ ADDS R0, 0xC6 @ Add 0xC6 to R0 \n\
/* 0801af2e */ LDRB R0, [R0] \n\
/* 0801af30 */ ADDS R1, 0xC6 @ Add 0xC6 to R1 \n\
/* 0801af32 */ STRB R0, [R1] \n\
/* 0801af34 */ LDR R0, [R5] \n\
/* 0801af36 */ ADDS R2, R0, R2 @ Set R2 to R0 + R2 \n\
/* 0801af38 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801af3a */ ADDS R0, 0xC7 @ Add 0xC7 to R0 \n\
/* 0801af3c */ LDRB R0, [R0] \n\
/* 0801af3e */ ADDS R2, 0xC7 @ Add 0xC7 to R2 \n\
/* 0801af40 */ STRB R0, [R2] \n\
/* 0801af42 */ ADDS R4, 0x4 @ Add 0x4 to R4 \n\
/* 0801af44 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0801af46 */ CMP R3, R6 @ Check R3 - R6 \n\
/* 0801af48 */ BCC branch_0801af08 \n\
 \n\
branch_0801af4a: \n\
/* 0801af4a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0801af4c */ LDR R1, [R0] \n\
/* 0801af4e */ ADDS R1, 0xC2 @ Add 0xC2 to R1 \n\
/* 0801af50 */ LDRB R0, [R1] \n\
/* 0801af52 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0801af54 */ STRB R0, [R1] \n\
/* 0801af56 */ POP {R3} \n\
/* 0801af58 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801af5a */ POP {R4-R7} \n\
/* 0801af5c */ POP {R0} \n\
/* 0801af5e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
