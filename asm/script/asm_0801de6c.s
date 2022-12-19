asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801de6c \n\
/* 0801de6c */ PUSH {R4, R5, LR} \n\
/* 0801de6e */ SUB SP, 0x4 \n\
/* 0801de70 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801de72 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801de74 */ ADDS R1, 0x29 @ Add 0x29 to R1 \n\
/* 0801de76 */ LDRB R0, [R1] \n\
/* 0801de78 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801de7a */ BEQ branch_0801deae \n\
/* 0801de7c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801de7e */ STRB R0, [R1] \n\
/* 0801de80 */ LDR R0, =0x88888888 \n\
/* 0801de82 */ LDR R1, [R5, 0x2C] \n\
/* 0801de84 */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 0801de86 */ LSLS R4, R4, 0x1 \n\
/* 0801de88 */ STR R4, [SP] \n\
/* 0801de8a */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0801de8c */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801de8e */ BL dma3_fill \n\
/* 0801de92 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801de94 */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 0801de96 */ LDRB R0, [R0] \n\
/* 0801de98 */ LSLS R0, R0, 0xC \n\
/* 0801de9a */ LDRH R1, [R5, 0x2A] \n\
/* 0801de9c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801de9e */ LSLS R1, R0, 0x10 \n\
/* 0801dea0 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0801dea2 */ LDR R1, [R5, 0x10] \n\
/* 0801dea4 */ STR R4, [SP] \n\
/* 0801dea6 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801dea8 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801deaa */ BL dma3_fill \n\
 \n\
branch_0801deae: \n\
/* 0801deae */ ADD SP, 0x4 \n\
/* 0801deb0 */ POP {R4, R5} \n\
/* 0801deb2 */ POP {R0} \n\
/* 0801deb4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
