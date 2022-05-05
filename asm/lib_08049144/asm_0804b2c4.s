asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b2c4 \n\
/* 0804b2c4 */ PUSH {R4-R6, LR} \n\
/* 0804b2c6 */ LDR R6, =D_030056a0 \n\
/* 0804b2c8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804b2ca */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0804b2cc: \n\
/* 0804b2cc */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804b2ce */ BL func_0804aff0 \n\
/* 0804b2d2 */ LSRS R4, R4, 0x1 \n\
/* 0804b2d4 */ LDRB R0, [R6] \n\
/* 0804b2d6 */ LSLS R0, R0, 0x1F \n\
/* 0804b2d8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b2da */ BEQ branch_0804b304 \n\
/* 0804b2dc */ LDR R0, [R6, 0xC] \n\
/* 0804b2de */ LDRB R0, [R0, 0x4] \n\
/* 0804b2e0 */ LSLS R0, R0, 0x19 \n\
/* 0804b2e2 */ LSRS R1, R0, 0x19 \n\
/* 0804b2e4 */ CMP R1, 0x40 @ Compare R1 and 0x40 \n\
/* 0804b2e6 */ BGT branch_0804b2f4 \n\
/* 0804b2e8 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0804b2ea */ LSLS R2, R2, 0x8 \n\
/* 0804b2ec */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0804b2ee */ ORRS R4, R0 @ Set R4 to R4 | R0 \n\
/* 0804b2f0 */ LSLS R0, R4, 0x10 \n\
/* 0804b2f2 */ LSRS R4, R0, 0x10 \n\
 \n\
branch_0804b2f4: \n\
/* 0804b2f4 */ CMP R1, 0x3F @ Compare R1 and 0x3F \n\
/* 0804b2f6 */ BLE branch_0804b304 \n\
/* 0804b2f8 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0804b2fa */ LSLS R1, R1, 0x4 \n\
/* 0804b2fc */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0804b2fe */ ORRS R4, R0 @ Set R4 to R4 | R0 \n\
/* 0804b300 */ LSLS R0, R4, 0x10 \n\
/* 0804b302 */ LSRS R4, R0, 0x10 \n\
 \n\
branch_0804b304: \n\
/* 0804b304 */ ADDS R6, 0x20 @ Add 0x20 to R6 \n\
/* 0804b306 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0804b308 */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 0804b30a */ BLS branch_0804b2cc \n\
/* 0804b30c */ MOVS R0, 0x77 @ Set R0 to 0x77 \n\
/* 0804b30e */ ORRS R4, R0 @ Set R4 to R4 | R0 \n\
/* 0804b310 */ LDR R0, =0x04000080 @ !Hardware REG_SOUNDCNT \n\
/* 0804b312 */ STRH R4, [R0] \n\
/* 0804b314 */ POP {R4-R6} \n\
/* 0804b316 */ POP {R0} \n\
/* 0804b318 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
