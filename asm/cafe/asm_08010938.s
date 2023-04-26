asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010938 \n\
/* 08010938 */ PUSH {R4-R7, LR} \n\
/* 0801093a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0801093c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801093e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08010940 */ PUSH {R5-R7} \n\
/* 08010942 */ LDR R0, =D_030055a0 \n\
/* 08010944 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08010946 */ LDR R1, =gCurrentSceneData \n\
/* 08010948 */ LDR R0, [R1] \n\
/* 0801094a */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 0801094c */ MOV R12, R0 @ Set R12 to R0 \n\
/* 0801094e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08010950 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08010952 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08010954 */ MOV R3, R10 @ Set R3 to R10 \n\
 \n\
branch_08010956: \n\
/* 08010956 */ LDRB R0, [R3] \n\
/* 08010958 */ CMP R0, 0xFF @ Compare R0 and 0xFF \n\
/* 0801095a */ BEQ branch_08010966 \n\
/* 0801095c */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0801095e */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08010960 */ STRB R2, [R0] \n\
/* 08010962 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08010964 */ ADD R8, R0 @ Add R0 to R8 \n\
 \n\
branch_08010966: \n\
/* 08010966 */ ADDS R3, 0x8 @ Add 0x8 to R3 \n\
/* 08010968 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0801096a */ CMP R2, 0x4 @ Compare R2 and 0x4 \n\
/* 0801096c */ BLE branch_08010956 \n\
/* 0801096e */ LDR R0, [R1] \n\
/* 08010970 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08010972 */ STRB R1, [R0, 0xE] \n\
/* 08010974 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08010976 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08010978 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0801097a */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0801097c */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0801097e */ CMP R2, R9 @ Compare R2 and R9 \n\
/* 08010980 */ BGE branch_080109b6 \n\
 \n\
branch_08010982: \n\
/* 08010982 */ ADDS R7, R2, 0x1 @ Set R7 to R2 + 0x1 \n\
/* 08010984 */ ADDS R4, R7, 0x0 @ Set R4 to R7 + 0x0 \n\
/* 08010986 */ CMP R7, R8 @ Compare R7 and R8 \n\
/* 08010988 */ BGE branch_080109b0 \n\
/* 0801098a */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0801098c */ ADDS R6, R1, R2 @ Set R6 to R1 + R2 \n\
 \n\
branch_0801098e: \n\
/* 0801098e */ LDRB R5, [R6] \n\
/* 08010990 */ LSLS R0, R5, 0x3 \n\
/* 08010992 */ ADD R0, R10 @ Add R10 to R0 \n\
/* 08010994 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 08010996 */ ADDS R3, R1, R4 @ Set R3 to R1 + R4 \n\
/* 08010998 */ LDRB R2, [R3] \n\
/* 0801099a */ LSLS R1, R2, 0x3 \n\
/* 0801099c */ ADD R1, R10 @ Add R10 to R1 \n\
/* 0801099e */ LDRH R0, [R0, 0x4] \n\
/* 080109a0 */ LDRH R1, [R1, 0x4] \n\
/* 080109a2 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 080109a4 */ BCS branch_080109aa \n\
/* 080109a6 */ STRB R2, [R6] \n\
/* 080109a8 */ STRB R5, [R3] \n\
 \n\
branch_080109aa: \n\
/* 080109aa */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080109ac */ CMP R4, R8 @ Compare R4 and R8 \n\
/* 080109ae */ BLT branch_0801098e \n\
 \n\
branch_080109b0: \n\
/* 080109b0 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 080109b2 */ CMP R2, R9 @ Compare R2 and R9 \n\
/* 080109b4 */ BLT branch_08010982 \n\
 \n\
branch_080109b6: \n\
/* 080109b6 */ POP {R3-R5} \n\
/* 080109b8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080109ba */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080109bc */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080109be */ POP {R4-R7} \n\
/* 080109c0 */ POP {R0} \n\
/* 080109c2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
