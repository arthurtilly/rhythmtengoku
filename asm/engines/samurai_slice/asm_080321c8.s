asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080321c8 \n\
/* 080321c8 */ PUSH {R4, R5, LR} \n\
/* 080321ca */ LDR R0, =gCurrentEngineData \n\
/* 080321cc */ LDR R0, [R0] \n\
/* 080321ce */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080321d0 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 080321d2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_080321d4: \n\
/* 080321d4 */ LDRB R0, [R4, 0x4] \n\
/* 080321d6 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 080321d8 */ BHI branch_0803220e \n\
/* 080321da */ LSLS R0, R0, 0x2 \n\
/* 080321dc */ LDR R1, =jtbl_080321ec \n\
/* 080321de */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080321e0 */ LDR R0, [R0] \n\
/* 080321e2 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_080321ec: \n\
.word branch_0803220e \n\
.word jump_08032200 \n\
.word branch_0803220e \n\
.word branch_0803220e \n\
.word jump_08032208 \n\
jump_08032200: \n\
/* 08032200 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08032202 */ BL func_08031c94 \n\
/* 08032206 */ B branch_0803220e \n\
jump_08032208: \n\
/* 08032208 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803220a */ BL func_080320c8 \n\
 \n\
branch_0803220e: \n\
/* 0803220e */ LDR R0, [R4, 0x24] \n\
/* 08032210 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08032212 */ STR R0, [R4, 0x24] \n\
/* 08032214 */ ADDS R4, 0x34 @ Add 0x34 to R4 \n\
/* 08032216 */ ADDS R0, R5, 0x1 @ Set R0 to R5 + 0x1 \n\
/* 08032218 */ LSLS R0, R0, 0x18 \n\
/* 0803221a */ LSRS R5, R0, 0x18 \n\
/* 0803221c */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0803221e */ BLS branch_080321d4 \n\
/* 08032220 */ POP {R4, R5} \n\
/* 08032222 */ POP {R0} \n\
/* 08032224 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
