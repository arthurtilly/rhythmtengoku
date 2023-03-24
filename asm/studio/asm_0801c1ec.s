asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c1ec \n\
/* 0801c1ec */ PUSH {R4, R5, LR} \n\
/* 0801c1ee */ BL get_current_mem_id \n\
/* 0801c1f2 */ LDR R1, =D_030046a8 \n\
/* 0801c1f4 */ LDR R1, [R1] \n\
/* 0801c1f6 */ MOVS R2, 0xB9 @ Set R2 to 0xB9 \n\
/* 0801c1f8 */ LSLS R2, R2, 0x2 \n\
/* 0801c1fa */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801c1fc */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801c1fe */ MOVS R3, 0x5 @ Set R3 to 0x5 \n\
/* 0801c200 */ BL func_08011c1c \n\
/* 0801c204 */ LDR R5, =D_030046a4 \n\
/* 0801c206 */ LDR R1, [R5] \n\
/* 0801c208 */ MOVS R4, 0x92 @ Set R4 to 0x92 \n\
/* 0801c20a */ LSLS R4, R4, 0x3 \n\
/* 0801c20c */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0801c20e */ STR R0, [R1] \n\
/* 0801c210 */ BL func_08011d8c \n\
/* 0801c214 */ LDR R0, [R5] \n\
/* 0801c216 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0801c218 */ LDR R0, [R0] \n\
/* 0801c21a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801c21c */ BL func_08011e74 \n\
/* 0801c220 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801c222 */ BL set_pause_beatscript_scene \n\
/* 0801c226 */ POP {R4, R5} \n\
/* 0801c228 */ POP {R0} \n\
/* 0801c22a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
