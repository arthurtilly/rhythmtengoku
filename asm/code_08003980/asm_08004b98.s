asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004b98 \n\
/* 08004b98 */ PUSH {R4-R7, LR} \n\
/* 08004b9a */ SUB SP, 0x8 \n\
/* 08004b9c */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08004b9e */ STR R3, [SP] \n\
/* 08004ba0 */ ADD R2, SP, 0x4 \n\
/* 08004ba2 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 08004ba4 */ BL func_080049f0 \n\
/* 08004ba8 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08004baa */ LDR R0, [SP, 0x4] \n\
/* 08004bac */ LSRS R0, R0, 0x1 \n\
/* 08004bae */ STR R0, [SP, 0x4] \n\
/* 08004bb0 */ LDR R5, [R6] \n\
/* 08004bb2 */ ADDS R3, R5, 0x2 @ Set R3 to R5 + 0x2 \n\
/* 08004bb4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08004bb6 */ LDRH R0, [R5] \n\
/* 08004bb8 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08004bba */ BCS branch_08004be8 \n\
/* 08004bbc */ LDR R0, =0x1ff \n\
/* 08004bbe */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08004bc0 */ LDR R0, =0xfffffe00 \n\
/* 08004bc2 */ MOV R12, R0 @ Set R12 to R0 \n\
 \n\
branch_08004bc4: \n\
/* 08004bc4 */ LDRH R2, [R3, 0x2] \n\
/* 08004bc6 */ LSLS R1, R2, 0x17 \n\
/* 08004bc8 */ LSRS R1, R1, 0x17 \n\
/* 08004bca */ LDR R0, [SP, 0x4] \n\
/* 08004bcc */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08004bce */ ANDS R1, R7 @ Set R1 to R1 & R7 \n\
/* 08004bd0 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08004bd2 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08004bd4 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08004bd6 */ STRH R0, [R3, 0x2] \n\
/* 08004bd8 */ LDRB R0, [R3] \n\
/* 08004bda */ SUBS R0, 0x8 @ Subtract 0x8 from R0 \n\
/* 08004bdc */ STRB R0, [R3] \n\
/* 08004bde */ ADDS R3, 0x6 @ Add 0x6 to R3 \n\
/* 08004be0 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08004be2 */ LDRH R0, [R5] \n\
/* 08004be4 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08004be6 */ BCC branch_08004bc4 \n\
 \n\
branch_08004be8: \n\
/* 08004be8 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08004bea */ ADD SP, 0x8 \n\
/* 08004bec */ POP {R4-R7} \n\
/* 08004bee */ POP {R1} \n\
/* 08004bf0 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
