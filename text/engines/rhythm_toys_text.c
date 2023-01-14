#include "global.h"
#include "text.h"
#include "sound.h"

extern const struct SequenceData s_heat_v_anataga_seqData;
extern const struct SequenceData s_heat_v_anatatara_seqData;
extern const struct SequenceData s_heat_v_kimiga_seqData;
extern const struct SequenceData s_heat_v_jituhane_seqData;
extern const struct SequenceData s_heat_v_watasine_seqData;
extern const struct SequenceData s_heat_v_watasitara_seqData;
extern const struct SequenceData s_heat_v_okubyo_seqData;
extern const struct SequenceData s_heat_v_majime_seqData;
extern const struct SequenceData s_heat_v_kouitta_seqData;
extern const struct SequenceData s_heat_v_doji_seqData;
extern const struct SequenceData s_heat_v_sugoi_seqData;
extern const struct SequenceData s_heat_v_koumietemo_seqData;
extern const struct SequenceData s_heat_v_demo_seqData;
extern const struct SequenceData s_heat_v_yappari_seqData;
extern const struct SequenceData s_heat_v_dakedo_seqData;
extern const struct SequenceData s_heat_v_suki_seqData;
extern const struct SequenceData s_heat_v_kirai_seqData;
extern const struct SequenceData s_heat_v_seki_seqData;


/* Rhythm Toys - Confession Machine */


// Sound Effect Pool
const struct SequenceData *const confession_machine_sfx_pool_right[] = {
    &s_heat_v_anataga_seqData,
    &s_heat_v_anatatara_seqData,
    &s_heat_v_kimiga_seqData,
    NULL
};

// Sound Effect Pool
const struct SequenceData *const confession_machine_sfx_pool_left[] = {
    &s_heat_v_jituhane_seqData,
    &s_heat_v_watasine_seqData,
    &s_heat_v_watasitara_seqData,
    NULL
};

// Sound Effect Pool
const struct SequenceData *const confession_machine_sfx_pool_down[] = {
    &s_heat_v_okubyo_seqData,
    &s_heat_v_majime_seqData,
    &s_heat_v_kouitta_seqData,
    NULL
};

// Sound Effect Pool
const struct SequenceData *const confession_machine_sfx_pool_up[] = {
    &s_heat_v_doji_seqData,
    &s_heat_v_sugoi_seqData,
    &s_heat_v_koumietemo_seqData,
    NULL
};

// Sound Effect Pool
const struct SequenceData *const confession_machine_sfx_pool_b[] = {
    &s_heat_v_demo_seqData,
    &s_heat_v_yappari_seqData,
    &s_heat_v_dakedo_seqData,
    NULL
};

// Sound Effect Pool
const struct SequenceData *const confession_machine_sfx_pool_a[] = {
    &s_heat_v_suki_seqData,
    &s_heat_v_kirai_seqData,
    &s_heat_v_seki_seqData,
    NULL
};
