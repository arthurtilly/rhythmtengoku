asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08012464 \n\
/* 08012464 */ PUSH {LR} \n\
/* 08012466 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08012468 */ BL func_0800c604 \n\
/* 0801246c */ BL func_0800c3b8 \n\
/* 08012470 */ LSLS R0, R0, 0x10 \n\
/* 08012472 */ LSRS R0, R0, 0x10 \n\
/* 08012474 */ LDR R1, =D_089cdc44 \n\
/* 08012476 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 08012478 */ LSLS R2, R2, 0x6 \n\
/* 0801247a */ BL func_08002ee0 \n\
/* 0801247e */ LDR R1, =(func_08012438 + 1) \n\
/* 08012480 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08012482 */ BL func_08005d38 \n\
/* 08012486 */ POP {R0} \n\
/* 08012488 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
