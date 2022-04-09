asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045954 \n\
/* 08045954 */ PUSH {LR} \n\
/* 08045956 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045958 */ BL func_0800c604 \n\
/* 0804595c */ BL func_0800c3b8 \n\
/* 08045960 */ LSLS R0, R0, 0x10 \n\
/* 08045962 */ LSRS R0, R0, 0x10 \n\
/* 08045964 */ LDR R1, =D_089eaae0 \n\
/* 08045966 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08045968 */ LSLS R2, R2, 0x6 \n\
/* 0804596a */ BL func_08002ee0 \n\
/* 0804596e */ LDR R1, =func_08045944 \n\
/* 08045970 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045972 */ BL func_08005d38 \n\
/* 08045976 */ POP {R0} \n\
/* 08045978 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
