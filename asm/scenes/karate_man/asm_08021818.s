asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08021818 \n\
/* 08021818 */ PUSH {R4-R6, LR} \n\
/* 0802181a */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802181c */ PUSH {R6} \n\
/* 0802181e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08021820 */ LDRH R6, [R0, 0x28] \n\
/* 08021822 */ LDR R0, =0xffffff00 \n\
/* 08021824 */ ADDS R2, R6, R0 @ Set R2 to R6 + R0 \n\
/* 08021826 */ MOVS R1, 0x51 @ Set R1 to 0x51 \n\
/* 08021828 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802182a */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0802182c */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 0802182e */ ASRS R0, R0, 0x10 \n\
/* 08021830 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 08021832 */ MOVS R4, 0x35 @ Set R4 to 0x35 \n\
/* 08021834 */ SUBS R4, R4, R1 @ Set R4 to R4 - R1 \n\
/* 08021836 */ MOVS R0, 0x90 @ Set R0 to 0x90 \n\
/* 08021838 */ LSLS R0, R0, 0x6 \n\
/* 0802183a */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802183c */ BL func_08007b80 \n\
/* 08021840 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08021842 */ ADDS R5, 0x78 @ Add 0x78 to R5 \n\
/* 08021844 */ LSLS R4, R4, 0x8 \n\
/* 08021846 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08021848 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802184a */ BL func_08007b80 \n\
/* 0802184e */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 08021850 */ LSLS R5, R5, 0x8 \n\
/* 08021852 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08021854 */ STR R5, [R1, 0xC] \n\
/* 08021856 */ LSLS R0, R0, 0x8 \n\
/* 08021858 */ STR R0, [R1, 0x10] \n\
/* 0802185a */ MOVS R0, 0xD4 @ Set R0 to 0xD4 \n\
/* 0802185c */ LSLS R0, R0, 0x6 \n\
/* 0802185e */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08021860 */ BL func_08007b80 \n\
/* 08021864 */ ADDS R0, 0x50 @ Add 0x50 to R0 \n\
/* 08021866 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08021868 */ STR R0, [R1, 0x14] \n\
/* 0802186a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0802186c */ LSLS R0, R0, 0x9 \n\
/* 0802186e */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08021870 */ BL func_0804c86c \n\
/* 08021874 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08021876 */ STRH R0, [R1, 0x2A] \n\
/* 08021878 */ POP {R3} \n\
/* 0802187a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802187c */ POP {R4-R6} \n\
/* 0802187e */ POP {R0} \n\
/* 08021880 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
