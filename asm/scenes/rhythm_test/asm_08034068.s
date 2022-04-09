asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034068 \n\
/* 08034068 */ PUSH {R4, LR} \n\
/* 0803406a */ BL func_08033f08 \n\
/* 0803406e */ BL func_080340a4 \n\
/* 08034072 */ BL func_08018054 \n\
/* 08034076 */ LSLS R4, R0, 0x1 \n\
/* 08034078 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803407a */ BL func_08001980 \n\
/* 0803407e */ SUBS R1, R4, 0x1 @ Set R1 to R4 - 0x1 \n\
/* 08034080 */ LSLS R0, R0, 0x10 \n\
/* 08034082 */ LSRS R0, R0, 0x10 \n\
/* 08034084 */ ADDS R4, R1, R0 @ Set R4 to R1 + R0 \n\
/* 08034086 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08034088 */ BL func_080339bc \n\
/* 0803408c */ POP {R4} \n\
/* 0803408e */ POP {R0} \n\
/* 08034090 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
