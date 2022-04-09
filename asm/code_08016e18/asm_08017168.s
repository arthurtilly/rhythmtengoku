asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017168 \n\
/* 08017168 */ PUSH {LR} \n\
/* 0801716a */ SUB SP, 0x4 \n\
/* 0801716c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801716e */ MOVS R2, 0xF8 @ Set R2 to 0xF8 \n\
/* 08017170 */ LSLS R2, R2, 0x2 \n\
/* 08017172 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08017174 */ LSLS R0, R0, 0x2 \n\
/* 08017176 */ STR R0, [SP] \n\
/* 08017178 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801717a */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801717c */ BL func_080018e0 \n\
/* 08017180 */ ADD SP, 0x4 \n\
/* 08017182 */ POP {R0} \n\
/* 08017184 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
