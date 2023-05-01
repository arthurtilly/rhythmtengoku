asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080384b8 \n\
/* 080384b8 */ PUSH {R4, R5, LR} \n\
/* 080384ba */ LSLS R0, R0, 0x18 \n\
/* 080384bc */ LSRS R0, R0, 0x18 \n\
/* 080384be */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080384c0 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 080384c2 */ BNE branch_080384d4 \n\
/* 080384c4 */ LDR R0, =gCurrentEngineData \n\
/* 080384c6 */ LDR R1, [R0] \n\
/* 080384c8 */ ADDS R1, 0xF6 @ Add 0xF6 to R1 \n\
/* 080384ca */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080384cc */ B branch_080384f4 \n\
\n\
.ltorg \n\
 \n\
branch_080384d4: \n\
/* 080384d4 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 080384d6 */ BNE branch_080384e8 \n\
/* 080384d8 */ LDR R0, =gCurrentEngineData \n\
/* 080384da */ LDR R1, [R0] \n\
/* 080384dc */ ADDS R1, 0xF6 @ Add 0xF6 to R1 \n\
/* 080384de */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 080384e0 */ B branch_080384f4 \n\
\n\
.ltorg \n\
 \n\
branch_080384e8: \n\
/* 080384e8 */ CMP R0, 0x6 @ Compare R0 and 0x6 \n\
/* 080384ea */ BNE branch_08038500 \n\
/* 080384ec */ LDR R0, =gCurrentEngineData \n\
/* 080384ee */ LDR R1, [R0] \n\
/* 080384f0 */ ADDS R1, 0xF6 @ Add 0xF6 to R1 \n\
/* 080384f2 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
 \n\
branch_080384f4: \n\
/* 080384f4 */ STRB R2, [R1] \n\
/* 080384f6 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080384f8 */ B branch_0803850e \n\
\n\
.ltorg \n\
 \n\
branch_08038500: \n\
/* 08038500 */ LDR R5, =gCurrentEngineData \n\
/* 08038502 */ CMP R1, 0x8 @ Compare R1 and 0x8 \n\
/* 08038504 */ BNE branch_0803850e \n\
/* 08038506 */ LDR R0, [R5] \n\
/* 08038508 */ ADDS R0, 0xF6 @ Add 0xF6 to R0 \n\
/* 0803850a */ MOVS R1, 0x9 @ Set R1 to 0x9 \n\
/* 0803850c */ STRB R1, [R0] \n\
 \n\
branch_0803850e: \n\
/* 0803850e */ ADDS R4, R5, 0x0 @ Set R4 to R5 + 0x0 \n\
/* 08038510 */ LDR R2, [R4] \n\
/* 08038512 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08038514 */ ADDS R0, 0xF4 @ Add 0xF4 to R0 \n\
/* 08038516 */ LDRB R1, [R0] \n\
/* 08038518 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803851a */ BEQ branch_08038588 \n\
/* 0803851c */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0803851e */ LDRB R0, [R0] \n\
/* 08038520 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08038522 */ BEQ branch_08038588 \n\
/* 08038524 */ CMP R1, 0x3 @ Compare R1 and 0x3 \n\
/* 08038526 */ BEQ branch_0803852c \n\
/* 08038528 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0803852a */ BNE branch_08038538 \n\
 \n\
branch_0803852c: \n\
/* 0803852c */ LDR R0, =s_f_rabbit_miss_seqData \n\
/* 0803852e */ B branch_08038542 \n\
\n\
.ltorg \n\
 \n\
branch_08038538: \n\
/* 08038538 */ CMP R1, 0x2 @ Compare R1 and 0x2 \n\
/* 0803853a */ BEQ branch_08038540 \n\
/* 0803853c */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0803853e */ BNE branch_0803855c \n\
 \n\
branch_08038540: \n\
/* 08038540 */ LDR R0, =s_witch_donats_seqData \n\
 \n\
branch_08038542: \n\
/* 08038542 */ BL play_sound \n\
/* 08038546 */ LDR R0, [R4] \n\
/* 08038548 */ ADDS R0, 0xF6 @ Add 0xF6 to R0 \n\
/* 0803854a */ LDRB R0, [R0] \n\
/* 0803854c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803854e */ BL func_08038fbc \n\
/* 08038552 */ BL func_08038d54 \n\
/* 08038556 */ B branch_08038572 \n\
\n\
.ltorg \n\
 \n\
branch_0803855c: \n\
/* 0803855c */ LDR R0, =s_rabbit_HC_seqData \n\
/* 0803855e */ BL play_sound \n\
/* 08038562 */ LDR R0, [R5] \n\
/* 08038564 */ ADDS R0, 0xF6 @ Add 0xF6 to R0 \n\
/* 08038566 */ LDRB R0, [R0] \n\
/* 08038568 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803856a */ BL func_08038fbc \n\
/* 0803856e */ BL func_08038d54 \n\
 \n\
branch_08038572: \n\
/* 08038572 */ LDR R2, =gCurrentEngineData \n\
/* 08038574 */ LDR R0, [R2] \n\
/* 08038576 */ ADDS R0, 0xF4 @ Add 0xF4 to R0 \n\
/* 08038578 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803857a */ STRB R1, [R0] \n\
/* 0803857c */ LDR R0, [R2] \n\
/* 0803857e */ ADDS R0, 0xF5 @ Add 0xF5 to R0 \n\
/* 08038580 */ STRB R1, [R0] \n\
/* 08038582 */ LDR R0, [R2] \n\
/* 08038584 */ ADDS R0, 0xF6 @ Add 0xF6 to R0 \n\
/* 08038586 */ STRB R1, [R0] \n\
 \n\
branch_08038588: \n\
/* 08038588 */ POP {R4, R5} \n\
/* 0803858a */ POP {R0} \n\
/* 0803858c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
