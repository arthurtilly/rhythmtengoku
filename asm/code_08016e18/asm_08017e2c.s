asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017e2c \n\
/* 08017e2c */ PUSH {R4-R7, LR} \n\
/* 08017e2e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08017e30 */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 08017e32 */ MOV R12, R3 @ Set R12 to R3 \n\
/* 08017e34 */ ADDS R4, R5, 0x0 @ Set R4 to R5 + 0x0 \n\
/* 08017e36 */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 08017e38 */ LDR R6, =D_030046a4 \n\
/* 08017e3a */ LDR R0, [R6] \n\
/* 08017e3c */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 08017e3e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08017e40 */ STRB R2, [R0] \n\
/* 08017e42 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08017e44 */ ADDS R3, 0x48 @ Add 0x48 to R3 \n\
/* 08017e46 */ LDRB R0, [R3] \n\
/* 08017e48 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08017e4a */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08017e4c */ STRB R0, [R3] \n\
/* 08017e4e */ LDR R0, [R6] \n\
/* 08017e50 */ ADDS R0, 0x79 @ Add 0x79 to R0 \n\
/* 08017e52 */ STRB R7, [R0] \n\
/* 08017e54 */ CMP R1, 0x2 @ Compare R1 and 0x2 \n\
/* 08017e56 */ BNE branch_08017e90 \n\
/* 08017e58 */ LDR R4, [R4, 0x20] \n\
/* 08017e5a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08017e5c */ BEQ branch_08017e6a \n\
/* 08017e5e */ LDR R1, [R5, 0x64] \n\
/* 08017e60 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08017e62 */ MOV R2, R12 @ Set R2 to R12 \n\
/* 08017e64 */ LDR R3, [SP, 0x14] \n\
/* 08017e66 */ BL _call_via_r4 \n\
 \n\
branch_08017e6a: \n\
/* 08017e6a */ LDR R0, [R6] \n\
/* 08017e6c */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 08017e6e */ LDRB R0, [R0] \n\
/* 08017e70 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017e72 */ BNE branch_08017ec0 \n\
/* 08017e74 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08017e76 */ ADDS R0, 0x68 @ Add 0x68 to R0 \n\
/* 08017e78 */ LDRB R0, [R0] \n\
/* 08017e7a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08017e7c */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08017e7e */ BL func_08017928 \n\
/* 08017e82 */ LDR R0, [R5, 0x58] \n\
/* 08017e84 */ BL func_08016e54 \n\
/* 08017e88 */ B branch_08017ec0 \n\
\n\
.ltorg \n\
 \n\
branch_08017e90: \n\
/* 08017e90 */ LDR R4, [R4, 0x24] \n\
/* 08017e92 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08017e94 */ BEQ branch_08017ea2 \n\
/* 08017e96 */ LDR R1, [R5, 0x64] \n\
/* 08017e98 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08017e9a */ MOV R2, R12 @ Set R2 to R12 \n\
/* 08017e9c */ LDR R3, [SP, 0x14] \n\
/* 08017e9e */ BL _call_via_r4 \n\
 \n\
branch_08017ea2: \n\
/* 08017ea2 */ LDR R0, [R6] \n\
/* 08017ea4 */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 08017ea6 */ LDRB R0, [R0] \n\
/* 08017ea8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017eaa */ BNE branch_08017ec0 \n\
/* 08017eac */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08017eae */ ADDS R0, 0x68 @ Add 0x68 to R0 \n\
/* 08017eb0 */ LDRB R0, [R0] \n\
/* 08017eb2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08017eb4 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 08017eb6 */ BL func_08017928 \n\
/* 08017eba */ LDR R0, [R5, 0x5C] \n\
/* 08017ebc */ BL func_08016e54 \n\
 \n\
branch_08017ec0: \n\
/* 08017ec0 */ POP {R4-R7} \n\
/* 08017ec2 */ POP {R0} \n\
/* 08017ec4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
