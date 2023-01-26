asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08014504 \n\
/* 08014504 */ PUSH {R4-R7, LR} \n\
/* 08014506 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08014508 */ PUSH {R7} \n\
/* 0801450a */ SUB SP, 0x4 \n\
/* 0801450c */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801450e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014510 */ BNE branch_08014514 \n\
/* 08014512 */ B branch_08014612 \n\
 \n\
branch_08014514: \n\
/* 08014514 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08014516 */ LDRSB R1, [R0, R1] \n\
/* 08014518 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801451a */ BGE branch_0801451e \n\
/* 0801451c */ B branch_08014612 \n\
 \n\
branch_0801451e: \n\
/* 0801451e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08014520 */ LDRSB R1, [R0, R1] \n\
/* 08014522 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08014524 */ BLT branch_08014612 \n\
 \n\
branch_08014526: \n\
/* 08014526 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08014528 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801452a */ LDRSB R5, [R0, R5] \n\
/* 0801452c */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 0801452e */ LDRSB R6, [R0, R6] \n\
/* 08014530 */ LSLS R2, R5, 0x2 \n\
/* 08014532 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 08014534 */ LSLS R2, R2, 0x2 \n\
/* 08014536 */ LSLS R1, R6, 0x2 \n\
/* 08014538 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0801453a */ LSLS R0, R1, 0x4 \n\
/* 0801453c */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0801453e */ LSLS R0, R0, 0x2 \n\
/* 08014540 */ LDR R1, =D_089ceafc \n\
/* 08014542 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08014544 */ ADDS R7, R2, R0 @ Set R7 to R2 + R0 \n\
/* 08014546 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08014548 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0801454a */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0801454c */ BL func_080142e8 \n\
/* 08014550 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014552 */ BEQ branch_080145a8 \n\
/* 08014554 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08014556 */ LDRB R1, [R7, 0x10] \n\
/* 08014558 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0801455a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801455c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801455e */ BEQ branch_08014562 \n\
/* 08014560 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
 \n\
branch_08014562: \n\
/* 08014562 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08014564 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08014566 */ BL func_080141f8 \n\
/* 0801456a */ LDRB R3, [R7, 0x10] \n\
/* 0801456c */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0801456e */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 08014570 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08014572 */ BEQ branch_080145fc \n\
/* 08014574 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08014576 */ ANDS R2, R3 @ Set R2 to R2 & R3 \n\
/* 08014578 */ LSLS R2, R2, 0x18 \n\
/* 0801457a */ LSRS R2, R2, 0x18 \n\
/* 0801457c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801457e */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08014580 */ MOVS R3, 0xF0 @ Set R3 to 0xF0 \n\
/* 08014582 */ BL func_08014488 \n\
/* 08014586 */ LDR R1, =D_030046a4 \n\
/* 08014588 */ LDR R1, [R1] \n\
/* 0801458a */ LDR R3, =0x2d9 \n\
/* 0801458c */ ADDS R2, R1, R3 @ Set R2 to R1 + R3 \n\
/* 0801458e */ LDRB R1, [R2] \n\
/* 08014590 */ CMP R1, 0x59 @ Compare R1 and 0x59 \n\
/* 08014592 */ BHI branch_080145fc \n\
/* 08014594 */ MOVS R1, 0x5A @ Set R1 to 0x5A \n\
/* 08014596 */ STRB R1, [R2] \n\
/* 08014598 */ B branch_080145fc \n\
\n\
.ltorg \n\
 \n\
branch_080145a8: \n\
/* 080145a8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080145aa */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080145ac */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080145ae */ BL func_080142e8 \n\
/* 080145b2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080145b4 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080145b6 */ BEQ branch_080145fc \n\
/* 080145b8 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 080145ba */ LSLS R3, R3, 0x2 \n\
/* 080145bc */ ORRS R3, R5 @ Set R3 to R3 | R5 \n\
/* 080145be */ LSLS R3, R3, 0x8 \n\
/* 080145c0 */ ORRS R3, R6 @ Set R3 to R3 | R6 \n\
/* 080145c2 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080145c4 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080145c6 */ LDRB R4, [R7, 0x11] \n\
/* 080145c8 */ LSLS R2, R4, 0x1 \n\
/* 080145ca */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 080145cc */ LSLS R2, R2, 0x1 \n\
/* 080145ce */ STR R2, [SP] \n\
/* 080145d0 */ LDR R2, =func_0801446c \n\
/* 080145d2 */ BL func_08016058 \n\
/* 080145d6 */ LDRB R1, [R7, 0x10] \n\
/* 080145d8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080145da */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080145dc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080145de */ BEQ branch_080145f2 \n\
/* 080145e0 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080145e2 */ ANDS R2, R1 @ Set R2 to R2 & R1 \n\
/* 080145e4 */ LSLS R2, R2, 0x18 \n\
/* 080145e6 */ LSRS R2, R2, 0x18 \n\
/* 080145e8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080145ea */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080145ec */ MOVS R3, 0xFA @ Set R3 to 0xFA \n\
/* 080145ee */ BL func_08014488 \n\
 \n\
branch_080145f2: \n\
/* 080145f2 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080145f4 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080145f6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080145f8 */ BL func_08013348 \n\
 \n\
branch_080145fc: \n\
/* 080145fc */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080145fe */ ADD R8, R1 @ Add R1 to R8 \n\
/* 08014600 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08014602 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08014604 */ LDRSB R1, [R2, R1] \n\
/* 08014606 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08014608 */ BLT branch_08014612 \n\
/* 0801460a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801460c */ LDRSB R1, [R2, R1] \n\
/* 0801460e */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08014610 */ BGE branch_08014526 \n\
 \n\
branch_08014612: \n\
/* 08014612 */ ADD SP, 0x4 \n\
/* 08014614 */ POP {R3} \n\
/* 08014616 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08014618 */ POP {R4-R7} \n\
/* 0801461a */ POP {R1} \n\
/* 0801461c */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
