asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802af7c \n\
/* 0802af7c */ PUSH {R4, LR} \n\
/* 0802af7e */ LDR R4, =D_03001568 \n\
/* 0802af80 */ LDR R4, [R4] \n\
/* 0802af82 */ MOV R12, R4 @ Set R12 to R4 \n\
/* 0802af84 */ MOVS R4, 0xD0 @ Set R4 to 0xD0 \n\
/* 0802af86 */ LSLS R4, R4, 0x2 \n\
/* 0802af88 */ ADD R4, R12 @ Add R12 to R4 \n\
/* 0802af8a */ STRH R0, [R4] \n\
/* 0802af8c */ MOVS R0, 0xD1 @ Set R0 to 0xD1 \n\
/* 0802af8e */ LSLS R0, R0, 0x2 \n\
/* 0802af90 */ ADD R0, R12 @ Add R12 to R0 \n\
/* 0802af92 */ STRH R1, [R0] \n\
/* 0802af94 */ MOVS R0, 0xD2 @ Set R0 to 0xD2 \n\
/* 0802af96 */ LSLS R0, R0, 0x2 \n\
/* 0802af98 */ ADD R0, R12 @ Add R12 to R0 \n\
/* 0802af9a */ STR R2, [R0] \n\
/* 0802af9c */ MOVS R0, 0xD3 @ Set R0 to 0xD3 \n\
/* 0802af9e */ LSLS R0, R0, 0x2 \n\
/* 0802afa0 */ ADD R0, R12 @ Add R12 to R0 \n\
/* 0802afa2 */ STR R3, [R0] \n\
/* 0802afa4 */ POP {R4} \n\
/* 0802afa6 */ POP {R0} \n\
/* 0802afa8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
