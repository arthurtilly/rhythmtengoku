asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e1f0 \n\
/* 0801e1f0 */ PUSH {R4-R6, LR} \n\
/* 0801e1f2 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801e1f4 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801e1f6 */ PUSH {R5, R6} \n\
/* 0801e1f8 */ SUB SP, 0x14 \n\
/* 0801e1fa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e1fc */ BL func_08007324 \n\
/* 0801e200 */ BL func_080073f0 \n\
/* 0801e204 */ BL func_0800c3b8 \n\
/* 0801e208 */ LSLS R0, R0, 0x10 \n\
/* 0801e20a */ LSRS R0, R0, 0x10 \n\
/* 0801e20c */ LDR R1, =D_089de670 \n\
/* 0801e20e */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 0801e210 */ LSLS R3, R3, 0x2 \n\
/* 0801e212 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0801e214 */ STR R2, [SP] \n\
/* 0801e216 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e218 */ BL func_08005124 \n\
/* 0801e21c */ LDR R5, =D_030046a4 \n\
/* 0801e21e */ LDR R1, [R5] \n\
/* 0801e220 */ STR R0, [R1] \n\
/* 0801e222 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801e224 */ LSLS R0, R0, 0x2 \n\
/* 0801e226 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0801e228 */ BL func_0800c660 \n\
/* 0801e22c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801e22e */ LDR R0, [R5] \n\
/* 0801e230 */ STR R1, [R0, 0x4] \n\
/* 0801e232 */ LDR R0, =D_03005380 \n\
/* 0801e234 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801e236 */ LDR R0, [R0] \n\
/* 0801e238 */ LDR R2, =D_089ddab0 \n\
/* 0801e23a */ LDR R3, =D_0300558c \n\
/* 0801e23c */ LDR R3, [R3] \n\
/* 0801e23e */ BL func_08005814 \n\
/* 0801e242 */ BL func_0801e1d0 \n\
/* 0801e246 */ LDR R0, [R5] \n\
/* 0801e248 */ LDR R0, [R0, 0x4] \n\
/* 0801e24a */ LDR R1, =D_0805966c \n\
/* 0801e24c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801e24e */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 0801e250 */ BL func_08004c0c \n\
/* 0801e254 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801e256 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801e258 */ LDR R0, [R2] \n\
/* 0801e25a */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 0801e25c */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0801e25e */ STR R2, [SP] \n\
/* 0801e260 */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 0801e262 */ LSLS R6, R6, 0x4 \n\
/* 0801e264 */ STR R6, [SP, 0x4] \n\
/* 0801e266 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801e268 */ STR R4, [SP, 0x8] \n\
/* 0801e26a */ STR R4, [SP, 0xC] \n\
/* 0801e26c */ STR R4, [SP, 0x10] \n\
/* 0801e26e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e270 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801e272 */ BL func_0804d160 \n\
/* 0801e276 */ LDR R0, [R5] \n\
/* 0801e278 */ LDR R0, [R0, 0x4] \n\
/* 0801e27a */ LDR R1, =D_08059680 \n\
/* 0801e27c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801e27e */ MOVS R3, 0x7 @ Set R3 to 0x7 \n\
/* 0801e280 */ BL func_08004c0c \n\
/* 0801e284 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801e286 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801e288 */ LDR R0, [R2] \n\
/* 0801e28a */ STR R4, [SP] \n\
/* 0801e28c */ STR R6, [SP, 0x4] \n\
/* 0801e28e */ STR R4, [SP, 0x8] \n\
/* 0801e290 */ STR R4, [SP, 0xC] \n\
/* 0801e292 */ STR R4, [SP, 0x10] \n\
/* 0801e294 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e296 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801e298 */ BL func_0804d160 \n\
/* 0801e29c */ LDR R1, [R5] \n\
/* 0801e29e */ STRH R0, [R1, 0x12] \n\
/* 0801e2a0 */ LDR R0, [R1, 0x4] \n\
/* 0801e2a2 */ LDR R1, =D_08059684 \n\
/* 0801e2a4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801e2a6 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0801e2a8 */ BL func_08004c50 \n\
/* 0801e2ac */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801e2ae */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801e2b0 */ LDR R0, [R2] \n\
/* 0801e2b2 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0801e2b4 */ STR R2, [SP] \n\
/* 0801e2b6 */ STR R6, [SP, 0x4] \n\
/* 0801e2b8 */ STR R4, [SP, 0x8] \n\
/* 0801e2ba */ STR R4, [SP, 0xC] \n\
/* 0801e2bc */ STR R4, [SP, 0x10] \n\
/* 0801e2be */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e2c0 */ MOVS R3, 0xF0 @ Set R3 to 0xF0 \n\
/* 0801e2c2 */ BL func_0804d160 \n\
/* 0801e2c6 */ LDR R1, [R5] \n\
/* 0801e2c8 */ STRH R0, [R1, 0x14] \n\
/* 0801e2ca */ LDR R0, =0xffff \n\
/* 0801e2cc */ STRH R0, [R1, 0xE] \n\
/* 0801e2ce */ STRH R4, [R1, 0x10] \n\
/* 0801e2d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e2d2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801e2d4 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801e2d6 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0801e2d8 */ ADDS R4, R5, 0x0 @ Set R4 to R5 + 0x0 \n\
 \n\
