asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006ac8 \n\
/* 08006ac8 */ PUSH {R4-R6, LR} \n\
/* 08006aca */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08006acc */ LSLS R1, R1, 0x10 \n\
/* 08006ace */ LSRS R6, R1, 0x10 \n\
/* 08006ad0 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 08006ad2 */ LSLS R2, R2, 0x10 \n\
/* 08006ad4 */ LSRS R5, R2, 0x10 \n\
/* 08006ad6 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08006ad8 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08006ada */ LDRSH R1, [R4, R0] \n\
/* 08006adc */ LSLS R0, R6, 0x10 \n\
/* 08006ade */ ASRS R0, R0, 0x10 \n\
/* 08006ae0 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08006ae2 */ BNE branch_08006af0 \n\
/* 08006ae4 */ MOVS R0, 0xE @ Set R0 to 0xE \n\
/* 08006ae6 */ LDRSH R1, [R4, R0] \n\
/* 08006ae8 */ LSLS R0, R5, 0x10 \n\
/* 08006aea */ ASRS R0, R0, 0x10 \n\
/* 08006aec */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08006aee */ BEQ branch_08006b14 \n\
 \n\
branch_08006af0: \n\
/* 08006af0 */ LDRH R0, [R4, 0x1C] \n\
/* 08006af2 */ LSLS R0, R0, 0x14 \n\
/* 08006af4 */ LSRS R0, R0, 0x14 \n\
/* 08006af6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08006af8 */ BEQ branch_08006b10 \n\
/* 08006afa */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08006afc */ BNE branch_08006b14 \n\
/* 08006afe */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08006b00 */ BL func_08006a8c \n\
/* 08006b04 */ STRH R6, [R4, 0xC] \n\
/* 08006b06 */ STRH R5, [R4, 0xE] \n\
/* 08006b08 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08006b0a */ BL func_08006a0c \n\
/* 08006b0e */ B branch_08006b14 \n\
 \n\
branch_08006b10: \n\
/* 08006b10 */ STRH R3, [R4, 0xC] \n\
/* 08006b12 */ STRH R2, [R4, 0xE] \n\
 \n\
branch_08006b14: \n\
/* 08006b14 */ POP {R4-R6} \n\
/* 08006b16 */ POP {R0} \n\
/* 08006b18 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
