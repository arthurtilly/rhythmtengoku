asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ea3c \n\
/* 0800ea3c */ PUSH {R4, LR} \n\
/* 0800ea3e */ LDR R3, =D_030053c0 \n\
/* 0800ea40 */ LDRB R2, [R3, 0x1] \n\
/* 0800ea42 */ MOVS R1, 0x41 @ Set R1 to 0x41 \n\
/* 0800ea44 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800ea46 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0800ea48 */ MOVS R2, 0xB7 @ Set R2 to 0xB7 \n\
/* 0800ea4a */ LSLS R2, R2, 0x1 \n\
/* 0800ea4c */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0800ea4e */ MOV R12, R2 @ Set R12 to R2 \n\
/* 0800ea50 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800ea52 */ MOV R4, R12 @ Set R4 to R12 \n\
/* 0800ea54 */ STRH R0, [R4] \n\
/* 0800ea56 */ MOVS R4, 0xB8 @ Set R4 to 0xB8 \n\
/* 0800ea58 */ LSLS R4, R4, 0x1 \n\
/* 0800ea5a */ ADDS R0, R3, R4 @ Set R0 to R3 + R4 \n\
/* 0800ea5c */ STRH R2, [R0] \n\
/* 0800ea5e */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0800ea60 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0800ea62 */ STRB R1, [R3, 0x1] \n\
/* 0800ea64 */ POP {R4} \n\
/* 0800ea66 */ POP {R0} \n\
/* 0800ea68 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
