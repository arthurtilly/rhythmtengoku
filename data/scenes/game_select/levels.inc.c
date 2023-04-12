extern struct Scene scene_karate_man;
extern struct Scene scene_karate_man_2;
extern struct Scene scene_clappy_trio;
extern struct Scene scene_snappy_trio;
extern struct Scene scene_polyrhythm;
extern struct Scene scene_polyrhythm_2;
extern struct Scene scene_night_walk;
extern struct Scene scene_night_walk_2;
extern struct Scene scene_rhythm_tweezers;
extern struct Scene scene_rhythm_tweezers_2;
extern struct Scene scene_sick_beats;
extern struct Scene scene_bouncy_road;
extern struct Scene scene_bouncy_road_2;
extern struct Scene scene_ninja_bodyguard;
extern struct Scene scene_ninja_reincarnate;
extern struct Scene scene_sneaky_spirits;
extern struct Scene scene_sneaky_spirits_2;
extern struct Scene scene_samurai_slice;
extern struct Scene scene_spaceball;
extern struct Scene scene_spaceball_2;
extern struct Scene scene_tap_trial;
extern struct Scene scene_tap_trial_2;
extern struct Scene scene_marching_orders;
extern struct Scene scene_marching_orders_2;
extern struct Scene scene_wizards_waltz;
extern struct Scene scene_bunny_hop;
extern struct Scene scene_fireworks;
extern struct Scene scene_power_calligraphy;
extern struct Scene scene_power_calligraphy;
extern struct Scene scene_toss_boys;
extern struct Scene scene_toss_boys_2;
extern struct Scene scene_rat_race;
extern struct Scene scene_tram_pauline;
extern struct Scene scene_showtime;
extern struct Scene scene_space_dance;
extern struct Scene scene_cosmic_dance;
extern struct Scene scene_rap_men;
extern struct Scene scene_rap_women;
extern struct Scene scene_quiz_show;
extern struct Scene scene_bon_odori;
extern struct Scene scene_bon_dance;
extern struct Scene scene_remix_1;
extern struct Scene scene_remix_2;
extern struct Scene scene_remix_3;
extern struct Scene scene_remix_4;
extern struct Scene scene_remix_5;
extern struct Scene scene_remix_6;
extern struct Scene scene_remix_7;
extern struct Scene scene_remix_8;
extern struct Scene scene_cafe;
extern struct Scene scene_toys_menu;
extern struct Scene scene_endless_menu;
extern struct Scene scene_lessons_menu;
extern struct Scene scene_staff_credit;
extern struct Scene scene_concert_hall;


