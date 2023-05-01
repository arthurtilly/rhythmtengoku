asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08040c58 \n\
/* 08040c58 */ PUSH {LR} \n\
/* 08040c5a */ LDR R1, =gCurrentEngineData \n\
/* 08040c5c */ LDR R0, [R1] \n\
/* 08040c5e */ LDR R2, =0x2fe \n\
/* 08040c60 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08040c62 */ LDRB R0, [R0] \n\
/* 08040c64 */ LSLS R0, R0, 0x18 \n\
/* 08040c66 */ ASRS R0, R0, 0x18 \n\
/* 08040c68 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 08040c6a */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08040c6c */ BHI branch_08040ce2 \n\
/* 08040c6e */ LSLS R0, R0, 0x2 \n\
/* 08040c70 */ LDR R1, =jtbl_08040c84 \n\
/* 08040c72 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08040c74 */ LDR R0, [R0] \n\
/* 08040c76 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_08040c84: \n\
.word jump_08040c9c \n\
.word jump_08040c9c \n\
.word jump_08040c9c \n\
.word jump_08040cb8 \n\
.word jump_08040ccc \n\
.word jump_08040cd6 \n\
jump_08040c9c: \n\
/* 08040c9c */ LDR R0, [R3] \n\
/* 08040c9e */ MOVS R1, 0xC3 @ Set R1 to 0xC3 \n\
/* 08040ca0 */ LSLS R1, R1, 0x2 \n\
/* 08040ca2 */ ADDS R2, R0, R1 @ Set R2 to R0 + R1 \n\
/* 08040ca4 */ SUBS R1, 0x3C @ Subtract 0x3C from R1 \n\
/* 08040ca6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08040ca8 */ LDR R1, [R0] \n\
/* 08040caa */ LSRS R0, R1, 0x1F \n\
/* 08040cac */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08040cae */ ASRS R1, R1, 0x1 \n\
/* 08040cb0 */ LDR R0, [R2] \n\
/* 08040cb2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08040cb4 */ STR R0, [R2] \n\
/* 08040cb6 */ B branch_08040ce2 \n\
jump_08040cb8: \n\
/* 08040cb8 */ LDR R1, [R3] \n\
/* 08040cba */ MOVS R2, 0xC3 @ Set R2 to 0xC3 \n\
/* 08040cbc */ LSLS R2, R2, 0x2 \n\
/* 08040cbe */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08040cc0 */ LDR R0, [R1] \n\
/* 08040cc2 */ MOVS R2, 0xD0 @ Set R2 to 0xD0 \n\
/* 08040cc4 */ LSLS R2, R2, 0x4 \n\
/* 08040cc6 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08040cc8 */ STR R0, [R1] \n\
/* 08040cca */ B branch_08040ce2 \n\
jump_08040ccc: \n\
/* 08040ccc */ LDR R0, [R3] \n\
/* 08040cce */ MOVS R1, 0xC3 @ Set R1 to 0xC3 \n\
/* 08040cd0 */ LSLS R1, R1, 0x2 \n\
/* 08040cd2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08040cd4 */ B branch_08040cde \n\
jump_08040cd6: \n\
/* 08040cd6 */ LDR R0, [R3] \n\
/* 08040cd8 */ MOVS R2, 0xC3 @ Set R2 to 0xC3 \n\
/* 08040cda */ LSLS R2, R2, 0x2 \n\
/* 08040cdc */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
 \n\
branch_08040cde: \n\
/* 08040cde */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08040ce0 */ STR R1, [R0] \n\
 \n\
branch_08040ce2: \n\
/* 08040ce2 */ LDR R0, [R3] \n\
/* 08040ce4 */ MOVS R1, 0xC3 @ Set R1 to 0xC3 \n\
/* 08040ce6 */ LSLS R1, R1, 0x2 \n\
/* 08040ce8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08040cea */ LDR R1, [R0] \n\
/* 08040cec */ LSLS R1, R1, 0x8 \n\
/* 08040cee */ ASRS R1, R1, 0x10 \n\
/* 08040cf0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08040cf2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040cf4 */ BL scene_set_bg_layer_pos \n\
/* 08040cf8 */ POP {R0} \n\
/* 08040cfa */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
