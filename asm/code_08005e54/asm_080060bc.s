asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080060bc \n\
/* 080060bc */ PUSH {R4-R7, LR} \n\
/* 080060be */ SUB SP, 0x4 \n\
/* 080060c0 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080060c2 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 080060c4 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 080060c6 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080060c8 */ BEQ branch_08006188 \n\
/* 080060ca */ LDRH R4, [R5, 0x8] \n\
/* 080060cc */ LDR R2, =0x3ff \n\
/* 080060ce */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080060d0 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 080060d2 */ LSLS R0, R0, 0x1 \n\
/* 080060d4 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 080060d6 */ MOVS R3, 0xFC @ Set R3 to 0xFC \n\
/* 080060d8 */ LSLS R3, R3, 0x8 \n\
/* 080060da */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 080060dc */ ANDS R1, R4 @ Set R1 to R1 & R4 \n\
/* 080060de */ LDRH R0, [R0] \n\
/* 080060e0 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 080060e2 */ STRH R1, [R7, 0x8] \n\
/* 080060e4 */ LDRH R4, [R5, 0x2] \n\
/* 080060e6 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080060e8 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 080060ea */ LSLS R0, R0, 0x1 \n\
/* 080060ec */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 080060ee */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 080060f0 */ ANDS R1, R4 @ Set R1 to R1 & R4 \n\
/* 080060f2 */ LDRH R0, [R0] \n\
/* 080060f4 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 080060f6 */ STRH R1, [R7, 0x2] \n\
/* 080060f8 */ LDRH R4, [R5, 0xE] \n\
/* 080060fa */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080060fc */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 080060fe */ LSLS R0, R0, 0x1 \n\
/* 08006100 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08006102 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08006104 */ ANDS R1, R4 @ Set R1 to R1 & R4 \n\
/* 08006106 */ LDRH R0, [R0] \n\
/* 08006108 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0800610a */ STRH R1, [R7, 0xE] \n\
/* 0800610c */ LDRH R4, [R5, 0x6] \n\
/* 0800610e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08006110 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08006112 */ LSLS R0, R0, 0x1 \n\
/* 08006114 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08006116 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08006118 */ ANDS R1, R4 @ Set R1 to R1 & R4 \n\
/* 0800611a */ LDRH R0, [R0] \n\
/* 0800611c */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0800611e */ STRH R1, [R7, 0x6] \n\
/* 08006120 */ LDRH R4, [R5, 0xA] \n\
/* 08006122 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08006124 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08006126 */ LSLS R0, R0, 0x1 \n\
/* 08006128 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0800612a */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0800612c */ ANDS R1, R4 @ Set R1 to R1 & R4 \n\
/* 0800612e */ LDRH R0, [R0] \n\
/* 08006130 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08006132 */ STRH R1, [R7, 0xA] \n\
/* 08006134 */ LDRH R4, [R5] \n\
/* 08006136 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08006138 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0800613a */ LSLS R0, R0, 0x1 \n\
/* 0800613c */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0800613e */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08006140 */ ANDS R1, R4 @ Set R1 to R1 & R4 \n\
/* 08006142 */ LDRH R0, [R0] \n\
/* 08006144 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 08006146 */ STRH R1, [R7] \n\
/* 08006148 */ LDRH R4, [R5, 0x4] \n\
/* 0800614a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800614c */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0800614e */ LSLS R0, R0, 0x1 \n\
/* 08006150 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08006152 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08006154 */ ANDS R1, R4 @ Set R1 to R1 & R4 \n\
/* 08006156 */ LDRH R0, [R0] \n\
/* 08006158 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0800615a */ STRH R1, [R7, 0x4] \n\
/* 0800615c */ LDRH R4, [R5, 0xC] \n\
/* 0800615e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08006160 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08006162 */ LSLS R0, R0, 0x1 \n\
/* 08006164 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08006166 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08006168 */ ANDS R1, R4 @ Set R1 to R1 & R4 \n\
/* 0800616a */ LDRH R0, [R0] \n\
/* 0800616c */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0800616e */ STRH R1, [R7, 0xC] \n\
/* 08006170 */ LDRH R0, [R5, 0x10] \n\
/* 08006172 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 08006174 */ LSLS R2, R2, 0x1 \n\
/* 08006176 */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 08006178 */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 0800617a */ LDRH R0, [R2] \n\
/* 0800617c */ ORRS R3, R0 @ Set R3 to R3 | R0 \n\
/* 0800617e */ STRH R3, [R7, 0x10] \n\
/* 08006180 */ B branch_0800619a \n\
\n\
.ltorg \n\
 \n\
branch_08006188: \n\
/* 08006188 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0800618a */ LSLS R0, R0, 0x1 \n\
/* 0800618c */ STR R0, [SP] \n\
/* 0800618e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08006190 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08006192 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 08006194 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08006196 */ BL dma3_set \n\
 \n\
branch_0800619a: \n\
/* 0800619a */ ADD SP, 0x4 \n\
/* 0800619c */ POP {R4-R7} \n\
/* 0800619e */ POP {R0} \n\
/* 080061a0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
