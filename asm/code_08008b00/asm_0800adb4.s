asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800adb4 \n\
/* 0800adb4 */ PUSH {LR} \n\
/* 0800adb6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800adb8 */ BEQ branch_0800adbc \n\
/* 0800adba */ STR R1, [R0, 0x50] \n\
 \n\
branch_0800adbc: \n\
/* 0800adbc */ POP {R0} \n\
/* 0800adbe */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
