asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025460 \n\
/* 08025460 */ PUSH {R4-R6, LR} \n\
/* 08025462 */ SUB SP, 0x4 \n\
/* 08025464 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08025466 */ LDR R4, =gCurrentEngineData \n\
/* 08025468 */ LDR R3, =0x000013fb \n\
 \n\
branch_0802546a: \n\
/* 0802546a */ LDR R0, [R4] \n\
/* 0802546c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802546e */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08025470 */ LDRB R0, [R1] \n\
/* 08025472 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08025474 */ BEQ branch_0802547a \n\
/* 08025476 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08025478 */ STRB R0, [R1] \n\
 \n\
branch_0802547a: \n\
/* 0802547a */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0802547c */ CMP R2, 0x3 @ Compare R2 and 0x3 \n\
/* 0802547e */ BLS branch_0802546a \n\
/* 08025480 */ LDR R6, =gCurrentEngineData \n\
/* 08025482 */ LDR R1, [R6] \n\
/* 08025484 */ LDR R2, =0x000013f9 \n\
/* 08025486 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08025488 */ LDRB R0, [R0] \n\
/* 0802548a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802548c */ BNE branch_080254b8 \n\
/* 0802548e */ LDR R3, =0x0000141c \n\
/* 08025490 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08025492 */ LDR R4, =(D_03004b10 + 0x54) \n\
/* 08025494 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 08025496 */ LSLS R5, R5, 0x2 \n\
/* 08025498 */ STR R5, [SP] \n\
/* 0802549a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802549c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802549e */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080254a0 */ BL dma3_set \n\
/* 080254a4 */ LDR R0, [R6] \n\
/* 080254a6 */ LDR R1, =0x0000149c \n\
/* 080254a8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080254aa */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 080254ac */ STR R5, [SP] \n\
/* 080254ae */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080254b0 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080254b2 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080254b4 */ BL dma3_set \n\
 \n\
branch_080254b8: \n\
/* 080254b8 */ LDR R2, [R6] \n\
/* 080254ba */ LDR R3, =0x00001416 \n\
/* 080254bc */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 080254be */ LDRH R0, [R1] \n\
/* 080254c0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080254c2 */ BEQ branch_080254da \n\
/* 080254c4 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080254c6 */ STRH R0, [R1] \n\
/* 080254c8 */ LSLS R0, R0, 0x10 \n\
/* 080254ca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080254cc */ BNE branch_080254da \n\
/* 080254ce */ LDR R1, =0x00001415 \n\
/* 080254d0 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 080254d2 */ LDRB R1, [R0] \n\
/* 080254d4 */ SUBS R3, 0x2 @ Subtract 0x2 from R3 \n\
/* 080254d6 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 080254d8 */ STRB R1, [R0] \n\
 \n\
branch_080254da: \n\
/* 080254da */ LDR R5, =gCurrentEngineData \n\
/* 080254dc */ LDR R1, [R5] \n\
/* 080254de */ LDR R4, =0x0000140c \n\
/* 080254e0 */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
/* 080254e2 */ LDR R2, =0x00001410 \n\
/* 080254e4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080254e6 */ LDR R0, [R0] \n\
/* 080254e8 */ LDR R1, [R1] \n\
/* 080254ea */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080254ec */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080254ee */ LSLS R2, R2, 0x5 \n\
/* 080254f0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080254f2 */ BL clamp_int32 \n\
/* 080254f6 */ LDR R1, [R5] \n\
/* 080254f8 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 080254fa */ STR R0, [R1] \n\
/* 080254fc */ LDR R1, =D_03004b10 \n\
/* 080254fe */ ASRS R0, R0, 0x8 \n\
/* 08025500 */ ADDS R1, 0x50 @ Add 0x50 to R1 \n\
/* 08025502 */ STRH R0, [R1] \n\
/* 08025504 */ ADD SP, 0x4 \n\
/* 08025506 */ POP {R4-R6} \n\
/* 08025508 */ POP {R0} \n\
/* 0802550a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
