asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802a300 \n\
/* 0802a300 */ PUSH {R4, LR} \n\
/* 0802a302 */ LDR R2, [R0, 0x14] \n\
/* 0802a304 */ SUBS R2, 0x80 @ Subtract 0x80 from R2 \n\
/* 0802a306 */ STR R2, [R0, 0x14] \n\
/* 0802a308 */ LDR R1, =D_03005380 \n\
/* 0802a30a */ LDR R3, [R1] \n\
/* 0802a30c */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
/* 0802a30e */ LDRSH R1, [R0, R4] \n\
/* 0802a310 */ ASRS R2, R2, 0x8 \n\
/* 0802a312 */ LDRH R0, [R0, 0x10] \n\
/* 0802a314 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0802a316 */ LSLS R2, R2, 0x10 \n\
/* 0802a318 */ ASRS R2, R2, 0x10 \n\
/* 0802a31a */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0802a31c */ BL func_0804d648 \n\
/* 0802a320 */ POP {R4} \n\
/* 0802a322 */ POP {R0} \n\
/* 0802a324 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
