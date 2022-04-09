asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008328 \n\
/* 08008328 */ PUSH {R4-R7, LR} \n\
/* 0800832a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800832c */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0800832e */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 08008330 */ LSLS R0, R7, 0x1 \n\
/* 08008332 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08008334 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08008336 */ STRB R0, [R4] \n\
/* 08008338 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800833a */ CMP R6, R7 @ Check R6 - R7 \n\
/* 0800833c */ BCS branch_08008366 \n\
 \n\
branch_0800833e: \n\
/* 0800833e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08008340 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08008342 */ BL __umodsi3 \n\
/* 08008346 */ LSLS R0, R0, 0x1 \n\
/* 08008348 */ LDR R1, =D_08936c64 \n\
/* 0800834a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800834c */ SUBS R4, 0x2 @ Subtract 0x2 from R4 \n\
/* 0800834e */ LDRB R1, [R0] \n\
/* 08008350 */ STRB R1, [R4] \n\
/* 08008352 */ LDRB R0, [R0, 0x1] \n\
/* 08008354 */ STRB R0, [R4, 0x1] \n\
/* 08008356 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08008358 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0800835a */ BL __udivsi3 \n\
/* 0800835e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08008360 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 08008362 */ CMP R6, R7 @ Check R6 - R7 \n\
/* 08008364 */ BCC branch_0800833e \n\
 \n\
branch_08008366: \n\
/* 08008366 */ POP {R4-R7} \n\
/* 08008368 */ POP {R0} \n\
/* 0800836a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
