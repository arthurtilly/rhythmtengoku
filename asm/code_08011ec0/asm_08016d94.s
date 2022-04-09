asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016d94 \n\
/* 08016d94 */ PUSH {LR} \n\
/* 08016d96 */ BL func_08016dd8 \n\
/* 08016d9a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016d9c */ BEQ branch_08016dbe \n\
/* 08016d9e */ LDR R0, =D_03004afc \n\
/* 08016da0 */ LDRH R1, [R0] \n\
/* 08016da2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08016da4 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08016da6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08016da8 */ BEQ branch_08016dbe \n\
/* 08016daa */ LDR R0, =s_menu_kettei2_seqData \n\
/* 08016dac */ BL func_08002634 \n\
/* 08016db0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016db2 */ BL func_0800bd04 \n\
/* 08016db6 */ LDR R0, =D_030046a4 \n\
/* 08016db8 */ LDR R1, [R0] \n\
/* 08016dba */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08016dbc */ STR R0, [R1, 0x4] \n\
 \n\
branch_08016dbe: \n\
/* 08016dbe */ LDR R0, =D_030046a4 \n\
/* 08016dc0 */ LDR R0, [R0] \n\
/* 08016dc2 */ LDR R0, [R0] \n\
/* 08016dc4 */ BL func_0800a914 \n\
/* 08016dc8 */ POP {R0} \n\
/* 08016dca */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
