asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801765c \n\
/* 0801765c */ PUSH {R4-R6, LR} \n\
/* 0801765e */ SUB SP, 0xC \n\
/* 08017660 */ LDR R6, =D_030046a4 \n\
/* 08017662 */ LDR R1, [R6] \n\
/* 08017664 */ LDR R5, =0x4a6 \n\
/* 08017666 */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 08017668 */ LDRB R3, [R0] \n\
/* 0801766a */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0801766c */ BNE branch_080176ac \n\
/* 0801766e */ LDR R2, =0x4a4 \n\
/* 08017670 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08017672 */ LDRB R0, [R0] \n\
/* 08017674 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017676 */ BEQ branch_080176ac \n\
/* 08017678 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0801767a */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0801767c */ LDRB R0, [R0] \n\
/* 0801767e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017680 */ BEQ branch_080176ac \n\
/* 08017682 */ LDR R0, =D_03005380 \n\
/* 08017684 */ LDR R0, [R0] \n\
/* 08017686 */ SUBS R2, 0x3 @ Subtract 0x3 from R2 \n\
/* 08017688 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801768a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801768c */ LDRSH R1, [R1, R2] \n\
/* 0801768e */ LDR R2, =D_0890aca0 \n\
/* 08017690 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08017692 */ STR R4, [SP] \n\
/* 08017694 */ STR R3, [SP, 0x4] \n\
/* 08017696 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08017698 */ STR R3, [SP, 0x8] \n\
/* 0801769a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801769c */ BL func_0804d8f8 \n\
/* 080176a0 */ LDR R0, =s_f_fail_perfect_seqData \n\
/* 080176a2 */ BL func_08002634 \n\
/* 080176a6 */ LDR R0, [R6] \n\
/* 080176a8 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080176aa */ STRB R4, [R0] \n\
 \n\
branch_080176ac: \n\
/* 080176ac */ ADD SP, 0xC \n\
/* 080176ae */ POP {R4-R6} \n\
/* 080176b0 */ POP {R0} \n\
/* 080176b2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
