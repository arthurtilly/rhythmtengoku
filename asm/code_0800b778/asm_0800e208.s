asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e208 \n\
/* 0800e208 */ PUSH {R4-R6, LR} \n\
/* 0800e20a */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0800e20c */ PUSH {R6} \n\
/* 0800e20e */ SUB SP, 0x8 \n\
/* 0800e210 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0800e212 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0800e214 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0800e216 */ LSLS R5, R5, 0x10 \n\
/* 0800e218 */ LSRS R5, R5, 0x10 \n\
/* 0800e21a */ LSLS R4, R4, 0x10 \n\
/* 0800e21c */ LSRS R4, R4, 0x10 \n\
/* 0800e21e */ LSLS R6, R6, 0x10 \n\
/* 0800e220 */ ASRS R6, R6, 0x10 \n\
/* 0800e222 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0800e224 */ ADD R0, SP @ Add SP to R0 \n\
/* 0800e226 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800e228 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800e22a */ ADD R1, SP, 0x4 \n\
/* 0800e22c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800e22e */ BL get_sprite_xy \n\
/* 0800e232 */ ADD R0, SP, 0x4 \n\
/* 0800e234 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800e236 */ LDRSH R1, [R0, R2] \n\
/* 0800e238 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0800e23a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800e23c */ LDRSH R2, [R3, R0] \n\
/* 0800e23e */ LSLS R5, R5, 0x10 \n\
/* 0800e240 */ ASRS R5, R5, 0x10 \n\
/* 0800e242 */ LSLS R4, R4, 0x10 \n\
/* 0800e244 */ ASRS R4, R4, 0x10 \n\
/* 0800e246 */ STR R4, [SP] \n\
/* 0800e248 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800e24a */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0800e24c */ BL func_0800e1cc \n\
/* 0800e250 */ ADD SP, 0x8 \n\
/* 0800e252 */ POP {R3} \n\
/* 0800e254 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800e256 */ POP {R4-R6} \n\
/* 0800e258 */ POP {R1} \n\
/* 0800e25a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
