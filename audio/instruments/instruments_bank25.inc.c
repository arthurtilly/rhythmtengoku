extern struct SampleData sample_321_data;
struct InstrumentPCM instrument_pcm_0562 = {
    /* Type      */ INSTRUMENT_PCM_FIXED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_321_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x0F6A90,
};

extern struct SampleData sample_322_data;
struct InstrumentPCM instrument_pcm_0563 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_322_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x66A052,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x1F83E0,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x235DD1,
};

extern struct SampleData sample_196_data;
struct InstrumentPCM instrument_pcm_0564 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_196_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x015029,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern struct SampleData sample_314_data;
struct InstrumentPCM instrument_pcm_0565 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_314_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x015029,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern struct SampleData sample_009_data;
struct InstrumentPCM instrument_pcm_0566 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_009_data,
    /* ADSR Init */ 0x000000,
    /* ADSR Sus  */ 0x000000,
    /* ADSR Atk  */ 0x4D9364,
    /* ADSR Dec  */ 0x106A05,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x055552,
};

extern struct SampleData sample_229_data;
struct InstrumentPCM instrument_pcm_0567 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_229_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern struct SampleData sample_321_data;
struct InstrumentPCM instrument_pcm_0568 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_321_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x0F6A90,
};

extern struct SampleData sample_114_data;
struct InstrumentPCM instrument_pcm_0569 = {
    /* Type      */ INSTRUMENT_PCM_ALIGNED,
    /* Key       */ 0x3C,
    /* Fast Read */ FALSE,
    /* Panning   */ 127,
    /* Sample    */ &sample_114_data,
    /* ADSR Init */ 0x7F0000,
    /* ADSR Sus  */ 0x7F0000,
    /* ADSR Atk  */ 0x600000,
    /* ADSR Dec  */ 0x208000,
    /* ADSR Fade */ 0x000000,
    /* ADSR Rel  */ 0x1E7FBA,
};

extern union Instrument inst_bank_47[];
struct InstrumentSubRhythm instrument_rhy_0570 = {
    /* Type      */ INSTRUMENT_SUB_RHYTHM,
    /* Base Key  */ 36,
    /* Sub-Bank  */ inst_bank_47
};
