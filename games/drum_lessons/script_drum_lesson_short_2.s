.section .rodata
.syntax unified

.include "include/gba.inc"
.include "include/bs_riq.inc"
.include "include/bs/drum_studio.inc"

load_drum_studio_labels


/* Script Data - Drum Lesson (Short 2) */


@ Dialogue
glabel D_08061e24
.ascii "�悭�����ă}�l���ĂˁB\n"
.ascii "�D���ȃ^�C�~���O�łǂ����B\n"
.ascii "���t���~�߂�ƁA\n"
.asciz "����{�������郈�I"
.balign 4, 0


@ Pattern
glabel D_08061e7c
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    spawn_cue CUE_KICK_R
    rest 24
    return


@ Pattern Start
glabel D_08061ed0
    spawn_cue CUE_KICK_R
    rest 21
    return


@ Dialogue
glabel D_08061ef4
.ascii "\n"
.ascii "�o�X�ƃX�l�A��\n"
.ascii "���݂ɂ��������I\n"
.asciz "�ł��邩�ȁH"
.balign 4, 0


@ Pattern
glabel D_08061f24
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    return


@ Pattern Start
glabel D_08061fc0
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 9
    return


@ Dialogue
glabel D_08061ffc
.ascii "\n"
.ascii "�o�X�h�����̃^�C�~���O��\n"
.ascii "�P�J���A���炵�Ă݂郈�B\n"
.asciz "�킩�邩�ȁH"
.balign 4, 0


@ Pattern
glabel D_0806203c
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    return


@ Dialogue
glabel D_080620e4
.ascii "\n"
.ascii "����ǂ͂P�A\n"
.ascii "�����ӂ��郈�I\n"
.asciz "�킩�邩�ȁH\n"
.balign 4, 0


@ Pattern
glabel D_08062114
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 12
    return


@ Dialogue
glabel D_080621d4
.ascii "\n"
.ascii "����ɂP�A\n"
.ascii "�����ӂ��郈�I\n"
.asciz "�킩�邩�ȁH"
.balign 4, 0


@ Pattern
glabel D_08062200
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 12
    spawn_cue CUE_KICK_R
    rest 12
    spawn_cue CUE_SNARE_L
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    rest 6
    spawn_cue CUE_KICK_R
    rest 6
    spawn_cue CUE_SNARE_L
    rest 12
    return

.end
