asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801da48 \n\
/* 0801da48 */ PUSH {R4, R5, LR} \n\
/* 0801da4a */ LDR R5, =D_030055e0 \n\
/* 0801da4c */ LDR R0, [R5, 0x4] \n\
/* 0801da4e */ LDR R0, [R0, 0x8] \n\
/* 0801da50 */ BL _call_via_r0 \n\
/* 0801da54 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801da56 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0801da58 */ BEQ branch_0801da64 \n\
/* 0801da5a */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 0801da5c */ BEQ branch_0801da98 \n\
/* 0801da5e */ B branch_0801dab4 \n\
\n\
.ltorg \n\
 \n\
branch_0801da64: \n\
/* 0801da64 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801da66 */ BL func_08002880 \n\
/* 0801da6a */ LDR R0, =D_03005380 \n\
/* 0801da6c */ LDR R0, [R0] \n\
/* 0801da6e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801da70 */ BL func_0804e1bc \n\
/* 0801da74 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0801da76: \n\
/* 0801da76 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0801da78 */ LSLS R0, R4, 0x10 \n\
/* 0801da7a */ LSRS R0, R0, 0x10 \n\
/* 0801da7c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801da7e */ BL func_08005e18 \n\
/* 0801da82 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0801da84 */ BLS branch_0801da76 \n\
/* 0801da86 */ LDR R1, =D_030055e0 \n\
/* 0801da88 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801da8a */ STRB R0, [R1] \n\
/* 0801da8c */ B branch_0801dab4 \n\
\n\
.ltorg \n\
 \n\
branch_0801da98: \n\
/* 0801da98 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0801da9a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801da9c */ BL func_080070c4 \n\
/* 0801daa0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801daa2 */ BL func_08002880 \n\
/* 0801daa6 */ BL func_08002838 \n\
/* 0801daaa */ LDR R0, [R5, 0x4] \n\
/* 0801daac */ LDR R0, [R0, 0xC] \n\
/* 0801daae */ BL func_08002634 \n\
/* 0801dab2 */ STRB R4, [R5] \n\
 \n\
branch_0801dab4: \n\
/* 0801dab4 */ POP {R4, R5} \n\
/* 0801dab6 */ POP {R0} \n\
/* 0801dab8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
