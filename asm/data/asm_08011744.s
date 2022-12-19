asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011744 \n\
/* 08011744 */ PUSH {R4-R7, LR} \n\
/* 08011746 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08011748 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801174a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801174c */ PUSH {R5-R7} \n\
/* 0801174e */ SUB SP, 0x14 \n\
/* 08011750 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08011752 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08011754 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08011756 */ LDR R1, =D_030046a4 \n\
/* 08011758 */ LDR R0, [R1] \n\
/* 0801175a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801175c */ LSLS R7, R2, 0x1 \n\
/* 0801175e */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08011760 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08011762 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08011764 */ LDRSH R5, [R0, R1] \n\
/* 08011766 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08011768 */ BLT branch_08011786 \n\
/* 0801176a */ LDR R4, =D_03005380 \n\
/* 0801176c */ LDR R0, [R4] \n\
/* 0801176e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08011770 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08011772 */ BL func_0804ddb0 \n\
/* 08011776 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08011778 */ LDR R0, [R4] \n\
/* 0801177a */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801177c */ BL func_0804d504 \n\
/* 08011780 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08011782 */ BL text_printer_delete_anim \n\
 \n\
branch_08011786: \n\
/* 08011786 */ ADDS R5, R7, 0x0 @ Set R5 to R7 + 0x0 \n\
/* 08011788 */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 0801178a */ LSLS R1, R5, 0xA \n\
/* 0801178c */ LDR R2, =(VRAMBase + 0x10000) \n\
/* 0801178e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08011790 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08011792 */ LSLS R2, R2, 0x4 \n\
/* 08011794 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08011796 */ LSLS R0, R0, 0x2 \n\
/* 08011798 */ STR R0, [SP] \n\
/* 0801179a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801179c */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801179e */ BL dma3_fill \n\
/* 080117a2 */ BL get_current_mem_id \n\
/* 080117a6 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080117a8 */ STR R1, [SP] \n\
/* 080117aa */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080117ac */ STR R1, [SP, 0x4] \n\
/* 080117ae */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080117b0 */ STR R4, [SP, 0x8] \n\
/* 080117b2 */ ADDS R1, 0xFE @ Add 0xFE to R1 \n\
/* 080117b4 */ STR R1, [SP, 0xC] \n\
/* 080117b6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080117b8 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 080117ba */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080117bc */ BL text_printer_get_unformatted_line_anim \n\
/* 080117c0 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080117c2 */ LDR R5, =D_03005380 \n\
/* 080117c4 */ LDR R0, [R5] \n\
/* 080117c6 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080117c8 */ LSLS R1, R2, 0x4 \n\
/* 080117ca */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 080117cc */ LSLS R1, R1, 0x10 \n\
/* 080117ce */ ASRS R1, R1, 0x10 \n\
/* 080117d0 */ STR R1, [SP] \n\
/* 080117d2 */ STR R4, [SP, 0x4] \n\
/* 080117d4 */ STR R4, [SP, 0x8] \n\
/* 080117d6 */ STR R4, [SP, 0xC] \n\
/* 080117d8 */ STR R4, [SP, 0x10] \n\
/* 080117da */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080117dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080117de */ MOVS R3, 0x8 @ Set R3 to 0x8 \n\
/* 080117e0 */ BL func_0804d160 \n\
/* 080117e4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080117e6 */ LSLS R1, R1, 0x10 \n\
/* 080117e8 */ LDR R0, [R5] \n\
/* 080117ea */ LSRS R4, R1, 0x10 \n\
/* 080117ec */ ASRS R1, R1, 0x10 \n\
/* 080117ee */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080117f0 */ ADDS R2, 0x8 @ Add 0x8 to R2 \n\
/* 080117f2 */ LSLS R2, R2, 0x18 \n\
/* 080117f4 */ ASRS R2, R2, 0x18 \n\
/* 080117f6 */ BL func_0804d8c4 \n\
/* 080117fa */ LDR R1, =D_030046a4 \n\
/* 080117fc */ LDR R0, [R1] \n\
/* 080117fe */ ADDS R0, 0xC @ Add 0xC to R0 \n\
/* 08011800 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08011802 */ STRH R4, [R0] \n\
/* 08011804 */ ADD SP, 0x14 \n\
/* 08011806 */ POP {R3-R5} \n\
/* 08011808 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801180a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801180c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0801180e */ POP {R4-R7} \n\
/* 08011810 */ POP {R0} \n\
/* 08011812 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
