asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080295d4 \n\
/* 080295d4 */ PUSH {R4-R6, LR} \n\
/* 080295d6 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080295d8 */ LDR R4, =D_030055d0 \n\
/* 080295da */ LDR R1, [R4] \n\
/* 080295dc */ LDRB R0, [R1] \n\
/* 080295de */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 080295e0 */ BNE branch_080295ec \n\
/* 080295e2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080295e4 */ B branch_08029698 \n\
\n\
.ltorg \n\
 \n\
branch_080295ec: \n\
/* 080295ec */ LDR R2, =0x000003cd \n\
/* 080295ee */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080295f0 */ LDRB R0, [R0] \n\
/* 080295f2 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080295f4 */ BEQ branch_08029604 \n\
/* 080295f6 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080295f8 */ BLE branch_08029634 \n\
/* 080295fa */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 080295fc */ BEQ branch_08029628 \n\
/* 080295fe */ B branch_08029634 \n\
\n\
.ltorg \n\
 \n\
branch_08029604: \n\
/* 08029604 */ BL func_08001828 \n\
/* 08029608 */ LDR R1, [R4] \n\
/* 0802960a */ LDR R2, =0x00000416 \n\
/* 0802960c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802960e */ STRH R0, [R1] \n\
/* 08029610 */ LDR R1, =0x000003ff \n\
/* 08029612 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08029614 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08029616 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08029618 */ BL func_08001724 \n\
/* 0802961c */ B branch_08029634 \n\
\n\
.ltorg \n\
 \n\
branch_08029628: \n\
/* 08029628 */ LDR R1, =0x000003ff \n\
/* 0802962a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802962c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802962e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08029630 */ BL func_08001724 \n\
 \n\
branch_08029634: \n\
/* 08029634 */ LDR R0, =D_030055d0 \n\
/* 08029636 */ LDR R1, [R0] \n\
/* 08029638 */ LDRB R1, [R1] \n\
/* 0802963a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802963c */ CMP R1, 0x3 @ Compare R1 and 0x3 \n\
/* 0802963e */ BNE branch_0802968a \n\
/* 08029640 */ ADDS R4, R5, 0x0 @ Set R4 to R5 + 0x0 \n\
/* 08029642 */ MOVS R3, 0xF3 @ Set R3 to 0xF3 \n\
/* 08029644 */ LSLS R3, R3, 0x2 \n\
/* 08029646 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08029648 */ LDR R2, =D_030046a8 \n\
 \n\
branch_0802964a: \n\
/* 0802964a */ LDR R0, [R4] \n\
/* 0802964c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802964e */ LDRB R1, [R0] \n\
/* 08029650 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08029652 */ STRB R1, [R0] \n\
/* 08029654 */ LDR R0, [R2] \n\
/* 08029656 */ ADDS R0, 0xC2 @ Add 0xC2 to R0 \n\
/* 08029658 */ LSLS R1, R1, 0x18 \n\
/* 0802965a */ LSRS R1, R1, 0x18 \n\
/* 0802965c */ LDRB R0, [R0] \n\
/* 0802965e */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08029660 */ BCC branch_0802966c \n\
/* 08029662 */ LDR R0, [R5] \n\
/* 08029664 */ MOVS R1, 0xF3 @ Set R1 to 0xF3 \n\
/* 08029666 */ LSLS R1, R1, 0x2 \n\
/* 08029668 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802966a */ STRB R6, [R0] \n\
 \n\
branch_0802966c: \n\
/* 0802966c */ LDR R1, [R2] \n\
/* 0802966e */ LDR R0, [R4] \n\
/* 08029670 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08029672 */ LDRB R0, [R0] \n\
/* 08029674 */ LSLS R0, R0, 0x2 \n\
/* 08029676 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08029678 */ ADDS R1, 0xC7 @ Add 0xC7 to R1 \n\
/* 0802967a */ LDRB R1, [R1] \n\
/* 0802967c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802967e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08029680 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029682 */ BNE branch_0802964a \n\
/* 08029684 */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 08029686 */ BL func_080291bc \n\
 \n\
branch_0802968a: \n\
/* 0802968a */ LDR R0, =D_030055d0 \n\
/* 0802968c */ LDR R0, [R0] \n\
/* 0802968e */ LDR R2, =0x000003cd \n\
/* 08029690 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08029692 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08029694 */ STRB R1, [R0] \n\
/* 08029696 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
 \n\
branch_08029698: \n\
/* 08029698 */ POP {R4-R6} \n\
/* 0802969a */ POP {R1} \n\
/* 0802969c */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
