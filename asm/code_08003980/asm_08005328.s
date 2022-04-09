asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005328 \n\
/* 08005328 */ PUSH {LR} \n\
/* 0800532a */ LSLS R0, R0, 0x18 \n\
/* 0800532c */ LSRS R1, R0, 0x18 \n\
/* 0800532e */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08005330 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08005332 */ SUBS R0, 0x30 @ Subtract 0x30 from R0 \n\
/* 08005334 */ LSLS R0, R0, 0x18 \n\
/* 08005336 */ LSRS R0, R0, 0x18 \n\
/* 08005338 */ CMP R0, 0x9 @ Compare R0 and 0x9 \n\
/* 0800533a */ BLS branch_08005366 \n\
/* 0800533c */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800533e */ SUBS R0, 0x61 @ Subtract 0x61 from R0 \n\
/* 08005340 */ LSLS R0, R0, 0x18 \n\
/* 08005342 */ LSRS R0, R0, 0x18 \n\
/* 08005344 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08005346 */ BHI branch_0800534e \n\
/* 08005348 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800534a */ ADDS R0, 0xA9 @ Add 0xA9 to R0 \n\
/* 0800534c */ B branch_08005362 \n\
 \n\
branch_0800534e: \n\
/* 0800534e */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08005350 */ SUBS R0, 0x41 @ Subtract 0x41 from R0 \n\
/* 08005352 */ LSLS R0, R0, 0x18 \n\
/* 08005354 */ LSRS R0, R0, 0x18 \n\
/* 08005356 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08005358 */ BLS branch_0800535e \n\
/* 0800535a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800535c */ B branch_08005366 \n\
 \n\
branch_0800535e: \n\
/* 0800535e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08005360 */ ADDS R0, 0xC9 @ Add 0xC9 to R0 \n\
 \n\
branch_08005362: \n\
/* 08005362 */ LSLS R0, R0, 0x18 \n\
/* 08005364 */ LSRS R0, R0, 0x18 \n\
 \n\
branch_08005366: \n\
/* 08005366 */ POP {R1} \n\
/* 08005368 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
