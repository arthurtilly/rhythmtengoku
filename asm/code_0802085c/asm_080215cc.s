asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080215cc \n\
/* 080215cc */ PUSH {R4, R5, LR} \n\
/* 080215ce */ LDR R4, =D_030055d0 \n\
/* 080215d0 */ LDR R0, [R4] \n\
/* 080215d2 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 080215d4 */ BL func_08021e40 \n\
/* 080215d8 */ LDR R5, =D_03005380 \n\
/* 080215da */ LDR R0, [R5] \n\
/* 080215dc */ LDR R1, [R4] \n\
/* 080215de */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 080215e0 */ LDRSH R1, [R1, R2] \n\
/* 080215e2 */ BL func_0804d504 \n\
/* 080215e6 */ LDR R0, [R5] \n\
/* 080215e8 */ LDR R1, [R4] \n\
/* 080215ea */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 080215ec */ LDRSH R1, [R1, R2] \n\
/* 080215ee */ BL func_0804d504 \n\
/* 080215f2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080215f4 */ BL func_0800e044 \n\
/* 080215f8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080215fa */ BL func_0800e044 \n\
/* 080215fe */ POP {R4, R5} \n\
/* 08021600 */ POP {R0} \n\
/* 08021602 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
