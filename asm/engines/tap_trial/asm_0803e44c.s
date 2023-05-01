asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e44c \n\
/* 0803e44c */ PUSH {LR} \n\
/* 0803e44e */ LDR R3, =gCurrentEngineData \n\
/* 0803e450 */ LDR R0, [R3] \n\
/* 0803e452 */ MOVS R2, 0xE5 @ Set R2 to 0xE5 \n\
/* 0803e454 */ LSLS R2, R2, 0x2 \n\
/* 0803e456 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0803e458 */ LDRB R0, [R1] \n\
/* 0803e45a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e45c */ BEQ branch_0803e47a \n\
/* 0803e45e */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0803e460 */ STRB R0, [R1] \n\
/* 0803e462 */ LDR R2, =D_03004b10 \n\
/* 0803e464 */ LDR R1, =D_089e8068 \n\
/* 0803e466 */ LDR R0, [R3] \n\
/* 0803e468 */ MOVS R3, 0xE5 @ Set R3 to 0xE5 \n\
/* 0803e46a */ LSLS R3, R3, 0x2 \n\
/* 0803e46c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803e46e */ LDRB R0, [R0] \n\
/* 0803e470 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803e472 */ LDRB R0, [R0] \n\
/* 0803e474 */ LSLS R0, R0, 0x18 \n\
/* 0803e476 */ ASRS R0, R0, 0x18 \n\
/* 0803e478 */ STRH R0, [R2, 0x12] \n\
 \n\
branch_0803e47a: \n\
/* 0803e47a */ POP {R0} \n\
/* 0803e47c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
