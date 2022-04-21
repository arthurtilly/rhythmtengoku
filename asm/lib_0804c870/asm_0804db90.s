asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804db90 \n\
/* 0804db90 */ PUSH {R4-R6, LR} \n\
/* 0804db92 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804db94 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0804db96 */ LDR R2, =D_03004428 \n\
/* 0804db98 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0804db9a */ STRB R0, [R2] \n\
/* 0804db9c */ LSLS R1, R1, 0x10 \n\
/* 0804db9e */ ASRS R4, R1, 0x10 \n\
/* 0804dba0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804dba2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804dba4 */ BL func_0804cc68 \n\
/* 0804dba8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804dbaa */ BNE branch_0804dbc0 \n\
/* 0804dbac */ LSLS R0, R4, 0x4 \n\
/* 0804dbae */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804dbb0 */ LSLS R0, R0, 0x2 \n\
/* 0804dbb2 */ LDR R1, [R5, 0x8] \n\
/* 0804dbb4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804dbb6 */ STR R6, [R1, 0x2C] \n\
/* 0804dbb8 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0804dbba */ BNE branch_0804dbc0 \n\
/* 0804dbbc */ LDR R0, =D_08bd0cac \n\
/* 0804dbbe */ STR R0, [R1, 0x2C] \n\
 \n\
branch_0804dbc0: \n\
/* 0804dbc0 */ POP {R4-R6} \n\
/* 0804dbc2 */ POP {R0} \n\
/* 0804dbc4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
