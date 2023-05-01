asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025538 \n\
/* 08025538 */ PUSH {LR} \n\
/* 0802553a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802553c */ BL func_0800c604 \n\
/* 08025540 */ LDR R0, =gCurrentEngineData \n\
/* 08025542 */ LDR R1, [R0] \n\
/* 08025544 */ LDR R0, =0x000013f9 \n\
/* 08025546 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08025548 */ LDRB R0, [R1] \n\
/* 0802554a */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802554c */ STRB R0, [R1] \n\
/* 0802554e */ POP {R0} \n\
/* 08025550 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
