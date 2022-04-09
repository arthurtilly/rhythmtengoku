asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ad38 \n\
/* 0802ad38 */ PUSH {R4-R6, LR} \n\
/* 0802ad3a */ SUB SP, 0x4 \n\
/* 0802ad3c */ LSLS R1, R1, 0x10 \n\
/* 0802ad3e */ LSRS R1, R1, 0x10 \n\
/* 0802ad40 */ LSLS R2, R2, 0x10 \n\
/* 0802ad42 */ LSRS R6, R2, 0x10 \n\
/* 0802ad44 */ LDR R4, =D_089e2ef8 \n\
/* 0802ad46 */ LDR R0, =D_03001568 \n\
/* 0802ad48 */ LDR R0, [R0] \n\
/* 0802ad4a */ MOVS R2, 0xCE @ Set R2 to 0xCE \n\
/* 0802ad4c */ LSLS R2, R2, 0x2 \n\
/* 0802ad4e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802ad50 */ LDRH R2, [R0] \n\
/* 0802ad52 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0802ad54 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0802ad56 */ LSLS R1, R1, 0x10 \n\
/* 0802ad58 */ LSRS R3, R1, 0x10 \n\
/* 0802ad5a */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0802ad5c */ BEQ branch_0802ad8c \n\
/* 0802ad5e */ LSLS R0, R2, 0x10 \n\
/* 0802ad60 */ ASRS R3, R0, 0x10 \n\
/* 0802ad62 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802ad64 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0802ad66 */ BLT branch_0802ada4 \n\
/* 0802ad68 */ LDR R0, =D_03005380 \n\
/* 0802ad6a */ LDR R0, [R0] \n\
/* 0802ad6c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802ad6e */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0802ad70 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802ad72 */ STR R1, [SP] \n\
/* 0802ad74 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0802ad76 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802ad78 */ BL func_0804dae0 \n\
/* 0802ad7c */ B branch_0802ada4 \n\
\n\
.ltorg \n\
 \n\
branch_0802ad8c: \n\
/* 0802ad8c */ LSLS R0, R2, 0x10 \n\
/* 0802ad8e */ ASRS R1, R0, 0x10 \n\
/* 0802ad90 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802ad92 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0802ad94 */ BLT branch_0802ada4 \n\
/* 0802ad96 */ LDR R0, =D_03005380 \n\
/* 0802ad98 */ LDR R0, [R0] \n\
/* 0802ad9a */ STR R3, [SP] \n\
/* 0802ad9c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802ad9e */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802ada0 */ BL func_0804dae0 \n\
 \n\
branch_0802ada4: \n\
/* 0802ada4 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0802ada6 */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 0802ada8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802adaa */ BEQ branch_0802add2 \n\
/* 0802adac */ B branch_0802adbc \n\
\n\
.ltorg \n\
 \n\
branch_0802adb4: \n\
/* 0802adb4 */ LDMIA R4!, {R0} \n\
/* 0802adb6 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0802adb8 */ BL func_080027dc \n\
 \n\
branch_0802adbc: \n\
/* 0802adbc */ LDR R0, [R4] \n\
/* 0802adbe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802adc0 */ BNE branch_0802adb4 \n\
/* 0802adc2 */ ASRS R1, R5, 0x10 \n\
/* 0802adc4 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0802adc6 */ BLT branch_0802add2 \n\
/* 0802adc8 */ LDR R0, =D_03005380 \n\
/* 0802adca */ LDR R0, [R0] \n\
/* 0802adcc */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 0802adce */ BL func_0804cebc \n\
 \n\
branch_0802add2: \n\
/* 0802add2 */ ADD SP, 0x4 \n\
/* 0802add4 */ POP {R4-R6} \n\
/* 0802add6 */ POP {R0} \n\
/* 0802add8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
