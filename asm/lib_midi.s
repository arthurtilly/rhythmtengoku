

/* AUDIO LIBRARY ASSEMBLY - MAIN */


@ WARNING: Do not try to call most of these functions from C!
@ A lot of the thumb functions don't have the thumb bit set in
@ their addresses, so they need to be ORR'd with 1 first!

.section .text
.syntax unified

.include "include/gba.inc"


@ ARM Function Table Stop Codes
.set CONTINUE_FUNC_TABLE,   0
.set END_OF_FUNC_TABLE,     2

@ ARM Function Sizes
.set FUNC_SIZE_STEREO_UPDATE_SCRATCH,       (midi_arm_stereo_update_scratch_end - midi_arm_stereo_update_scratch)
.set FUNC_SIZE_STEREO_UPDATE_BUFFER,        (midi_arm_stereo_update_buffer_end - midi_arm_stereo_update_buffer)
.set FUNC_SIZE_STEREO_READ_PCM_FIXED,       (midi_arm_stereo_read_pcm_fixed_end - midi_arm_stereo_read_pcm_fixed)
.set FUNC_SIZE_STEREO_READ_PCM_ACCURATE,    (midi_arm_stereo_read_pcm_accurate_end - midi_arm_stereo_read_pcm_accurate)
.set FUNC_SIZE_STEREO_READ_PCM_FAST,        (midi_arm_stereo_read_pcm_fast_end - midi_arm_stereo_read_pcm_fast)
.set FUNC_SIZE_STEREO_APPLY_EQ,             (midi_arm_stereo_apply_eq_end - midi_arm_stereo_apply_eq)
.set FUNC_SIZE_MONO_UPDATE_SCRATCH,         (midi_arm_mono_update_scratch_end - midi_arm_mono_update_scratch)
.set FUNC_SIZE_MONO_UPDATE_BUFFER,          (midi_arm_mono_update_buffer_end - midi_arm_mono_update_buffer)
.set FUNC_SIZE_MONO_READ_PCM_FIXED,         (midi_arm_mono_read_pcm_fixed_end - midi_arm_mono_read_pcm_fixed)
.set FUNC_SIZE_MONO_READ_PCM_ACCURATE,      (midi_arm_mono_read_pcm_accurate_end - midi_arm_mono_read_pcm_accurate)
.set FUNC_SIZE_MONO_READ_PCM_FAST,          (midi_arm_mono_read_pcm_fast_end - midi_arm_mono_read_pcm_fast)

@ ARM Function Table Indexes
.set FUNC_INDEX_UPDATE_SCRATCH,     0
.set FUNC_INDEX_UPDATE_BUFFER,      1
.set FUNC_INDEX_READ_PCM_FIXED,     2
.set FUNC_INDEX_READ_PCM_ACCURATE,  3
.set FUNC_INDEX_READ_PCM_FAST,      4
.set FUNC_INDEX_APPLY_EQ,           5


@ ARM Function Table (Stereo Mode)
midi_arm_func_table_stereo:
    /* Stop */ .short CONTINUE_FUNC_TABLE
    /* Size */ .short FUNC_SIZE_STEREO_UPDATE_SCRATCH @ 0x174
    /* Func */ .word midi_arm_stereo_update_scratch

    /* Stop */ .short CONTINUE_FUNC_TABLE
    /* Size */ .short FUNC_SIZE_STEREO_UPDATE_BUFFER @ 0x90
    /* Func */ .word midi_arm_stereo_update_buffer

    /* Stop */ .short CONTINUE_FUNC_TABLE
    /* Size */ .short FUNC_SIZE_STEREO_READ_PCM_FIXED @ 0x124
    /* Func */ .word midi_arm_stereo_read_pcm_fixed

    /* Stop */ .short CONTINUE_FUNC_TABLE
    /* Size */ .short FUNC_SIZE_STEREO_READ_PCM_ACCURATE @ 0x194
    /* Func */ .word midi_arm_stereo_read_pcm_accurate

    /* Stop */ .short CONTINUE_FUNC_TABLE
    /* Size */ .short FUNC_SIZE_STEREO_READ_PCM_FAST @ 0xFC
    /* Func */ .word midi_arm_stereo_read_pcm_fast

    /* Stop */ .short CONTINUE_FUNC_TABLE
    /* Size */ .short FUNC_SIZE_STEREO_APPLY_EQ @ 0x150
    /* Func */ .word midi_arm_stereo_apply_eq

    /* Stop */ .short END_OF_FUNC_TABLE

