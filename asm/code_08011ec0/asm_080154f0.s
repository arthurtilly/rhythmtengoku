asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080154f0 \n\
/* 080154f0 */ PUSH {R4-R7, LR} \n\
/* 080154f2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080154f4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080154f6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080154f8 */ PUSH {R5-R7} \n\
/* 080154fa */ SUB SP, 0x18 \n\
/* 080154fc */ LDR R0, =D_030046a4 \n\
/* 080154fe */ LDR R0, [R0] \n\
/* 08015500 */ MOVS R1, 0xCB @ Set R1 to 0xCB \n\
/* 08015502 */ LSLS R1, R1, 0x2 \n\
/* 08015504 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08015506 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08015508 */ LDR R6, =(D_03004b10 + 0x10) \n\
/* 0801550a */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0801550c */ LDR R5, =D_03005380 \n\
/* 0801550e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08015510 */ LDR R2, =0x32e \n\
/* 08015512 */ ADDS R2, R0, R2 @ Set R2 to R0 + R2 \n\
/* 08015514 */ STR R2, [SP, 0x14] \n\
/* 08015516 */ ADDS R3, R6, 0x2 @ Set R3 to R6 + 0x2 \n\
/* 08015518 */ MOV R10, R3 @ Set R10 to R3 \n\
 \n\
branch_0801551a: \n\
/* 0801551a */ LDR R0, [R5] \n\
/* 0801551c */ LSLS R1, R7, 0x3 \n\
/* 0801551e */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 08015520 */ SUBS R3, R3, R1 @ Set R3 to R3 - R1 \n\
/* 08015522 */ LSLS R3, R3, 0x10 \n\
/* 08015524 */ ASRS R3, R3, 0x10 \n\
/* 08015526 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08015528 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0801552a */ STR R1, [SP] \n\
/* 0801552c */ STR R4, [SP, 0x4] \n\
/* 0801552e */ STR R4, [SP, 0x8] \n\
/* 08015530 */ STR R4, [SP, 0xC] \n\
/* 08015532 */ STR R4, [SP, 0x10] \n\
/* 08015534 */ LDR R1, =D_08902b78 \n\
/* 08015536 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08015538 */ BL func_0804d160 \n\
/* 0801553c */ LSLS R2, R7, 0x1 \n\
/* 0801553e */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08015540 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 08015542 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08015544 */ STRH R0, [R1] \n\
/* 08015546 */ LDR R0, [R5] \n\
/* 08015548 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801554a */ LDRSH R1, [R1, R2] \n\
/* 0801554c */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0801554e */ ADDS R3, R6, 0x2 @ Set R3 to R6 + 0x2 \n\
/* 08015550 */ BL func_0804db44 \n\
/* 08015554 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08015556 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 08015558 */ BLS branch_0801551a \n\
/* 0801555a */ LDR R5, =D_03005380 \n\
/* 0801555c */ LDR R0, [R5] \n\
/* 0801555e */ LDR R1, =D_08902bd8 \n\
/* 08015560 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08015562 */ STR R3, [SP] \n\
/* 08015564 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08015566 */ STR R4, [SP, 0x4] \n\
/* 08015568 */ STR R4, [SP, 0x8] \n\
/* 0801556a */ STR R4, [SP, 0xC] \n\
/* 0801556c */ STR R4, [SP, 0x10] \n\
/* 0801556e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08015570 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08015572 */ BL func_0804d160 \n\
/* 08015576 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08015578 */ STRH R0, [R1] \n\
/* 0801557a */ LDR R0, [R5] \n\
/* 0801557c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801557e */ LDRSH R1, [R1, R2] \n\
/* 08015580 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08015582 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 08015584 */ BL func_0804db44 \n\
/* 08015588 */ LDR R0, [R5] \n\
/* 0801558a */ LDR R1, =D_08902bf0 \n\
/* 0801558c */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0801558e */ STR R3, [SP] \n\
/* 08015590 */ STR R4, [SP, 0x4] \n\
/* 08015592 */ STR R4, [SP, 0x8] \n\
/* 08015594 */ STR R4, [SP, 0xC] \n\
/* 08015596 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08015598 */ LSLS R2, R2, 0x8 \n\
/* 0801559a */ STR R2, [SP, 0x10] \n\
/* 0801559c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801559e */ MOVS R3, 0xE0 @ Set R3 to 0xE0 \n\
/* 080155a0 */ BL func_0804d160 \n\
/* 080155a4 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080155a6 */ STRH R0, [R1, 0x8] \n\
/* 080155a8 */ LDR R0, [R5] \n\
/* 080155aa */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 080155ac */ LDRSH R1, [R1, R2] \n\
/* 080155ae */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 080155b0 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080155b2 */ BL func_0804db44 \n\
/* 080155b6 */ BL func_080153a8 \n\
/* 080155ba */ MOV R10, R0 @ Set R10 to R0 \n\
/* 080155bc */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080155be */ LDRH R4, [R3, 0x12] \n\
/* 080155c0 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080155c2 */ BEQ branch_08015622 \n\
/* 080155c4 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 080155c6 */ LDR R0, [SP, 0x14] \n\
/* 080155c8 */ MOV R8, R0 @ Set R8 to R0 \n\
 \n\
