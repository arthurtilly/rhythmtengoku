asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080229bc \n\
/* 080229bc */ PUSH {R4-R6, LR} \n\
/* 080229be */ LDR R1, =gCurrentEngineData \n\
/* 080229c0 */ LDR R0, [R1] \n\
/* 080229c2 */ LDR R2, =0x0000040c \n\
/* 080229c4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080229c6 */ LDRB R0, [R0] \n\
/* 080229c8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080229ca */ BNE branch_080229e2 \n\
/* 080229cc */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080229ce */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 080229d0 */ MOVS R4, 0x14 @ Set R4 to 0x14 \n\
 \n\
branch_080229d2: \n\
/* 080229d2 */ LDR R0, [R6] \n\
/* 080229d4 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080229d6 */ BL func_080228d8 \n\
/* 080229da */ ADDS R4, 0x14 @ Add 0x14 to R4 \n\
/* 080229dc */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 080229de */ CMP R5, 0x5 @ Compare R5 and 0x5 \n\
/* 080229e0 */ BLS branch_080229d2 \n\
 \n\
branch_080229e2: \n\
/* 080229e2 */ POP {R4-R6} \n\
/* 080229e4 */ POP {R0} \n\
/* 080229e6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
