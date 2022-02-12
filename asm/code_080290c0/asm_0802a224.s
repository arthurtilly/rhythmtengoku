asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802a224 \n\
/* 0802a224 */ PUSH {R4, LR} \n\
/* 0802a226 */ LDR R0, =D_030055d0 \n\
/* 0802a228 */ LDR R4, [R0] \n\
/* 0802a22a */ MOVS R0, 0xD6 @ Set R0 to 0xD6 \n\
/* 0802a22c */ LSLS R0, R0, 0x2 \n\
/* 0802a22e */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0802a230 */ LDRB R1, [R4] \n\
/* 0802a232 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0802a234 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802a236 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802a238 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0802a23a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802a23c */ STRB R0, [R4] \n\
/* 0802a23e */ LDR R0, =D_03005380 \n\
/* 0802a240 */ LDR R0, [R0] \n\
/* 0802a242 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802a244 */ LDRSH R1, [R4, R2] \n\
/* 0802a246 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 0802a248 */ BL func_0804ddb0 \n\
/* 0802a24c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802a24e */ STRH R0, [R4, 0x10] \n\
/* 0802a250 */ STR R1, [R4, 0x14] \n\
/* 0802a252 */ STR R1, [R4, 0x18] \n\
/* 0802a254 */ LDR R0, =D_08a9e78c \n\
/* 0802a256 */ BL func_08002634 \n\
/* 0802a25a */ POP {R4} \n\
/* 0802a25c */ POP {R0} \n\
/* 0802a25e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
