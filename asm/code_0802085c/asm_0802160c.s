asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802160c \n\
/* 0802160c */ PUSH {R4, R5, LR} \n\
/* 0802160e */ SUB SP, 0x8 \n\
/* 08021610 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08021612 */ ADD R4, SP, 0x4 \n\
/* 08021614 */ MOV R0, SP @ Set R0 to SP \n\
/* 08021616 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08021618 */ BL func_08018124 \n\
/* 0802161c */ B branch_08021636 \n\
 \n\
branch_0802161e: \n\
/* 0802161e */ LDR R0, [SP] \n\
/* 08021620 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 08021622 */ BEQ branch_0802162c \n\
/* 08021624 */ LDR R1, [SP, 0x4] \n\
/* 08021626 */ LDRH R0, [R1, 0x2E] \n\
/* 08021628 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802162a */ STRH R0, [R1, 0x2E] \n\
 \n\
branch_0802162c: \n\
/* 0802162c */ LDR R0, [SP] \n\
/* 0802162e */ MOV R1, SP @ Set R1 to SP \n\
/* 08021630 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08021632 */ BL func_08018138 \n\
 \n\
branch_08021636: \n\
/* 08021636 */ LDR R0, [SP] \n\
/* 08021638 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802163a */ BNE branch_0802161e \n\
/* 0802163c */ ADD SP, 0x8 \n\
/* 0802163e */ POP {R4, R5} \n\
/* 08021640 */ POP {R0} \n\
/* 08021642 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
