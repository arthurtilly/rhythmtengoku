asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802a970 \n\
/* 0802a970 */ LDR R0, =D_030055d0 \n\
/* 0802a972 */ LDR R1, [R0] \n\
/* 0802a974 */ MOVS R0, 0xEE @ Set R0 to 0xEE \n\
/* 0802a976 */ LSLS R0, R0, 0x2 \n\
/* 0802a978 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802a97a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a97c */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 0802a97e */ STRH R0, [R1, 0x4] \n\
/* 0802a980 */ LDRB R2, [R1] \n\
/* 0802a982 */ SUBS R0, 0x7A @ Subtract 0x7A from R0 \n\
/* 0802a984 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0802a986 */ STRB R0, [R1] \n\
/* 0802a988 */ STRH R3, [R1, 0x6] \n\
/* 0802a98a */ STRH R3, [R1, 0x8] \n\
/* 0802a98c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
