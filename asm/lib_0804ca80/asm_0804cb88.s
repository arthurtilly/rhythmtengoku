asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804cb88 \n\
/* 0804cb88 */ PUSH {LR} \n\
/* 0804cb8a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804cb8c */ LDR R1, [R2] \n\
/* 0804cb8e */ LDRH R0, [R1] \n\
/* 0804cb90 */ STRB R0, [R2, 0x9] \n\
/* 0804cb92 */ LSLS R0, R0, 0x18 \n\
/* 0804cb94 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804cb96 */ BNE branch_0804cb9c \n\
/* 0804cb98 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804cb9a */ B branch_0804cbc2 \n\
 \n\
branch_0804cb9c: \n\
/* 0804cb9c */ ADDS R3, R1, 0x2 @ Set R3 to R1 + 0x2 \n\
/* 0804cb9e */ STR R3, [R2] \n\
/* 0804cba0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804cba2 */ STRB R0, [R2, 0x8] \n\
/* 0804cba4 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0804cba6 */ LDRSB R0, [R2, R0] \n\
/* 0804cba8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804cbaa */ BGE branch_0804cbba \n\
/* 0804cbac */ LDRB R1, [R2, 0x9] \n\
/* 0804cbae */ SUBS R1, 0x1 @ Subtract 0x1 from R1 \n\
/* 0804cbb0 */ LSLS R0, R1, 0x1 \n\
/* 0804cbb2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804cbb4 */ LSLS R0, R0, 0x1 \n\
/* 0804cbb6 */ ADDS R0, R3, R0 @ Set R0 to R3 + R0 \n\
/* 0804cbb8 */ STR R0, [R2] \n\
 \n\
branch_0804cbba: \n\
/* 0804cbba */ LDR R1, =func_0804e418 \n\
/* 0804cbbc */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0804cbbe */ BL _call_via_r1 \n\
 \n\
branch_0804cbc2: \n\
/* 0804cbc2 */ POP {R1} \n\
/* 0804cbc4 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
