asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803bec4 \n\
/* 0803bec4 */ PUSH {R4, R5, LR} \n\
/* 0803bec6 */ LDR R5, =gCurrentEngineData \n\
/* 0803bec8 */ LDR R1, [R5] \n\
/* 0803beca */ MOVS R2, 0xBF @ Set R2 to 0xBF \n\
/* 0803becc */ LSLS R2, R2, 0x2 \n\
/* 0803bece */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0803bed0 */ LDR R0, [R0] \n\
/* 0803bed2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803bed4 */ BEQ branch_0803bf0a \n\
/* 0803bed6 */ MOVS R4, 0xBE @ Set R4 to 0xBE \n\
/* 0803bed8 */ LSLS R4, R4, 0x2 \n\
/* 0803beda */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803bedc */ LDR R0, [R1] \n\
/* 0803bede */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0803bee0 */ STR R0, [R1] \n\
/* 0803bee2 */ BL func_0803be44 \n\
/* 0803bee6 */ LDR R2, [R5] \n\
/* 0803bee8 */ ADDS R4, R2, R4 @ Set R4 to R2 + R4 \n\
/* 0803beea */ MOVS R0, 0xBF @ Set R0 to 0xBF \n\
/* 0803beec */ LSLS R0, R0, 0x2 \n\
/* 0803beee */ ADDS R3, R2, R0 @ Set R3 to R2 + R0 \n\
/* 0803bef0 */ LDR R1, [R4] \n\
/* 0803bef2 */ LDR R0, [R3] \n\
/* 0803bef4 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0803bef6 */ BLT branch_0803bf0a \n\
/* 0803bef8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803befa */ STR R0, [R3] \n\
/* 0803befc */ MOVS R1, 0xBD @ Set R1 to 0xBD \n\
/* 0803befe */ LSLS R1, R1, 0x2 \n\
/* 0803bf00 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0803bf02 */ LDR R0, [R0] \n\
/* 0803bf04 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803bf06 */ BL affine_sprite_set_visible \n\
 \n\
branch_0803bf0a: \n\
/* 0803bf0a */ POP {R4, R5} \n\
/* 0803bf0c */ POP {R0} \n\
/* 0803bf0e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
