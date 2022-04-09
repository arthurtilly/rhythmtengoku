asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08013b48 \n\
/* 08013b48 */ PUSH {R4, LR} \n\
/* 08013b4a */ LDR R4, =D_030046a4 \n\
/* 08013b4c */ LDR R1, [R4] \n\
/* 08013b4e */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08013b50 */ LDRSB R0, [R1, R0] \n\
/* 08013b52 */ LDRB R1, [R1, 0x11] \n\
/* 08013b54 */ LSLS R1, R1, 0x18 \n\
/* 08013b56 */ ASRS R1, R1, 0x18 \n\
/* 08013b58 */ BL func_0801317c \n\
/* 08013b5c */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08013b5e */ BNE branch_08013b7c \n\
/* 08013b60 */ LDR R0, =D_03005380 \n\
/* 08013b62 */ LDR R0, [R0] \n\
/* 08013b64 */ LDR R1, [R4] \n\
/* 08013b66 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08013b68 */ LDRSH R1, [R1, R2] \n\
/* 08013b6a */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 08013b6c */ LSLS R2, R2, 0x8 \n\
/* 08013b6e */ BL func_0804d67c \n\
/* 08013b72 */ B branch_08013b8e \n\
\n\
.ltorg \n\
 \n\
branch_08013b7c: \n\
/* 08013b7c */ LDR R0, =D_03005380 \n\
/* 08013b7e */ LDR R0, [R0] \n\
/* 08013b80 */ LDR R1, [R4] \n\
/* 08013b82 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08013b84 */ LDRSH R1, [R1, R2] \n\
/* 08013b86 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 08013b88 */ LSLS R2, R2, 0x7 \n\
/* 08013b8a */ BL func_0804d67c \n\
 \n\
branch_08013b8e: \n\
/* 08013b8e */ POP {R4} \n\
/* 08013b90 */ POP {R0} \n\
/* 08013b92 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
