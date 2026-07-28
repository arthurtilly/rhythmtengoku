asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803fb14 \n\
/* 0803fb14 */ PUSH {R4, LR} \n\
/* 0803fb16 */ LDR R0, =gCurrentEngineData \n\
/* 0803fb18 */ LDR R2, [R0] \n\
/* 0803fb1a */ LDR R0, =0x36a \n\
/* 0803fb1c */ ADDS R4, R2, R0 @ Set R4 to R2 + R0 \n\
/* 0803fb1e */ MOVS R1, 0xDB @ Set R1 to 0xDB \n\
/* 0803fb20 */ LSLS R1, R1, 0x2 \n\
/* 0803fb22 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0803fb24 */ LDRH R0, [R0] \n\
/* 0803fb26 */ LDRH R3, [R4] \n\
/* 0803fb28 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803fb2a */ STRH R0, [R4] \n\
/* 0803fb2c */ LDR R0, =0x36e \n\
/* 0803fb2e */ ADDS R3, R2, R0 @ Set R3 to R2 + R0 \n\
/* 0803fb30 */ LDRH R1, [R3] \n\
/* 0803fb32 */ MOVS R0, 0xDC @ Set R0 to 0xDC \n\
/* 0803fb34 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0803fb36 */ ASRS R1, R1, 0x8 \n\
/* 0803fb38 */ STRH R1, [R3] \n\
/* 0803fb3a */ MOVS R3, 0xDA @ Set R3 to 0xDA \n\
/* 0803fb3c */ LSLS R3, R3, 0x2 \n\
/* 0803fb3e */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0803fb40 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803fb42 */ LDRSB R0, [R2, R0] \n\
/* 0803fb44 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803fb46 */ LSLS R2, R2, 0x1 \n\
/* 0803fb48 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803fb4a */ LSLS R1, R1, 0x10 \n\
/* 0803fb4c */ ASRS R1, R1, 0x10 \n\
/* 0803fb4e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803fb50 */ LDRSH R2, [R4, R3] \n\
/* 0803fb52 */ BL set_affine_scale_rotation \n\
/* 0803fb56 */ POP {R4} \n\
/* 0803fb58 */ POP {R0} \n\
/* 0803fb5a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
