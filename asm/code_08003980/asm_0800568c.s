asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800568c \n\
/* 0800568c */ PUSH {R4-R7, LR} \n\
/* 0800568e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08005690 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08005692 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08005694 */ PUSH {R5-R7} \n\
/* 08005696 */ SUB SP, 0x1C \n\
/* 08005698 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0800569a */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0800569c */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0800569e */ STR R3, [SP, 0x18] \n\
/* 080056a0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080056a2 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080056a4 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 080056a6 */ LDRB R0, [R4] \n\
/* 080056a8 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080056aa */ BEQ branch_080056ea \n\
/* 080056ac */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080056ae */ BGT branch_080056b6 \n\
/* 080056b0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080056b2 */ BEQ branch_080056bc \n\
/* 080056b4 */ B branch_080057f2 \n\
 \n\
branch_080056b6: \n\
/* 080056b6 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080056b8 */ BEQ branch_08005726 \n\
/* 080056ba */ B branch_080057f2 \n\
 \n\
branch_080056bc: \n\
/* 080056bc */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080056be */ LDRSB R1, [R4, R1] \n\
/* 080056c0 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 080056c2 */ LDR R1, [R4, 0x4] \n\
/* 080056c4 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 080056c6 */ LDRSB R2, [R4, R2] \n\
/* 080056c8 */ MOVS R5, 0xA @ Set R5 to 0xA \n\
/* 080056ca */ LDRSH R3, [R4, R5] \n\
/* 080056cc */ MOVS R5, 0xC @ Set R5 to 0xC \n\
/* 080056ce */ LDRSH R0, [R4, R5] \n\
/* 080056d0 */ STR R0, [SP] \n\
/* 080056d2 */ LDRH R0, [R4, 0xE] \n\
/* 080056d4 */ STR R0, [SP, 0x4] \n\
/* 080056d6 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080056d8 */ LDRSB R0, [R4, R0] \n\
/* 080056da */ STR R0, [SP, 0x8] \n\
/* 080056dc */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 080056de */ LDRSB R0, [R4, R0] \n\
/* 080056e0 */ STR R0, [SP, 0xC] \n\
/* 080056e2 */ LDRH R0, [R4, 0x12] \n\
/* 080056e4 */ STR R0, [SP, 0x10] \n\
/* 080056e6 */ LDR R0, [R4, 0x14] \n\
/* 080056e8 */ B branch_08005718 \n\
 \n\
branch_080056ea: \n\
/* 080056ea */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080056ec */ LDRSB R0, [R4, R0] \n\
/* 080056ee */ MOV R10, R0 @ Set R10 to R0 \n\
/* 080056f0 */ LDR R1, [R4, 0x4] \n\
/* 080056f2 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 080056f4 */ LDRSB R2, [R4, R2] \n\
/* 080056f6 */ LDR R0, [R4, 0xC] \n\
/* 080056f8 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080056fa */ LDRSH R3, [R0, R5] \n\
/* 080056fc */ MOVS R5, 0x2 @ Set R5 to 0x2 \n\
/* 080056fe */ LDRSH R0, [R0, R5] \n\
/* 08005700 */ STR R0, [SP] \n\
/* 08005702 */ LDRH R0, [R4, 0x10] \n\
/* 08005704 */ STR R0, [SP, 0x4] \n\
/* 08005706 */ MOVS R0, 0x12 @ Set R0 to 0x12 \n\
/* 08005708 */ LDRSB R0, [R4, R0] \n\
/* 0800570a */ STR R0, [SP, 0x8] \n\
/* 0800570c */ MOVS R0, 0x13 @ Set R0 to 0x13 \n\
/* 0800570e */ LDRSB R0, [R4, R0] \n\
/* 08005710 */ STR R0, [SP, 0xC] \n\
/* 08005712 */ LDRH R0, [R4, 0x14] \n\
/* 08005714 */ STR R0, [SP, 0x10] \n\
/* 08005716 */ LDR R0, [R4, 0x18] \n\
 \n\
branch_08005718: \n\
/* 08005718 */ STR R0, [SP, 0x14] \n\
/* 0800571a */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800571c */ BL func_0804d294 \n\
/* 08005720 */ LSLS R0, R0, 0x10 \n\
/* 08005722 */ LSRS R7, R0, 0x10 \n\
/* 08005724 */ B branch_080057f2 \n\
 \n\
branch_08005726: \n\
/* 08005726 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08005728 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800572a */ BEQ branch_080057f2 \n\
/* 0800572c */ ADDS R5, R4, 0x0 @ Set R5 to R4 + 0x0 \n\
/* 0800572e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08005730 */ LDRSB R1, [R5, R1] \n\
/* 08005732 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08005734 */ LDR R1, [R5, 0x4] \n\
/* 08005736 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08005738 */ BGE branch_08005748 \n\
/* 0800573a */ LDR R0, =0x7fffffff \n\
/* 0800573c */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0800573e */ LDR R1, [R1] \n\
/* 08005740 */ B branch_08005752 \n\
\n\
.ltorg \n\
 \n\
