asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ae3c \n\
/* 0800ae3c */ PUSH {R4-R6, LR} \n\
/* 0800ae3e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800ae40 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0800ae42 */ MOVS R1, 0x16 @ Set R1 to 0x16 \n\
/* 0800ae44 */ LDRSH R0, [R4, R1] \n\
/* 0800ae46 */ MOVS R2, 0x2C @ Set R2 to 0x2C \n\
/* 0800ae48 */ LDRSH R1, [R4, R2] \n\
/* 0800ae4a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800ae4c */ MOVS R2, 0x30 @ Set R2 to 0x30 \n\
/* 0800ae4e */ LDRSH R1, [R4, R2] \n\
/* 0800ae50 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 0800ae52 */ LDRB R5, [R4, 0x8] \n\
/* 0800ae54 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800ae56 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800ae58 */ BL __modsi3 \n\
/* 0800ae5c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800ae5e */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800ae60 */ BGE branch_0800ae64 \n\
/* 0800ae62 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
 \n\
branch_0800ae64: \n\
/* 0800ae64 */ LDR R0, [R4, 0x4] \n\
/* 0800ae66 */ BL text_printer_get_line_sprite \n\
/* 0800ae6a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800ae6c */ LDR R0, =D_03005380 \n\
/* 0800ae6e */ LDR R0, [R0] \n\
/* 0800ae70 */ LSLS R1, R1, 0x10 \n\
/* 0800ae72 */ ASRS R1, R1, 0x10 \n\
/* 0800ae74 */ LSLS R2, R6, 0x18 \n\
/* 0800ae76 */ ASRS R2, R2, 0x18 \n\
/* 0800ae78 */ BL func_0804d8c4 \n\
/* 0800ae7c */ POP {R4-R6} \n\
/* 0800ae7e */ POP {R0} \n\
/* 0800ae80 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
