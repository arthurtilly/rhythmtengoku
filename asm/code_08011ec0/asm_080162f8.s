asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080162f8 \n\
/* 080162f8 */ PUSH {LR} \n\
/* 080162fa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080162fc */ BL func_0800c604 \n\
/* 08016300 */ BL func_0800c3b8 \n\
/* 08016304 */ LSLS R0, R0, 0x10 \n\
/* 08016306 */ LSRS R0, R0, 0x10 \n\
/* 08016308 */ LDR R1, =D_089cfac8 \n\
/* 0801630a */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0801630c */ LSLS R2, R2, 0x6 \n\
/* 0801630e */ BL func_08002ee0 \n\
/* 08016312 */ LDR R1, =func_080162cc \n\
/* 08016314 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08016316 */ BL func_08005d38 \n\
/* 0801631a */ POP {R0} \n\
/* 0801631c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
