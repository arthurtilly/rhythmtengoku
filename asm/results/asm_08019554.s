asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019554 \n\
/* 08019554 */ PUSH {R4-R7, LR} \n\
/* 08019556 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08019558 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801955a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801955c */ PUSH {R5-R7} \n\
/* 0801955e */ SUB SP, 0x20 \n\
/* 08019560 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08019562 */ MOVS R5, 0x28 @ Set R5 to 0x28 \n\
/* 08019564 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08019566 */ STR R0, [SP, 0x14] \n\
/* 08019568 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801956a */ STR R1, [SP, 0x18] \n\
/* 0801956c */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0801956e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08019570 */ LDR R0, [R2, 0x4] \n\
/* 08019572 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019574 */ BEQ branch_08019664 \n\
/* 08019576 */ MOV R9, R6 @ Set R9 to R6 \n\
 \n\
branch_08019578: \n\
/* 08019578 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801957a */ LSLS R0, R6, 0x1 \n\
/* 0801957c */ ADDS R1, R0, R6 @ Set R1 to R0 + R6 \n\
/* 0801957e */ LSLS R1, R1, 0x2 \n\
/* 08019580 */ ADD R1, R8 @ Add R8 to R1 \n\
/* 08019582 */ LDR R2, [R1, 0x4] \n\
/* 08019584 */ LDR R1, [R2] \n\
/* 08019586 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08019588 */ LSLS R7, R5, 0x10 \n\
/* 0801958a */ ADDS R5, 0x10 @ Add 0x10 to R5 \n\
/* 0801958c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0801958e */ ADDS R0, R6, 0x1 @ Set R0 to R6 + 0x1 \n\
/* 08019590 */ STR R0, [SP, 0x1C] \n\
/* 08019592 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08019594 */ BEQ branch_080195a2 \n\
/* 08019596 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
 \n\
branch_08019598: \n\
/* 08019598 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 0801959a */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0801959c */ LDR R0, [R1] \n\
/* 0801959e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080195a0 */ BNE branch_08019598 \n\
 \n\
