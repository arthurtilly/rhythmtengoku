asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080461f4 \n\
/* 080461f4 */ PUSH {LR} \n\
/* 080461f6 */ SUB SP, 0x14 \n\
/* 080461f8 */ LDR R0, =D_03005380 \n\
/* 080461fa */ LDR R0, [R0] \n\
/* 080461fc */ LDR R1, =D_088b06b0 \n\
/* 080461fe */ MOVS R2, 0x58 @ Set R2 to 0x58 \n\
/* 08046200 */ STR R2, [SP] \n\
/* 08046202 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08046204 */ LSLS R2, R2, 0x4 \n\
/* 08046206 */ STR R2, [SP, 0x4] \n\
/* 08046208 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804620a */ STR R2, [SP, 0x8] \n\
/* 0804620c */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0804620e */ STR R2, [SP, 0xC] \n\
/* 08046210 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046212 */ STR R2, [SP, 0x10] \n\
/* 08046214 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08046216 */ BL func_0804d160 \n\
/* 0804621a */ LDR R0, =s_sword_hi_seqData \n\
/* 0804621c */ BL func_08002634 \n\
/* 08046220 */ ADD SP, 0x14 \n\
/* 08046222 */ POP {R0} \n\
/* 08046224 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
