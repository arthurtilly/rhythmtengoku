asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start play_sound \n\
/* 08002634 */ PUSH {R4, R5, LR} \n\
/* 08002636 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08002638 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800263a */ BEQ branch_08002668 \n\
/* 0800263c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800263e */ BL get_sound_num \n\
/* 08002642 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08002644 */ LSLS R4, R4, 0x10 \n\
/* 08002646 */ LSRS R4, R4, 0x10 \n\
/* 08002648 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800264a */ BL func_0804b534 \n\
/* 0800264e */ LDR R2, =D_08aa4460 \n\
/* 08002650 */ LDR R0, =D_08aa06f8 \n\
/* 08002652 */ LSLS R4, R4, 0x3 \n\
/* 08002654 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 08002656 */ LDRH R1, [R4, 0x4] \n\
/* 08002658 */ LSLS R0, R1, 0x1 \n\
/* 0800265a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800265c */ LSLS R0, R0, 0x2 \n\
/* 0800265e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08002660 */ LDR R1, [R0] \n\
/* 08002662 */ LDR R0, [R1, 0xC] \n\
/* 08002664 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 08002666 */ BEQ branch_08002674 \n\
 \n\
branch_08002668: \n\
/* 08002668 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800266a */ B branch_08002676 \n\
\n\
.ltorg \n\
 \n\
branch_08002674: \n\
/* 08002674 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
 \n\
branch_08002676: \n\
/* 08002676 */ POP {R4, R5} \n\
/* 08002678 */ POP {R1} \n\
/* 0800267a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
