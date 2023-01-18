asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d708 \n\
/* 0804d708 */ PUSH {R4, R5, LR} \n\
/* 0804d70a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804d70c */ LDR R2, =D_03004428 \n\
/* 0804d70e */ MOVS R0, 0xB @ Set R0 to 0xB \n\
/* 0804d710 */ STRB R0, [R2] \n\
/* 0804d712 */ LSLS R1, R1, 0x10 \n\
/* 0804d714 */ ASRS R4, R1, 0x10 \n\
/* 0804d716 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d718 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d71a */ BL func_0804cc68 \n\
/* 0804d71e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d720 */ BEQ branch_0804d72c \n\
/* 0804d722 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804d724 */ B branch_0804d768 \n\
\n\
.ltorg \n\
 \n\
branch_0804d72c: \n\
/* 0804d72c */ LSLS R0, R4, 0x4 \n\
/* 0804d72e */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804d730 */ LSLS R0, R0, 0x2 \n\
/* 0804d732 */ LDR R1, [R5, 0x8] \n\
/* 0804d734 */ ADDS R5, R1, R0 @ Set R5 to R1 + R0 \n\
/* 0804d736 */ LDR R1, [R5, 0x8] \n\
/* 0804d738 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804d73a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804d73c */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0804d73e */ LDRSB R2, [R5, R2] \n\
/* 0804d740 */ CMP R4, R2 @ Check R4 - R2 \n\
/* 0804d742 */ BCS branch_0804d750 \n\
 \n\
branch_0804d744: \n\
/* 0804d744 */ LDRB R0, [R1, 0x4] \n\
/* 0804d746 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0804d748 */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 0804d74a */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0804d74c */ CMP R3, R2 @ Check R3 - R2 \n\
/* 0804d74e */ BCC branch_0804d744 \n\
 \n\
branch_0804d750: \n\
/* 0804d750 */ LDRB R1, [R1, 0x4] \n\
/* 0804d752 */ LDRH R0, [R5, 0x1C] \n\
/* 0804d754 */ LSLS R0, R0, 0x10 \n\
/* 0804d756 */ ASRS R0, R0, 0x18 \n\
/* 0804d758 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0804d75a */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 0804d75c */ LSLS R0, R4, 0x8 \n\
/* 0804d75e */ LDRH R1, [R5, 0x28] \n\
/* 0804d760 */ BL __udivsi3 \n\
/* 0804d764 */ LSLS R0, R0, 0x18 \n\
/* 0804d766 */ LSRS R0, R0, 0x18 \n\
 \n\
branch_0804d768: \n\
/* 0804d768 */ POP {R4, R5} \n\
/* 0804d76a */ POP {R1} \n\
/* 0804d76c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
