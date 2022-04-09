asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b368 \n\
/* 0800b368 */ PUSH {LR} \n\
/* 0800b36a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800b36c */ BEQ branch_0800b37e \n\
/* 0800b36e */ LDR R0, [R0, 0x4] \n\
/* 0800b370 */ BL func_0800ac58 \n\
/* 0800b374 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800b376 */ NEGS R0, R1 @ Set R0 to -R1 \n\
/* 0800b378 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800b37a */ LSRS R0, R0, 0x1F \n\
/* 0800b37c */ B branch_0800b380 \n\
 \n\
branch_0800b37e: \n\
/* 0800b37e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800b380: \n\
/* 0800b380 */ POP {R1} \n\
/* 0800b382 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
