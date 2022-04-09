asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080335e8 \n\
/* 080335e8 */ PUSH {R4, R5, LR} \n\
/* 080335ea */ SUB SP, 0xC \n\
/* 080335ec */ LDR R5, =D_03005380 \n\
/* 080335ee */ LDR R0, [R5] \n\
/* 080335f0 */ LDR R4, =D_030055d0 \n\
/* 080335f2 */ LDR R1, [R4] \n\
/* 080335f4 */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 080335f6 */ LDRSH R1, [R1, R2] \n\
/* 080335f8 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 080335fa */ BL func_0804ddb0 \n\
/* 080335fe */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08033600 */ LDR R0, [R5] \n\
/* 08033602 */ LDR R1, [R4] \n\
/* 08033604 */ MOVS R3, 0x36 @ Set R3 to 0x36 \n\
/* 08033606 */ LDRSH R1, [R1, R3] \n\
/* 08033608 */ LSLS R2, R2, 0x10 \n\
/* 0803360a */ LDR R3, =0xffe80000 \n\
/* 0803360c */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0803360e */ ASRS R2, R2, 0x10 \n\
/* 08033610 */ BL func_0804d648 \n\
/* 08033614 */ LDR R0, [R5] \n\
/* 08033616 */ LDR R1, [R4] \n\
/* 08033618 */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 0803361a */ LDRSH R1, [R1, R2] \n\
/* 0803361c */ LDR R2, =D_088eef28 \n\
/* 0803361e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08033620 */ STR R3, [SP] \n\
/* 08033622 */ STR R3, [SP, 0x4] \n\
/* 08033624 */ STR R3, [SP, 0x8] \n\
/* 08033626 */ BL func_0804d8f8 \n\
/* 0803362a */ ADD SP, 0xC \n\
/* 0803362c */ POP {R4, R5} \n\
/* 0803362e */ POP {R0} \n\
/* 08033630 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
