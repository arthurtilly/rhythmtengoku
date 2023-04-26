asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080346b0 \n\
/* 080346b0 */ PUSH {R4-R6, LR} \n\
/* 080346b2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080346b4 */ LDR R6, =gCurrentEngineData \n\
/* 080346b6 */ MOVS R4, 0x8 @ Set R4 to 0x8 \n\
 \n\
branch_080346b8: \n\
/* 080346b8 */ LDR R0, [R6] \n\
/* 080346ba */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080346bc */ BL func_080345cc \n\
/* 080346c0 */ ADDS R4, 0xC @ Add 0xC to R4 \n\
/* 080346c2 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 080346c4 */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 080346c6 */ BLS branch_080346b8 \n\
/* 080346c8 */ LDR R0, =gCurrentEngineData \n\
/* 080346ca */ LDR R1, [R0] \n\
/* 080346cc */ LDRH R0, [R1, 0x3A] \n\
/* 080346ce */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080346d0 */ BEQ branch_080346d6 \n\
/* 080346d2 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080346d4 */ STRH R0, [R1, 0x3A] \n\
 \n\
branch_080346d6: \n\
/* 080346d6 */ POP {R4-R6} \n\
/* 080346d8 */ POP {R0} \n\
/* 080346da */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
