asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e3e4 \n\
/* 0800e3e4 */ PUSH {R4-R7, LR} \n\
/* 0800e3e6 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0800e3e8 */ PUSH {R7} \n\
/* 0800e3ea */ SUB SP, 0x10 \n\
/* 0800e3ec */ LDR R5, [SP, 0x28] \n\
/* 0800e3ee */ LDR R6, [SP, 0x2C] \n\
/* 0800e3f0 */ LSLS R1, R1, 0x10 \n\
/* 0800e3f2 */ LSRS R1, R1, 0x10 \n\
/* 0800e3f4 */ ADD R4, SP, 0x4 \n\
/* 0800e3f6 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0800e3f8 */ MOV R8, R7 @ Set R8 to R7 \n\
/* 0800e3fa */ STRH R0, [R4] \n\
/* 0800e3fc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800e3fe */ STRH R1, [R0, 0x2] \n\
/* 0800e400 */ STRH R2, [R0, 0x4] \n\
/* 0800e402 */ STRH R3, [R0, 0x6] \n\
/* 0800e404 */ STRH R5, [R0, 0x8] \n\
/* 0800e406 */ STRH R6, [R0, 0xA] \n\
/* 0800e408 */ BL func_0800c3b8 \n\
/* 0800e40c */ LSLS R0, R0, 0x10 \n\
/* 0800e40e */ LSRS R0, R0, 0x10 \n\
/* 0800e410 */ LDR R1, =D_08936bd4 \n\
/* 0800e412 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800e414 */ STR R2, [SP] \n\
/* 0800e416 */ ADD R2, SP, 0x4 \n\
/* 0800e418 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800e41a */ BL func_08005b20 \n\
/* 0800e41e */ ADD SP, 0x10 \n\
/* 0800e420 */ POP {R3} \n\
/* 0800e422 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800e424 */ POP {R4-R7} \n\
/* 0800e426 */ POP {R1} \n\
/* 0800e428 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
