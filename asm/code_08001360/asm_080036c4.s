asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080036c4 \n\
/* 080036c4 */ PUSH {R4-R6, LR} \n\
/* 080036c6 */ SUB SP, 0x4 \n\
/* 080036c8 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 080036ca */ LSLS R1, R1, 0x10 \n\
/* 080036cc */ LSRS R5, R1, 0x10 \n\
/* 080036ce */ LSLS R2, R2, 0x10 \n\
/* 080036d0 */ LSRS R6, R2, 0x10 \n\
/* 080036d2 */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 080036d4 */ LDRB R3, [R0] \n\
/* 080036d6 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 080036d8 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080036da */ LDRB R4, [R0] \n\
/* 080036dc */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080036de */ LSRS R1, R1, 0x13 \n\
/* 080036e0 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 080036e2 */ STRH R1, [R0, 0x10] \n\
/* 080036e4 */ LSRS R2, R2, 0x13 \n\
/* 080036e6 */ STRH R2, [R0, 0x12] \n\
/* 080036e8 */ ADDS R0, 0x48 @ Add 0x48 to R0 \n\
/* 080036ea */ STRH R5, [R0] \n\
/* 080036ec */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 080036ee */ STRH R6, [R0] \n\
/* 080036f0 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 080036f2 */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 080036f4 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 080036f6 */ ADDS R1, 0x4E @ Add 0x4E to R1 \n\
/* 080036f8 */ STRH R5, [R1] \n\
/* 080036fa */ ANDS R6, R0 @ Set R6 to R6 & R0 \n\
/* 080036fc */ MOV R0, R12 @ Set R0 to R12 \n\
/* 080036fe */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 08003700 */ STRH R6, [R0] \n\
/* 08003702 */ LSLS R3, R3, 0x18 \n\
/* 08003704 */ LSRS R3, R3, 0x18 \n\
/* 08003706 */ LSLS R4, R4, 0x18 \n\
/* 08003708 */ LSRS R4, R4, 0x18 \n\
/* 0800370a */ STR R4, [SP] \n\
/* 0800370c */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0800370e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08003710 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08003712 */ BL func_0800351c \n\
/* 08003716 */ ADD SP, 0x4 \n\
/* 08003718 */ POP {R4-R6} \n\
/* 0800371a */ POP {R0} \n\
/* 0800371c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
