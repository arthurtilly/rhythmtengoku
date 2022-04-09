asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08015940 \n\
/* 08015940 */ PUSH {R4, R5, LR} \n\
/* 08015942 */ SUB SP, 0x4 \n\
/* 08015944 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08015946 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08015948 */ BL mem_heap_alloc \n\
/* 0801594c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801594e */ LDR R1, [R5, 0x4] \n\
/* 08015950 */ STR R1, [R4, 0x4] \n\
/* 08015952 */ LDR R0, [R5] \n\
/* 08015954 */ STR R0, [R4] \n\
/* 08015956 */ LDR R3, [R5, 0x8] \n\
/* 08015958 */ STR R3, [R4, 0x8] \n\
/* 0801595a */ LDRH R2, [R5, 0xC] \n\
/* 0801595c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801595e */ STRH R2, [R4, 0xC] \n\
/* 08015960 */ STRB R5, [R4, 0xE] \n\
/* 08015962 */ LDRB R2, [R3, 0x1] \n\
/* 08015964 */ STRB R2, [R4, 0xF] \n\
/* 08015966 */ LDRB R3, [R3] \n\
/* 08015968 */ LSLS R3, R3, 0x18 \n\
/* 0801596a */ ASRS R3, R3, 0x18 \n\
/* 0801596c */ LDRH R2, [R4, 0xC] \n\
/* 0801596e */ MULS R3, R2 @ Multiply R3 by R2 \n\
/* 08015970 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08015972 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08015974 */ LSLS R3, R3, 0x2 \n\
/* 08015976 */ STR R3, [SP] \n\
/* 08015978 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801597a */ BL func_0800186c \n\
/* 0801597e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08015980 */ ADD SP, 0x4 \n\
/* 08015982 */ POP {R4, R5} \n\
/* 08015984 */ POP {R1} \n\
/* 08015986 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
