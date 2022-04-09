asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801cd64 \n\
/* 0801cd64 */ PUSH {LR} \n\
/* 0801cd66 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801cd68 */ BL func_0800c604 \n\
/* 0801cd6c */ BL func_0800c3b8 \n\
/* 0801cd70 */ LSLS R0, R0, 0x10 \n\
/* 0801cd72 */ LSRS R0, R0, 0x10 \n\
/* 0801cd74 */ LDR R1, =D_089dcfec \n\
/* 0801cd76 */ BL func_080087b4 \n\
/* 0801cd7a */ LDR R1, =func_0800bd04 \n\
/* 0801cd7c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801cd7e */ BL func_08005d38 \n\
/* 0801cd82 */ POP {R0} \n\
/* 0801cd84 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
