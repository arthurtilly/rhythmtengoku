asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08012fcc \n\
/* 08012fcc */ PUSH {R4-R7, LR} \n\
/* 08012fce */ SUB SP, 0x10 \n\
/* 08012fd0 */ LDR R2, =D_030046a4 \n\
/* 08012fd2 */ LDR R5, [R2] \n\
/* 08012fd4 */ MOVS R2, 0xD0 @ Set R2 to 0xD0 \n\
/* 08012fd6 */ LSLS R2, R2, 0x2 \n\
/* 08012fd8 */ ADDS R5, R5, R2 @ Set R5 to R5 + R2 \n\
/* 08012fda */ MOV R6, SP @ Set R6 to SP \n\
/* 08012fdc */ ADDS R6, 0xE @ Add 0xE to R6 \n\
/* 08012fde */ ADD R2, SP, 0xC \n\
/* 08012fe0 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 08012fe2 */ BL func_0801332c \n\
/* 08012fe6 */ ADD R1, SP, 0xC \n\
/* 08012fe8 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08012fea */ LDRH R0, [R0] \n\
/* 08012fec */ ADDS R0, 0x2F @ Add 0x2F to R0 \n\
/* 08012fee */ STRH R0, [R1] \n\
/* 08012ff0 */ LDRH R0, [R6] \n\
/* 08012ff2 */ ADDS R0, 0x44 @ Add 0x44 to R0 \n\
/* 08012ff4 */ STRH R0, [R6] \n\
/* 08012ff6 */ LDR R4, =D_089ce0a4 \n\
/* 08012ff8 */ LDR R0, =D_030046a8 \n\
/* 08012ffa */ LDR R0, [R0] \n\
/* 08012ffc */ LDR R3, =0x277 \n\
/* 08012ffe */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08013000 */ LDRB R0, [R0] \n\
/* 08013002 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08013004 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08013006 */ BL func_080087d4 \n\
/* 0801300a */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0801300c */ LSLS R0, R0, 0x2 \n\
/* 0801300e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08013010 */ LDR R4, =D_03005380 \n\
/* 08013012 */ LDR R3, [R4] \n\
/* 08013014 */ MOVS R7, 0x6 @ Set R7 to 0x6 \n\
/* 08013016 */ LDRSH R1, [R5, R7] \n\
/* 08013018 */ LDR R2, [R0] \n\
/* 0801301a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801301c */ STR R0, [SP] \n\
/* 0801301e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013020 */ STR R0, [SP, 0x4] \n\
/* 08013022 */ STR R0, [SP, 0x8] \n\
/* 08013024 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08013026 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08013028 */ BL func_0804d8f8 \n\
/* 0801302c */ LDR R0, [R4] \n\
/* 0801302e */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08013030 */ LDRSH R1, [R5, R2] \n\
/* 08013032 */ ADD R2, SP, 0xC \n\
/* 08013034 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08013036 */ LDRSH R2, [R2, R3] \n\
/* 08013038 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0801303a */ LDRSH R3, [R6, R7] \n\
/* 0801303c */ BL func_0804d5d4 \n\
/* 08013040 */ LDR R0, [R4] \n\
/* 08013042 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08013044 */ LDRSH R1, [R5, R2] \n\
/* 08013046 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08013048 */ BL func_0804d770 \n\
/* 0801304c */ ADD SP, 0x10 \n\
/* 0801304e */ POP {R4-R7} \n\
/* 08013050 */ POP {R0} \n\
/* 08013052 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
