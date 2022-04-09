asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801853c \n\
/* 0801853c */ PUSH {R4-R6, LR} \n\
/* 0801853e */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08018540 */ PUSH {R6} \n\
/* 08018542 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08018544 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08018546 */ LDR R0, =D_03005380 \n\
/* 08018548 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801854a */ LDR R0, [R0] \n\
/* 0801854c */ LDR R6, =D_030046a4 \n\
/* 0801854e */ LDR R1, [R6] \n\
/* 08018550 */ LDR R5, =0x494 \n\
/* 08018552 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 08018554 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08018556 */ LDRSH R1, [R1, R3] \n\
/* 08018558 */ LSLS R2, R2, 0x18 \n\
/* 0801855a */ ASRS R2, R2, 0x18 \n\
/* 0801855c */ BL func_0804cebc \n\
/* 08018560 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08018562 */ LDR R0, [R1] \n\
/* 08018564 */ LDR R1, [R6] \n\
/* 08018566 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 08018568 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801856a */ LDRSH R1, [R1, R2] \n\
/* 0801856c */ LSLS R4, R4, 0x10 \n\
/* 0801856e */ LSRS R4, R4, 0x10 \n\
/* 08018570 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08018572 */ BL func_0804d770 \n\
/* 08018576 */ POP {R3} \n\
/* 08018578 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801857a */ POP {R4-R6} \n\
/* 0801857c */ POP {R0} \n\
/* 0801857e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
