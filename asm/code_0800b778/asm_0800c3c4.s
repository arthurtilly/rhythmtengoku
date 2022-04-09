asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c3c4 \n\
/* 0800c3c4 */ PUSH {LR} \n\
/* 0800c3c6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800c3c8 */ LDR R0, =D_03001310 \n\
/* 0800c3ca */ STR R1, [R0] \n\
/* 0800c3cc */ LDR R0, =D_03005380 \n\
/* 0800c3ce */ LDR R0, [R0] \n\
/* 0800c3d0 */ LSLS R1, R1, 0x10 \n\
/* 0800c3d2 */ LSRS R1, R1, 0x10 \n\
/* 0800c3d4 */ BL func_0804e0bc \n\
/* 0800c3d8 */ POP {R0} \n\
/* 0800c3da */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
