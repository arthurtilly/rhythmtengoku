asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start marching_input_event \n\
/* 080349f4 */ PUSH {R4, R5, LR} \n\
/* 080349f6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080349f8 */ LDR R0, =gCurrentEngineData \n\
/* 080349fa */ LDR R0, [R0] \n\
/* 080349fc */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080349fe */ ADDS R5, 0x2C @ Add 0x2C to R5 \n\
/* 08034a00 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08034a02 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08034a04 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08034a06 */ BEQ branch_08034a0c \n\
/* 08034a08 */ BL func_0803494c \n\
 \n\
branch_08034a0c: \n\
/* 08034a0c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08034a0e */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08034a10 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08034a12 */ BEQ branch_08034a1e \n\
/* 08034a14 */ LDRH R0, [R5, 0x6] \n\
/* 08034a16 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08034a18 */ BEQ branch_08034a1e \n\
/* 08034a1a */ BL func_080349d0 \n\
 \n\
branch_08034a1e: \n\
/* 08034a1e */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08034a20 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08034a22 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08034a24 */ BEQ branch_08034a2a \n\
/* 08034a26 */ BL func_08034988 \n\
 \n\
branch_08034a2a: \n\
/* 08034a2a */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08034a2c */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08034a2e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08034a30 */ BEQ branch_08034a36 \n\
/* 08034a32 */ BL func_080349ac \n\
 \n\
branch_08034a36: \n\
/* 08034a36 */ BL beatscript_enable_loops \n\
/* 08034a3a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08034a3c */ BL func_080346e0 \n\
/* 08034a40 */ POP {R4, R5} \n\
/* 08034a42 */ POP {R0} \n\
/* 08034a44 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
