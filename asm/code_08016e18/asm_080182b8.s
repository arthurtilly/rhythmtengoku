asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080182b8 \n\
/* 080182b8 */ PUSH {R4, LR} \n\
/* 080182ba */ SUB SP, 0x4 \n\
/* 080182bc */ LDR R4, =(D_03004b10 + 0x54) \n\
/* 080182be */ LDR R0, =D_030046a4 \n\
/* 080182c0 */ LDR R1, [R0] \n\
/* 080182c2 */ ADDS R1, 0x94 @ Add 0x94 to R1 \n\
/* 080182c4 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080182c6 */ LSLS R2, R2, 0x3 \n\
/* 080182c8 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080182ca */ LSLS R0, R0, 0x2 \n\
/* 080182cc */ STR R0, [SP] \n\
/* 080182ce */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080182d0 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080182d2 */ BL func_0800186c \n\
/* 080182d6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080182d8 */ LDR R1, =0x3def3def \n\
 \n\
branch_080182da: \n\
/* 080182da */ LDR R0, [R4] \n\
/* 080182dc */ LSRS R0, R0, 0x1 \n\
/* 080182de */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080182e0 */ STR R0, [R4] \n\
/* 080182e2 */ LDR R0, [R4, 0x4] \n\
/* 080182e4 */ LSRS R0, R0, 0x1 \n\
/* 080182e6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080182e8 */ STR R0, [R4, 0x4] \n\
/* 080182ea */ LDR R0, [R4, 0x8] \n\
/* 080182ec */ LSRS R0, R0, 0x1 \n\
/* 080182ee */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080182f0 */ STR R0, [R4, 0x8] \n\
/* 080182f2 */ LDR R0, [R4, 0xC] \n\
/* 080182f4 */ LSRS R0, R0, 0x1 \n\
/* 080182f6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080182f8 */ STR R0, [R4, 0xC] \n\
/* 080182fa */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080182fc */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 080182fe */ CMP R2, 0x3D @ Compare R2 and 0x3D \n\
/* 08018300 */ BLS branch_080182da \n\
/* 08018302 */ ADD SP, 0x4 \n\
/* 08018304 */ POP {R4} \n\
/* 08018306 */ POP {R0} \n\
/* 08018308 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
