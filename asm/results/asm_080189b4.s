asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080189b4 \n\
/* 080189b4 */ PUSH {LR} \n\
/* 080189b6 */ BL func_080189f4 \n\
/* 080189ba */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080189bc */ BEQ branch_080189e2 \n\
/* 080189be */ LDR R0, =D_03004afc \n\
/* 080189c0 */ LDRH R1, [R0] \n\
/* 080189c2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080189c4 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080189c6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080189c8 */ BEQ branch_080189e2 \n\
/* 080189ca */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080189cc */ BL func_0800bd04 \n\
/* 080189d0 */ LDR R0, =D_030046a4 \n\
/* 080189d2 */ LDR R1, [R0] \n\
/* 080189d4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080189d6 */ STR R0, [R1, 0x8] \n\
/* 080189d8 */ LDR R0, =s_menu_se20_seqData \n\
/* 080189da */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080189dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080189de */ BL func_08002698 \n\
 \n\
branch_080189e2: \n\
/* 080189e2 */ POP {R0} \n\
/* 080189e4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
