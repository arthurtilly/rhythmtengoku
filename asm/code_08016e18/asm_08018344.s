asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018344 \n\
/* 08018344 */ PUSH {R4-R6, LR} \n\
/* 08018346 */ SUB SP, 0xC \n\
/* 08018348 */ LDR R5, =D_030046a4 \n\
/* 0801834a */ LDR R0, [R5] \n\
/* 0801834c */ ADDS R0, 0x90 @ Add 0x90 to R0 \n\
/* 0801834e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08018350 */ STRB R4, [R0] \n\
/* 08018352 */ LDR R0, [R5] \n\
/* 08018354 */ ADDS R0, 0x91 @ Add 0x91 to R0 \n\
/* 08018356 */ STRB R4, [R0] \n\
/* 08018358 */ LDR R6, =D_03005380 \n\
/* 0801835a */ LDR R0, [R6] \n\
/* 0801835c */ LDR R1, [R5] \n\
/* 0801835e */ ADDS R1, 0x8C @ Add 0x8C to R1 \n\
/* 08018360 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018362 */ LDRSH R1, [R1, R2] \n\
/* 08018364 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018366 */ BL func_0804cebc \n\
/* 0801836a */ LDR R0, [R6] \n\
/* 0801836c */ LDR R1, [R5] \n\
/* 0801836e */ ADDS R1, 0x8E @ Add 0x8E to R1 \n\
/* 08018370 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018372 */ LDRSH R1, [R1, R2] \n\
/* 08018374 */ LDR R2, =D_0890ab88 \n\
/* 08018376 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08018378 */ STR R3, [SP] \n\
/* 0801837a */ STR R4, [SP, 0x4] \n\
/* 0801837c */ STR R4, [SP, 0x8] \n\
/* 0801837e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08018380 */ BL func_0804d8f8 \n\
/* 08018384 */ LDR R0, [R6] \n\
/* 08018386 */ LDR R1, [R5] \n\
/* 08018388 */ ADDS R1, 0x8C @ Add 0x8C to R1 \n\
/* 0801838a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801838c */ LDRSH R1, [R1, R2] \n\
/* 0801838e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08018390 */ BL func_0804d770 \n\
/* 08018394 */ LDR R0, [R6] \n\
/* 08018396 */ LDR R1, [R5] \n\
/* 08018398 */ ADDS R1, 0x8E @ Add 0x8E to R1 \n\
/* 0801839a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801839c */ LDRSH R1, [R1, R2] \n\
/* 0801839e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080183a0 */ BL func_0804d770 \n\
/* 080183a4 */ BL func_080182b8 \n\
/* 080183a8 */ LDR R0, =s_f_pause_on_seqData \n\
/* 080183aa */ BL func_08002634 \n\
/* 080183ae */ ADD SP, 0xC \n\
/* 080183b0 */ POP {R4-R6} \n\
/* 080183b2 */ POP {R0} \n\
/* 080183b4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
