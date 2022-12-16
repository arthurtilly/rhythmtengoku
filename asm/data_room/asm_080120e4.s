asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080120e4 \n\
/* 080120e4 */ PUSH {R4-R6, LR} \n\
/* 080120e6 */ SUB SP, 0x3C \n\
/* 080120e8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080120ea */ BL func_08007324 \n\
/* 080120ee */ BL func_080073f0 \n\
/* 080120f2 */ BL func_08011f2c \n\
/* 080120f6 */ LDR R0, =D_03005380 \n\
/* 080120f8 */ LDR R0, [R0] \n\
/* 080120fa */ LDR R1, =D_089018f8 \n\
/* 080120fc */ MOVS R2, 0x9B @ Set R2 to 0x9B \n\
/* 080120fe */ STR R2, [SP] \n\
/* 08012100 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08012102 */ LSLS R2, R2, 0x4 \n\
/* 08012104 */ STR R2, [SP, 0x4] \n\
/* 08012106 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08012108 */ STR R2, [SP, 0x8] \n\
/* 0801210a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801210c */ STR R2, [SP, 0xC] \n\
/* 0801210e */ STR R2, [SP, 0x10] \n\
/* 08012110 */ MOVS R3, 0xBC @ Set R3 to 0xBC \n\
/* 08012112 */ BL func_0804d160 \n\
/* 08012116 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08012118 */ LDR R4, =D_030046a4 \n\
/* 0801211a */ LDR R0, =0xffff \n\
/* 0801211c */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
 \n\
branch_0801211e: \n\
/* 0801211e */ LDR R0, [R4] \n\
/* 08012120 */ LSLS R1, R2, 0x1 \n\
/* 08012122 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 08012124 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08012126 */ LDRH R1, [R0] \n\
/* 08012128 */ ORRS R1, R3 @ Set R1 to R1 | R3 \n\
/* 0801212a */ STRH R1, [R0] \n\
/* 0801212c */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0801212e */ CMP R2, 0x7 @ Compare R2 and 0x7 \n\
/* 08012130 */ BLS branch_0801211e \n\
/* 08012132 */ BL get_current_mem_id \n\
/* 08012136 */ LSLS R0, R0, 0x10 \n\
/* 08012138 */ LSRS R0, R0, 0x10 \n\
/* 0801213a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801213c */ STR R5, [SP] \n\
/* 0801213e */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 08012140 */ STR R6, [SP, 0x4] \n\
/* 08012142 */ MOVS R3, 0x3 @ Set R3 to 0x3 \n\
/* 08012144 */ STR R3, [SP, 0x8] \n\
/* 08012146 */ MOVS R1, 0x50 @ Set R1 to 0x50 \n\
/* 08012148 */ STR R1, [SP, 0xC] \n\
/* 0801214a */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0801214c */ STR R2, [SP, 0x10] \n\
/* 0801214e */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 08012150 */ LSLS R1, R1, 0x8 \n\
/* 08012152 */ STR R1, [SP, 0x14] \n\
/* 08012154 */ STR R2, [SP, 0x18] \n\
/* 08012156 */ LDR R1, =D_03001318 \n\
/* 08012158 */ LDRB R1, [R1] \n\
/* 0801215a */ STR R1, [SP, 0x1C] \n\
/* 0801215c */ MOVS R1, 0x14 @ Set R1 to 0x14 \n\
/* 0801215e */ STR R1, [SP, 0x20] \n\
/* 08012160 */ LDR R1, =D_08901910 \n\
/* 08012162 */ STR R1, [SP, 0x24] \n\
/* 08012164 */ STR R3, [SP, 0x28] \n\
/* 08012166 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08012168 */ STR R1, [SP, 0x2C] \n\
/* 0801216a */ LDR R1, =D_03001319 \n\
/* 0801216c */ LDRB R1, [R1] \n\
/* 0801216e */ STR R1, [SP, 0x30] \n\
/* 08012170 */ LDR R1, =func_08011f68 \n\
/* 08012172 */ STR R1, [SP, 0x34] \n\
/* 08012174 */ STR R5, [SP, 0x38] \n\
/* 08012176 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08012178 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801217a */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 0801217c */ BL func_0800aeb4 \n\
/* 08012180 */ LDR R4, =D_030046a4 \n\
/* 08012182 */ LDR R1, [R4] \n\
/* 08012184 */ STR R0, [R1, 0x4] \n\
/* 08012186 */ LDR R1, =func_08012090 \n\
/* 08012188 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801218a */ BL func_0800b30c \n\
/* 0801218e */ LDR R0, [R4] \n\
/* 08012190 */ LDR R0, [R0, 0x4] \n\
/* 08012192 */ LDR R1, =func_08012084 \n\
/* 08012194 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08012196 */ BL func_0800b31c \n\
/* 0801219a */ LDR R0, =D_03005380 \n\
/* 0801219c */ LDR R0, [R0] \n\
/* 0801219e */ LDR R1, =D_08901948 \n\
/* 080121a0 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 080121a2 */ STR R2, [SP] \n\
/* 080121a4 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 080121a6 */ LSLS R2, R2, 0x7 \n\
/* 080121a8 */ STR R2, [SP, 0x4] \n\
/* 080121aa */ STR R6, [SP, 0x8] \n\
/* 080121ac */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080121ae */ STR R2, [SP, 0xC] \n\
/* 080121b0 */ STR R5, [SP, 0x10] \n\
/* 080121b2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080121b4 */ BL func_0804d160 \n\
/* 080121b8 */ LDR R1, [R4] \n\
/* 080121ba */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080121bc */ STRH R0, [R1, 0x18] \n\
/* 080121be */ STRB R2, [R1, 0x1C] \n\
/* 080121c0 */ LDR R1, [R4] \n\
/* 080121c2 */ MOVS R0, 0x87 @ Set R0 to 0x87 \n\
/* 080121c4 */ LSLS R0, R0, 0x2 \n\
/* 080121c6 */ STRH R0, [R1, 0x1A] \n\
/* 080121c8 */ STR R5, [R1] \n\
/* 080121ca */ ADD SP, 0x3C \n\
/* 080121cc */ POP {R4-R6} \n\
/* 080121ce */ POP {R0} \n\
/* 080121d0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