// Level Entries Table
struct LevelData level_data_table[TOTAL_LEVELS] = {
    /* KARATE_MAN */ {
        /* Entry Scene   */ &scene_karate_man,
        /* Level Name    */ "�J���e��",
        /* Level Desc.   */ "�Ƃ�ł��郂�m��\n"
                            "A�{�^���Ńp���`�I\n"
                            "�悭����Q�[���H\n"
                            "�c�����ˁB",
        /* Level Icon    */ 8,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_karate_man_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "������ ���邳�B",
            /* OK        */ "�Ƃ肠�����A���͂� �H�ׂƂ����I",
            /* SUPERB    */ "����Ȃ� �u�b�Ƃ΂���������I�I"
        }
    },
    /* KARATE_MAN_2 */ {
        /* Entry Scene   */ &scene_karate_man_2,
        /* Level Name    */ "�J���e�� �Q",
        /* Level Desc.   */ "�Ƃ�ł��郂�m��\n"
                            "A�{�^���Ńp���`�I\n"
                            "�ł��A �X�s�[�h��\n"
                            "�w���e�R�����B",
        /* Level Icon    */ 0,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_karate_man_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�e���|�� �Ȃ񂾁[�I�I",
            /* OK        */ "�܁A���Ă����B ���͂� �H�ׂ悤�I",
            /* SUPERB    */ "������ ����ȃ��������[�I�I"
        }
    },
    /* CLAPPY_TRIO */ {
        /* Entry Scene   */ &scene_clappy_trio,
        /* Level Name    */ "�p�`�p�`�O�l�O",
        /* Level Desc.   */ "���Ԃɔ�������郈�I\n"
                            "���Ȃ��͂R�ԖځB\n"
                            "�O��2�l���悭���ăl�I",
        /* Level Icon    */ 4,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_clappy_trio_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "���Ԃ��A����������I",
            /* OK        */ "��������̂� �܂����������ˁB",
            /* SUPERB    */ "���̎O�l�O�A ���s�b�^�����I�I"
        }
    },
    /* SNAPPY_TRIO */ {
        /* Entry Scene   */ &scene_snappy_trio,
        /* Level Name    */ "�o���o���O�l�O",
        /* Level Desc.   */ "���t�������ނ炪\n"
                            "�o�����ƃX�[�c��\n"
                            "���Ă������I\n"
                            "�J�b�R�C�C�I�I",
        /* Level Icon    */ 10,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_snappy_trio_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�L���[�I ��邵�ā[�I�I",
            /* OK        */ "���ƃ`���b�g�Ȃ񂾂��ǂˁc",
            /* SUPERB    */ "���s�b�^���Ł[���I �C�F�[�C�I"
        }
    },
    /* POLYRHYTHM */ {
        /* Entry Scene   */ &scene_polyrhythm,
        /* Level Name    */ "�|�����Y��",
        /* Level Desc.   */ "�\\���{�^���Ƃ`�{�^���̓����������}�X�^�[���I���������J���^�����B���Ԃ�c",
        /* Level Icon    */ 3,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_polyrhythm_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�Ԃ����m�A�ʎY�� �����ւ񂾂Ȃ��c",
            /* OK        */ "�ǂ�ǂ� �Ԃ����m�� ���Y���I",
            /* SUPERB    */ "�Ԃ����m�� ���Y���܂��肾�l�I�I"
        }
    },
    /* POLYRHYTHM_2 */ {
        /* Entry Scene   */ &scene_polyrhythm_2,
        /* Level Name    */ "�|�����Y�� �Q",
        /* Level Desc.   */ "���ꂼ���E�Ɨ��I\n"
                            "�e���|�悭 ���Ȃ���\n"
                            "���b�c �|�����Y���I\n"
                            "�C�F�[�C�I",
        /* Level Icon    */ 51,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_polyrhythm_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�Ԃ����m�A�����Ɛ��Y���Ȃ���c",
            /* OK        */ "�����Ƃ����� �Ԃ����m�� ���Y���I",
            /* SUPERB    */ "�Ԃ����m�� ����񂶂�񐶎Y�����Ⴄ���I�I"
        }
    },
    /* NIGHT_WALK */ {
        /* Entry Scene   */ &scene_night_walk,
        /* Level Name    */ "�i�C�g�E�H�[�N",
        /* Level Desc.   */ "���y�ɂ��킹��\n"
                            "�W�����v���ăl�I\n"
                            "�������� ���܂���\n"
                            "���Ȃ������ցc",
        /* Level Icon    */ 7,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_night_walk_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "���� ������ ����΂��ăl�c",
            /* OK        */ "���� ������ہA ���̂����ȁB",
            /* SUPERB    */ "�������� ���񂰂����Ă郈�I"
        }
    },
    /* NIGHT_WALK_2 */ {
        /* Entry Scene   */ &scene_night_walk_2,
        /* Level Name    */ "�i�C�g�E�H�[�N �Q",
        /* Level Desc.   */ "���y�ɂ��킹��\n"
                            "�W�����v���ăl�I\n"
                            "�r���r���E�I��\n"
                            "�C�����悤�B",
        /* Level Icon    */ 41,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_night_walk_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "���Ђ�[�I �����ς�����������I�I",
            /* OK        */ "�镗�� �Ƃ��Ă� �����������ȁB",
            /* SUPERB    */ "�������� ���Ƃ����������I"
        }
    },
    /* RHYTHM_TWEEZERS */ {
        /* Entry Scene   */ &scene_rhythm_tweezers,
        /* Level Name    */ "���Y���E��",
        /* Level Desc.   */ "�ǂ�ǂ񐶂��Ă���\n"
                            "�����Ƃ������u�сv�I\n"
                            "�ʂ����Ⴆ�A \n"
                            "�ʂ����Ⴆ�I",
        /* Level Icon    */ 14,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_rhythm_tweezers_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "���ꂶ�� ������̂� �Ȃ��I",
            /* OK        */ "�Ȃ�� �����̃��T�C�� �т��͂���񂾁H",
            /* SUPERB    */ "�X�b�L�����������I ��C�����܂��I�I"
        }
    },
    /* RHYTHM_TWEEZERS_2 */ {
        /* Entry Scene   */ &scene_rhythm_tweezers_2,
        /* Level Name    */ "���Y���E�� �Q",
        /* Level Desc.   */ "�܂����Ă������Ă���\n"
                            "�����Ƃ������u�сv�I\n"
                            "�ʂ����Ⴆ�A \n"
                            "�ʂ����Ⴆ�I",
        /* Level Icon    */ 25,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_rhythm_tweezers_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�Ȃ�� �т� �͂���񂾁[�I�H",
            /* OK        */ "�������Ȃ�� �����̃��T�C������ �т��c�H",
            /* SUPERB    */ "�X�b�L�����������I ��C�����܂����I�I"
        }
    },
    /* SICK_BEATS */ {
        /* Entry Scene   */ &scene_sick_beats,
        /* Level Name    */ "�o�C�L�� �͂���",
        /* Level Desc.   */ "���肩��̒m�点\n"
                            "�u��ςł��I\n"
                            "�o�C�L�������ł��I�I\n"
                            "�搶�A�������ā`�v",
        /* Level Icon    */ 13,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_sick_beats_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�����͎��s���B",
            /* OK        */ "���s�͐����̂��ƃJ���I",
            /* SUPERB    */ "���̂������N�X�����ł����I�I"
        }
    },
    /* BOUNCY_ROAD */ {
        /* Entry Scene   */ &scene_bouncy_road,
        /* Level Name    */ "�z�b�s���O���[�h",
        /* Level Desc.   */ "�Ƃ�ł���ۂ��ʁB\n"
                            "����̓C�C��ł��B\n"
                            "���Ƃ��Ȃ��Ńl�I",
        /* Level Icon    */ 12,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_bouncy_road_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�Ȃ��Ȃ� ���Y�J�V�[�I",
            /* OK        */ "���������� �R���r�l�[�V�����������l�I",
            /* SUPERB    */ "���񂽂� ���񂽂��"
        }
    },
    /* BOUNCY_ROAD_2 */ {
        /* Entry Scene   */ &scene_bouncy_road_2,
        /* Level Name    */ "�z�b�s���O���[�h�Q",
        /* Level Desc.   */ "�Ƃ�ł���ۂ��ʁB\n"
                            "�ق�ƂɃC�C���\n"
                            "�Ȃ�ł����`�B\n"
                            "���Ƃ��Ȃ��Ńl�I",
        /* Level Icon    */ 50,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_bouncy_road_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�G�[���I �����ς��I�I",
            /* OK        */ "�Ȃ��Ȃ� ����΂��Ă����l�I",
            /* SUPERB    */ "�炭���� �炭�����"
        }
    },
    /* NINJA_BODYGUARD */ {
        /* Entry Scene   */ &scene_ninja_bodyguard,
        /* Level Name    */ "�E��",
        /* Level Desc.   */ "�G�P(�Ă����イ)���I\n"
                            "�\\���{�^����A�{�^���ŉ���(��������)���I\n"
                            "�t�W���}�i�ӂ�����j�I�I",
        /* Level Icon    */ 5,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_ninja_bodyguard_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�Q�b�I �g�m�� �������Ă�I�I",
            /* OK        */ "�g�m�I ���߂�Ȃ��`���B",
            /* SUPERB    */ "�A�b�p������ ����ꂿ������[�I�I"
        }
    },
    /* NINJA_REINCARNATE */ {
        /* Entry Scene   */ &scene_ninja_reincarnate,
        /* Level Name    */ "�E�҂̎q��",
        /* Level Desc.   */ "�I���̂���������\n"
                            "����������\n"
                            "����������\n"
                            "�E�҂Ȃ񂾂��B",
        /* Level Icon    */ 38,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_ninja_reincarnate_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�܂���ȁI ���܂�������Ȃ̂��[�I�I",
            /* OK        */ "���ށA�X�W�͗ǂ��ȁB����΂�I",
            /* SUPERB    */ "�I�k�V�͋����B���K���Ɂc�I"
        }
    },
    /* SNEAKY_SPIRITS */ {
        /* Entry Scene   */ &scene_sneaky_spirits,
        /* Level Name    */ "���낢���΂�",
        /* Level Desc.   */ "�������c�� �������\n"
                            "�o�J�ɂ��Ă���I\n"
                            "���L�[�b�I�I\n"
                            "���炵�߂��Ⴈ���I",
        /* Level Icon    */ 1,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_sneaky_spirits_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "���������c�ɃC�^�Y�����ꂽ�I",
            /* OK        */ "���Ƃ߂��I",
            /* SUPERB    */ "�����ς� ���Ƃ߂��I�I"
        }
    },
    /* SNEAKY_SPIRITS_2 */ {
        /* Entry Scene   */ &scene_sneaky_spirits_2,
        /* Level Name    */ "���낢���΂� �Q",
        /* Level Desc.   */ "�������c�� �������\n"
                            "�i�������Ă���I\n"
                            "���J���J�[�b�I�I\n"
                            "���炵�߂��Ⴈ���I",
        /* Level Icon    */ 53,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_sneaky_spirits_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "����[�I ����ق��������I",
            /* OK        */ "���΂��u�i�A�i���_���`�v",
            /* SUPERB    */ "�݂�ȁA���Ȃ��ăl�I"
        }
    },
    /* SAMURAI_SLICE */ {
        /* Entry Scene   */ &scene_samurai_slice,
        /* Level Name    */ "��Ўa��",
        /* Level Desc.   */ "�����̂� �����̂�\n"
                            "�z�炪�ʂ�B\n"
                            "���ʂ��� �T�����C�A\n"
                            "�a��̂� ��ƁI",
        /* Level Icon    */ 18,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_samurai_slice_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�n���ڂꂵ���܂����I",
            /* OK        */ "����ɐ��i�i���傤����j���ׂ��I",
            /* SUPERB    */ "�؂ꂠ���A �T�C�R�[���I�I"
        }
    },
    /* SPACEBALL */ {
        /* Entry Scene   */ &scene_spaceball,
        /* Level Name    */ "�G�A�[�o�b�^�[",
        /* Level Desc.   */ "�Y�[�������ɂ���ȁI\n"
                            "�S�Ń{�[����łāI\n"
                            "���o�ɗ���ȁI\n"
                            "�ǂ�ƍs���`�I",
        /* Level Icon    */ 9,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_spaceball_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "����� ��邵�Ă��������B",
            /* OK        */ "����ɏ��ڎw���ė��K���I",
            /* SUPERB    */ "����Ȃ� �������������[�I"
        }
    },
    /* SPACEBALL_2 */ {
        /* Entry Scene   */ &scene_spaceball_2,
        /* Level Name    */ "�G�A�[�o�b�^�[ �Q",
        /* Level Desc.   */ "�Y�[�������ɂ���ȁI\n"
                            "�S�Ń{�[����łāI\n"
                            "���o�ɗ���ȁI\n"
                            "�܂��ӂ��ȁ`�I",
        /* Level Icon    */ 52,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_spaceball_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�i�j�X���m�f�X�J�[�I",
            /* OK        */ "����ȂƂ���� �I���Ȃ��I",
            /* SUPERB    */ "�݂�ȁA���Č��ā[�I"
        }
    },
    /* TAP_TRIAL */ {
        /* Entry Scene   */ &scene_tap_trial,
        /* Level Name    */ "�^�b�v�_���Y",
        /* Level Desc.   */ "���Ȃ��͏��̎q�B\n"
                            "�ƂȂ�̃T��������\n"
                            "���킹�ă^�b�v��\n"
                            "�����ރb�X�I",
        /* Level Icon    */ 6,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_tap_trial_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "���O����B",
            /* OK        */ "������ƁA �w���ȃg�R���������ǃl�I",
            /* SUPERB    */ "�C���� �����A�T�C�R�[�I�I"
        }
    },
    /* TAP_TRIAL_2 */ {
        /* Entry Scene   */ &scene_tap_trial_2,
        /* Level Name    */ "�X�[�p�[�^�b�v",
        /* Level Desc.   */ "�T�����p���[�A�b�v�I\n"
                            "���Ȃ��� ������\n"
                            "���Ă����邩�I�H\n"
                            "�܂���ȁ`�I",
        /* Level Icon    */ 11,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_tap_trial_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�K�[���I",
            /* OK        */ "���`��c ������ �������J���W�c",
            /* SUPERB    */ "���̋C�����A�Ƃ܂�ȁ[���I"
        }
    },
    /* MARCHING_ORDERS */ {
        /* Entry Scene   */ &scene_marching_orders,
        /* Level Name    */ "�}�[�`��",
        /* Level Desc.   */ "�s�i������̂��B\n"
                            "�����Ăȍs���̓`�[�����_���ɂ���I\n"
                            "����΂肽�܂��B",
        /* Level Icon    */ 21,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_marching_orders_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�킟���I�����Ă��ڂ肳�ꂽ�I",
            /* OK        */ "�����̔C���́A���������Ł[����",
            /* SUPERB    */ "�F���l�̋~�o�A�听���I�I"
        }
    },
    /* MARCHING_ORDERS_2 */ {
        /* Entry Scene   */ &scene_marching_orders_2,
        /* Level Name    */ "�}�[�`�� �Q",
        /* Level Desc.   */ "�s�i������̂��B\n"
                            "����ǂ̂� �������\n"
                            "�e�N�j�J�����I\n"
                            "����΂肽�܂��B",
        /* Level Icon    */ 20,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_marching_orders_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "���A����ł́A�C�J���I���`�ށc",
            /* OK        */ "�����I �����ƃJ�b�R�悭���ǂ�Ȃ���΁I",
            /* SUPERB    */ "���ق��тɁA����Ȃ̂�����Ă��܂����I�I"
        }
    },
    /* WIZARDS_WALTZ */ {
        /* Entry Scene   */ &scene_wizards_waltz,
        /* Level Name    */ "�܂ق�����",
        /* Level Desc.   */ "���Ȃ��͂܂ق��g���B\n"
                            "���݂�������\n"
                            "�����傤�����ɉԂ�\n"
                            "�v���[���g���悤�B",
        /* Level Icon    */ 23,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_wizards_waltz_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "����Ȃ̃��_�`�A ���킢���`�I",
            /* OK        */ "������ �Ԃ������� ���ꂵ���ȁ`�B",
            /* SUPERB    */ "��[���A �킽�� ���� ���݂����Ȃ����I"
        }
    },
    /* BUNNY_HOP */ {
        /* Entry Scene   */ &scene_bunny_hop,
        /* Level Name    */ "�E�T�M�Ƃ�",
        /* Level Desc.   */ "�W�����v�����ӂ�\n"
                            "�����E�T�M����B\n"
                            "�r�[�g�ɂ̂���\n"
                            "�C���킽�낤�I",
        /* Level Icon    */ 24,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_bunny_hop_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "���ɋA�肽�`���I",
            /* OK        */ "���n�͎��s����������c",
            /* SUPERB    */ "�܂�_�I�I"
        }
    },
    /* FIREWORKS */ {
        /* Entry Scene   */ &scene_fireworks,
        /* Level Name    */ "�ԉ�",
        /* Level Desc.   */ "�ĂƂ����΂��A\n"
                            "����ωԉ΂��ȁH\n"
                            "�F�����₩��\n"
                            "�ł��グ�悤�I",
        /* Level Icon    */ 26,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_fireworks_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�Q�z�Q�z�b�c ���s�B",
            /* OK        */ "�Ȃ��Ȃ��̃f�L�����I",
            /* SUPERB    */ "�ԉ΂̂��ƂȂ�I���ɂ܂�����I�I"
        }
    },
    /* POWER_CALLIGRAPHY */ {
        /* Entry Scene   */ &scene_power_calligraphy,
        /* Level Name    */ "���Y�����K��",
        /* Level Desc.   */ "�M���g���ē��{���\n"
                            "�����܂��B\n"
                            "���Ȃ�������̂�\n"
                            "�I�C�V�C�Ƃ������B",
        /* Level Icon    */ 28,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_power_calligraphy_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�Ӂ`�c  �A�J����B",
            /* OK        */ "���K���� �����Ɗy�������I",
            /* SUPERB    */ "���K������ �m���m�����l�I�I"
        }
    },
    /* POWER_CALLIGRAPHY_2 */ {
        /* Entry Scene   */ &scene_power_calligraphy,
        /* Level Name    */ "���Y�����K�� �Q",
        /* Level Desc.   */ "�M���g���ē��{���\n"
                            "�����܂��B\n"
                            "���Ȃ�������̂�\n"
                            "�I�C�V�C�Ƃ������B",
        /* Level Icon    */ 28,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_power_calligraphy_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�Ӂ`�c  �A�J����B",
            /* OK        */ "���K���� �����Ɗy�������I",
            /* SUPERB    */ "���K������ �m���m�����l�I�I"
        }
    },
    /* TOSS_BOYS */ {
        /* Entry Scene   */ &scene_toss_boys,
        /* Level Name    */ "�g�X�{�[�C�Y",
        /* Level Desc.   */ "�Ȃ��悵�R�l�g�A\n"
                            "�������������Ȃ���\n"
                            "�����y�����g�X��\n"
                            "���K���Ă܂��B",
        /* Level Icon    */ 30,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_toss_boys_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�_���_�����@�`�I",
            /* OK        */ "�܂��܂������Ə��ɂł���͂��I",
            /* SUPERB    */ "�ڕW�́A �g�X���E�I�茠 �D�����[�I�I"
        }
    },
    /* TOSS_BOYS_2 */ {
        /* Entry Scene   */ &scene_toss_boys_2,
        /* Level Name    */ "�g�X�{�[�C�Y �Q",
        /* Level Desc.   */ "�Ȃ��悵�R�l�g�A\n"
                            "�������������Ȃ���\n"
                            "�����y�����g�X��\n"
                            "���K���Ă܂��B",
        /* Level Icon    */ 29,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_toss_boys_2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�{���{�����@�`�I",
            /* OK        */ "����ȂƂ���� �I���Ȃ��I",
            /* SUPERB    */ "�ŋ������o�[�̂��񂶂傤���[�I�I"
        }
    },
    /* RAT_RACE */ {
        /* Entry Scene   */ &scene_rat_race,
        /* Level Name    */ "�������� ���b�g",
        /* Level Desc.   */ "���Ȃ��̓l�Y�~�B\n"
                            "��X�L�ȃ`�[�Y��\n"
                            "�߂�����\n"
                            "�X�g�b�v���S�[�I�I",
        /* Level Icon    */ 31,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_rat_race_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�`�[�Y �H�ׂ�����`�c",
            /* OK        */ "�`�[�Y ���������ˁB",
            /* SUPERB    */ "�݂�ȁA �悩�����l�I"
        }
    },
    /* TRAM_PAULINE */ {
        /* Entry Scene   */ &scene_tram_pauline,
        /* Level Name    */ "�g�����ƃ|����",
        /* Level Desc.   */ "�����˃g�����A\n"
                            "�����ă|������\n"
                            "�A�N���o�e�B�b�N�V���[���͂��܂郈�I",
        /* Level Icon    */ 32,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_tram_pauline_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�債���ς����`�I�I",
            /* OK        */ "���イ�ƃn���p�ł����c",
            /* SUPERB    */ "�R���r�l�[�V���� �o�b�`�V�I�I"
        }
    },
    /* SHOWTIME */ {
        /* Entry Scene   */ &scene_showtime,
        /* Level Name    */ "�V���[�^�C��",
        /* Level Desc.   */ "�y���M���N������\n"
                            "�V���[�^�C����\n"
                            "�͂��܂郈�I\n"
                            "��[����[���I",
        /* Level Icon    */ 36,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_showtime_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "���q����A �������Ă��l�c",
            /* OK        */ "�{�N���� ����Ȃ��񂶂�Ȃ��͂��c",
            /* SUPERB    */ "������I�I ���q���� �y����ł��ꂽ�[�I�I"
        }
    },
    /* SPACE_DANCE */ {
        /* Entry Scene   */ &scene_space_dance,
        /* Level Name    */ "�X�y�[�X�_���X",
        /* Level Desc.   */ "�����͖��d�͂̉F���B\n"
                            "�ł��A ���ǂ낤���I\n"
                            "���b�c�X�y�[�X�_���X�I",
        /* Level Icon    */ 40,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_space_dance_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�u�A �u���b�N�z�[�����[�I�I",
            /* OK        */ "���̐��̂悤�� �����₫�����ȁc",
            /* SUPERB    */ "�{�N������ �X�y�[�X�X�[�p�[�X�^�[�I�I"
        }
    },
    /* COSMIC_DANCE */ {
        /* Entry Scene   */ &scene_cosmic_dance,
        /* Level Name    */ "�R�X���_���X",
        /* Level Desc.   */ "�F�����\\����\n"
                            "�_���T�[�����I\n"
                            "�L����������\n"
                            "�����Â��ł��I�I",
        /* Level Icon    */ 16,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_cosmic_dance_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "���A����肾�[�I�I",
            /* OK        */ "���Ȃ��������� ����Ȃ��̂Ȃ́H",
            /* SUPERB    */ "�{�N������ �X�[�p�[�R�X���X�^�[���I�I"
        }
    },
    /* RAP_MEN */ {
        /* Entry Scene   */ &scene_rap_men,
        /* Level Name    */ "���b�v����",
        /* Level Desc.   */ "�N�[���Ȃӂ���g��\n"
                            "����Ă����I\n"
                            "�A�c�����b�v��\n"
                            "��R�[�t�������I",
        /* Level Icon    */ 42,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_rap_men_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�I�������A �_�T�����c",
            /* OK        */ "�`�F�b�B �Ȃ� ���q��邢�킟�B",
            /* SUPERB    */ "���ꂩ��� ��낵�� ���̂�܂����[�I�I"
        }
    },
    /* RAP_WOMEN */ {
        /* Entry Scene   */ &scene_rap_women,
        /* Level Name    */ "���b�v�E�C����",
        /* Level Desc.   */ "���̃��b�v������\n"
                            "���C�o�����o�ꂾ�I\n"
                            "�L���[�g�ȃ{�C�X��\n"
                            "���� ���������I",
        /* Level Icon    */ 15,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_rap_women_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "����Ȃ� ���Ⴄ�킟�c",
            /* OK        */ "�Ȃ� ������� �C�}�C�`�����c�I",
            /* SUPERB    */ "�������� �R���R���A������[�I�I�C�F�[�C�I"
        }
    },
    /* QUIZ_SHOW */ {
        /* Entry Scene   */ &scene_quiz_show,
        /* Level Name    */ "�N�C�Y",
        /* Level Desc.   */ "�i��҂́A\n"
                            "�u���������񐔁v��\n"
                            "���Ă�J���^����\n"
                            "�N�C�Y�ł��B",
        /* Level Icon    */ 43,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_quiz_show_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "�܁A ����Ȃ��̂��B",
            /* OK        */ "����Ɍ����� �׋��A�׋��cZzz",
            /* SUPERB    */ "���E���s �������������I"
        }
    },
    /* BON_ODORI */ {
        /* Entry Scene   */ &scene_bon_odori,
        /* Level Name    */ "�U���ڂ񂨂ǂ�",
        /* Level Desc.   */ "�ڂ񂨂ǂ��\n"
                            "������ ���킹��\n"
                            "�p���b�� ���\n"
                            "�������܂��傤�B",
        /* Level Icon    */ 35,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_bon_odori_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "���ނ���c",
            /* OK        */ "���񂱂��ԉ΂��āA���Ȃ��ˁB",
            /* SUPERB    */ "���[�A�y���������I"
        }
    },
    /* BON_DANCE */ {
        /* Entry Scene   */ &scene_bon_dance,
        /* Level Name    */ "�{���_���X",
        /* Level Desc.   */ "���ꂪ ���܂ǂ���\n"
                            "�ڂ񂨂ǂ�I\n"
                            "�m���m�������I\n"
                            "�C�F�[�C�I",
        /* Level Icon    */ 17,
        /* Level Type    */ LEVEL_TYPE_GAME,
        /* Epilogue GFX  */ epilogue_bon_dance_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "��������c",
            /* OK        */ "���[��A�J���ӂ��Ă���������B",
            /* SUPERB    */ "�{���_���X���� �������y������l�[�I"
        }
    },
    /* REMIX_1 */ {
        /* Entry Scene   */ &scene_remix_1,
        /* Level Name    */ "���~�b�N�X �P",
        /* Level Desc.   */ "�L�~�̎��͂�\n"
                            "�����Ă݂Ă݂�H\n"
                            "����܂ł̌o����\n"
                            "���m���������`�I",
        /* Level Icon    */ 22,
        /* Level Type    */ LEVEL_TYPE_REMIX,
        /* Epilogue GFX  */ epilogue_remix1_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "����̃f�L �F �L�̂���N���X",
            /* OK        */ "����̃f�L �F ���H�N���X",
            /* SUPERB    */ "����̃f�L �F �Ȃ�ƁA �f�B�i�[�N���X�I�I"
        }
    },
    /* REMIX_2 */ {
        /* Entry Scene   */ &scene_remix_2,
        /* Level Name    */ "���~�b�N�X �Q",
        /* Level Desc.   */ "�L�~�̎��͂�\n"
                            "�����Ă݂Ă݂�H\n"
                            "����܂ł̌o����\n"
                            "���m���������`�I",
        /* Level Icon    */ 27,
        /* Level Type    */ LEVEL_TYPE_REMIX,
        /* Epilogue GFX  */ epilogue_remix2_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "����̔M�C �F �ЂƂ�ŗ��K���x��",
            /* OK        */ "����̔M�C �F �y�����L���b�`�{�[�����x��",
            /* SUPERB    */ "����̔M�C �F ���������x���I�I"
        }
    },
    /* REMIX_3 */ {
        /* Entry Scene   */ &scene_remix_3,
        /* Level Name    */ "���~�b�N�X �R",
        /* Level Desc.   */ "�L�~�̎��͂�\n"
                            "�����Ă݂Ă݂�H\n"
                            "����܂ł̌o����\n"
                            "���m���������`�I",
        /* Level Icon    */ 33,
        /* Level Type    */ LEVEL_TYPE_REMIX,
        /* Epilogue GFX  */ epilogue_remix3_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "����̃��u �F �u���[�N���n�[�g�����c",
            /* OK        */ "����̃��u �F �Ƃ��Ă��t�����h���[�Ȋ�����",
            /* SUPERB    */ "����̃��u �F ���u���u�Ł[���I�I"
        }
    },
    /* REMIX_4 */ {
        /* Entry Scene   */ &scene_remix_4,
        /* Level Name    */ "���~�b�N�X �S",
        /* Level Desc.   */ "�L�~�̎��͂�\n"
                            "�����Ă݂Ă݂�H\n"
                            "����܂ł̌o����\n"
                            "���m���������`�I",
        /* Level Icon    */ 34,
        /* Level Type    */ LEVEL_TYPE_REMIX,
        /* Epilogue GFX  */ epilogue_remix4_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "����̓V�C �F �J",
            /* OK        */ "����̓V�C �F ������",
            /* SUPERB    */ "����̓V�C �F �n�b�s�[�Ȑ���I�I"
        }
    },
    /* REMIX_5 */ {
        /* Entry Scene   */ &scene_remix_5,
        /* Level Name    */ "���~�b�N�X �T",
        /* Level Desc.   */ "�L�~�̎��͂�\n"
                            "�����Ă݂Ă݂�H\n"
                            "����܂ł̌o����\n"
                            "���m���������`�I",
        /* Level Icon    */ 39,
        /* Level Type    */ LEVEL_TYPE_REMIX,
        /* Epilogue GFX  */ epilogue_remix5_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "����̂ӂ��� �F �W���}����Ă��܂����I",
            /* OK        */ "����̂ӂ��� �F ���̂����A�`���b�g�s�������c",
            /* SUPERB    */ "����̂ӂ��� �F �K���ɂȂ�܂�����"
        }
    },
    /* REMIX_6 */ {
        /* Entry Scene   */ &scene_remix_6,
        /* Level Name    */ "���~�b�N�X �U",
        /* Level Desc.   */ "�L�~�̎��͂�\n"
                            "�����Ă݂Ă݂�H\n"
                            "����܂ł̌o����\n"
                            "���m���������`�I",
        /* Level Icon    */ 2,
        /* Level Type    */ LEVEL_TYPE_REMIX,
        /* Epilogue GFX  */ epilogue_remix6_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "����̓��e �F ��₳�݂����J���W",
            /* OK        */ "����̓��e �F �ӊO�ȃJ���W",
            /* SUPERB    */ "����̓��e �F �A���r���[�o�{�[�ȃJ���W�I�I"
        }
    },
    /* REMIX_7 */ {
        /* Entry Scene   */ &scene_remix_7,
        /* Level Name    */ "���~�b�N�X �V",
        /* Level Desc.   */ "�L�~�̎��͂�\n"
                            "�����Ă݂Ă݂�H\n"
                            "����܂ł̌o����\n"
                            "���m���������`�I",
        /* Level Icon    */ 19,
        /* Level Type    */ LEVEL_TYPE_REMIX,
        /* Epilogue GFX  */ epilogue_remix7_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "����̂��傤��イ �F �������",
            /* OK        */ "����̂��傤��イ �F �ق̂ڂ�",
            /* SUPERB    */ "����̂��傤��イ �F �y�������`�I�I"
        }
    },
    /* REMIX_8 */ {
        /* Entry Scene   */ &scene_remix_8,
        /* Level Name    */ "���~�b�N�X �W",
        /* Level Desc.   */ "�L�~�̎��͂�\n"
                            "�����Ă݂Ă݂�H\n"
                            "����܂ł̌o����\n"
                            "���m���������`�I",
        /* Level Icon    */ 37,
        /* Level Type    */ LEVEL_TYPE_REMIX,
        /* Epilogue GFX  */ epilogue_remix8_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "����̃h���C�u �F ������c",
            /* OK        */ "����̃h���C�u �F �܂��܂�������Ȃ�",
            /* SUPERB    */ "����̃h���C�u �F �Ƃ��Ă��u���I�I"
        }
    },
    /* CAFE */ {
        /* Entry Scene   */ &scene_cafe,
        /* Level Name    */ "�i���J�E���Z��",
        /* Level Desc.   */ "�ŋ߂̒��q �ǂ��H\n"
                            "�Ȃɂ��C�ɂȂ��\n"
                            "�����ő��k��\n"
                            "���Ă݂悤�B",
        /* Level Icon    */ 45,
        /* Level Type    */ LEVEL_TYPE_BONUS,
        /* Epilogue GFX  */ epilogue_cafe_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ NULL,
            /* OK        */ NULL,
            /* SUPERB    */ NULL
        }
    },
    /* RHYTHM_TOYS */ {
        /* Entry Scene   */ &scene_toys_menu,
        /* Level Name    */ "��������",
        /* Level Desc.   */ "���_���� ���߂�\n"
                            "���̂ł邨�������\n"
                            "������ł݂ăl�I\n"
                            "���������郈�B",
        /* Level Icon    */ 46,
        /* Level Type    */ LEVEL_TYPE_BONUS,
        /* Epilogue GFX  */ epilogue_toys_menu_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ NULL,
            /* OK        */ NULL,
            /* SUPERB    */ NULL
        }
    },
    /* ENDLESS_GAMES */ {
        /* Entry Scene   */ &scene_endless_menu,
        /* Level Name    */ "�Q�[��",
        /* Level Desc.   */ "���_���� ���߂�\n"
                            "�Ƃ��ׂȃQ�[����\n"
                            "���킵�Ă݂ăl�I\n"
                            "���������郈�B",
        /* Level Icon    */ 47,
        /* Level Type    */ LEVEL_TYPE_BONUS,
        /* Epilogue GFX  */ epilogue_endless_menu_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ NULL,
            /* OK        */ NULL,
            /* SUPERB    */ NULL
        }
    },
    /* DRUM_LESSONS */ {
        /* Entry Scene   */ &scene_lessons_menu,
        /* Level Name    */ "�h�������b�X��",
        /* Level Desc.   */ "���_���� ���߂�\n"
                            "�h�����̃��b�X����\n"
                            "�����Ă݂悤�B\n"
                            "���ɂȂ��ăl�I",
        /* Level Icon    */ 48,
        /* Level Type    */ LEVEL_TYPE_BONUS,
        /* Epilogue GFX  */ epilogue_lessons_menu_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ NULL,
            /* OK        */ NULL,
            /* SUPERB    */ NULL
        }
    },
    /* STAFF_CREDIT */ {
        /* Entry Scene   */ &scene_staff_credit,
        /* Level Name    */ "�X�^�b�t",
        /* Level Desc.   */ "���� �悩������\n"
                            "���Ă݂ăl�B\n"
                            "���̃Q�[����\n"
                            "�X�^�b�t�����ł��B",
        /* Level Icon    */ 49,
        /* Level Type    */ LEVEL_TYPE_BONUS,
        /* Epilogue GFX  */ epilogue_staff_credit_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ NULL,
            /* OK        */ NULL,
            /* SUPERB    */ NULL
        }
    },
    /* LIVE_MENU */ {
        /* Entry Scene   */ &scene_concert_hall,
        /* Level Name    */ "���C�u",
        /* Level Desc.   */ "���C�u�ɏo�����I\n"
                            "�L�~�̃��Y������\n"
                            "�悢�Ǝv������\n"
                            "�ǂ������C�y�Ɂ`",
        /* Level Icon    */ 44,
        /* Level Type    */ LEVEL_TYPE_BONUS,
        /* Epilogue GFX  */ epilogue_concert_hall_gfx_tables,
        /* Epilogue Text */ {
            /* TRY_AGAIN */ "���΂����u�܂����A����΂�Ȃ�I�v",
            /* OK        */ "�I�[�i�[�u�L�~�A�Ȃ��Ȃ� �X�W���郈�v",
            /* SUPERB    */ "�v���f���[�T�[�u�����ŁA�K���o���Ă݂Ȃ��H�v"
        }
    }
};
