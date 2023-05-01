asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080372c0 \n\
/* 080372c0 */ PUSH {LR} \n\
/* 080372c2 */ LDR R0, =gCurrentEngineData \n\
/* 080372c4 */ LDR R1, [R0] \n\
/* 080372c6 */ LDRB R0, [R1] \n\
/* 080372c8 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080372ca */ BNE branch_080372dc \n\
/* 080372cc */ LDR R0, =D_030046a8 \n\
/* 080372ce */ LDR R0, [R0] \n\
/* 080372d0 */ MOVS R2, 0xAC @ Set R2 to 0xAC \n\
/* 080372d2 */ LSLS R2, R2, 0x2 \n\
/* 080372d4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080372d6 */ ADDS R1, 0x4C @ Add 0x4C to R1 \n\
/* 080372d8 */ LDRH R1, [R1] \n\
/* 080372da */ STR R1, [R0] \n\
 \n\
branch_080372dc: \n\
/* 080372dc */ POP {R0} \n\
/* 080372de */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
