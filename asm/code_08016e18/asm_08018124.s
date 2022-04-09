asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018124 \n\
/* 08018124 */ LDR R2, =D_030046a4 \n\
/* 08018126 */ LDR R2, [R2] \n\
/* 08018128 */ LDR R2, [R2, 0x18] \n\
/* 0801812a */ STR R2, [R0] \n\
/* 0801812c */ LDR R0, [R2, 0x64] \n\
/* 0801812e */ STR R0, [R1] \n\
/* 08018130 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
