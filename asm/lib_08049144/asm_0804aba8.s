asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804aba8 \n\
/* 0804aba8 */ LSLS R2, R2, 0x18 \n\
/* 0804abaa */ LSRS R2, R2, 0x18 \n\
/* 0804abac */ LDR R0, [R0, 0x18] \n\
/* 0804abae */ LSLS R1, R1, 0x5 \n\
/* 0804abb0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804abb2 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0804abb4 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0804abb6 */ LSLS R2, R2, 0x7 \n\
/* 0804abb8 */ LDRH R3, [R1, 0x4] \n\
/* 0804abba */ LDR R0, =0xffffc07f \n\
/* 0804abbc */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0804abbe */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804abc0 */ STRH R0, [R1, 0x4] \n\
/* 0804abc2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
