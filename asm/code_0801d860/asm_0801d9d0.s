asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d9d0 \n\
/* 0801d9d0 */ PUSH {R4, LR} \n\
/* 0801d9d2 */ LDR R2, =D_030055e0 \n\
/* 0801d9d4 */ LDRB R1, [R2, 0x1] \n\
/* 0801d9d6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801d9d8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801d9da */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d9dc */ BEQ branch_0801d9f0 \n\
/* 0801d9de */ LDR R1, [R2, 0x4] \n\
/* 0801d9e0 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801d9e2 */ BEQ branch_0801d9f0 \n\
/* 0801d9e4 */ LDR R0, =D_03004afc \n\
/* 0801d9e6 */ LDRH R0, [R0] \n\
/* 0801d9e8 */ LDRH R1, [R1] \n\
/* 0801d9ea */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0801d9ec */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0801d9ee */ BEQ branch_0801d9fc \n\
 \n\
branch_0801d9f0: \n\
/* 0801d9f0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801d9f2 */ B branch_0801da3a \n\
\n\
.ltorg \n\
 \n\
branch_0801d9fc: \n\
/* 0801d9fc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801d9fe */ BL func_08002880 \n\
/* 0801da02 */ LDR R0, =D_03005380 \n\
/* 0801da04 */ LDR R0, [R0] \n\
/* 0801da06 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801da08 */ BL func_0804e1bc \n\
/* 0801da0c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0801da0e: \n\
/* 0801da0e */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0801da10 */ LSLS R0, R4, 0x10 \n\
/* 0801da12 */ LSRS R0, R0, 0x10 \n\
/* 0801da14 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801da16 */ BL func_08005e18 \n\
/* 0801da1a */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0801da1c */ BLS branch_0801da0e \n\
/* 0801da1e */ LDR R4, =D_030055e0 \n\
/* 0801da20 */ LDR R0, [R4, 0x4] \n\
/* 0801da22 */ LDR R0, [R0, 0x4] \n\
/* 0801da24 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801da26 */ BEQ branch_0801da2c \n\
/* 0801da28 */ BL _call_via_r0 \n\
 \n\
branch_0801da2c: \n\
/* 0801da2c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801da2e */ STRB R0, [R4] \n\
/* 0801da30 */ LDRB R0, [R4, 0x1] \n\
/* 0801da32 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801da34 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0801da36 */ STRB R0, [R4, 0x1] \n\
/* 0801da38 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0801da3a: \n\
/* 0801da3a */ POP {R4} \n\
/* 0801da3c */ POP {R1} \n\
/* 0801da3e */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
