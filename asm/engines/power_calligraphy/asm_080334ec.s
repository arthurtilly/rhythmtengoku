asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080334ec \n\
/* 080334ec */ PUSH {R4, LR} \n\
/* 080334ee */ SUB SP, 0xC \n\
/* 080334f0 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080334f2 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080334f4 */ BEQ branch_080334fc \n\
/* 080334f6 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 080334f8 */ BEQ branch_08033528 \n\
/* 080334fa */ B branch_08033544 \n\
 \n\
branch_080334fc: \n\
/* 080334fc */ LDR R0, =D_03005380 \n\
/* 080334fe */ LDR R0, [R0] \n\
/* 08033500 */ LDR R1, =gCurrentEngineData \n\
/* 08033502 */ LDR R1, [R1] \n\
/* 08033504 */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 08033506 */ LDRSH R1, [R1, R2] \n\
/* 08033508 */ LDR R2, =anim_power_calligraphy_brush_charge1 \n\
/* 0803350a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803350c */ STR R3, [SP] \n\
/* 0803350e */ MOVS R3, 0x6 @ Set R3 to 0x6 \n\
/* 08033510 */ STR R3, [SP, 0x4] \n\
/* 08033512 */ STR R4, [SP, 0x8] \n\
/* 08033514 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08033516 */ BL func_0804d8f8 \n\
/* 0803351a */ B branch_08033544 \n\
\n\
.ltorg \n\
 \n\
branch_08033528: \n\
/* 08033528 */ LDR R0, =D_03005380 \n\
/* 0803352a */ LDR R0, [R0] \n\
/* 0803352c */ LDR R1, =gCurrentEngineData \n\
/* 0803352e */ LDR R1, [R1] \n\
/* 08033530 */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 08033532 */ LDRSH R1, [R1, R2] \n\
/* 08033534 */ LDR R2, =anim_power_calligraphy_brush_charge2 \n\
/* 08033536 */ STR R4, [SP] \n\
/* 08033538 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0803353a */ STR R3, [SP, 0x4] \n\
/* 0803353c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803353e */ STR R3, [SP, 0x8] \n\
/* 08033540 */ BL func_0804d8f8 \n\
 \n\
branch_08033544: \n\
/* 08033544 */ ADD SP, 0xC \n\
/* 08033546 */ POP {R4} \n\
/* 08033548 */ POP {R0} \n\
/* 0803354a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
