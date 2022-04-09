asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c1e8 \n\
/* 0800c1e8 */ PUSH {LR} \n\
/* 0800c1ea */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800c1ec */ LSLS R1, R1, 0x10 \n\
/* 0800c1ee */ LDR R0, =0xff880000 \n\
/* 0800c1f0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800c1f2 */ ASRS R1, R1, 0x10 \n\
/* 0800c1f4 */ LSLS R0, R1, 0x1 \n\
/* 0800c1f6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800c1f8 */ LSLS R0, R0, 0xE \n\
/* 0800c1fa */ LSRS R2, R0, 0x10 \n\
/* 0800c1fc */ ASRS R0, R0, 0x10 \n\
/* 0800c1fe */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0800c200 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800c202 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0800c204 */ BGE branch_0800c208 \n\
/* 0800c206 */ LDR R2, =0xff80 \n\
 \n\
branch_0800c208: \n\
/* 0800c208 */ LSLS R0, R2, 0x10 \n\
/* 0800c20a */ ASRS R0, R0, 0x10 \n\
/* 0800c20c */ CMP R0, 0x7F @ Compare R0 and 0x7F \n\
/* 0800c20e */ BLE branch_0800c212 \n\
/* 0800c210 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
 \n\
branch_0800c212: \n\
/* 0800c212 */ LSLS R1, R2, 0x18 \n\
/* 0800c214 */ ASRS R1, R1, 0x18 \n\
/* 0800c216 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800c218 */ BL func_0800294c \n\
/* 0800c21c */ POP {R0} \n\
/* 0800c21e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
