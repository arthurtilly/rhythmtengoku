asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080268cc \n\
/* 080268cc */ PUSH {R4-R7, LR} \n\
/* 080268ce */ MOV R7, R9 @ Set R7 to R9 \n\
/* 080268d0 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 080268d2 */ PUSH {R6, R7} \n\
/* 080268d4 */ LSRS R1, R0, 0x2 \n\
/* 080268d6 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 080268d8 */ MOVS R7, 0x3 @ Set R7 to 0x3 \n\
/* 080268da */ ANDS R7, R0 @ Set R7 to R7 & R0 \n\
/* 080268dc */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080268de */ LDR R0, =gCurrentEngineData \n\
/* 080268e0 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 080268e2 */ MOVS R6, 0xDD @ Set R6 to 0xDD \n\
/* 080268e4 */ LSLS R6, R6, 0x2 \n\
 \n\
branch_080268e6: \n\
/* 080268e6 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 080268e8 */ LSRS R0, R5 @ Set R0 to R0 >> R5 (logical) \n\
/* 080268ea */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080268ec */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080268ee */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080268f0 */ BEQ branch_08026916 \n\
/* 080268f2 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080268f4 */ LDR R0, [R1] \n\
/* 080268f6 */ ADDS R4, R0, R6 @ Set R4 to R0 + R6 \n\
/* 080268f8 */ LDRH R0, [R4, 0x10] \n\
/* 080268fa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080268fc */ BEQ branch_0802690a \n\
/* 080268fe */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08026900 */ BHI branch_0802690a \n\
/* 08026902 */ LDRB R1, [R4, 0xF] \n\
/* 08026904 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08026906 */ BL func_08026640 \n\
 \n\
branch_0802690a: \n\
/* 0802690a */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0802690c */ BL beats_to_ticks \n\
/* 08026910 */ STRH R0, [R4, 0x10] \n\
/* 08026912 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08026914 */ STRB R0, [R4, 0xF] \n\
 \n\
branch_08026916: \n\
/* 08026916 */ ADDS R6, 0x14 @ Add 0x14 to R6 \n\
/* 08026918 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0802691a */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0802691c */ BLS branch_080268e6 \n\
/* 0802691e */ POP {R3, R4} \n\
/* 08026920 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08026922 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08026924 */ POP {R4-R7} \n\
/* 08026926 */ POP {R0} \n\
/* 08026928 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
