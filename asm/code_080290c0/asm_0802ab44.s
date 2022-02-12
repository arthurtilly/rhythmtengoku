asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802ab44 \n\
/* 0802ab44 */ PUSH {R4, LR} \n\
/* 0802ab46 */ MOVS R4, 0xFF @ Set R4 to 0xFF \n\
/* 0802ab48 */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 0802ab4a */ STR R4, [R1] \n\
/* 0802ab4c */ LSLS R1, R0, 0xF \n\
/* 0802ab4e */ LSRS R1, R1, 0x17 \n\
/* 0802ab50 */ STR R1, [R2] \n\
/* 0802ab52 */ ASRS R0, R0, 0x11 \n\
/* 0802ab54 */ STR R0, [R3] \n\
/* 0802ab56 */ POP {R4} \n\
/* 0802ab58 */ POP {R0} \n\
/* 0802ab5a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
