asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036b48 \n\
/* 08036b48 */ PUSH {R4, R5, LR} \n\
/* 08036b4a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08036b4c */ BL func_08036604 \n\
/* 08036b50 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08036b52 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08036b54 */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 08036b56 */ ASRS R1, R1, 0x4 \n\
/* 08036b58 */ LDRB R0, [R4] \n\
/* 08036b5a */ LSRS R0, R0, 0x7 \n\
/* 08036b5c */ BL func_08036428 \n\
/* 08036b60 */ LSLS R0, R0, 0x4 \n\
/* 08036b62 */ ADDS R1, R5, R0 @ Set R1 to R5 + R0 \n\
/* 08036b64 */ LSRS R2, R1, 0x1F \n\
/* 08036b66 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08036b68 */ ASRS R1, R1, 0x1 \n\
/* 08036b6a */ STR R1, [R4, 0x18] \n\
/* 08036b6c */ LDR R1, [R4, 0x10] \n\
/* 08036b6e */ STR R1, [R4, 0x1C] \n\
/* 08036b70 */ SUBS R0, R0, R5 @ Set R0 to R0 - R5 \n\
/* 08036b72 */ LSRS R1, R0, 0x1F \n\
/* 08036b74 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08036b76 */ ASRS R0, R0, 0x1 \n\
/* 08036b78 */ STR R0, [R4, 0x20] \n\
/* 08036b7a */ LSLS R1, R0, 0x1 \n\
/* 08036b7c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08036b7e */ STR R1, [R4, 0x24] \n\
/* 08036b80 */ LDRB R1, [R4] \n\
/* 08036b82 */ MOVS R0, 0x71 @ Set R0 to 0x71 \n\
/* 08036b84 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08036b86 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08036b88 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08036b8a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08036b8c */ STRB R0, [R4] \n\
/* 08036b8e */ POP {R4, R5} \n\
/* 08036b90 */ POP {R0} \n\
/* 08036b92 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
