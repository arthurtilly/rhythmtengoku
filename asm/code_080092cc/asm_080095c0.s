asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080095c0 \n\
/* 080095c0 */ PUSH {LR} \n\
/* 080095c2 */ LDR R0, =D_030011a4 \n\
/* 080095c4 */ LDRB R1, [R0] \n\
/* 080095c6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080095c8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080095ca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080095cc */ BEQ branch_080095dc \n\
/* 080095ce */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080095d0 */ BL func_0804e8f8 \n\
/* 080095d4 */ B branch_080095e2 \n\
\n\
.ltorg \n\
 \n\
branch_080095dc: \n\
/* 080095dc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080095de */ BL func_0804e8f8 \n\
 \n\
branch_080095e2: \n\
/* 080095e2 */ POP {R0} \n\
/* 080095e4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
