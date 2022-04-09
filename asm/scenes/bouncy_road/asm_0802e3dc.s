asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e3dc \n\
/* 0802e3dc */ PUSH {LR} \n\
/* 0802e3de */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802e3e0 */ BL func_0800c604 \n\
/* 0802e3e4 */ BL func_0800c3b8 \n\
/* 0802e3e8 */ LSLS R0, R0, 0x10 \n\
/* 0802e3ea */ LSRS R0, R0, 0x10 \n\
/* 0802e3ec */ LDR R2, =D_089e3cd0 \n\
/* 0802e3ee */ LDR R1, =D_030055d0 \n\
/* 0802e3f0 */ LDR R1, [R1] \n\
/* 0802e3f2 */ LDRB R1, [R1] \n\
/* 0802e3f4 */ LSLS R1, R1, 0x2 \n\
/* 0802e3f6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802e3f8 */ LDR R1, [R1] \n\
/* 0802e3fa */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802e3fc */ LSLS R2, R2, 0x6 \n\
/* 0802e3fe */ BL func_08002ee0 \n\
/* 0802e402 */ LDR R1, =func_0802e3bc \n\
/* 0802e404 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802e406 */ BL func_08005d38 \n\
/* 0802e40a */ POP {R0} \n\
/* 0802e40c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
