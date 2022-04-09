asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08015ccc \n\
/* 08015ccc */ PUSH {LR} \n\
/* 08015cce */ SUB SP, 0x4 \n\
/* 08015cd0 */ LSLS R1, R1, 0xE \n\
/* 08015cd2 */ LSLS R2, R2, 0x5 \n\
/* 08015cd4 */ MOVS R3, 0xC0 @ Set R3 to 0xC0 \n\
/* 08015cd6 */ LSLS R3, R3, 0x13 \n\
/* 08015cd8 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08015cda */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08015cdc */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 08015cde */ LSLS R2, R2, 0x1 \n\
/* 08015ce0 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08015ce2 */ LSLS R3, R3, 0x2 \n\
/* 08015ce4 */ STR R3, [SP] \n\
/* 08015ce6 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08015ce8 */ BL func_0800186c \n\
/* 08015cec */ ADD SP, 0x4 \n\
/* 08015cee */ POP {R0} \n\
/* 08015cf0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
