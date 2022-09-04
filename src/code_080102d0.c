#include "code_080102d0.h"

asm(".include \"include/gba.inc\"");//Temporary

extern struct SequenceTempo {
    const struct SequenceData *sequenceData;
    u32 tempo;
} D_089ccccc[155];


// [func_080102d0] Get Music Tempo from D_089ccccc
u32 func_080102d0(const struct SequenceData *seqData) {
    struct SequenceTempo *seqTempo = D_089ccccc;

    while (seqTempo->sequenceData != NULL) {
        if (seqTempo->sequenceData == seqData) {
            return seqTempo->tempo;
        }
        seqTempo++;
    }

    return 140;
}

#include "asm/code_0800b778/asm_080102f4.s"

#include "asm/code_0800b778/asm_08010478.s"
