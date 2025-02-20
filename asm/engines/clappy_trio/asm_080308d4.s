asm(".syntax unified  
 
.balign 4, 0  
 
thumb_func_start clappy_trio_cue_update  
/* 080308d4 */ PUSH {R4, LR}  
/* 080308d6 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0  
/* 080308d8 */ MOVS R0, 0x78 @ Set R0 to 0x78  
/* 080308da */ BL ticks_to_frames  
/* 080308de */ CMP R4, R0 @ Check R4 - R0  
/* 080308e0 */ BHI branch_080308e6  
/* 080308e2 */ MOVS R0, 0x0 @ Set R0 to 0x0  
/* 080308e4 */ B branch_080308e8  
  
branch_080308e6:  
/* 080308e6 */ MOVS R0, 0x1 @ Set R0 to 0x1  
  
branch_080308e8:  
/* 080308e8 */ POP {R4}  
/* 080308ea */ POP {R1}  
/* 080308ec */ BX R1  
.balign 4, 0  
.syntax divided");