branch_0801e2da: \n\
/* 0801e2da */ LDR R0, [R5] \n\
/* 0801e2dc */ LSLS R1, R2, 0x1 \n\
/* 0801e2de */ ADDS R0, 0x16 @ Add 0x16 to R0 \n\
/* 0801e2e0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801e2e2 */ LDRH R1, [R0] \n\
/* 0801e2e4 */ ORRS R1, R3 @ Set R1 to R1 | R3 \n\
/* 0801e2e6 */ STRH R1, [R0] \n\
/* 0801e2e8 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0801e2ea */ CMP R2, 0x7 @ Compare R2 and 0x7 \n\
/* 0801e2ec */ BLS branch_0801e2da \n\
/* 0801e2ee */ LDR R0, [R4] \n\
/* 0801e2f0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801e2f2 */ STRH R1, [R0, 0xC] \n\
/* 0801e2f4 */ LDR R1, =D_089ddbe8 \n\
/* 0801e2f6 */ LDR R0, [R1] \n\
/* 0801e2f8 */ LDR R5, =D_03001560 \n\
/* 0801e2fa */ LDR R6, =D_03001561 \n\
/* 0801e2fc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e2fe */ BEQ branch_0801e318 \n\
/* 0801e300 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0801e302 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
 \n\
branch_0801e304: \n\
/* 0801e304 */ LDR R1, [R3] \n\
/* 0801e306 */ LDRH R0, [R1, 0xC] \n\
/* 0801e308 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801e30a */ STRH R0, [R1, 0xC] \n\
/* 0801e30c */ LDRH R0, [R1, 0xC] \n\
/* 0801e30e */ LSLS R0, R0, 0x3 \n\
/* 0801e310 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801e312 */ LDR R0, [R0] \n\
/* 0801e314 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e316 */ BNE branch_0801e304 \n\
 \n\
branch_0801e318: \n\
/* 0801e318 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e31a */ LDRSB R0, [R5, R0] \n\
/* 0801e31c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801e31e */ LDRSB R1, [R6, R1] \n\
/* 0801e320 */ BL func_0801e4f4 \n\
/* 0801e324 */ LDR R0, =D_030046a4 \n\
/* 0801e326 */ LDR R1, [R0] \n\
/* 0801e328 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e32a */ STR R0, [R1, 0x8] \n\
/* 0801e32c */ LDR R0, =D_089d7c18 \n\
/* 0801e32e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801e330 */ BL func_080006d0 \n\
/* 0801e334 */ LDR R0, =D_089cd2cc \n\
/* 0801e336 */ LDR R4, =D_089d80d0 \n\
/* 0801e338 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801e33a */ BL func_080006d0 \n\
/* 0801e33e */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0801e340 */ BL func_08001980 \n\
/* 0801e344 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801e346 */ LSLS R1, R1, 0x10 \n\
/* 0801e348 */ LSRS R1, R1, 0x10 \n\
/* 0801e34a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801e34c */ BL func_080006d0 \n\
/* 0801e350 */ LDR R0, =D_089ddbcc \n\
/* 0801e352 */ BL func_080182ac \n\
/* 0801e356 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e358 */ BL func_080191ac \n\
/* 0801e35c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801e35e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801e360 */ BL func_0801d6c4 \n\
/* 0801e364 */ ADD SP, 0x14 \n\
/* 0801e366 */ POP {R3, R4} \n\
/* 0801e368 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801e36a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801e36c */ POP {R4-R6} \n\
/* 0801e36e */ POP {R0} \n\
/* 0801e370 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
