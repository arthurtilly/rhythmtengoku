asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803074c \n\
/* 0803074c */ PUSH {R4-R7, LR} \n\
/* 0803074e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08030750 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08030752 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08030754 */ PUSH {R5-R7} \n\
/* 08030756 */ SUB SP, 0xC \n\
/* 08030758 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0803075a */ LDR R0, =D_030055d0 \n\
/* 0803075c */ LDR R4, [R0] \n\
/* 0803075e */ ADDS R0, R4, 0x4 @ Set R0 to R4 + 0x4 \n\
/* 08030760 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08030762 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08030764 */ BL clappy_trio_get_anim \n\
/* 08030768 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803076a */ LDR R1, =D_03005380 \n\
/* 0803076c */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0803076e */ LDR R0, [R1] \n\
/* 08030770 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 08030772 */ LDRSH R1, [R4, R3] \n\
/* 08030774 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08030776 */ LSLS R4, R7, 0x18 \n\
/* 08030778 */ ASRS R4, R4, 0x18 \n\
/* 0803077a */ STR R4, [SP] \n\
/* 0803077c */ MOVS R6, 0x7F @ Set R6 to 0x7F \n\
/* 0803077e */ STR R6, [SP, 0x4] \n\
/* 08030780 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08030782 */ STR R5, [SP, 0x8] \n\
/* 08030784 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030786 */ BL func_0804d8f8 \n\
/* 0803078a */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803078c */ BL clappy_trio_get_anim \n\
/* 08030790 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08030792 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08030794 */ LDR R0, [R1] \n\
/* 08030796 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08030798 */ MOVS R7, 0x2 @ Set R7 to 0x2 \n\
/* 0803079a */ LDRSH R1, [R3, R7] \n\
/* 0803079c */ STR R4, [SP] \n\
/* 0803079e */ STR R6, [SP, 0x4] \n\
/* 080307a0 */ STR R5, [SP, 0x8] \n\
/* 080307a2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080307a4 */ BL func_0804d8f8 \n\
/* 080307a8 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080307aa */ BL clappy_trio_get_anim \n\
/* 080307ae */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080307b0 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080307b2 */ LDR R0, [R1] \n\
/* 080307b4 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080307b6 */ MOVS R7, 0x4 @ Set R7 to 0x4 \n\
/* 080307b8 */ LDRSH R1, [R3, R7] \n\
/* 080307ba */ STR R4, [SP] \n\
/* 080307bc */ STR R6, [SP, 0x4] \n\
/* 080307be */ STR R5, [SP, 0x8] \n\
/* 080307c0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080307c2 */ BL func_0804d8f8 \n\
/* 080307c6 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080307c8 */ BL clappy_trio_get_anim \n\
/* 080307cc */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080307ce */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080307d0 */ LDR R0, [R1] \n\
/* 080307d2 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080307d4 */ MOVS R7, 0x6 @ Set R7 to 0x6 \n\
/* 080307d6 */ LDRSH R1, [R3, R7] \n\
/* 080307d8 */ STR R4, [SP] \n\
/* 080307da */ STR R6, [SP, 0x4] \n\
/* 080307dc */ STR R5, [SP, 0x8] \n\
/* 080307de */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080307e0 */ BL func_0804d8f8 \n\
/* 080307e4 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 080307e6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080307e8 */ BNE branch_080307f0 \n\
/* 080307ea */ LDR R0, =s_f_handclap_ready_seqData \n\
/* 080307ec */ BL play_sound \n\
 \n\
branch_080307f0: \n\
/* 080307f0 */ ADD SP, 0xC \n\
/* 080307f2 */ POP {R3-R5} \n\
/* 080307f4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080307f6 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080307f8 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080307fa */ POP {R4-R7} \n\
/* 080307fc */ POP {R0} \n\
/* 080307fe */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
