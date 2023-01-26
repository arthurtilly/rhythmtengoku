asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080139b0 \n\
/* 080139b0 */ PUSH {R4-R6, LR} \n\
/* 080139b2 */ LDR R5, =D_030046a4 \n\
/* 080139b4 */ LDR R3, [R5] \n\
/* 080139b6 */ ADDS R3, 0x4E @ Add 0x4E to R3 \n\
/* 080139b8 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 080139ba */ STRB R4, [R3] \n\
/* 080139bc */ LDR R5, [R5] \n\
/* 080139be */ MOV R12, R5 @ Set R12 to R5 \n\
/* 080139c0 */ ADDS R5, 0x54 @ Add 0x54 to R5 \n\
/* 080139c2 */ LDRH R4, [R5] \n\
/* 080139c4 */ MOV R3, R12 @ Set R3 to R12 \n\
/* 080139c6 */ ADDS R3, 0x50 @ Add 0x50 to R3 \n\
/* 080139c8 */ STRH R4, [R3] \n\
/* 080139ca */ MOV R6, R12 @ Set R6 to R12 \n\
/* 080139cc */ ADDS R6, 0x56 @ Add 0x56 to R6 \n\
/* 080139ce */ LDRH R3, [R6] \n\
/* 080139d0 */ MOV R4, R12 @ Set R4 to R12 \n\
/* 080139d2 */ ADDS R4, 0x52 @ Add 0x52 to R4 \n\
/* 080139d4 */ STRH R3, [R4] \n\
/* 080139d6 */ STRH R0, [R5] \n\
/* 080139d8 */ STRH R1, [R6] \n\
/* 080139da */ MOV R0, R12 @ Set R0 to R12 \n\
/* 080139dc */ ADDS R0, 0x5A @ Add 0x5A to R0 \n\
/* 080139de */ STRH R2, [R0] \n\
/* 080139e0 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 080139e2 */ ADDS R1, 0x58 @ Add 0x58 to R1 \n\
/* 080139e4 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080139e6 */ LSLS R0, R0, 0x1 \n\
/* 080139e8 */ STRH R0, [R1] \n\
/* 080139ea */ POP {R4-R6} \n\
/* 080139ec */ POP {R0} \n\
/* 080139ee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
