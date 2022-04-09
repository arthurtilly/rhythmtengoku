asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080462a4 \n\
/* 080462a4 */ PUSH {R4, R5, LR} \n\
/* 080462a6 */ SUB SP, 0x14 \n\
/* 080462a8 */ LDR R5, =D_030055d0 \n\
/* 080462aa */ LDR R1, [R5] \n\
/* 080462ac */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080462ae */ STRB R0, [R1] \n\
/* 080462b0 */ BL func_08046274 \n\
/* 080462b4 */ BL func_0800e0ec \n\
/* 080462b8 */ STR R4, [SP] \n\
/* 080462ba */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 080462bc */ STR R0, [SP, 0x4] \n\
/* 080462be */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080462c0 */ STR R0, [SP, 0x8] \n\
/* 080462c2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080462c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080462c6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080462c8 */ BL func_0800e0a0 \n\
/* 080462cc */ LDR R0, =D_03005380 \n\
/* 080462ce */ LDR R0, [R0] \n\
/* 080462d0 */ LDR R1, =D_088b09b4 \n\
/* 080462d2 */ MOVS R2, 0x8C @ Set R2 to 0x8C \n\
/* 080462d4 */ STR R2, [SP] \n\
/* 080462d6 */ STR R4, [SP, 0x4] \n\
/* 080462d8 */ STR R4, [SP, 0x8] \n\
/* 080462da */ STR R4, [SP, 0xC] \n\
/* 080462dc */ STR R4, [SP, 0x10] \n\
/* 080462de */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080462e0 */ MOVS R3, 0x70 @ Set R3 to 0x70 \n\
/* 080462e2 */ BL func_0804d160 \n\
/* 080462e6 */ LDR R1, [R5] \n\
/* 080462e8 */ STRH R0, [R1, 0x2] \n\
/* 080462ea */ ADD SP, 0x14 \n\
/* 080462ec */ POP {R4, R5} \n\
/* 080462ee */ POP {R0} \n\
/* 080462f0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
