asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tap_trial_common_display_text \n\
/* 0803e7a8 */ PUSH {R4-R6, LR} \n\
/* 0803e7aa */ SUB SP, 0xC \n\
/* 0803e7ac */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803e7ae */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803e7b0 */ BNE branch_0803e7d0 \n\
/* 0803e7b2 */ LDR R0, =D_03005380 \n\
/* 0803e7b4 */ LDR R0, [R0] \n\
/* 0803e7b6 */ LDR R1, =D_030055d0 \n\
/* 0803e7b8 */ LDR R1, [R1] \n\
/* 0803e7ba */ MOVS R2, 0x22 @ Set R2 to 0x22 \n\
/* 0803e7bc */ LDRSH R1, [R1, R2] \n\
/* 0803e7be */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803e7c0 */ BL func_0804d770 \n\
/* 0803e7c4 */ B branch_0803e814 \n\
\n\
.ltorg \n\
 \n\
branch_0803e7d0: \n\
/* 0803e7d0 */ LDR R4, =D_030055d0 \n\
/* 0803e7d2 */ LDR R0, [R4] \n\
/* 0803e7d4 */ LDR R0, [R0, 0x4] \n\
/* 0803e7d6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803e7d8 */ MOVS R3, 0xD @ Set R3 to 0xD \n\
/* 0803e7da */ BL func_08004b98 \n\
/* 0803e7de */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0803e7e0 */ LDR R1, [R4] \n\
/* 0803e7e2 */ LDR R0, [R1, 0x4] \n\
/* 0803e7e4 */ MOVS R2, 0x22 @ Set R2 to 0x22 \n\
/* 0803e7e6 */ LDRSH R1, [R1, R2] \n\
/* 0803e7e8 */ BL func_08007b04 \n\
/* 0803e7ec */ LDR R5, =D_03005380 \n\
/* 0803e7ee */ LDR R0, [R5] \n\
/* 0803e7f0 */ LDR R1, [R4] \n\
/* 0803e7f2 */ MOVS R2, 0x22 @ Set R2 to 0x22 \n\
/* 0803e7f4 */ LDRSH R1, [R1, R2] \n\
/* 0803e7f6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803e7f8 */ STR R2, [SP] \n\
/* 0803e7fa */ STR R2, [SP, 0x4] \n\
/* 0803e7fc */ STR R2, [SP, 0x8] \n\
/* 0803e7fe */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0803e800 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803e802 */ BL func_0804d8f8 \n\
/* 0803e806 */ LDR R0, [R5] \n\
/* 0803e808 */ LDR R1, [R4] \n\
/* 0803e80a */ MOVS R2, 0x22 @ Set R2 to 0x22 \n\
/* 0803e80c */ LDRSH R1, [R1, R2] \n\
/* 0803e80e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803e810 */ BL func_0804d770 \n\
 \n\
branch_0803e814: \n\
/* 0803e814 */ ADD SP, 0xC \n\
/* 0803e816 */ POP {R4-R6} \n\
/* 0803e818 */ POP {R0} \n\
/* 0803e81a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
