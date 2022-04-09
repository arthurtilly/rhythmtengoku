asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007ca8 \n\
/* 08007ca8 */ PUSH {R4, LR} \n\
/* 08007caa */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007cac */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08007cae */ BL mem_heap_alloc \n\
/* 08007cb2 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08007cb4 */ LDRB R1, [R4] \n\
/* 08007cb6 */ LSLS R1, R1, 0x1E \n\
/* 08007cb8 */ LSRS R1, R1, 0x1E \n\
/* 08007cba */ LDRB R2, [R3] \n\
/* 08007cbc */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08007cbe */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08007cc0 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08007cc2 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08007cc4 */ STRB R0, [R3] \n\
/* 08007cc6 */ LDR R2, [R4] \n\
/* 08007cc8 */ LDR R0, =0x1fffc \n\
/* 08007cca */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 08007ccc */ LDR R0, [R3] \n\
/* 08007cce */ LDR R1, =0xfffe0003 \n\
/* 08007cd0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08007cd2 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08007cd4 */ STR R0, [R3] \n\
/* 08007cd6 */ LDRH R1, [R3, 0x2] \n\
/* 08007cd8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08007cda */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08007cdc */ STRH R0, [R3, 0x2] \n\
/* 08007cde */ LDR R2, [R4, 0x4] \n\
/* 08007ce0 */ STR R2, [R3, 0x4] \n\
/* 08007ce2 */ LDR R1, [R4, 0x8] \n\
/* 08007ce4 */ STR R1, [R3, 0x8] \n\
/* 08007ce6 */ LDR R0, [R4, 0xC] \n\
/* 08007ce8 */ STR R0, [R3, 0xC] \n\
/* 08007cea */ LDRB R0, [R3] \n\
/* 08007cec */ LSLS R0, R0, 0x1E \n\
/* 08007cee */ LSRS R0, R0, 0x1E \n\
/* 08007cf0 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08007cf2 */ BEQ branch_08007d12 \n\
/* 08007cf4 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08007cf6 */ BGT branch_08007d08 \n\
/* 08007cf8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08007cfa */ BEQ branch_08007d0e \n\
/* 08007cfc */ B branch_08007d18 \n\
\n\
.ltorg \n\
 \n\
branch_08007d08: \n\
/* 08007d08 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08007d0a */ BEQ branch_08007d16 \n\
/* 08007d0c */ B branch_08007d18 \n\
 \n\
branch_08007d0e: \n\
/* 08007d0e */ STRB R1, [R2] \n\
/* 08007d10 */ B branch_08007d18 \n\
 \n\
branch_08007d12: \n\
/* 08007d12 */ STRH R1, [R2] \n\
/* 08007d14 */ B branch_08007d18 \n\
 \n\
branch_08007d16: \n\
/* 08007d16 */ STR R1, [R2] \n\
 \n\
branch_08007d18: \n\
/* 08007d18 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08007d1a */ POP {R4} \n\
/* 08007d1c */ POP {R1} \n\
/* 08007d1e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
