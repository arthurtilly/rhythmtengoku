asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803f390 \n\
/* 0803f390 */ PUSH {LR} \n\
/* 0803f392 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803f394 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803f396 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0803f398 */ LSRS R2, R2, 0x2 \n\
/* 0803f39a */ LDR R1, =0x3ff \n\
/* 0803f39c */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0803f39e */ LSRS R2, R2, 0xA \n\
/* 0803f3a0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803f3a2 */ BL func_0803f1f4 \n\
/* 0803f3a6 */ POP {R0} \n\
/* 0803f3a8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
