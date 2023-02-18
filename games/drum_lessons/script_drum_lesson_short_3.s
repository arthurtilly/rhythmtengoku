.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "include/bs/drum_studio.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Short 3) */


@ Dialogue
glabel D_080622d8
.ascii "�悭�����ă}�l���ĂˁB\n"
.ascii "�D���ȃ^�C�~���O�łǂ����B\n"
.ascii "���t���~�߂�ƁA\n"
.asciz "����{�������郈�I"
.balign 4, 0


@ Pattern
glabel D_08062330
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_SNARE_L
    rest 24
    return


@ Pattern Start
glabel D_0806239c
    spawn_cue CUE_KICK_R
    rest 21
    return


@ Dialogue
glabel D_080623c0
.ascii "�^�����Ă����̂�\n"
.ascii "�������Ă݂悤�I\n"
.ascii "\x8f\x5c���{�^���̉E��\n"
.asciz "�^�������������I"
.balign 4, 0


@ Pattern
glabel D_08062404
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_TOM
    rest 12
    spawn_cue CUE_SNARE_R
    rest 24
    return


@ Dialogue
glabel D_08062488
.ascii "�^���������Ƃ����\n"
.ascii "\x8f\x5c���{�^���̏��\n"
.ascii "�����Ă݂郈�I\n"
.asciz "(���[�����Ă����݂���)"
.balign 4, 0


@ Pattern
glabel D_080624d4
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_ROLL
    rest 12
    spawn_cue CUE_SNARE_R
    rest 24
    return


@ Dialogue
glabel D_08062558
.ascii "\n"
.ascii "�������Ɓ@�������Ƃ����\n"
.ascii "�^�����P�A�ӂ₷���I\n"
.asciz "�킩�邩�ȁH\n"
.balign 4, 0


@ Pattern
glabel D_08062598
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_ROLL
    rest 12
    spawn_cue CUE_SNARE_R
    rest 12
    spawn_cue CUE_TOM
    rest 12
    return

.end
