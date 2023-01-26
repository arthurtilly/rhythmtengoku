asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e258 \n\
/* 0803e258 */ PUSH {R4-R6, LR} \n\
/* 0803e25a */ SUB SP, 0xC \n\
/* 0803e25c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803e25e */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803e260 */ BNE branch_0803e284 \n\
/* 0803e262 */ LDR R0, =D_03005380 \n\
/* 0803e264 */ LDR R0, [R0] \n\
/* 0803e266 */ LDR R1, =D_030055d0 \n\
/* 0803e268 */ LDR R1, [R1] \n\
/* 0803e26a */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 0803e26c */ LDRSH R1, [R1, R2] \n\
/* 0803e26e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803e270 */ BL func_0804d770 \n\
/* 0803e274 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803e276 */ BL scene_hide_bg_layer \n\
/* 0803e27a */ B branch_0803e2ce \n\
\n\
.ltorg \n\
 \n\
branch_0803e284: \n\
/* 0803e284 */ LDR R4, =D_030055d0 \n\
/* 0803e286 */ LDR R0, [R4] \n\
/* 0803e288 */ LDR R0, [R0, 0x4] \n\
/* 0803e28a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803e28c */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0803e28e */ BL func_08004b98 \n\
/* 0803e292 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0803e294 */ LDR R1, [R4] \n\
/* 0803e296 */ LDR R0, [R1, 0x4] \n\
/* 0803e298 */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 0803e29a */ LDRSH R1, [R1, R2] \n\
/* 0803e29c */ BL func_08007b04 \n\
/* 0803e2a0 */ LDR R5, =D_03005380 \n\
/* 0803e2a2 */ LDR R0, [R5] \n\
/* 0803e2a4 */ LDR R1, [R4] \n\
/* 0803e2a6 */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 0803e2a8 */ LDRSH R1, [R1, R2] \n\
/* 0803e2aa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803e2ac */ STR R2, [SP] \n\
/* 0803e2ae */ STR R2, [SP, 0x4] \n\
/* 0803e2b0 */ STR R2, [SP, 0x8] \n\
/* 0803e2b2 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0803e2b4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803e2b6 */ BL func_0804d8f8 \n\
/* 0803e2ba */ LDR R0, [R5] \n\
/* 0803e2bc */ LDR R1, [R4] \n\
/* 0803e2be */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 0803e2c0 */ LDRSH R1, [R1, R2] \n\
/* 0803e2c2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803e2c4 */ BL func_0804d770 \n\
/* 0803e2c8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803e2ca */ BL scene_show_bg_layer \n\
 \n\
branch_0803e2ce: \n\
/* 0803e2ce */ ADD SP, 0xC \n\
/* 0803e2d0 */ POP {R4-R6} \n\
/* 0803e2d2 */ POP {R0} \n\
/* 0803e2d4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