.balign 4, 0


@ ARM Function Table (Monaural Mode)
midi_arm_func_table_mono:
    /* Stop */ .short CONTINUE_FUNC_TABLE
    /* Size */ .short FUNC_SIZE_MONO_UPDATE_SCRATCH @ 0xB4
    /* Func */ .word midi_arm_mono_update_scratch

    /* Stop */ .short CONTINUE_FUNC_TABLE
    /* Size */ .short FUNC_SIZE_MONO_UPDATE_BUFFER @ 0x48
    /* Func */ .word midi_arm_mono_update_buffer

    /* Stop */ .short CONTINUE_FUNC_TABLE
    /* Size */ .short FUNC_SIZE_MONO_READ_PCM_FIXED @ 0
    /* Func */ .word midi_arm_mono_read_pcm_fixed

    /* Stop */ .short CONTINUE_FUNC_TABLE
    /* Size */ .short FUNC_SIZE_MONO_READ_PCM_ACCURATE @ 0x17C
    /* Func */ .word midi_arm_mono_read_pcm_accurate

    /* Stop */ .short CONTINUE_FUNC_TABLE
    /* Size */ .short FUNC_SIZE_MONO_READ_PCM_FAST @ 0xDC
    /* Func */ .word midi_arm_mono_read_pcm_fast

    /* Stop */ .short END_OF_FUNC_TABLE


@ Load ARM Functions to Memory from SoundMode
    @ R0: 0 if STEREO
unaligned_thumb_func_start midi_asm_init_mode
    push    {lr}
    cmp     r0, #0
    bne     sound_mode_is_mono
    ldr     r0, _08048358   @ midi_arm_func_table_stereo
    b       sound_mode_endif
sound_mode_is_mono:
    ldr     r0, _0804835c   @ midi_arm_func_table_mono
sound_mode_endif:
    bl      align_call_init_table
    pop     {r0}
    bx      r0

align_call_init_table:
    ldr     r1, _08048360   @ midi_asm_init_table
    adds    r1, #1
    bx      r1

.balign 4, 0
_08048358: .word midi_arm_func_table_stereo
_0804835c: .word midi_arm_func_table_mono
_08048360: .word midi_asm_init_table


@ Load ARM Functions to Memory from Table
    @ R0: ARM Function Table (see above)
unaligned_thumb_func_start midi_asm_init_table
    push    {r4, r5, r6, r7, lr}
    adds    r1, r0, #0
    ldr     r4, _080483ac   @ gMidiARM_FuncTable
    ldr     r6, _080483b0   @ gMidiARM_FuncArea
read_func_table_loop_start:
    ldrh    r3, [r1, #0]
    cmp     r3, #END_OF_FUNC_TABLE
    beq     read_func_table_loop_end
    ldrh    r7, [r1, #2]
    ldr     r5, [r1, #4]
    bl      read_func_table_entry
    adds    r1, #8
    b       read_func_table_loop_start
read_func_table_loop_end:
    pop     {r4, r5, r6, r7}
    pop     {r0}
    bx      r0

read_func_table_entry:
    adds    r0, r3, r6
    str     r0, [r4, #0]
    adds    r4, #4
    adds    r7, #3
    lsrs    r7, r7, #2
    bne     copy_func_to_memory_loop
    bx      lr

copy_func_to_memory_loop:
    ldr     r0, [r5, #0]
    str     r0, [r6, #0]
    adds    r5, #4
    adds    r6, #4
    subs    r7, #1
    bne     copy_func_to_memory_loop
    bx      lr


@ Call ARM Function from Memory
    @ R0: ARM Function Index
unaligned_thumb_func_start midi_asm_call_arm_func_id
    push    {r1}
    lsls    r0, r0, #2
    ldr     r1, _080483b4   @ gMidiARM_FuncTable
    ldr     r0, [r0, r1]
    pop     {r1}
    bx      r0

.balign 4, 0
_080483ac: .word gMidiARM_FuncTable
_080483b0: .word gMidiARM_FuncArea
_080483b4: .word gMidiARM_FuncTable


@ Add All Function Modules
.include "asm/lib_midi/pcm_read.s"
.include "asm/lib_midi/pcm_buffer.s"
.include "asm/lib_midi/pcm_read_fixed.s"
.include "asm/lib_midi/pcm_read_fast.s"
.include "asm/lib_midi/pcm_equalize.s"
