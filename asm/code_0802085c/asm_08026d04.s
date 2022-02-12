asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08026d04 \n\
/* 08026d04 */ PUSH {LR} \n\
/* 08026d06 */ LDR R0, =D_030055d0 \n\
/* 08026d08 */ LDR R0, [R0] \n\
/* 08026d0a */ MOVS R1, 0xE7 @ Set R1 to 0xE7 \n\
/* 08026d0c */ LSLS R1, R1, 0x2 \n\
/* 08026d0e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08026d10 */ LDR R0, [R0] \n\
/* 08026d12 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08026d14 */ BEQ branch_08026d1e \n\
/* 08026d16 */ LSLS R0, R0, 0x10 \n\
/* 08026d18 */ LSRS R0, R0, 0x10 \n\
/* 08026d1a */ BL func_0800bdf8 \n\
 \n\
branch_08026d1e: \n\
/* 08026d1e */ POP {R0} \n\
/* 08026d20 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
