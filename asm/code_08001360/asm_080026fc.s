asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080026fc \n\
/* 080026fc */ PUSH {R4, R5, LR} \n\
/* 080026fe */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08002700 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08002702 */ BNE branch_08002708 \n\
/* 08002704 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08002706 */ B branch_0800273c \n\
 \n\
branch_08002708: \n\
/* 08002708 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800270a */ BL get_sound_num \n\
/* 0800270e */ LSLS R0, R0, 0x10 \n\
/* 08002710 */ LSRS R3, R0, 0x10 \n\
/* 08002712 */ LDR R2, =D_08aa4460 \n\
/* 08002714 */ LDR R1, =D_08aa06f8 \n\
/* 08002716 */ LSLS R0, R3, 0x3 \n\
/* 08002718 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800271a */ LDRH R1, [R0, 0x4] \n\
/* 0800271c */ LSLS R0, R1, 0x1 \n\
/* 0800271e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08002720 */ LSLS R0, R0, 0x2 \n\
/* 08002722 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08002724 */ LDR R4, [R0] \n\
/* 08002726 */ LDR R0, [R4, 0xC] \n\
/* 08002728 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 0800272a */ BEQ branch_0800273a \n\
/* 0800272c */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800272e */ BL func_0804b534 \n\
/* 08002732 */ LDR R0, [R4, 0xC] \n\
/* 08002734 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 08002736 */ BEQ branch_0800273a \n\
/* 08002738 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0800273a: \n\
/* 0800273a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
 \n\
branch_0800273c: \n\
/* 0800273c */ POP {R4, R5} \n\
/* 0800273e */ POP {R1} \n\
/* 08002740 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