branch_08005748: \n\
/* 08005748 */ LDR R0, =D_03004ae8 \n\
/* 0800574a */ LDRB R0, [R0] \n\
/* 0800574c */ LSLS R0, R0, 0x2 \n\
/* 0800574e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08005750 */ LDR R1, [R0] \n\
 \n\
branch_08005752: \n\
/* 08005752 */ LDRB R2, [R5, 0x9] \n\
/* 08005754 */ LDRB R3, [R5, 0xA] \n\
/* 08005756 */ LDRB R0, [R5, 0x8] \n\
/* 08005758 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0800575a */ BEQ branch_0800577e \n\
/* 0800575c */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0800575e */ BGT branch_0800576c \n\
/* 08005760 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005762 */ BEQ branch_08005776 \n\
/* 08005764 */ B branch_08005796 \n\
\n\
.ltorg \n\
 \n\
branch_0800576c: \n\
/* 0800576c */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0800576e */ BEQ branch_08005786 \n\
/* 08005770 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08005772 */ BEQ branch_0800578e \n\
/* 08005774 */ B branch_08005796 \n\
 \n\
branch_08005776: \n\
/* 08005776 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08005778 */ BL func_08004b70 \n\
/* 0800577c */ B branch_08005794 \n\
 \n\
branch_0800577e: \n\
/* 0800577e */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08005780 */ BL func_08004b98 \n\
/* 08005784 */ B branch_08005794 \n\
 \n\
branch_08005786: \n\
/* 08005786 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08005788 */ BL func_08004c0c \n\
/* 0800578c */ B branch_08005794 \n\
 \n\
branch_0800578e: \n\
/* 0800578e */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08005790 */ BL func_08004c50 \n\
 \n\
branch_08005794: \n\
/* 08005794 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
 \n\
branch_08005796: \n\
/* 08005796 */ LDRB R1, [R5, 0xB] \n\
/* 08005798 */ MOVS R0, 0xFE @ Set R0 to 0xFE \n\
/* 0800579a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800579c */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0800579e */ BNE branch_080057b4 \n\
/* 080057a0 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080057a2 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080057a4 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 080057a6 */ BL func_08004eac \n\
/* 080057aa */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080057ac */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080057ae */ BL mem_heap_dealloc \n\
/* 080057b2 */ ADDS R6, R4, 0x0 @ Set R6 to R4 + 0x0 \n\
 \n\
branch_080057b4: \n\
/* 080057b4 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 080057b6 */ LDRSH R3, [R5, R0] \n\
/* 080057b8 */ MOVS R1, 0xE @ Set R1 to 0xE \n\
/* 080057ba */ LDRSH R0, [R5, R1] \n\
/* 080057bc */ STR R0, [SP] \n\
/* 080057be */ LDRH R0, [R5, 0x10] \n\
/* 080057c0 */ STR R0, [SP, 0x4] \n\
/* 080057c2 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 080057c4 */ STR R4, [SP, 0x8] \n\
/* 080057c6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080057c8 */ STR R0, [SP, 0xC] \n\
/* 080057ca */ STR R0, [SP, 0x10] \n\
/* 080057cc */ LDR R0, [R5, 0x14] \n\
/* 080057ce */ STR R0, [SP, 0x14] \n\
/* 080057d0 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 080057d2 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080057d4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080057d6 */ BL func_0804d294 \n\
/* 080057da */ LSLS R0, R0, 0x10 \n\
/* 080057dc */ LSRS R7, R0, 0x10 \n\
/* 080057de */ LDRB R0, [R5, 0xB] \n\
/* 080057e0 */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 080057e2 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080057e4 */ BNE branch_080057f2 \n\
/* 080057e6 */ LSLS R1, R7, 0x10 \n\
/* 080057e8 */ ASRS R1, R1, 0x10 \n\
/* 080057ea */ MOV R0, R9 @ Set R0 to R9 \n\
/* 080057ec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080057ee */ BL func_0804d770 \n\
 \n\
branch_080057f2: \n\
/* 080057f2 */ LDR R5, [SP, 0x18] \n\
/* 080057f4 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 080057f6 */ BEQ branch_08005804 \n\
/* 080057f8 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 080057fa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080057fc */ BLT branch_08005804 \n\
/* 080057fe */ LSLS R0, R0, 0x1 \n\
/* 08005800 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08005802 */ STRH R7, [R0] \n\
 \n\
branch_08005804: \n\
/* 08005804 */ ADD SP, 0x1C \n\
/* 08005806 */ POP {R3-R5} \n\
/* 08005808 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800580a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800580c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800580e */ POP {R4-R7} \n\
/* 08005810 */ POP {R0} \n\
/* 08005812 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
