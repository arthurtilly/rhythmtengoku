asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803b1e8 \n\
/* 0803b1e8 */ PUSH {LR} \n\
/* 0803b1ea */ LDR R0, =gCurrentEngineData \n\
/* 0803b1ec */ LDR R2, [R0] \n\
/* 0803b1ee */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0803b1f0 */ ADDS R3, 0xD2 @ Add 0xD2 to R3 \n\
/* 0803b1f2 */ LDRB R0, [R3] \n\
/* 0803b1f4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b1f6 */ BEQ branch_0803b210 \n\
/* 0803b1f8 */ LDR R0, [R2, 0x44] \n\
/* 0803b1fa */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803b1fc */ LSLS R1, R1, 0x8 \n\
/* 0803b1fe */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803b200 */ LDR R1, [R2, 0x18] \n\
/* 0803b202 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0803b204 */ BGE branch_0803b22c \n\
/* 0803b206 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803b208 */ B branch_0803b22a \n\
\n\
.ltorg \n\
 \n\
branch_0803b210: \n\
/* 0803b210 */ LDR R0, [R2, 0x44] \n\
/* 0803b212 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803b214 */ LSLS R1, R1, 0x5 \n\
/* 0803b216 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803b218 */ LDR R1, [R2, 0x18] \n\
/* 0803b21a */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0803b21c */ BLE branch_0803b22c \n\
/* 0803b21e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0803b220 */ ADDS R0, 0xDA @ Add 0xDA to R0 \n\
/* 0803b222 */ LDRB R0, [R0] \n\
/* 0803b224 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b226 */ BNE branch_0803b22c \n\
/* 0803b228 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0803b22a: \n\
/* 0803b22a */ STRB R0, [R3] \n\
 \n\
branch_0803b22c: \n\
/* 0803b22c */ POP {R0} \n\
/* 0803b22e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
