asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08020200 \n\
/* 08020200 */ PUSH {LR} \n\
/* 08020202 */ LDR R0, =D_030055d0 \n\
/* 08020204 */ LDR R0, [R0] \n\
/* 08020206 */ MOVS R1, 0xAC @ Set R1 to 0xAC \n\
/* 08020208 */ LSLS R1, R1, 0x1 \n\
/* 0802020a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802020c */ LDRB R0, [R0] \n\
/* 0802020e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08020210 */ BNE branch_0802021c \n\
/* 08020212 */ BL func_0800bce4 \n\
/* 08020216 */ B branch_08020220 \n\
\n\
.ltorg \n\
 \n\
branch_0802021c: \n\
/* 0802021c */ BL func_0800bc40 \n\
 \n\
branch_08020220: \n\
/* 08020220 */ LDR R0, =D_030055d0 \n\
/* 08020222 */ LDR R0, [R0] \n\
/* 08020224 */ MOVS R1, 0xAC @ Set R1 to 0xAC \n\
/* 08020226 */ LSLS R1, R1, 0x1 \n\
/* 08020228 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802022a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802022c */ STRB R1, [R0] \n\
/* 0802022e */ POP {R0} \n\
/* 08020230 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
