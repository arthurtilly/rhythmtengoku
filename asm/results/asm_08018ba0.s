asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018ba0 \n\
/* 08018ba0 */ PUSH {LR} \n\
/* 08018ba2 */ BL func_080189f4 \n\
/* 08018ba6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08018ba8 */ BEQ branch_08018bce \n\
/* 08018baa */ LDR R0, =D_03004afc \n\
/* 08018bac */ LDRH R1, [R0] \n\
/* 08018bae */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08018bb0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08018bb2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08018bb4 */ BEQ branch_08018bce \n\
/* 08018bb6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08018bb8 */ BL func_0800bd04 \n\
/* 08018bbc */ LDR R0, =D_030046a4 \n\
/* 08018bbe */ LDR R1, [R0] \n\
/* 08018bc0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08018bc2 */ STR R0, [R1, 0x8] \n\
/* 08018bc4 */ LDR R0, =s_menu_se20_seqData \n\
/* 08018bc6 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08018bc8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018bca */ BL func_08002698 \n\
 \n\
branch_08018bce: \n\
/* 08018bce */ POP {R0} \n\
/* 08018bd0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
