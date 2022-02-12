asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08029988 \n\
/* 08029988 */ PUSH {R4-R7, LR} \n\
/* 0802998a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802998c */ PUSH {R7} \n\
/* 0802998e */ LDR R6, =D_030055d0 \n\
/* 08029990 */ LDR R2, [R6] \n\
/* 08029992 */ MOVS R4, 0xF2 @ Set R4 to 0xF2 \n\
/* 08029994 */ LSLS R4, R4, 0x2 \n\
/* 08029996 */ ADDS R0, R2, R4 @ Set R0 to R2 + R4 \n\
/* 08029998 */ LDR R0, [R0] \n\
/* 0802999a */ LDRB R0, [R0, 0x1] \n\
/* 0802999c */ LSLS R0, R0, 0x18 \n\
/* 0802999e */ ASRS R0, R0, 0x18 \n\
/* 080299a0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080299a2 */ BGE branch_08029a0c \n\
/* 080299a4 */ LDR R0, =D_030046a8 \n\
/* 080299a6 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080299a8 */ LDR R0, [R0] \n\
/* 080299aa */ MOVS R7, 0xB9 @ Set R7 to 0xB9 \n\
/* 080299ac */ LSLS R7, R7, 0x2 \n\
/* 080299ae */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 080299b0 */ MOVS R3, 0xF1 @ Set R3 to 0xF1 \n\
/* 080299b2 */ LSLS R3, R3, 0x2 \n\
/* 080299b4 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 080299b6 */ LDR R1, [R1] \n\
/* 080299b8 */ ADDS R3, 0x52 @ Add 0x52 to R3 \n\
/* 080299ba */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 080299bc */ LDRH R2, [R2] \n\
/* 080299be */ LSLS R2, R2, 0x1 \n\
/* 080299c0 */ BL func_08011ad4 \n\
/* 080299c4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080299c6 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 080299c8 */ BLT branch_08029a08 \n\
/* 080299ca */ LDR R0, [R6] \n\
/* 080299cc */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080299ce */ LDR R0, [R0] \n\
/* 080299d0 */ LDRB R4, [R0] \n\
/* 080299d2 */ BL func_0801c504 \n\
/* 080299d6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080299d8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080299da */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080299dc */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080299de */ BL func_0801adf0 \n\
/* 080299e2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080299e4 */ BGE branch_080299fc \n\
/* 080299e6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080299e8 */ LDR R0, [R1] \n\
/* 080299ea */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 080299ec */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080299ee */ BL func_08011b50 \n\
/* 080299f2 */ B branch_08029a08 \n\
\n\
.ltorg \n\
 \n\
branch_080299fc: \n\
/* 080299fc */ BL func_0801b498 \n\
/* 08029a00 */ LDR R0, =D_089d85b4 \n\
/* 08029a02 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08029a04 */ BL func_080006d0 \n\
 \n\
branch_08029a08: \n\
/* 08029a08 */ BL func_0800c484 \n\
 \n\
branch_08029a0c: \n\
/* 08029a0c */ POP {R3} \n\
/* 08029a0e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08029a10 */ POP {R4-R7} \n\
/* 08029a12 */ POP {R0} \n\
/* 08029a14 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
