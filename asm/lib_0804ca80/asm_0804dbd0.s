asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804dbd0 \n\
/* 0804dbd0 */ PUSH {R4-R6, LR} \n\
/* 0804dbd2 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804dbd4 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0804dbd6 */ LDR R2, =D_03004428 \n\
/* 0804dbd8 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0804dbda */ STRB R0, [R2] \n\
/* 0804dbdc */ LSLS R1, R1, 0x10 \n\
/* 0804dbde */ ASRS R4, R1, 0x10 \n\
/* 0804dbe0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804dbe2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804dbe4 */ BL func_0804cc68 \n\
/* 0804dbe8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804dbea */ BNE branch_0804dc00 \n\
/* 0804dbec */ LSLS R0, R4, 0x4 \n\
/* 0804dbee */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804dbf0 */ LSLS R0, R0, 0x2 \n\
/* 0804dbf2 */ LDR R1, [R5, 0x8] \n\
/* 0804dbf4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804dbf6 */ STR R6, [R1, 0x30] \n\
/* 0804dbf8 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0804dbfa */ BNE branch_0804dc00 \n\
/* 0804dbfc */ LDR R0, =D_08bd0cac \n\
/* 0804dbfe */ STR R0, [R1, 0x30] \n\
 \n\
branch_0804dc00: \n\
/* 0804dc00 */ POP {R4-R6} \n\
/* 0804dc02 */ POP {R0} \n\
/* 0804dc04 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
