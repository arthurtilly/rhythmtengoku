asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080360a8 \n\
/* 080360a8 */ PUSH {R4-R6, LR} \n\
/* 080360aa */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 080360ac */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080360ae */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 080360b0 */ STR R1, [R2] \n\
/* 080360b2 */ STR R1, [R4] \n\
/* 080360b4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080360b6 */ LDR R6, =D_030055d0 \n\
/* 080360b8 */ LSLS R0, R0, 0x7 \n\
/* 080360ba */ ADDS R5, R0, 0x4 @ Set R5 to R0 + 0x4 \n\
/* 080360bc */ B branch_080360c6 \n\
\n\
.ltorg \n\
 \n\
branch_080360c4: \n\
/* 080360c4 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
 \n\
branch_080360c6: \n\
/* 080360c6 */ CMP R3, 0xF @ Compare R3 and 0xF \n\
/* 080360c8 */ BHI branch_080360f2 \n\
/* 080360ca */ LDR R0, [R6] \n\
/* 080360cc */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080360ce */ LSLS R1, R3, 0x3 \n\
/* 080360d0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080360d2 */ LDRB R1, [R0] \n\
/* 080360d4 */ LSLS R0, R1, 0x1D \n\
/* 080360d6 */ LSRS R0, R0, 0x1D \n\
/* 080360d8 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080360da */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080360dc */ BHI branch_080360c4 \n\
/* 080360de */ LSLS R0, R1, 0x1A \n\
/* 080360e0 */ LSRS R0, R0, 0x1D \n\
/* 080360e2 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080360e4 */ BNE branch_080360c4 \n\
/* 080360e6 */ LDR R0, [R4] \n\
/* 080360e8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080360ea */ BGE branch_080360f0 \n\
/* 080360ec */ STR R3, [R4] \n\
/* 080360ee */ B branch_080360c4 \n\
 \n\
branch_080360f0: \n\
/* 080360f0 */ STR R3, [R2] \n\
 \n\
branch_080360f2: \n\
/* 080360f2 */ POP {R4-R6} \n\
/* 080360f4 */ POP {R0} \n\
/* 080360f6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
