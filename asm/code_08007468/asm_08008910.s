asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008910 \n\
/* 08008910 */ PUSH {R4, R5, LR} \n\
/* 08008912 */ SUB SP, 0x14 \n\
/* 08008914 */ LDR R5, [SP, 0x20] \n\
/* 08008916 */ LDR R4, [SP, 0x24] \n\
/* 08008918 */ LSLS R4, R4, 0x18 \n\
/* 0800891a */ LSRS R4, R4, 0x18 \n\
/* 0800891c */ STR R5, [SP] \n\
/* 0800891e */ STR R4, [SP, 0x4] \n\
/* 08008920 */ MOVS R4, 0x78 @ Set R4 to 0x78 \n\
/* 08008922 */ STR R4, [SP, 0x8] \n\
/* 08008924 */ MOVS R4, 0x50 @ Set R4 to 0x50 \n\
/* 08008926 */ STR R4, [SP, 0xC] \n\
/* 08008928 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800892a */ STR R4, [SP, 0x10] \n\
/* 0800892c */ BL func_080087e8 \n\
/* 08008930 */ ADD SP, 0x14 \n\
/* 08008932 */ POP {R4, R5} \n\
/* 08008934 */ POP {R0} \n\
/* 08008936 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
