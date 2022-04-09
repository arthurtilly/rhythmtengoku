asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ae34 \n\
/* 0801ae34 */ PUSH {R4, LR} \n\
/* 0801ae36 */ LDR R2, =D_030046a8 \n\
/* 0801ae38 */ LSLS R0, R0, 0x2 \n\
/* 0801ae3a */ ADDS R0, 0xC4 @ Add 0xC4 to R0 \n\
/* 0801ae3c */ LDR R3, [R2] \n\
/* 0801ae3e */ ADDS R0, R3, R0 @ Set R0 to R3 + R0 \n\
/* 0801ae40 */ LSLS R1, R1, 0x2 \n\
/* 0801ae42 */ ADDS R1, 0xC4 @ Add 0xC4 to R1 \n\
/* 0801ae44 */ ADDS R3, R3, R1 @ Set R3 to R3 + R1 \n\
/* 0801ae46 */ LDRB R2, [R0] \n\
/* 0801ae48 */ LDR R1, =0xffffff00 \n\
/* 0801ae4a */ ANDS R4, R1 @ Set R4 to R4 & R1 \n\
/* 0801ae4c */ ORRS R4, R2 @ Set R4 to R4 | R2 \n\
/* 0801ae4e */ LDRB R1, [R0, 0x1] \n\
/* 0801ae50 */ LSLS R1, R1, 0x8 \n\
/* 0801ae52 */ LDR R2, =0xffff00ff \n\
/* 0801ae54 */ ANDS R4, R2 @ Set R4 to R4 & R2 \n\
/* 0801ae56 */ ORRS R4, R1 @ Set R4 to R4 | R1 \n\
/* 0801ae58 */ LDRB R1, [R0, 0x2] \n\
/* 0801ae5a */ LSLS R1, R1, 0x10 \n\
/* 0801ae5c */ LDR R2, =0xff00ffff \n\
/* 0801ae5e */ ANDS R4, R2 @ Set R4 to R4 & R2 \n\
/* 0801ae60 */ ORRS R4, R1 @ Set R4 to R4 | R1 \n\
/* 0801ae62 */ LDRB R1, [R0, 0x3] \n\
/* 0801ae64 */ LSLS R1, R1, 0x18 \n\
/* 0801ae66 */ LDR R2, =0x00ffffff \n\
/* 0801ae68 */ ANDS R4, R2 @ Set R4 to R4 & R2 \n\
/* 0801ae6a */ ORRS R4, R1 @ Set R4 to R4 | R1 \n\
/* 0801ae6c */ LDRB R1, [R3] \n\
/* 0801ae6e */ STRB R1, [R0] \n\
/* 0801ae70 */ LDRB R1, [R3, 0x1] \n\
/* 0801ae72 */ STRB R1, [R0, 0x1] \n\
/* 0801ae74 */ LDRB R1, [R3, 0x2] \n\
/* 0801ae76 */ STRB R1, [R0, 0x2] \n\
/* 0801ae78 */ LDRB R1, [R3, 0x3] \n\
/* 0801ae7a */ STRB R1, [R0, 0x3] \n\
/* 0801ae7c */ STRB R4, [R3] \n\
/* 0801ae7e */ LSRS R0, R4, 0x8 \n\
/* 0801ae80 */ STRB R0, [R3, 0x1] \n\
/* 0801ae82 */ LSRS R0, R4, 0x10 \n\
/* 0801ae84 */ STRB R0, [R3, 0x2] \n\
/* 0801ae86 */ LSRS R0, R4, 0x18 \n\
/* 0801ae88 */ STRB R0, [R3, 0x3] \n\
/* 0801ae8a */ POP {R4} \n\
/* 0801ae8c */ POP {R0} \n\
/* 0801ae8e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
