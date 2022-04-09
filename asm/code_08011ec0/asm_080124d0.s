asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080124d0 \n\
/* 080124d0 */ PUSH {R4-R7, LR} \n\
/* 080124d2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080124d4 */ PUSH {R7} \n\
/* 080124d6 */ SUB SP, 0x14 \n\
/* 080124d8 */ BL func_0800061c \n\
/* 080124dc */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080124de */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080124e0 */ BL func_08007324 \n\
/* 080124e4 */ BL func_080073f0 \n\
/* 080124e8 */ BL func_0800c3b8 \n\
/* 080124ec */ LSLS R0, R0, 0x10 \n\
/* 080124ee */ LSRS R0, R0, 0x10 \n\
/* 080124f0 */ LDR R1, =D_089de670 \n\
/* 080124f2 */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 080124f4 */ LSLS R3, R3, 0x2 \n\
/* 080124f6 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 080124f8 */ STR R2, [SP] \n\
/* 080124fa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080124fc */ BL func_08005124 \n\
/* 08012500 */ LDR R4, =D_030046a4 \n\
/* 08012502 */ LDR R1, [R4] \n\
/* 08012504 */ STR R0, [R1] \n\
/* 08012506 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 08012508 */ LSLS R0, R0, 0x2 \n\
/* 0801250a */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0801250c */ BL func_0800c660 \n\
/* 08012510 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08012512 */ LDR R0, [R4] \n\
/* 08012514 */ STR R1, [R0, 0x4] \n\
/* 08012516 */ LDR R4, =D_03005380 \n\
/* 08012518 */ LDR R0, [R4] \n\
/* 0801251a */ LDR R2, =D_089cdc40 \n\
/* 0801251c */ LDR R3, =D_0300558c \n\
/* 0801251e */ LDR R3, [R3] \n\
/* 08012520 */ BL func_08005814 \n\
/* 08012524 */ BL func_08012494 \n\
/* 08012528 */ LDR R0, [R4] \n\
/* 0801252a */ LDR R1, =D_0890a3c4 \n\
/* 0801252c */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0801252e */ STR R2, [SP] \n\
/* 08012530 */ MOVS R2, 0x6E @ Set R2 to 0x6E \n\
/* 08012532 */ STR R2, [SP, 0x4] \n\
/* 08012534 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08012536 */ STR R2, [SP, 0x8] \n\
/* 08012538 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801253a */ STR R2, [SP, 0xC] \n\
/* 0801253c */ STR R2, [SP, 0x10] \n\
/* 0801253e */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08012540 */ BL func_0804d160 \n\
/* 08012544 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08012546 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08012548 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0801254a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0801254c: \n\
/* 0801254c */ LDR R0, =D_030055d8 \n\
/* 0801254e */ LDRB R0, [R0] \n\
/* 08012550 */ LSLS R0, R0, 0x18 \n\
/* 08012552 */ ASRS R0, R0, 0x18 \n\
/* 08012554 */ CMP R7, R0 @ Check R7 - R0 \n\
/* 08012556 */ BNE branch_08012580 \n\
/* 08012558 */ LDR R0, =D_03005380 \n\
/* 0801255a */ LDR R0, [R0] \n\
/* 0801255c */ LDR R1, =D_089cdc90 \n\
/* 0801255e */ B branch_08012586 \n\
\n\
.ltorg \n\
 \n\
branch_08012580: \n\
/* 08012580 */ LDR R0, =D_03005380 \n\
/* 08012582 */ LDR R0, [R0] \n\
/* 08012584 */ LDR R1, =D_089cdca4 \n\
 \n\
branch_08012586: \n\
/* 08012586 */ ADDS R1, R4, R1 @ Set R1 to R4 + R1 \n\
/* 08012588 */ LDR R1, [R1] \n\
/* 0801258a */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0801258c */ STR R2, [SP] \n\
/* 0801258e */ MOVS R2, 0x64 @ Set R2 to 0x64 \n\
/* 08012590 */ STR R2, [SP, 0x4] \n\
/* 08012592 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08012594 */ STR R2, [SP, 0x8] \n\
/* 08012596 */ STR R5, [SP, 0xC] \n\
/* 08012598 */ STR R5, [SP, 0x10] \n\
/* 0801259a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801259c */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0801259e */ BL func_0804d160 \n\
/* 080125a2 */ LDR R1, =D_030046a4 \n\
/* 080125a4 */ LDR R1, [R1] \n\
/* 080125a6 */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 080125a8 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 080125aa */ STRH R0, [R1] \n\
/* 080125ac */ ADDS R6, 0x2 @ Add 0x2 to R6 \n\
/* 080125ae */ ADDS R4, 0x4 @ Add 0x4 to R4 \n\
/* 080125b0 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 080125b2 */ CMP R7, 0x4 @ Compare R7 and 0x4 \n\
/* 080125b4 */ BLS branch_0801254c \n\
/* 080125b6 */ LDR R2, =D_030046a4 \n\
/* 080125b8 */ LDR R1, [R2] \n\
/* 080125ba */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080125bc */ STR R0, [R1, 0x8] \n\
/* 080125be */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080125c0 */ STRH R0, [R1, 0x18] \n\
/* 080125c2 */ STRH R0, [R1, 0x16] \n\
/* 080125c4 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 080125c6 */ NEGS R0, R4 @ Set R0 to -R4 \n\
/* 080125c8 */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 080125ca */ LSRS R0, R0, 0x1F \n\
/* 080125cc */ STRB R0, [R1, 0x1A] \n\
/* 080125ce */ LDR R0, [R2] \n\
/* 080125d0 */ STRB R3, [R0, 0x1B] \n\
/* 080125d2 */ LDR R0, =D_089ddbcc \n\
/* 080125d4 */ BL func_08000584 \n\
/* 080125d8 */ BL func_080009a0 \n\
/* 080125dc */ ADD SP, 0x14 \n\
/* 080125de */ POP {R3} \n\
/* 080125e0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080125e2 */ POP {R4-R7} \n\
/* 080125e4 */ POP {R0} \n\
/* 080125e6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
