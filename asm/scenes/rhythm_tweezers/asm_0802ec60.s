asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ec60 \n\
/* 0802ec60 */ PUSH {LR} \n\
/* 0802ec62 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802ec64 */ BL func_0800c604 \n\
/* 0802ec68 */ BL func_0800c3b8 \n\
/* 0802ec6c */ LSLS R0, R0, 0x10 \n\
/* 0802ec6e */ LSRS R0, R0, 0x10 \n\
/* 0802ec70 */ LDR R2, =D_089e3ff4 \n\
/* 0802ec72 */ LDR R1, =D_030055d0 \n\
/* 0802ec74 */ LDR R1, [R1] \n\
/* 0802ec76 */ LDRB R1, [R1] \n\
/* 0802ec78 */ LSLS R1, R1, 0x2 \n\
/* 0802ec7a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802ec7c */ LDR R1, [R1] \n\
/* 0802ec7e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802ec80 */ LSLS R2, R2, 0x6 \n\
/* 0802ec82 */ BL func_08002ee0 \n\
/* 0802ec86 */ LDR R1, =func_0802ec50 \n\
/* 0802ec88 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ec8a */ BL func_08005d38 \n\
/* 0802ec8e */ POP {R0} \n\
/* 0802ec90 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
