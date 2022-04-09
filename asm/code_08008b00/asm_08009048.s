asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009048 \n\
/* 08009048 */ PUSH {R4, LR} \n\
/* 0800904a */ SUB SP, 0x4 \n\
/* 0800904c */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0800904e */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 08009050 */ LSLS R2, R2, 0x14 \n\
/* 08009052 */ MOVS R1, 0xFF @ Set R1 to 0xFF \n\
/* 08009054 */ STRB R1, [R2] \n\
/* 08009056 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08009058 */ STRB R1, [R2] \n\
/* 0800905a */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0800905c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800905e */ STRB R1, [R2] \n\
/* 08009060 */ STRB R0, [R2] \n\
/* 08009062 */ LSRS R0, R0, 0x8 \n\
/* 08009064 */ STRB R0, [R2] \n\
/* 08009066 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08009068 */ LDR R3, =0x20f \n\
/* 0800906a */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
 \n\
branch_0800906c: \n\
/* 0800906c */ ADDS R0, R4, R1 @ Set R0 to R4 + R1 \n\
/* 0800906e */ LDRB R0, [R0] \n\
/* 08009070 */ STRB R0, [R2] \n\
/* 08009072 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08009074 */ CMP R1, R3 @ Check R1 - R3 \n\
/* 08009076 */ BLS branch_0800906c \n\
/* 08009078 */ MOVS R0, 0xE0 @ Set R0 to 0xE0 \n\
/* 0800907a */ LSLS R0, R0, 0x14 \n\
/* 0800907c */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0800907e */ STRB R1, [R0] \n\
/* 08009080 */ BL func_08008f1c \n\
/* 08009084 */ ADD SP, 0x4 \n\
/* 08009086 */ POP {R4} \n\
/* 08009088 */ POP {R1} \n\
/* 0800908a */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
