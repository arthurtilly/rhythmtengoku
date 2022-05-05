asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018318 \n\
/* 08018318 */ PUSH {LR} \n\
/* 0801831a */ SUB SP, 0x4 \n\
/* 0801831c */ LDR R0, =D_030046a4 \n\
/* 0801831e */ LDR R0, [R0] \n\
/* 08018320 */ ADDS R0, 0x94 @ Add 0x94 to R0 \n\
/* 08018322 */ LDR R1, =(D_03004b10 + 0x54) \n\
/* 08018324 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08018326 */ LSLS R2, R2, 0x3 \n\
/* 08018328 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0801832a */ LSLS R3, R3, 0x2 \n\
/* 0801832c */ STR R3, [SP] \n\
/* 0801832e */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08018330 */ BL func_0800186c \n\
/* 08018334 */ ADD SP, 0x4 \n\
/* 08018336 */ POP {R0} \n\
/* 08018338 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
