asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start cafe_scene_update \n\
/* 080114d4 */ PUSH {LR} \n\
/* 080114d6 */ BL cafe_scene_script_is_ready \n\
/* 080114da */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080114dc */ BEQ branch_080114e2 \n\
/* 080114de */ BL func_08010ae0 \n\
 \n\
branch_080114e2: \n\
/* 080114e2 */ LDR R0, =gCurrentSceneData \n\
/* 080114e4 */ LDR R0, [R0] \n\
/* 080114e6 */ LDR R0, [R0, 0x4] \n\
/* 080114e8 */ BL text_printer_update \n\
/* 080114ec */ POP {R0} \n\
/* 080114ee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
