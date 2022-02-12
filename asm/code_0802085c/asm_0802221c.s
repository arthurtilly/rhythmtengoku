asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802221c \n\
/* 0802221c */ PUSH {LR} \n\
/* 0802221e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08022220 */ LDR R1, =D_030055d0 \n\
/* 08022222 */ LDR R0, [R1] \n\
/* 08022224 */ STRB R2, [R0, 0x17] \n\
/* 08022226 */ LDR R0, =D_03005380 \n\
/* 08022228 */ LDR R0, [R0] \n\
/* 0802222a */ LDR R1, [R1] \n\
/* 0802222c */ MOVS R3, 0x14 @ Set R3 to 0x14 \n\
/* 0802222e */ LDRSH R1, [R1, R3] \n\
/* 08022230 */ LSLS R2, R2, 0x10 \n\
/* 08022232 */ LSRS R2, R2, 0x10 \n\
/* 08022234 */ BL func_0804d770 \n\
/* 08022238 */ POP {R0} \n\
/* 0802223a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
