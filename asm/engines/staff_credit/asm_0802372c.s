asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802372c \n\
/* 0802372c */ PUSH {R4-R7, LR} \n\
/* 0802372e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08023730 */ PUSH {R7} \n\
/* 08023732 */ SUB SP, 0x1C \n\
/* 08023734 */ STR R0, [SP, 0x18] \n\
/* 08023736 */ LDR R7, =D_030055d0 \n\
/* 08023738 */ LDR R5, [R7] \n\
/* 0802373a */ LDRB R4, [R5, 0x1] \n\
/* 0802373c */ LSLS R0, R4, 0x3 \n\
/* 0802373e */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 08023740 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 08023742 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08023744 */ BL func_080236e4 \n\
/* 08023748 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802374a */ LSLS R4, R4, 0x1 \n\
/* 0802374c */ ADDS R4, 0x4 @ Add 0x4 to R4 \n\
/* 0802374e */ STR R6, [SP] \n\
/* 08023750 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08023752 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08023754 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 08023756 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08023758 */ BL text_printer_fill_vram_tiles \n\
/* 0802375c */ BL get_current_mem_id \n\
/* 08023760 */ ADD R1, SP, 0x18 \n\
/* 08023762 */ STR R1, [SP] \n\
/* 08023764 */ LDR R1, =D_089df628 \n\
/* 08023766 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08023768 */ LDR R1, [R7] \n\
/* 0802376a */ LDRB R1, [R1, 0x2] \n\
/* 0802376c */ LSLS R1, R1, 0x2 \n\
/* 0802376e */ ADD R1, R8 @ Add R8 to R1 \n\
/* 08023770 */ LDRB R1, [R1] \n\
/* 08023772 */ STR R1, [SP, 0x4] \n\
/* 08023774 */ STR R6, [SP, 0x8] \n\
/* 08023776 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08023778 */ LSLS R1, R1, 0x1 \n\
/* 0802377a */ STR R1, [SP, 0xC] \n\
/* 0802377c */ STR R6, [SP, 0x10] \n\
/* 0802377e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08023780 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08023782 */ STR R1, [SP, 0x14] \n\
/* 08023784 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08023786 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08023788 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802378a */ BL text_printer_get_formatted_line_anim \n\
/* 0802378e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08023790 */ LDR R0, [R7] \n\
/* 08023792 */ LDRB R0, [R0, 0x2] \n\
/* 08023794 */ LSLS R0, R0, 0x2 \n\
/* 08023796 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08023798 */ LDRH R0, [R0, 0x2] \n\
/* 0802379a */ STRH R0, [R5, 0x2] \n\
/* 0802379c */ MOVS R2, 0xA8 @ Set R2 to 0xA8 \n\
/* 0802379e */ STRH R2, [R5, 0x4] \n\
/* 080237a0 */ LDR R0, =D_03005380 \n\
/* 080237a2 */ LDR R0, [R0] \n\
/* 080237a4 */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 080237a6 */ LDRSH R3, [R5, R4] \n\
/* 080237a8 */ STR R2, [SP] \n\
/* 080237aa */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080237ac */ LSLS R2, R2, 0x4 \n\
/* 080237ae */ STR R2, [SP, 0x4] \n\
/* 080237b0 */ STR R6, [SP, 0x8] \n\
/* 080237b2 */ STR R6, [SP, 0xC] \n\
/* 080237b4 */ STR R6, [SP, 0x10] \n\
/* 080237b6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080237b8 */ BL func_0804d160 \n\
/* 080237bc */ STRH R0, [R5] \n\
/* 080237be */ LDR R1, [R7] \n\
/* 080237c0 */ LDRB R0, [R1, 0x1] \n\
/* 080237c2 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080237c4 */ STRB R0, [R1, 0x1] \n\
/* 080237c6 */ LSLS R0, R0, 0x18 \n\
/* 080237c8 */ LSRS R0, R0, 0x18 \n\
/* 080237ca */ CMP R0, 0xD @ Compare R0 and 0xD \n\
/* 080237cc */ BLS branch_080237d4 \n\
/* 080237ce */ LDR R1, [R7] \n\
/* 080237d0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080237d2 */ STRB R0, [R1, 0x1] \n\
 \n\
branch_080237d4: \n\
/* 080237d4 */ ADD SP, 0x1C \n\
/* 080237d6 */ POP {R3} \n\
/* 080237d8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080237da */ POP {R4-R7} \n\
/* 080237dc */ POP {R0} \n\
/* 080237de */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
