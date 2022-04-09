asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a7fc \n\
/* 0800a7fc */ PUSH {LR} \n\
/* 0800a7fe */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800a800 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800a802 */ BEQ branch_0800a814 \n\
/* 0800a804 */ ADDS R0, 0x56 @ Add 0x56 to R0 \n\
/* 0800a806 */ STRB R1, [R0] \n\
/* 0800a808 */ LDRB R0, [R2, 0x3] \n\
/* 0800a80a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800a80c */ BNE branch_0800a814 \n\
/* 0800a80e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800a810 */ BL func_0800a794 \n\
 \n\
branch_0800a814: \n\
/* 0800a814 */ POP {R0} \n\
/* 0800a816 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
