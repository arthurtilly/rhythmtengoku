asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801ee3c \n\
/* 0801ee3c */ PUSH {LR} \n\
/* 0801ee3e */ BL func_0801ee6c \n\
/* 0801ee42 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801ee44 */ BEQ branch_0801ee60 \n\
/* 0801ee46 */ LDR R0, =D_03004afc \n\
/* 0801ee48 */ LDRH R1, [R0] \n\
/* 0801ee4a */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0801ee4c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801ee4e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801ee50 */ BEQ branch_0801ee60 \n\
/* 0801ee52 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ee54 */ BL func_0800bd04 \n\
/* 0801ee58 */ LDR R0, =D_030046a4 \n\
/* 0801ee5a */ LDR R1, [R0] \n\
/* 0801ee5c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ee5e */ STR R0, [R1, 0x8] \n\
 \n\
branch_0801ee60: \n\
/* 0801ee60 */ POP {R0} \n\
/* 0801ee62 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