branch_080195a2: \n\
/* 080195a2 */ LDR R1, =D_030046a4 \n\
/* 080195a4 */ LDR R0, [R1] \n\
/* 080195a6 */ LDR R5, [R0, 0x4] \n\
/* 080195a8 */ LSLS R0, R3, 0x10 \n\
/* 080195aa */ LSRS R0, R0, 0x10 \n\
/* 080195ac */ BL agb_random \n\
/* 080195b0 */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 080195b2 */ LSLS R4, R4, 0x2 \n\
/* 080195b4 */ ADD R4, R8 @ Add R8 to R4 \n\
/* 080195b6 */ LSLS R0, R0, 0x10 \n\
/* 080195b8 */ LDR R1, [R4, 0x4] \n\
/* 080195ba */ LSRS R0, R0, 0xE \n\
/* 080195bc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080195be */ LDR R1, [R0] \n\
/* 080195c0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080195c2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080195c4 */ MOVS R3, 0x7 @ Set R3 to 0x7 \n\
/* 080195c6 */ BL func_08004c50 \n\
/* 080195ca */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080195cc */ LDR R2, =D_03005380 \n\
/* 080195ce */ LDR R0, [R2] \n\
/* 080195d0 */ ASRS R5, R7, 0x10 \n\
/* 080195d2 */ STR R5, [SP] \n\
/* 080195d4 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 080195d6 */ LSLS R3, R3, 0x7 \n\
/* 080195d8 */ STR R3, [SP, 0x4] \n\
/* 080195da */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080195dc */ STR R2, [SP, 0x8] \n\
/* 080195de */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080195e0 */ STR R3, [SP, 0xC] \n\
/* 080195e2 */ STR R3, [SP, 0x10] \n\
/* 080195e4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080195e6 */ MOVS R3, 0xB0 @ Set R3 to 0xB0 \n\
/* 080195e8 */ BL func_0804d160 \n\
/* 080195ec */ LDR R0, [R4, 0x8] \n\
/* 080195ee */ BL _call_via_r0 \n\
/* 080195f2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080195f4 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080195f6 */ BL clamp_int32 \n\
/* 080195fa */ LDR R1, =D_089d7980 \n\
/* 080195fc */ LDR R1, [R1] \n\
/* 080195fe */ ADDS R1, 0x68 @ Add 0x68 to R1 \n\
/* 08019600 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08019602 */ STRB R0, [R1] \n\
/* 08019604 */ LSLS R0, R0, 0x18 \n\
/* 08019606 */ LSRS R0, R0, 0x18 \n\
/* 08019608 */ LDRB R2, [R4] \n\
/* 0801960a */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0801960c */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0801960e */ LDR R3, [SP, 0x14] \n\
/* 08019610 */ ADDS R3, R3, R1 @ Set R3 to R3 + R1 \n\
/* 08019612 */ STR R3, [SP, 0x14] \n\
/* 08019614 */ LDR R1, [SP, 0x18] \n\
/* 08019616 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08019618 */ STR R1, [SP, 0x18] \n\
/* 0801961a */ LDR R2, =D_030046a4 \n\
/* 0801961c */ LDR R1, [R2] \n\
/* 0801961e */ LDR R2, [R1, 0x4] \n\
/* 08019620 */ LDR R1, =D_089d7984 \n\
/* 08019622 */ LSLS R0, R0, 0x2 \n\
/* 08019624 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08019626 */ LDR R1, [R0] \n\
/* 08019628 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0801962a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801962c */ MOVS R3, 0x7 @ Set R3 to 0x7 \n\
/* 0801962e */ BL func_08004c0c \n\
/* 08019632 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08019634 */ LDR R3, =D_03005380 \n\
/* 08019636 */ LDR R0, [R3] \n\
/* 08019638 */ STR R5, [SP] \n\
/* 0801963a */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 0801963c */ LSLS R2, R2, 0x7 \n\
/* 0801963e */ STR R2, [SP, 0x4] \n\
/* 08019640 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08019642 */ STR R3, [SP, 0x8] \n\
/* 08019644 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08019646 */ STR R2, [SP, 0xC] \n\
/* 08019648 */ STR R2, [SP, 0x10] \n\
/* 0801964a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801964c */ MOVS R3, 0xC0 @ Set R3 to 0xC0 \n\
/* 0801964e */ BL func_0804d160 \n\
/* 08019652 */ MOV R5, R10 @ Set R5 to R10 \n\
/* 08019654 */ LDR R6, [SP, 0x1C] \n\
/* 08019656 */ LSLS R0, R6, 0x1 \n\
/* 08019658 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0801965a */ LSLS R0, R0, 0x2 \n\
/* 0801965c */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0801965e */ LDR R0, [R0, 0x4] \n\
/* 08019660 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019662 */ BNE branch_08019578 \n\
 \n\
branch_08019664: \n\
/* 08019664 */ LDR R3, [SP, 0x14] \n\
/* 08019666 */ LSLS R0, R3, 0x8 \n\
/* 08019668 */ LDR R2, [SP, 0x18] \n\
/* 0801966a */ LSLS R1, R2, 0x2 \n\
/* 0801966c */ BL Div \n\
/* 08019670 */ LDR R1, =D_089d7980 \n\
/* 08019672 */ LDR R1, [R1] \n\
/* 08019674 */ ADDS R1, 0x72 @ Add 0x72 to R1 \n\
/* 08019676 */ STRH R0, [R1] \n\
/* 08019678 */ ADD SP, 0x20 \n\
/* 0801967a */ POP {R3-R5} \n\
/* 0801967c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801967e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08019680 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08019682 */ POP {R4-R7} \n\
/* 08019684 */ POP {R0} \n\
/* 08019686 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
