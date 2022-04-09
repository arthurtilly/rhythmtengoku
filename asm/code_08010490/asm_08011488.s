asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011488 \n\
/* 08011488 */ PUSH {R4, LR} \n\
/* 0801148a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801148c */ BL func_08007324 \n\
/* 08011490 */ BL func_080073f0 \n\
/* 08011494 */ BL func_08011438 \n\
/* 08011498 */ BL func_08011300 \n\
/* 0801149c */ BL func_08010a28 \n\
/* 080114a0 */ BL func_080109cc \n\
/* 080114a4 */ LDR R4, =D_030046a4 \n\
/* 080114a6 */ LDR R0, [R4] \n\
/* 080114a8 */ LDRH R0, [R0, 0x18] \n\
/* 080114aa */ MOVS R1, 0x3C @ Set R1 to 0x3C \n\
/* 080114ac */ BL func_08010904 \n\
/* 080114b0 */ BL func_08010938 \n\
/* 080114b4 */ LDR R1, [R4] \n\
/* 080114b6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080114b8 */ STR R0, [R1] \n\
/* 080114ba */ STRB R0, [R1, 0xD] \n\
/* 080114bc */ LDR R1, [R4] \n\
/* 080114be */ LDR R0, =0xffff \n\
/* 080114c0 */ STRH R0, [R1, 0x20] \n\
/* 080114c2 */ POP {R4} \n\
/* 080114c4 */ POP {R0} \n\
/* 080114c6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
