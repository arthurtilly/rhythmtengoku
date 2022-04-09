asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802b648 \n\
/* 0802b648 */ PUSH {R4, R5, LR} \n\
/* 0802b64a */ SUB SP, 0xC \n\
/* 0802b64c */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0802b64e */ LDR R0, =D_030055d0 \n\
/* 0802b650 */ LDR R0, [R0] \n\
/* 0802b652 */ LDRB R0, [R0, 0x1] \n\
/* 0802b654 */ LSLS R0, R0, 0x1F \n\
/* 0802b656 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b658 */ BEQ branch_0802b6d4 \n\
/* 0802b65a */ LDRB R0, [R4, 0x1] \n\
/* 0802b65c */ LSLS R0, R0, 0x1E \n\
/* 0802b65e */ LSRS R5, R0, 0x1F \n\
/* 0802b660 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0802b662 */ BEQ branch_0802b690 \n\
/* 0802b664 */ LDR R0, =D_03005380 \n\
/* 0802b666 */ LDR R0, [R0] \n\
/* 0802b668 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802b66a */ LDRSH R1, [R4, R2] \n\
/* 0802b66c */ LDR R2, =D_088c9de0 \n\
/* 0802b66e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802b670 */ STR R3, [SP] \n\
/* 0802b672 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802b674 */ STR R3, [SP, 0x4] \n\
/* 0802b676 */ MOVS R3, 0x3 @ Set R3 to 0x3 \n\
/* 0802b678 */ STR R3, [SP, 0x8] \n\
/* 0802b67a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802b67c */ BL func_0804d8f8 \n\
/* 0802b680 */ B branch_0802b6aa \n\
\n\
.ltorg \n\
 \n\
branch_0802b690: \n\
/* 0802b690 */ LDR R0, =D_03005380 \n\
/* 0802b692 */ LDR R0, [R0] \n\
/* 0802b694 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802b696 */ LDRSH R1, [R4, R2] \n\
/* 0802b698 */ LDR R2, =D_088c9dd0 \n\
/* 0802b69a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802b69c */ STR R3, [SP] \n\
/* 0802b69e */ STR R5, [SP, 0x4] \n\
/* 0802b6a0 */ MOVS R3, 0x3 @ Set R3 to 0x3 \n\
/* 0802b6a2 */ STR R3, [SP, 0x8] \n\
/* 0802b6a4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802b6a6 */ BL func_0804d8f8 \n\
 \n\
branch_0802b6aa: \n\
/* 0802b6aa */ LDR R0, =D_03005380 \n\
/* 0802b6ac */ LDR R0, [R0] \n\
/* 0802b6ae */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802b6b0 */ LDRSH R1, [R4, R2] \n\
/* 0802b6b2 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802b6b4 */ BL func_0804ddb0 \n\
/* 0802b6b8 */ CMP R0, 0xF3 @ Compare R0 and 0xF3 \n\
/* 0802b6ba */ BGT branch_0802b6f0 \n\
/* 0802b6bc */ LDR R1, =s_4beat_jiban_seqData \n\
/* 0802b6be */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0802b6c0 */ BL func_0800267c \n\
/* 0802b6c4 */ B branch_0802b6f0 \n\
\n\
.ltorg \n\
 \n\
branch_0802b6d4: \n\
/* 0802b6d4 */ LDR R5, =D_03005380 \n\
/* 0802b6d6 */ LDR R0, [R5] \n\
/* 0802b6d8 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802b6da */ LDRSH R1, [R4, R2] \n\
/* 0802b6dc */ BL func_0804d504 \n\
/* 0802b6e0 */ LDRB R0, [R4, 0xE] \n\
/* 0802b6e2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b6e4 */ BEQ branch_0802b6f0 \n\
/* 0802b6e6 */ LDR R0, [R5] \n\
/* 0802b6e8 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0802b6ea */ LDRSH R1, [R4, R2] \n\
/* 0802b6ec */ BL func_0804d504 \n\
 \n\
branch_0802b6f0: \n\
/* 0802b6f0 */ ADD SP, 0xC \n\
/* 0802b6f2 */ POP {R4, R5} \n\
/* 0802b6f4 */ POP {R0} \n\
/* 0802b6f6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
