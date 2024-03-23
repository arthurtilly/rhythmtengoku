asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08038384 \n\
/* 08038384 */ PUSH {R4-R6, LR} \n\
/* 08038386 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08038388 */ PUSH {R6} \n\
/* 0803838a */ SUB SP, 0x8 \n\
/* 0803838c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0803838e */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08038390 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08038392 */ BL get_current_mem_id \n\
/* 08038396 */ LSLS R0, R0, 0x10 \n\
/* 08038398 */ LSRS R0, R0, 0x10 \n\
/* 0803839a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803839c */ LSLS R1, R1, 0x18 \n\
/* 0803839e */ LSRS R1, R1, 0x18 \n\
/* 080383a0 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 080383a2 */ LDR R1, =bunny_hop_palettes \n\
/* 080383a4 */ LSLS R5, R5, 0x2 \n\
/* 080383a6 */ ADDS R5, R5, R1 @ Set R5 to R5 + R1 \n\
/* 080383a8 */ LDR R3, [R5] \n\
/* 080383aa */ LSLS R6, R6, 0x2 \n\
/* 080383ac */ ADDS R6, R6, R1 @ Set R6 to R6 + R1 \n\
/* 080383ae */ LDR R1, [R6] \n\
/* 080383b0 */ STR R1, [SP] \n\
/* 080383b2 */ LDR R4, =(D_03004b10 + 0x54) \n\
/* 080383b4 */ STR R4, [SP, 0x4] \n\
/* 080383b6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080383b8 */ MOVS R2, 0x9 @ Set R2 to 0x9 \n\
/* 080383ba */ BL palette_fade_to \n\
/* 080383be */ BL get_current_mem_id \n\
/* 080383c2 */ LSLS R0, R0, 0x10 \n\
/* 080383c4 */ LSRS R0, R0, 0x10 \n\
/* 080383c6 */ LDR R3, [R5] \n\
/* 080383c8 */ LDR R1, [R6] \n\
/* 080383ca */ STR R1, [SP] \n\
/* 080383cc */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080383ce */ LSLS R1, R1, 0x2 \n\
/* 080383d0 */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 080383d2 */ STR R4, [SP, 0x4] \n\
/* 080383d4 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080383d6 */ MOVS R2, 0x9 @ Set R2 to 0x9 \n\
/* 080383d8 */ BL palette_fade_to \n\
/* 080383dc */ ADD SP, 0x8 \n\
/* 080383de */ POP {R3} \n\
/* 080383e0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080383e2 */ POP {R4-R6} \n\
/* 080383e4 */ POP {R0} \n\
/* 080383e6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
