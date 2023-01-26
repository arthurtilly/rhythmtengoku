asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a9c8 \n\
/* 0801a9c8 */ PUSH {R4, LR} \n\
/* 0801a9ca */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801a9cc */ BL scene_show_bg_layer \n\
/* 0801a9d0 */ LDR R0, =D_03005380 \n\
/* 0801a9d2 */ LDR R0, [R0] \n\
/* 0801a9d4 */ LDR R4, =D_030046a4 \n\
/* 0801a9d6 */ LDR R1, [R4] \n\
/* 0801a9d8 */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 0801a9da */ LSLS R2, R2, 0x3 \n\
/* 0801a9dc */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801a9de */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801a9e0 */ LDRSH R1, [R1, R2] \n\
/* 0801a9e2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801a9e4 */ BL func_0804d770 \n\
/* 0801a9e8 */ LDR R0, [R4] \n\
/* 0801a9ea */ LDR R1, =0x4a1 \n\
/* 0801a9ec */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801a9ee */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801a9f0 */ STRB R1, [R0] \n\
/* 0801a9f2 */ POP {R4} \n\
/* 0801a9f4 */ POP {R0} \n\
/* 0801a9f6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
