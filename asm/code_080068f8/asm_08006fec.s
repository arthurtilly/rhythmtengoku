asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006fec \n\
/* 08006fec */ PUSH {LR} \n\
/* 08006fee */ SUB SP, 0x4 \n\
/* 08006ff0 */ LDR R0, =0x22222222 \n\
/* 08006ff2 */ LDR R1, =D_03004f64 \n\
/* 08006ff4 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08006ff6 */ LSLS R2, R2, 0x3 \n\
/* 08006ff8 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08006ffa */ LSLS R3, R3, 0x1 \n\
/* 08006ffc */ STR R3, [SP] \n\
/* 08006ffe */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08007000 */ BL func_080018e0 \n\
/* 08007004 */ ADD SP, 0x4 \n\
/* 08007006 */ POP {R0} \n\
/* 08007008 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
