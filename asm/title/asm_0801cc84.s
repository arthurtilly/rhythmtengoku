asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801cc84 \n\
/* 0801cc84 */ PUSH {R4-R6, LR} \n\
/* 0801cc86 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801cc88 */ LDR R6, =gCurrentSceneData \n\
/* 0801cc8a */ MOVS R5, 0x14 @ Set R5 to 0x14 \n\
 \n\
branch_0801cc8c: \n\
/* 0801cc8c */ LDR R0, [R6] \n\
/* 0801cc8e */ ADDS R2, R0, R5 @ Set R2 to R0 + R5 \n\
/* 0801cc90 */ LDRB R0, [R2] \n\
/* 0801cc92 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801cc94 */ BEQ branch_0801ccbe \n\
/* 0801cc96 */ LDRH R0, [R2, 0x12] \n\
/* 0801cc98 */ LDRH R1, [R2, 0x10] \n\
/* 0801cc9a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801cc9c */ STRH R0, [R2, 0x10] \n\
/* 0801cc9e */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0801cca0 */ LDRSH R1, [R2, R3] \n\
/* 0801cca2 */ MOVS R3, 0xE @ Set R3 to 0xE \n\
/* 0801cca4 */ LDRSH R0, [R2, R3] \n\
/* 0801cca6 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0801cca8 */ ASRS R0, R0, 0x8 \n\
/* 0801ccaa */ STRH R0, [R2, 0xC] \n\
/* 0801ccac */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0801ccae */ LDRSH R1, [R2, R0] \n\
/* 0801ccb0 */ MOVS R0, 0xE6 @ Set R0 to 0xE6 \n\
/* 0801ccb2 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0801ccb4 */ ASRS R0, R0, 0x8 \n\
/* 0801ccb6 */ STRH R0, [R2, 0x18] \n\
/* 0801ccb8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801ccba */ BL func_0801ca34 \n\
 \n\
branch_0801ccbe: \n\
/* 0801ccbe */ ADDS R5, 0x1C @ Add 0x1C to R5 \n\
/* 0801ccc0 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0801ccc2 */ CMP R4, 0x4 @ Compare R4 and 0x4 \n\
/* 0801ccc4 */ BLS branch_0801cc8c \n\
/* 0801ccc6 */ POP {R4-R6} \n\
/* 0801ccc8 */ POP {R0} \n\
/* 0801ccca */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