branch_080155ca: \n\
/* 080155ca */ LDR R0, =D_03005380 \n\
/* 080155cc */ LDR R5, [R0] \n\
/* 080155ce */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080155d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080155d2 */ LDRSH R6, [R1, R2] \n\
/* 080155d4 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080155d6 */ BEQ branch_08015604 \n\
/* 080155d8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080155da */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 080155dc */ BL __umodsi3 \n\
/* 080155e0 */ LSLS R0, R0, 0x18 \n\
/* 080155e2 */ ASRS R2, R0, 0x18 \n\
/* 080155e4 */ B branch_08015606 \n\
\n\
.ltorg \n\
\n\
branch_08015604: \n\
/* 08015604 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
 \n\
branch_08015606: \n\
/* 08015606 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08015608 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0801560a */ BL func_0804cebc \n\
/* 0801560e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08015610 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08015612 */ BL __udivsi3 \n\
/* 08015616 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08015618 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0801561a */ ADD R8, R3 @ Add R3 to R8 \n\
/* 0801561c */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0801561e */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 08015620 */ BLS branch_080155ca \n\
 \n\
branch_08015622: \n\
/* 08015622 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08015624 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08015626 */ LDRH R0, [R2, 0x10] \n\
/* 08015628 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801562a */ BEQ branch_08015634 \n\
/* 0801562c */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0801562e */ NEGS R0, R3 @ Set R0 to -R3 \n\
/* 08015630 */ ORRS R0, R3 @ Set R0 to R0 | R3 \n\
/* 08015632 */ LSRS R1, R0, 0x1F \n\
 \n\
branch_08015634: \n\
/* 08015634 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08015636 */ STRB R1, [R0, 0xA] \n\
/* 08015638 */ MOVS R0, 0x3C @ Set R0 to 0x3C \n\
/* 0801563a */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0801563c */ STRH R0, [R1, 0xC] \n\
/* 0801563e */ LDR R0, =D_030046a8 \n\
/* 08015640 */ LDR R0, [R0] \n\
/* 08015642 */ LDRB R0, [R0, 0x15] \n\
/* 08015644 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08015646 */ BEQ branch_0801564c \n\
/* 08015648 */ MOVS R0, 0xB4 @ Set R0 to 0xB4 \n\
/* 0801564a */ STRH R0, [R1, 0xC] \n\
 \n\
branch_0801564c: \n\
/* 0801564c */ ADD SP, 0x18 \n\
/* 0801564e */ POP {R3-R5} \n\
/* 08015650 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08015652 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08015654 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08015656 */ POP {R4-R7} \n\
/* 08015658 */ POP {R0} \n\
/* 0801565a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
