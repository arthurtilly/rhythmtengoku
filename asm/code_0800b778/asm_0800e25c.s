asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e25c \n\
/* 0800e25c */ PUSH {R4-R7, LR} \n\
/* 0800e25e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0800e260 */ PUSH {R7} \n\
/* 0800e262 */ SUB SP, 0x10 \n\
/* 0800e264 */ LDR R5, [SP, 0x28] \n\
/* 0800e266 */ LDR R6, [SP, 0x2C] \n\
/* 0800e268 */ LSLS R1, R1, 0x10 \n\
/* 0800e26a */ LSRS R1, R1, 0x10 \n\
/* 0800e26c */ ADD R4, SP, 0x4 \n\
/* 0800e26e */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0800e270 */ MOV R8, R7 @ Set R8 to R7 \n\
/* 0800e272 */ STRH R0, [R4] \n\
/* 0800e274 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800e276 */ STRH R1, [R0, 0x2] \n\
/* 0800e278 */ STRH R2, [R0, 0x4] \n\
/* 0800e27a */ STRH R3, [R0, 0x6] \n\
/* 0800e27c */ STRH R5, [R0, 0x8] \n\
/* 0800e27e */ STRH R6, [R0, 0xA] \n\
/* 0800e280 */ BL get_current_mem_id \n\
/* 0800e284 */ LSLS R0, R0, 0x10 \n\
/* 0800e286 */ LSRS R0, R0, 0x10 \n\
/* 0800e288 */ LDR R1, =D_08936bb4 \n\
/* 0800e28a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800e28c */ STR R2, [SP] \n\
/* 0800e28e */ ADD R2, SP, 0x4 \n\
/* 0800e290 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800e292 */ BL start_new_task \n\
/* 0800e296 */ ADD SP, 0x10 \n\
/* 0800e298 */ POP {R3} \n\
/* 0800e29a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800e29c */ POP {R4-R7} \n\
/* 0800e29e */ POP {R1} \n\
/* 0800e2a0 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
