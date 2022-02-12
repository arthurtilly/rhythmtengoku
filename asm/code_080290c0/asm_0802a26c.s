asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802a26c \n\
/* 0802a26c */ PUSH {R4, LR} \n\
/* 0802a26e */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0802a270 */ LDR R1, [R3, 0x14] \n\
/* 0802a272 */ ASRS R0, R1, 0x8 \n\
/* 0802a274 */ CMP R0, 0x64 @ Compare R0 and 0x64 \n\
/* 0802a276 */ BGT branch_0802a298 \n\
/* 0802a278 */ LDR R2, [R3, 0x18] \n\
/* 0802a27a */ ADDS R2, 0x1C @ Add 0x1C to R2 \n\
/* 0802a27c */ STR R2, [R3, 0x18] \n\
/* 0802a27e */ ADDS R2, R1, R2 @ Set R2 to R1 + R2 \n\
/* 0802a280 */ STR R2, [R3, 0x14] \n\
/* 0802a282 */ LDR R0, =D_03005380 \n\
/* 0802a284 */ LDR R0, [R0] \n\
/* 0802a286 */ MOVS R4, 0x4 @ Set R4 to 0x4 \n\
/* 0802a288 */ LDRSH R1, [R3, R4] \n\
/* 0802a28a */ ASRS R2, R2, 0x8 \n\
/* 0802a28c */ LDRH R3, [R3, 0x10] \n\
/* 0802a28e */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0802a290 */ LSLS R2, R2, 0x10 \n\
/* 0802a292 */ ASRS R2, R2, 0x10 \n\
/* 0802a294 */ BL func_0804d648 \n\
 \n\
branch_0802a298: \n\
/* 0802a298 */ POP {R4} \n\
/* 0802a29a */ POP {R0} \n\
/* 0802a29c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
