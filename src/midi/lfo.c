#include "global.h"
#include "sound.h"
#include "midi.h"


/* AUDIO LIBRARY - LOW-FREQUENCY OSCILLATOR */


// Initialise LFO
void midi_lfo_init(struct LFO *lfo, u8 delay, u8 attack, u8 period, u8 offset, u8 endPos) {
    lfo->stage = LFO_STAGE_DISABLED;
    lfo->output = 0;
    lfo->clocks = 0;
    lfo->delay = delay;
    lfo->attack = attack;
    lfo->rate = (1 << 16) / period;
    lfo->offset = offset;
    lfo->endPos = endPos;
}


// Start LFO [Ctrl_49]
void midi_lfo_start(struct LFO *lfo) {
    lfo->stage = LFO_STAGE_PRE_DELAY;
    lfo->clocks = 0;
    lfo->output = 0;
}


// Stop LFO [Ctrl_49; Ctrl_4A]
void midi_lfo_stop(struct LFO *lfo) {
    lfo->stage = LFO_STAGE_DISABLED;
    lfo->clocks = 0;
    lfo->output = 0;
}


// Update LFO
void midi_lfo_update(struct LFO *lfo, u32 clocksPassed) {
    u32 cyclePos;
    s32 totalClocks;
    s32 output;

    switch (lfo->stage) {
        case LFO_STAGE_DISABLED:
            lfo->output = 0;
            break;

        case LFO_STAGE_PRE_DELAY:
            lfo->clocks += clocksPassed;
            lfo->output = 0;
            if ((lfo->clocks >> 8) >= lfo->delay) {
                lfo->clocks = 0;
                lfo->stage = LFO_STAGE_ATTACK;
            }
            break;

        case LFO_STAGE_ATTACK:
        case LFO_STAGE_SUSTAIN:
            lfo->clocks += clocksPassed;
            totalClocks = (lfo->clocks >> 8);
            cyclePos = (totalClocks * lfo->rate) >> 8;
            if (lfo->endPos != 0) {
                if (cyclePos > lfo->endPos) cyclePos = lfo->endPos;
            }
            cyclePos += lfo->offset;

            output = midi_sine_table[cyclePos & 0xFF] >> 1;
            if (output > 0x7F) output = 0x7F;
            if (output < -0x80) output = -0x80;
            if (lfo->stage == LFO_STAGE_ATTACK) {
                if (totalClocks < lfo->attack) {
                    output = output * totalClocks / lfo->attack;
                } else {
                    lfo->stage = LFO_STAGE_SUSTAIN;
                }
            }
            lfo->output = output;
            break;
    }
}
