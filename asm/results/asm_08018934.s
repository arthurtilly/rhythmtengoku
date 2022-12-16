asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018934 \n\
/* 08018934 */ PUSH {R4, LR} \n\
/* 08018936 */ SUB SP, 0x4 \n\
/* 08018938 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801893a */ BL func_08007324 \n\
/* 0801893e */ BL func_080073f0 \n\
/* 08018942 */ BL get_current_mem_id \n\
/* 08018946 */ LSLS R0, R0, 0x10 \n\
/* 08018948 */ LSRS R0, R0, 0x10 \n\
/* 0801894a */ LDR R1, =D_089de670 \n\
/* 0801894c */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 0801894e */ LSLS R3, R3, 0x2 \n\
/* 08018950 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08018952 */ STR R2, [SP] \n\
/* 08018954 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018956 */ BL func_08005124 \n\
/* 0801895a */ LDR R4, =D_030046a4 \n\
/* 0801895c */ LDR R1, [R4] \n\
/* 0801895e */ STR R0, [R1] \n\
/* 08018960 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 08018962 */ LSLS R0, R0, 0x2 \n\
/* 08018964 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08018966 */ BL func_0800c660 \n\
/* 0801896a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801896c */ LDR R0, [R4] \n\
/* 0801896e */ STR R1, [R0, 0x4] \n\
/* 08018970 */ LDR R0, =D_03005380 \n\
/* 08018972 */ LDR R0, [R0] \n\
/* 08018974 */ LDR R2, =D_089d7518 \n\
/* 08018976 */ LDR R3, =D_0300558c \n\
/* 08018978 */ LDR R3, [R3] \n\
/* 0801897a */ BL func_08005814 \n\
/* 0801897e */ BL func_08018914 \n\
/* 08018982 */ LDR R1, [R4] \n\
/* 08018984 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08018986 */ STR R0, [R1, 0x8] \n\
/* 08018988 */ LDR R0, =D_089ddbcc \n\
/* 0801898a */ BL func_08000584 \n\
/* 0801898e */ ADD SP, 0x4 \n\
/* 08018990 */ POP {R4} \n\
/* 08018992 */ POP {R0} \n\
/* 08018994 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
