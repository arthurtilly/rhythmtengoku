asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e780 \n\
/* 0801e780 */ PUSH {R4, LR} \n\
/* 0801e782 */ SUB SP, 0x8 \n\
/* 0801e784 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e786 */ BL func_08007324 \n\
/* 0801e78a */ BL func_080073f0 \n\
/* 0801e78e */ BL func_0800c3b8 \n\
/* 0801e792 */ LSLS R0, R0, 0x10 \n\
/* 0801e794 */ LSRS R0, R0, 0x10 \n\
/* 0801e796 */ LDR R1, =D_089de670 \n\
/* 0801e798 */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 0801e79a */ LSLS R3, R3, 0x2 \n\
/* 0801e79c */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0801e79e */ STR R2, [SP] \n\
/* 0801e7a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e7a2 */ BL func_08005124 \n\
/* 0801e7a6 */ LDR R4, =D_030046a4 \n\
/* 0801e7a8 */ LDR R1, [R4] \n\
/* 0801e7aa */ STR R0, [R1] \n\
/* 0801e7ac */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0801e7ae */ LSLS R0, R0, 0x2 \n\
/* 0801e7b0 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0801e7b2 */ BL func_0800c660 \n\
/* 0801e7b6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801e7b8 */ LDR R0, [R4] \n\
/* 0801e7ba */ STR R1, [R0, 0x4] \n\
/* 0801e7bc */ LDR R0, =D_03005380 \n\
/* 0801e7be */ LDR R0, [R0] \n\
/* 0801e7c0 */ LDR R2, =D_089ddfac \n\
/* 0801e7c2 */ LDR R3, =D_0300558c \n\
/* 0801e7c4 */ LDR R3, [R3] \n\
/* 0801e7c6 */ BL func_08005814 \n\
/* 0801e7ca */ BL func_0801e764 \n\
/* 0801e7ce */ LDR R1, [R4] \n\
/* 0801e7d0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e7d2 */ STR R0, [R1, 0x8] \n\
/* 0801e7d4 */ MOV R1, SP @ Set R1 to SP \n\
/* 0801e7d6 */ ADDS R1, 0x5 @ Add 0x5 to R1 \n\
/* 0801e7d8 */ ADD R0, SP, 0x4 \n\
/* 0801e7da */ BL func_08008fe0 \n\
/* 0801e7de */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e7e0 */ BL func_0801e928 \n\
/* 0801e7e4 */ LDR R0, =D_089ddbcc \n\
/* 0801e7e6 */ BL func_08000584 \n\
/* 0801e7ea */ ADD SP, 0x8 \n\
/* 0801e7ec */ POP {R4} \n\
/* 0801e7ee */ POP {R0} \n\
/* 0801e7f0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
