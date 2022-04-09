asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802a9b4 \n\
/* 0802a9b4 */ PUSH {R4, R5, LR} \n\
/* 0802a9b6 */ LDR R2, =D_03001568 \n\
/* 0802a9b8 */ STR R0, [R2] \n\
/* 0802a9ba */ LDR R1, =D_089e2f00 \n\
/* 0802a9bc */ STR R1, [R0, 0xC] \n\
/* 0802a9be */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802a9c0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_0802a9c2: \n\
/* 0802a9c2 */ LDR R0, [R2] \n\
/* 0802a9c4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802a9c6 */ STRB R3, [R0] \n\
/* 0802a9c8 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0802a9ca */ CMP R1, 0x9 @ Compare R1 and 0x9 \n\
/* 0802a9cc */ BLS branch_0802a9c2 \n\
/* 0802a9ce */ BL func_0802a994 \n\
/* 0802a9d2 */ LDR R5, =D_03001568 \n\
/* 0802a9d4 */ LDR R2, [R5] \n\
/* 0802a9d6 */ MOVS R0, 0xCC @ Set R0 to 0xCC \n\
/* 0802a9d8 */ LSLS R0, R0, 0x2 \n\
/* 0802a9da */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0802a9dc */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802a9de */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0802a9e0 */ LSLS R0, R0, 0x1 \n\
/* 0802a9e2 */ STRH R0, [R1] \n\
/* 0802a9e4 */ MOVS R1, 0xCD @ Set R1 to 0xCD \n\
/* 0802a9e6 */ LSLS R1, R1, 0x2 \n\
/* 0802a9e8 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0802a9ea */ STR R4, [R0] \n\
/* 0802a9ec */ MOVS R3, 0xCE @ Set R3 to 0xCE \n\
/* 0802a9ee */ LSLS R3, R3, 0x2 \n\
/* 0802a9f0 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0802a9f2 */ LDR R0, =0x0000ffff \n\
/* 0802a9f4 */ STRH R0, [R1] \n\
/* 0802a9f6 */ LDR R0, =0x0000033a \n\
/* 0802a9f8 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0802a9fa */ LDR R0, =0x0000270f \n\
/* 0802a9fc */ STRH R0, [R1] \n\
/* 0802a9fe */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0802aa00 */ BL func_0800c3a4 \n\
/* 0802aa04 */ LDR R2, [R5] \n\
/* 0802aa06 */ MOVS R3, 0xCF @ Set R3 to 0xCF \n\
/* 0802aa08 */ LSLS R3, R3, 0x2 \n\
/* 0802aa0a */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0802aa0c */ LSLS R0, R0, 0x8 \n\
/* 0802aa0e */ STR R0, [R1] \n\
/* 0802aa10 */ LDR R0, =0x00000342 \n\
/* 0802aa12 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 0802aa14 */ MOVS R0, 0x25 @ Set R0 to 0x25 \n\
/* 0802aa16 */ STRH R0, [R1] \n\
/* 0802aa18 */ ADDS R3, 0x8 @ Add 0x8 to R3 \n\
/* 0802aa1a */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0802aa1c */ SUBS R0, 0x26 @ Subtract 0x26 from R0 \n\
/* 0802aa1e */ STRH R0, [R1] \n\
/* 0802aa20 */ MOVS R1, 0xD2 @ Set R1 to 0xD2 \n\
/* 0802aa22 */ LSLS R1, R1, 0x2 \n\
/* 0802aa24 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0802aa26 */ STR R4, [R0] \n\
/* 0802aa28 */ ADDS R3, 0x8 @ Add 0x8 to R3 \n\
/* 0802aa2a */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0802aa2c */ STR R4, [R0] \n\
/* 0802aa2e */ POP {R4, R5} \n\
/* 0802aa30 */ POP {R0} \n\
/* 0802aa32 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
