asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801f5c0 \n\
/* 0801f5c0 */ PUSH {R4, LR} \n\
/* 0801f5c2 */ SUB SP, 0x4 \n\
/* 0801f5c4 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801f5c6 */ LDR R0, =D_030055d0 \n\
/* 0801f5c8 */ LDR R0, [R0] \n\
/* 0801f5ca */ ADDS R0, 0x80 @ Add 0x80 to R0 \n\
/* 0801f5cc */ STRH R4, [R0] \n\
/* 0801f5ce */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0801f5d0 */ BL func_0800c3a4 \n\
/* 0801f5d4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801f5d6 */ LDR R2, =D_03005550 \n\
/* 0801f5d8 */ LDRH R3, [R2] \n\
/* 0801f5da */ STR R4, [SP] \n\
/* 0801f5dc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801f5de */ BL func_0800c4b0 \n\
/* 0801f5e2 */ ADD SP, 0x4 \n\
/* 0801f5e4 */ POP {R4} \n\
/* 0801f5e6 */ POP {R0} \n\
/* 0801f5e8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
