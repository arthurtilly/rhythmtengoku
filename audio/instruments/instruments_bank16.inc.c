extern struct SampleData sample_221_data;
struct InstrumentPCM instrument_pcm_0465 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_221_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x0B8000,
};

extern struct SampleData sample_122_data;
struct InstrumentPCM instrument_pcm_0466 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_122_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern union Instrument inst_bank_54[];
struct InstrumentSubRhythm instrument_rhy_0467 = {
    /* Type      */ INSTRUMENT_SUB_RHYTHM,
    /* Base Key  */ 36,
    /* Sub-Bank  */ inst_bank_54
};
