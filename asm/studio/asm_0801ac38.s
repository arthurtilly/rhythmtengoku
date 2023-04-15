asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ac38 \n\
/* 0801ac38 */ PUSH {R4-R7, LR} \n\
/* 0801ac3a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0801ac3c */ PUSH {R7} \n\
/* 0801ac3e */ SUB SP, 0xC \n\
/* 0801ac40 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801ac42 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0801ac44 */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 0801ac46 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801ac48 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0801ac4a */ BEQ branch_0801ac7c \n\
/* 0801ac4c */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0801ac4e */ BCC branch_0801ac56 \n\
/* 0801ac50 */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 0801ac52 */ BEQ branch_0801acac \n\
/* 0801ac54 */ B branch_0801acce \n\
 \n\
branch_0801ac56: \n\
/* 0801ac56 */ LDR R0, =D_03005380 \n\
/* 0801ac58 */ LDR R0, [R0] \n\
/* 0801ac5a */ LDR R1, =D_030046a4 \n\
/* 0801ac5c */ LDR R1, [R1] \n\
/* 0801ac5e */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 0801ac60 */ LSLS R2, R2, 0x3 \n\
/* 0801ac62 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801ac64 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ac66 */ LDRSH R1, [R1, R2] \n\
/* 0801ac68 */ LDR R2, =anim_studio_text_adv_icon \n\
/* 0801ac6a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0801ac6c */ STR R3, [SP] \n\
/* 0801ac6e */ B branch_0801ac92 \n\
\n\
.ltorg \n\
 \n\
branch_0801ac7c: \n\
/* 0801ac7c */ LDR R0, =D_03005380 \n\
/* 0801ac7e */ LDR R0, [R0] \n\
/* 0801ac80 */ LDR R1, =D_030046a4 \n\
/* 0801ac82 */ LDR R1, [R1] \n\
/* 0801ac84 */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 0801ac86 */ LSLS R2, R2, 0x3 \n\
/* 0801ac88 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801ac8a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ac8c */ LDRSH R1, [R1, R2] \n\
/* 0801ac8e */ LDR R2, =anim_studio_warning_options_y \n\
/* 0801ac90 */ STR R5, [SP] \n\
 \n\
branch_0801ac92: \n\
/* 0801ac92 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801ac94 */ STR R3, [SP, 0x4] \n\
/* 0801ac96 */ STR R3, [SP, 0x8] \n\
/* 0801ac98 */ BL func_0804d8f8 \n\
/* 0801ac9c */ B branch_0801acce \n\
\n\
.ltorg \n\
 \n\
branch_0801acac: \n\
/* 0801acac */ LDR R0, =D_03005380 \n\
/* 0801acae */ LDR R0, [R0] \n\
/* 0801acb0 */ LDR R1, =D_030046a4 \n\
/* 0801acb2 */ LDR R1, [R1] \n\
/* 0801acb4 */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 0801acb6 */ LSLS R2, R2, 0x3 \n\
/* 0801acb8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801acba */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801acbc */ LDRSH R1, [R1, R2] \n\
/* 0801acbe */ LDR R2, =anim_studio_warning_options_n \n\
/* 0801acc0 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0801acc2 */ STR R3, [SP] \n\
/* 0801acc4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801acc6 */ STR R3, [SP, 0x4] \n\
/* 0801acc8 */ STR R3, [SP, 0x8] \n\
/* 0801acca */ BL func_0804d8f8 \n\
 \n\
branch_0801acce: \n\
/* 0801acce */ LDR R4, =D_030046a4 \n\
/* 0801acd0 */ LDR R0, [R4] \n\
/* 0801acd2 */ LDR R1, =0x4b4 \n\
/* 0801acd4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801acd6 */ LDR R0, [R0] \n\
/* 0801acd8 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0801acda */ BL text_printer_set_string \n\
/* 0801acde */ LDR R0, [R4] \n\
/* 0801ace0 */ LDR R2, =0x4a2 \n\
/* 0801ace2 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801ace4 */ STRB R5, [R0] \n\
/* 0801ace6 */ LDR R1, [R4] \n\
/* 0801ace8 */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 0801acea */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801acec */ STR R7, [R0] \n\
/* 0801acee */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 0801acf0 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801acf2 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801acf4 */ STR R2, [R0] \n\
/* 0801acf6 */ LDR R0, =0x4ac \n\
/* 0801acf8 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 0801acfa */ LDR R0, [SP, 0x24] \n\
/* 0801acfc */ STR R0, [R2] \n\
/* 0801acfe */ MOVS R2, 0x94 @ Set R2 to 0x94 \n\
/* 0801ad00 */ LSLS R2, R2, 0x3 \n\
/* 0801ad02 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801ad04 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801ad06 */ STRB R2, [R1] \n\
/* 0801ad08 */ LDR R0, [R4] \n\
/* 0801ad0a */ LDR R1, =0x4a1 \n\
/* 0801ad0c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801ad0e */ STRB R2, [R0] \n\
/* 0801ad10 */ LDR R0, [R4] \n\
/* 0801ad12 */ MOVS R2, 0xD7 @ Set R2 to 0xD7 \n\
/* 0801ad14 */ LSLS R2, R2, 0x2 \n\
/* 0801ad16 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801ad18 */ MOVS R1, 0x6 @ Set R1 to 0x6 \n\
/* 0801ad1a */ STRB R1, [R0] \n\
/* 0801ad1c */ ADD SP, 0xC \n\
/* 0801ad1e */ POP {R3} \n\
/* 0801ad20 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801ad22 */ POP {R4-R7} \n\
/* 0801ad24 */ POP {R0} \n\
/* 0801ad26 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
