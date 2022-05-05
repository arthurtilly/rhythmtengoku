asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804db44 \n\
/* 0804db44 */ PUSH {R4-R7, LR} \n\
/* 0804db46 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804db48 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0804db4a */ ADDS R7, R3, 0x0 @ Set R7 to R3 + 0x0 \n\
/* 0804db4c */ LDR R2, =D_03004428 \n\
/* 0804db4e */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0804db50 */ STRB R0, [R2] \n\
/* 0804db52 */ LSLS R1, R1, 0x10 \n\
/* 0804db54 */ ASRS R4, R1, 0x10 \n\
/* 0804db56 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804db58 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804db5a */ BL func_0804cc68 \n\
/* 0804db5e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804db60 */ BNE branch_0804db80 \n\
/* 0804db62 */ LSLS R0, R4, 0x4 \n\
/* 0804db64 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804db66 */ LSLS R0, R0, 0x2 \n\
/* 0804db68 */ LDR R1, [R5, 0x8] \n\
/* 0804db6a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804db6c */ STR R6, [R1, 0x2C] \n\
/* 0804db6e */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0804db70 */ BNE branch_0804db76 \n\
/* 0804db72 */ LDR R0, =D_08bd0cac \n\
/* 0804db74 */ STR R0, [R1, 0x2C] \n\
 \n\
branch_0804db76: \n\
/* 0804db76 */ STR R7, [R1, 0x30] \n\
/* 0804db78 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0804db7a */ BNE branch_0804db80 \n\
/* 0804db7c */ LDR R0, =D_08bd0cac \n\
/* 0804db7e */ STR R0, [R1, 0x30] \n\
 \n\
branch_0804db80: \n\
/* 0804db80 */ POP {R4-R7} \n\
/* 0804db82 */ POP {R0} \n\
/* 0804db84 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
