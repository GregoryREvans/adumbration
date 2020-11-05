import abjad
import abjadext.rmakers
import evans

silence_maker = abjadext.rmakers.stack(
    abjadext.rmakers.NoteRhythmMaker(),
    abjadext.rmakers.force_rest(abjad.select().leaves(pitched=True)),
)

silence_handler = evans.RhythmHandler(
    rmaker=silence_maker,
    forget=True,
    name="silence_handler",
)

rmaker_one = abjadext.rmakers.stack(
    abjadext.rmakers.talea(
        [2, 1, 5, 4, 1, 2, 3], 2, extra_counts=[0, -1, 2, 0, -3, 0, 0, 4, 3, 0, 2, 1]
    ),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

rhythm_handler_one = evans.RhythmHandler(
    rmaker=rmaker_one,
    forget=False,
    name="rhythm_handler_one",
)

#### SEGMENT 02

rmaker_two = abjadext.rmakers.stack(
    abjadext.rmakers.even_division(
        [
            16,
        ],
        extra_counts=[0, 1, -1, 0, 3],
    ),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

rhythm_handler_two = evans.RhythmHandler(
    rmaker=rmaker_two,
    forget=False,
    name="rhythm_handler_two",
)

#### SEGMENT 03

rmaker_three = abjadext.rmakers.stack(
    abjadext.rmakers.talea([40], 1, extra_counts=[0]),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

rhythm_handler_three = evans.RhythmHandler(
    rmaker=rmaker_three,
    forget=False,
    name="rhythm_handler_three",
)

#### SEGMENT 04

rmaker_four = abjadext.rmakers.stack(
    abjadext.rmakers.even_division(
        [
            16,
        ],
        extra_counts=[0],
    ),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

rhythm_handler_four = evans.RhythmHandler(
    rmaker=rmaker_four,
    forget=False,
    name="rhythm_handler_four",
)

#### SEGMENT 05

rmaker_five = abjadext.rmakers.stack(
    abjadext.rmakers.note(),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

rhythm_handler_five = evans.RhythmHandler(
    rmaker=rmaker_five,
    forget=False,
    name="rhythm_handler_five",
)

#### SEGMENT 06

rmaker_six = abjadext.rmakers.stack(
    abjadext.rmakers.even_division(
        [
            16,
        ],
        extra_counts=[
            -1,
            0,
            0,
            -1,
            -1,
            0,
            -1,
            0,
            -1,
            0,
            0,
            0,
            0,
            0,
            -1,
            0,
            0,
            -1,
            -1,
            -1,
            -1,
            0,
        ],
    ),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

rhythm_handler_six = evans.RhythmHandler(
    rmaker=rmaker_six,
    forget=False,
    name="rhythm_handler_six",
)

rmaker_seven = abjadext.rmakers.stack(
    abjadext.rmakers.even_division(
        [8],
        extra_counts=[
            1,
            3,
            3,
            1,
            1,
            1,
            1,
            3,
            3,
            3,
            1,
            1,
            3,
            1,
            1,
            1,
            3,
            1,
            1,
        ],
    ),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

rhythm_handler_seven = evans.RhythmHandler(
    rmaker=rmaker_seven,
    forget=False,
    name="rhythm_handler_seven",
)

rmaker_eight = abjadext.rmakers.stack(
    abjadext.rmakers.talea(
        [2, 1, 4, 3, 1, 2, 3],
        2,
        extra_counts=[0, -1, 2, 0, -3, 0, 0, 4, 3, 0, 2, 1],
    ),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

rhythm_handler_eight = evans.RhythmHandler(
    rmaker=rmaker_eight,
    forget=False,
    name="rhythm_handler_eight",
)

#### SEGMENT 07

seg_7_rmaker = abjadext.rmakers.stack(
    abjadext.rmakers.talea(
        [
            1,
            2,
            3,
            1,
            1,
            1,
            1,
            2,
            3,
            4,
            1,
            1,
            2,
            1,
            1,
            1,
            2,
            1,
            1,
        ],
        2,
        extra_counts=[0, -1, 1, 2, -3, 0, -1, 4, 3, 1, 2, 1],
    ),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

seg_7_rhythm_handler = evans.RhythmHandler(
    rmaker=seg_7_rmaker,
    forget=False,
    name="seg_7_rhythm_handler",
)

#### SEGMENT 08

rmaker_eight = abjadext.rmakers.stack(
    abjadext.rmakers.talea([8, 4, 3, 2, 5], 4, extra_counts=[0]),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

rhythm_handler_eight = evans.RhythmHandler(
    rmaker=rmaker_eight,
    forget=False,
    name="rhythm_handler_eight",
)

#### SEGMENT 09

long_rmaker = abjadext.rmakers.stack(
    abjadext.rmakers.talea([20], 1, extra_counts=[0]),
    abjadext.rmakers.trivialize(abjad.select().tuplets()),
    abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
)

long_rhythm_handler = evans.RhythmHandler(
    rmaker=long_rmaker,
    forget=False,
    name="long_rhythm_handler",
)

#### SEGMENT 10

tap_rmaker = evans.RTMMaker(
    rtm=[
        "(1 (-1 1 -1))",
        "(1 (1 -2 1))",
        "(1 (1 1 -2 1))",
        "(1 (1 -3 1 -1 1))",
        "(1 (1 -1 1 1 1 -1))",
    ]
)

tap_rhythm_handler = evans.RhythmHandler(
    rmaker=tap_rmaker,
    forget=False,
    name="tap_rhythm_handler",
)

#### SEGMENT 11

noise_rmaker = evans.RTMMaker(
    rtm=[
        "(1 (-2 2 1 -1))",
        "(1 (2 1 -2))",
        "(1 (2 1 -1 3 1))",
        "(1 (2 1 -1 3 1 -1))",
        "(1 (2 1 -1 2 1 -1))",
    ]
)

noise_rhythm_handler = evans.RhythmHandler(
    rmaker=noise_rmaker,
    forget=False,
    name="noise_rhythm_handler",
)

#### SEGMENT 13

composite_handler_1 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        evans.RTMMaker(
            rtm=[
                "(1 (-4 1))",
                "(1 (3 -1))",
                "(1 (-2 1))",
                "(1 (1 -1))",
            ]
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler(
            [0, 1, 2, 3],
            forget=False,
        ),
        evans.BendHandler(
            [2.5, -3.5, 3, -3, 3.5, -2.5],
            boolean_vector=[0, 1, 0, 0, 1],
        ),
        evans.DynamicHandler(
            dynamic_list=["f", "mf"],
            hold_first_boolean_vector=[1, 0],
            hold_first_forget=False,
            hold_last_boolean_vector=[0, 1],
            hold_last_forget=False,
            forget=False,
            with_constante_hairpins=False,
        ),
    ],
)

composite_handler_2 = evans.CompositeHandler(
    rhythm_handler=tap_rhythm_handler,
    attachment_handlers=[
        evans.PitchHandler(
            [_ + 24 for _ in [6.5, 8, 9.5, 5]],
            forget=False,
        ),
        evans.ArticulationHandler(
            [
                "staccato",
                "tenuto",
                "accent",
                "staccato",
                "staccato",
                "staccato",
                "staccato",
                "tenuto",
                "staccato",
                "staccato",
                "staccato",
                "staccato",
                "staccato",
                "tenuto",
                "staccato",
                "staccato",
            ],
            forget=False,
        ),
        evans.DynamicHandler(
            dynamic_list=["p", "mp"],
            hold_first_boolean_vector=[1, 0],
            hold_first_forget=False,
            hold_last_boolean_vector=[0, 1],
            hold_last_forget=False,
            forget=False,
            with_constante_hairpins=False,
        ),
    ],
)
