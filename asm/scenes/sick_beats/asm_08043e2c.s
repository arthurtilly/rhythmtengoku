asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08043e2c \n\
/* 08043e2c */ PUSH {R4, LR} \n\
/* 08043e2e */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08043e30 */ LDRH R0, [R4] \n\
/* 08043e32 */ LSLS R0, R0, 0x15 \n\
/* 08043e34 */ LSRS R0, R0, 0x1B \n\
/* 08043e36 */ CMP R0, 0xB @ Compare R0 and 0xB \n\
/* 08043e38 */ BEQ branch_08043e3e \n\
/* 08043e3a */ BL func_08018068 \n\
 \n\
branch_08043e3e: \n\
/* 08043e3e */ LDRH R0, [R4] \n\
/* 08043e40 */ LSLS R0, R0, 0x15 \n\
/* 08043e42 */ LSRS R0, R0, 0x1B \n\
/* 08043e44 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08043e46 */ BEQ branch_08043e5a \n\
/* 08043e48 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08043e4a */ BGT branch_08043e52 \n\
/* 08043e4c */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08043e4e */ BEQ branch_08043e5a \n\
/* 08043e50 */ B branch_08043e70 \n\
 \n\
branch_08043e52: \n\
/* 08043e52 */ CMP R0, 0x8 @ Compare R0 and 0x8 \n\
/* 08043e54 */ BEQ branch_08043e5a \n\
/* 08043e56 */ CMP R0, 0xB @ Compare R0 and 0xB \n\
/* 08043e58 */ BNE branch_08043e70 \n\
 \n\
branch_08043e5a: \n\
/* 08043e5a */ LDRB R1, [R4] \n\
/* 08043e5c */ LSLS R0, R1, 0x1A \n\
/* 08043e5e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043e60 */ BLT branch_08043e70 \n\
/* 08043e62 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08043e64 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08043e66 */ STRB R0, [R4] \n\
/* 08043e68 */ LDR R0, [R4, 0x8] \n\
/* 08043e6a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08043e6c */ BL func_08010040 \n\
 \n\
branch_08043e70: \n\
/* 08043e70 */ POP {R4} \n\
/* 08043e72 */ POP {R0} \n\
/* 08043e74 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
