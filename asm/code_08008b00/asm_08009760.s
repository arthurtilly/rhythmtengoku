asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009760 \n\
/* 08009760 */ PUSH {R4, LR} \n\
/* 08009762 */ LDR R4, =D_03001210 \n\
/* 08009764 */ LSLS R0, R0, 0x2 \n\
/* 08009766 */ LDR R1, =0x04000100 @ !Hardware REG_TM0D \n\
/* 08009768 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800976a */ STR R0, [R4] \n\
/* 0800976c */ BL func_08009674 \n\
/* 08009770 */ LDR R1, [R4] \n\
/* 08009772 */ LDR R0, =0xc3fff0 \n\
/* 08009774 */ STR R0, [R1] \n\
/* 08009776 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08009778 */ BL func_080096a4 \n\
/* 0800977c */ LDR R1, =D_03001201 \n\
/* 0800977e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08009780 */ STRB R0, [R1] \n\
/* 08009782 */ LDR R0, =D_03001204 \n\
/* 08009784 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08009786 */ STR R1, [R0] \n\
/* 08009788 */ LDR R0, =D_03001208 \n\
/* 0800978a */ STR R1, [R0] \n\
/* 0800978c */ LDR R1, =D_03001200 \n\
/* 0800978e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08009790 */ STRB R0, [R1] \n\
/* 08009792 */ POP {R4} \n\
/* 08009794 */ POP {R0} \n\
/* 08009796 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
