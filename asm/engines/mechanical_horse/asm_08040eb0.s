asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08040eb0 \n\
/* 08040eb0 */ PUSH {R4-R6, LR} \n\
/* 08040eb2 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08040eb4 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08040eb6 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08040eb8 */ LDR R2, =gCurrentEngineData \n\
/* 08040eba */ LDR R1, [R2] \n\
/* 08040ebc */ LDR R6, =0x2fe \n\
/* 08040ebe */ ADDS R0, R1, R6 @ Set R0 to R1 + R6 \n\
/* 08040ec0 */ LDRB R0, [R0] \n\
/* 08040ec2 */ LSLS R0, R0, 0x18 \n\
/* 08040ec4 */ ASRS R0, R0, 0x18 \n\
/* 08040ec6 */ CMP R0, R3 @ Check R0 - R3 \n\
/* 08040ec8 */ BNE branch_08040ee0 \n\
/* 08040eca */ LDR R0, =0x306 \n\
/* 08040ecc */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08040ece */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08040ed0 */ STRB R0, [R1] \n\
/* 08040ed2 */ B branch_08040ef6 \n\
\n\
.ltorg \n\
 \n\
branch_08040ee0: \n\
/* 08040ee0 */ LDR R6, =0x306 \n\
/* 08040ee2 */ ADDS R0, R1, R6 @ Set R0 to R1 + R6 \n\
/* 08040ee4 */ STRB R3, [R0] \n\
/* 08040ee6 */ LDR R0, [R2] \n\
/* 08040ee8 */ MOVS R2, 0xC2 @ Set R2 to 0xC2 \n\
/* 08040eea */ LSLS R2, R2, 0x2 \n\
/* 08040eec */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08040eee */ STRH R4, [R1] \n\
/* 08040ef0 */ ADDS R6, 0x4 @ Add 0x4 to R6 \n\
/* 08040ef2 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08040ef4 */ STRH R5, [R0] \n\
 \n\
branch_08040ef6: \n\
/* 08040ef6 */ POP {R4-R6} \n\
/* 08040ef8 */ POP {R0} \n\
/* 08040efa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
