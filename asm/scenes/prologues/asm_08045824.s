asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045824 \n\
/* 08045824 */ PUSH {R4-R6, LR} \n\
/* 08045826 */ MOV R6, R10 @ Set R6 to R10 \n\
/* 08045828 */ MOV R5, R9 @ Set R5 to R9 \n\
/* 0804582a */ MOV R4, R8 @ Set R4 to R8 \n\
/* 0804582c */ PUSH {R4-R6} \n\
/* 0804582e */ SUB SP, 0x14 \n\
/* 08045830 */ LDR R1, =D_030055d0 \n\
/* 08045832 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08045834 */ LDR R1, [R1] \n\
/* 08045836 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08045838 */ STRB R0, [R1] \n\
/* 0804583a */ BL func_080457f4 \n\
/* 0804583e */ BL func_0800e0ec \n\
/* 08045842 */ STR R4, [SP] \n\
/* 08045844 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08045846 */ STR R0, [SP, 0x4] \n\
/* 08045848 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804584a */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0804584c */ STR R2, [SP, 0x8] \n\
/* 0804584e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08045850 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08045852 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045854 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08045856 */ BL func_0800e0a0 \n\
/* 0804585a */ LDR R6, =D_03005380 \n\
/* 0804585c */ LDR R0, [R6] \n\
/* 0804585e */ LDR R1, =D_088ae2a8 \n\
/* 08045860 */ MOVS R5, 0x78 @ Set R5 to 0x78 \n\
/* 08045862 */ STR R5, [SP] \n\
/* 08045864 */ STR R4, [SP, 0x4] \n\
/* 08045866 */ STR R4, [SP, 0x8] \n\
/* 08045868 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0804586a */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0804586c */ STR R2, [SP, 0xC] \n\
/* 0804586e */ STR R4, [SP, 0x10] \n\
/* 08045870 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045872 */ MOVS R3, 0x6E @ Set R3 to 0x6E \n\
/* 08045874 */ BL func_0804d160 \n\
/* 08045878 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0804587a */ LDR R1, [R2] \n\
/* 0804587c */ STRH R0, [R1, 0x2] \n\
/* 0804587e */ LDR R0, [R6] \n\
/* 08045880 */ LDR R1, =D_088ae048 \n\
/* 08045882 */ STR R5, [SP] \n\
/* 08045884 */ STR R4, [SP, 0x4] \n\
/* 08045886 */ STR R4, [SP, 0x8] \n\
/* 08045888 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0804588a */ STR R2, [SP, 0xC] \n\
/* 0804588c */ STR R4, [SP, 0x10] \n\
/* 0804588e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045890 */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 08045892 */ BL func_0804d160 \n\
/* 08045896 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08045898 */ LDR R1, [R2] \n\
/* 0804589a */ STRH R0, [R1, 0x4] \n\
/* 0804589c */ LDR R0, [R6] \n\
/* 0804589e */ LDR R1, =D_088ae160 \n\
/* 080458a0 */ STR R5, [SP] \n\
/* 080458a2 */ STR R4, [SP, 0x4] \n\
/* 080458a4 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080458a6 */ STR R2, [SP, 0x8] \n\
/* 080458a8 */ STR R4, [SP, 0xC] \n\
/* 080458aa */ STR R4, [SP, 0x10] \n\
/* 080458ac */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080458ae */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 080458b0 */ BL func_0804d160 \n\
/* 080458b4 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080458b6 */ LDR R1, [R2] \n\
/* 080458b8 */ STRH R0, [R1, 0x6] \n\
/* 080458ba */ ADD SP, 0x14 \n\
/* 080458bc */ POP {R3-R5} \n\
/* 080458be */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080458c0 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080458c2 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080458c4 */ POP {R4-R6} \n\
/* 080458c6 */ POP {R0} \n\
/* 080458c8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
