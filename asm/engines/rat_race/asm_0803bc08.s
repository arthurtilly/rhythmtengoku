asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803bc08 \n\
/* 0803bc08 */ PUSH {R4, R5, LR} \n\
/* 0803bc0a */ LDR R0, =gCurrentEngineData \n\
/* 0803bc0c */ LDR R1, [R0] \n\
/* 0803bc0e */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0803bc10 */ ADDS R4, 0x88 @ Add 0x88 to R4 \n\
/* 0803bc12 */ ADDS R1, 0xD0 @ Add 0xD0 to R1 \n\
/* 0803bc14 */ LDRH R0, [R1] \n\
/* 0803bc16 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0803bc18 */ STRH R0, [R1] \n\
/* 0803bc1a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0803bc1c: \n\
/* 0803bc1c */ LDRB R0, [R4, 0x2] \n\
/* 0803bc1e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803bc20 */ BEQ branch_0803bc28 \n\
/* 0803bc22 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803bc24 */ BL func_0803bbd8 \n\
 \n\
branch_0803bc28: \n\
/* 0803bc28 */ ADDS R0, R5, 0x1 @ Set R0 to R5 + 0x1 \n\
/* 0803bc2a */ LSLS R0, R0, 0x18 \n\
/* 0803bc2c */ LSRS R5, R0, 0x18 \n\
/* 0803bc2e */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 0803bc30 */ CMP R5, 0x8 @ Compare R5 and 0x8 \n\
/* 0803bc32 */ BLS branch_0803bc1c \n\
/* 0803bc34 */ POP {R4, R5} \n\
/* 0803bc36 */ POP {R0} \n\
/* 0803bc38 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
