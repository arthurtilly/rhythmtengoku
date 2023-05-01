asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080278e8 \n\
/* 080278e8 */ PUSH {R4, LR} \n\
/* 080278ea */ SUB SP, 0x4 \n\
/* 080278ec */ LDR R4, =gCurrentEngineData \n\
/* 080278ee */ LDR R1, [R4] \n\
/* 080278f0 */ LDR R2, =0x00000424 \n\
/* 080278f2 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080278f4 */ LDRB R2, [R0] \n\
/* 080278f6 */ CMP R2, 0x3 @ Compare R2 and 0x3 \n\
/* 080278f8 */ BLS branch_08027918 \n\
/* 080278fa */ MOVS R3, 0x8B @ Set R3 to 0x8B \n\
/* 080278fc */ LSLS R3, R3, 0x3 \n\
/* 080278fe */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08027900 */ LDRB R0, [R1] \n\
/* 08027902 */ CMP R0, 0x3F @ Compare R0 and 0x3F \n\
/* 08027904 */ BHI branch_0802790a \n\
/* 08027906 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08027908 */ STRB R0, [R1] \n\
 \n\
branch_0802790a: \n\
/* 0802790a */ LDR R0, [R4] \n\
/* 0802790c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802790e */ LDRB R0, [R0] \n\
/* 08027910 */ LSRS R0, R0, 0x4 \n\
/* 08027912 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08027914 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08027916 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
 \n\
branch_08027918: \n\
/* 08027918 */ LDR R1, =(D_03004b10 + 0x54) \n\
/* 0802791a */ ADDS R0, R2, 0x4 @ Set R0 to R2 + 0x4 \n\
/* 0802791c */ LSLS R0, R0, 0x5 \n\
/* 0802791e */ LDR R2, =drum_lessons_bg_pal \n\
/* 08027920 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08027922 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08027924 */ LSLS R2, R2, 0x2 \n\
/* 08027926 */ STR R2, [SP] \n\
/* 08027928 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802792a */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 0802792c */ BL dma3_set \n\
/* 08027930 */ ADD SP, 0x4 \n\
/* 08027932 */ POP {R4} \n\
/* 08027934 */ POP {R0} \n\
/* 08027936 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
