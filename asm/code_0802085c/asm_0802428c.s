asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802428c \n\
/* 0802428c */ PUSH {LR} \n\
/* 0802428e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08024290 */ BL func_0800c604 \n\
/* 08024294 */ BL func_0800c3b8 \n\
/* 08024298 */ LSLS R0, R0, 0x10 \n\
/* 0802429a */ LSRS R0, R0, 0x10 \n\
/* 0802429c */ LDR R2, =D_089e0154 \n\
/* 0802429e */ LDR R1, =D_030055d0 \n\
/* 080242a0 */ LDR R1, [R1] \n\
/* 080242a2 */ LDRB R1, [R1] \n\
/* 080242a4 */ LSLS R1, R1, 0x2 \n\
/* 080242a6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080242a8 */ LDR R1, [R1] \n\
/* 080242aa */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080242ac */ LSLS R2, R2, 0x6 \n\
/* 080242ae */ BL func_08002ee0 \n\
/* 080242b2 */ LDR R1, =(func_0802424c + 1) \n\
/* 080242b4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080242b6 */ BL func_08005d38 \n\
/* 080242ba */ POP {R0} \n\
/* 080242bc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
