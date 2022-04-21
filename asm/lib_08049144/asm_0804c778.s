asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804c778 \n\
/* 0804c778 */ PUSH {R4-R7, LR} \n\
/* 0804c77a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0804c77c */ PUSH {R7} \n\
/* 0804c77e */ SUB SP, 0x10 \n\
/* 0804c780 */ LDR R1, =0x00003443 \n\
/* 0804c782 */ MOVS R2, 0xC4 @ Set R2 to 0xC4 \n\
/* 0804c784 */ LSLS R2, R2, 0x3 \n\
/* 0804c786 */ LDR R3, =D_03001888 \n\
/* 0804c788 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804c78a */ STR R0, [SP] \n\
/* 0804c78c */ LDR R0, =D_030024c8 \n\
/* 0804c78e */ STR R0, [SP, 0x4] \n\
/* 0804c790 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804c792 */ STR R0, [SP, 0x8] \n\
/* 0804c794 */ LDR R0, =D_030028c8 \n\
/* 0804c796 */ STR R0, [SP, 0xC] \n\
/* 0804c798 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804c79a */ BL func_08049490 \n\
/* 0804c79e */ BL func_0804af30 \n\
/* 0804c7a2 */ LDR R1, =D_03002a48 \n\
/* 0804c7a4 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804c7a6 */ BL func_0804a360 \n\
/* 0804c7aa */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0804c7ac */ LDR R6, =D_08aa4358 \n\
/* 0804c7ae */ MOV R8, R6 @ Set R8 to R6 \n\
/* 0804c7b0 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_0804c7b2: \n\
/* 0804c7b2 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0804c7b4 */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 0804c7b6 */ ADDS R4, R7, R4 @ Set R4 to R7 + R4 \n\
/* 0804c7b8 */ LDR R0, [R4] \n\
/* 0804c7ba */ LDRH R1, [R6] \n\
/* 0804c7bc */ LSLS R1, R1, 0x16 \n\
/* 0804c7be */ LSRS R1, R1, 0x1B \n\
/* 0804c7c0 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0804c7c2 */ ADDS R2, 0x4 @ Add 0x4 to R2 \n\
/* 0804c7c4 */ ADDS R2, R7, R2 @ Set R2 to R7 + R2 \n\
/* 0804c7c6 */ LDR R2, [R2] \n\
/* 0804c7c8 */ BL func_08049fa0 \n\
/* 0804c7cc */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804c7ce */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 0804c7d0 */ ADDS R0, R7, R0 @ Set R0 to R7 + R0 \n\
/* 0804c7d2 */ LDR R0, [R0] \n\
/* 0804c7d4 */ LDR R1, [R4] \n\
/* 0804c7d6 */ LDRH R2, [R6] \n\
/* 0804c7d8 */ LSLS R2, R2, 0x16 \n\
/* 0804c7da */ LSRS R2, R2, 0x1B \n\
/* 0804c7dc */ LDR R3, [R6, 0xC] \n\
/* 0804c7de */ LDRB R4, [R6, 0x1] \n\
/* 0804c7e0 */ LSRS R4, R4, 0x2 \n\
/* 0804c7e2 */ STR R4, [SP] \n\
/* 0804c7e4 */ BL func_0804c35c \n\
/* 0804c7e8 */ ADDS R6, 0x14 @ Add 0x14 to R6 \n\
/* 0804c7ea */ ADDS R7, 0x14 @ Add 0x14 to R7 \n\
/* 0804c7ec */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0804c7ee */ CMP R5, 0xC @ Compare R5 and 0xC \n\
/* 0804c7f0 */ BLS branch_0804c7b2 \n\
/* 0804c7f2 */ LDR R2, =D_03005b7c \n\
/* 0804c7f4 */ LDR R0, =D_030015a7 \n\
/* 0804c7f6 */ STR R0, [R2] \n\
/* 0804c7f8 */ LDR R1, =D_03005b20 \n\
/* 0804c7fa */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0804c7fc */ STRH R0, [R1] \n\
/* 0804c7fe */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0804c800 */ LDR R4, =D_03005b3c \n\
/* 0804c802 */ LDR R6, =D_03005644 \n\
/* 0804c804 */ LDR R1, =D_03005b90 \n\
/* 0804c806 */ LDR R7, =D_03001598 \n\
/* 0804c808 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_0804c80a: \n\
/* 0804c80a */ LDR R0, [R2] \n\
/* 0804c80c */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0804c80e */ STRB R3, [R0] \n\
/* 0804c810 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0804c812 */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 0804c814 */ BLS branch_0804c80a \n\
/* 0804c816 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804c818 */ STRB R0, [R4] \n\
/* 0804c81a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804c81c */ STR R0, [R6] \n\
/* 0804c81e */ STRB R0, [R1] \n\
/* 0804c820 */ STRB R0, [R1, 0x1] \n\
/* 0804c822 */ STRB R0, [R1, 0x2] \n\
/* 0804c824 */ STRB R0, [R1, 0x3] \n\
/* 0804c826 */ STR R0, [R7] \n\
/* 0804c828 */ ADD SP, 0x10 \n\
/* 0804c82a */ POP {R3} \n\
/* 0804c82c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804c82e */ POP {R4-R7} \n\
/* 0804c830 */ POP {R0} \n\
/* 0804c832 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
