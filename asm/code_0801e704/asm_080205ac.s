asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080205ac \n\
/* 080205ac */ PUSH {R4-R6, LR} \n\
/* 080205ae */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 080205b0 */ LDR R0, =D_030055d0 \n\
/* 080205b2 */ LDR R4, [R0] \n\
/* 080205b4 */ ADDS R6, R4, 0x0 @ Set R6 to R4 + 0x0 \n\
/* 080205b6 */ ADDS R6, 0x8 @ Add 0x8 to R6 \n\
/* 080205b8 */ LDR R0, [R4, 0x8] \n\
/* 080205ba */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080205bc */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080205be */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080205c0 */ BL func_08010008 \n\
/* 080205c4 */ LDR R0, [R4, 0x8] \n\
/* 080205c6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080205c8 */ BL func_0800ffc0 \n\
/* 080205cc */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 080205ce */ BL func_0800c3a4 \n\
/* 080205d2 */ STR R0, [R6, 0x10] \n\
/* 080205d4 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080205d6 */ STRH R0, [R5, 0xE] \n\
/* 080205d8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080205da */ STRB R0, [R5] \n\
/* 080205dc */ POP {R4-R6} \n\
/* 080205de */ POP {R0} \n\
/* 080205e0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
