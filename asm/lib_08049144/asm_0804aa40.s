asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804aa40 \n\
/* 0804aa40 */ LDR R0, [R0, 0x18] \n\
/* 0804aa42 */ LSLS R1, R1, 0x5 \n\
/* 0804aa44 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804aa46 */ LSLS R2, R2, 0x12 \n\
/* 0804aa48 */ LSRS R2, R2, 0x12 \n\
/* 0804aa4a */ LDRH R3, [R1, 0x8] \n\
/* 0804aa4c */ LDR R0, =0xffffc000 \n\
/* 0804aa4e */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0804aa50 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804aa52 */ STRH R0, [R1, 0x8] \n\
/* 0804aa54 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
