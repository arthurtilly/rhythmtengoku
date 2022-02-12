asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080220c4 \n\
/* 080220c4 */ PUSH {R4, R5, LR} \n\
/* 080220c6 */ LDR R5, =D_030055d0 \n\
/* 080220c8 */ LDR R0, [R5] \n\
/* 080220ca */ LDRB R0, [R0, 0x16] \n\
/* 080220cc */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080220ce */ BLS branch_080220d6 \n\
/* 080220d0 */ LDR R0, =D_08a9e1b0 \n\
/* 080220d2 */ BL func_08002634 \n\
 \n\
branch_080220d6: \n\
/* 080220d6 */ LDR R0, [R5] \n\
/* 080220d8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080220da */ STRB R4, [R0, 0x16] \n\
/* 080220dc */ LDR R0, =D_03005380 \n\
/* 080220de */ LDR R0, [R0] \n\
/* 080220e0 */ LDR R2, [R5] \n\
/* 080220e2 */ MOVS R3, 0x14 @ Set R3 to 0x14 \n\
/* 080220e4 */ LDRSH R1, [R2, R3] \n\
/* 080220e6 */ LDRB R2, [R2, 0x16] \n\
/* 080220e8 */ LSLS R2, R2, 0x18 \n\
/* 080220ea */ ASRS R2, R2, 0x18 \n\
/* 080220ec */ BL func_0804cebc \n\
/* 080220f0 */ LDR R0, [R5] \n\
/* 080220f2 */ STRB R4, [R0, 0x18] \n\
/* 080220f4 */ LDR R1, [R5] \n\
/* 080220f6 */ LDR R0, =D_089df37c \n\
/* 080220f8 */ STR R0, [R1, 0x1C] \n\
/* 080220fa */ BL func_080221cc \n\
/* 080220fe */ POP {R4, R5} \n\
/* 08022100 */ POP {R0} \n\
/* 08022102 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
