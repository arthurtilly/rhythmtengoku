asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007394 \n\
/* 08007394 */ PUSH {LR} \n\
/* 08007396 */ SUB SP, 0x4 \n\
/* 08007398 */ LSLS R1, R1, 0x5 \n\
/* 0800739a */ LDR R3, =D_03004b64 \n\
/* 0800739c */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0800739e */ LSLS R2, R2, 0x5 \n\
/* 080073a0 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 080073a2 */ LSLS R3, R3, 0x1 \n\
/* 080073a4 */ STR R3, [SP] \n\
/* 080073a6 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 080073a8 */ BL func_0800186c \n\
/* 080073ac */ ADD SP, 0x4 \n\
/* 080073ae */ POP {R0} \n\
/* 080073b0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
