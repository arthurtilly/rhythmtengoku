asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ee98 \n\
/* 0801ee98 */ PUSH {R4-R6, LR} \n\
/* 0801ee9a */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801ee9c */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801ee9e */ PUSH {R5, R6} \n\
/* 0801eea0 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801eea2 */ LDR R0, =D_030055d0 \n\
/* 0801eea4 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0801eea6 */ LDR R0, [R0] \n\
/* 0801eea8 */ ADDS R0, 0x7A @ Add 0x7A to R0 \n\
/* 0801eeaa */ LDRH R3, [R0] \n\
/* 0801eeac */ SUBS R3, 0x1 @ Subtract 0x1 from R3 \n\
/* 0801eeae */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 0801eeb0 */ MOVS R1, 0x58 @ Set R1 to 0x58 \n\
/* 0801eeb2 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0801eeb4 */ BL func_08008f04 \n\
/* 0801eeb8 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0801eeba */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0801eebc */ LDR R0, [R1] \n\
/* 0801eebe */ ADDS R0, 0x7A @ Add 0x7A to R0 \n\
/* 0801eec0 */ LDRH R3, [R0] \n\
/* 0801eec2 */ SUBS R3, 0x1 @ Subtract 0x1 from R3 \n\
/* 0801eec4 */ MOVS R0, 0x50 @ Set R0 to 0x50 \n\
/* 0801eec6 */ MOVS R1, 0x4C @ Set R1 to 0x4C \n\
/* 0801eec8 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0801eeca */ BL func_08008f04 \n\
/* 0801eece */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0801eed0 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0801eed2 */ LDR R1, [R2] \n\
/* 0801eed4 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0801eed6 */ ADDS R0, 0x80 @ Add 0x80 to R0 \n\
/* 0801eed8 */ LDRH R2, [R0] \n\
/* 0801eeda */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801eedc */ LSLS R0, R0, 0x1 \n\
/* 0801eede */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 0801eee0 */ ASRS R0, R0, 0x3 \n\
/* 0801eee2 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 0801eee4 */ ADDS R1, 0x78 @ Add 0x78 to R1 \n\
/* 0801eee6 */ LDR R4, =D_03005380 \n\
/* 0801eee8 */ LDR R0, [R4] \n\
/* 0801eeea */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801eeec */ LDRSH R5, [R1, R2] \n\
/* 0801eeee */ LSLS R6, R6, 0x10 \n\
/* 0801eef0 */ ASRS R6, R6, 0x10 \n\
/* 0801eef2 */ LSLS R3, R3, 0x10 \n\
/* 0801eef4 */ ASRS R3, R3, 0x10 \n\
/* 0801eef6 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801eef8 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0801eefa */ BL func_0804d5d4 \n\
/* 0801eefe */ LDR R0, [R4] \n\
/* 0801ef00 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801ef02 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801ef04 */ BL func_0804d770 \n\
/* 0801ef08 */ LDR R0, [R4] \n\
/* 0801ef0a */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801ef0c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ef0e */ BL func_0804cebc \n\
/* 0801ef12 */ LDR R0, [R4] \n\
/* 0801ef14 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801ef16 */ BL func_0800c1a8 \n\
/* 0801ef1a */ LSLS R0, R0, 0x8 \n\
/* 0801ef1c */ MOVS R1, 0x64 @ Set R1 to 0x64 \n\
/* 0801ef1e */ BL __udivsi3 \n\
/* 0801ef22 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801ef24 */ LSLS R2, R2, 0x10 \n\
/* 0801ef26 */ LSRS R2, R2, 0x10 \n\
/* 0801ef28 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0801ef2a */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0801ef2c */ BL func_0804dcb8 \n\
/* 0801ef30 */ LDR R0, [R4] \n\
/* 0801ef32 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0801ef34 */ LDR R1, [R2] \n\
/* 0801ef36 */ ADDS R1, 0x7C @ Add 0x7C to R1 \n\
/* 0801ef38 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ef3a */ LDRSH R1, [R1, R2] \n\
/* 0801ef3c */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0801ef3e */ BL func_0804d614 \n\
/* 0801ef42 */ LDR R0, =s_ghost_walk_seqData \n\
/* 0801ef44 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0801ef46 */ LDR R1, [R2] \n\
/* 0801ef48 */ ADDS R1, 0x80 @ Add 0x80 to R1 \n\
/* 0801ef4a */ LDRH R2, [R1] \n\
/* 0801ef4c */ LSLS R1, R2, 0x4 \n\
/* 0801ef4e */ SUBS R1, R1, R2 @ Set R1 to R1 - R2 \n\
/* 0801ef50 */ ASRS R1, R1, 0x5 \n\
/* 0801ef52 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ef54 */ BL func_08002698 \n\
/* 0801ef58 */ POP {R3, R4} \n\
/* 0801ef5a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801ef5c */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801ef5e */ POP {R4-R6} \n\
/* 0801ef60 */ POP {R0} \n\
/* 0801ef62 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
