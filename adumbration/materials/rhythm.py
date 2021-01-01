import abjad
import abjadext.rmakers
import evans
from abjadext import microtones

from .pitch import baca_seq

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

#### SEGMENT 14

rotations = evans.CyclicList(["½clt.", "clt.", "½clt.", "norm."], forget=False)


def full_bows(selections):
    bowings = evans.CyclicList(["downbow", "upbow"], forget=False)
    for run in abjad.select(selections).runs():
        for tie in abjad.select(run).logical_ties():
            articulation = abjad.Articulation(bowings(r=1)[0])
            abjad.attach(articulation, tie[0])
        mark = abjad.Markup(rotations(r=1)[0], direction=abjad.Up)
        abjad.attach(mark, abjad.select(run).logical_tie(0)[0])


composite_handler_3 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.talea(
                [1],
                4,
                extra_counts=[
                    0,
                    1,
                    1,
                    0,
                    0,
                    1,
                    2,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    2,
                    3,
                    0,
                    0,
                ],
            ),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler(
            microtones.PitchSegment(
                [
                    -4,
                    1,
                    6,
                    11,
                    16,
                    11,
                    6,
                    1,
                ]
            ).transpose(4),
            forget=False,
        ),
        evans.GlissandoHandler(
            line_style="solid-line",
            boolean_vector=[1],
            forget=False,
            apply_to="runs",
        ),
        full_bows,
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

composite_handler_4 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.talea(
                [2, 2, 2, 1, 1],
                16,
                preamble=[3],
                end_counts=[4],
                extra_counts=[0, 1, 2, 3, 2, 1],
            ),
            abjadext.rmakers.force_rest(
                abjad.select().logical_ties().get([0, 1], 9),
            ),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler(
            evans.Sequence(
                microtones.PitchSegment(
                    [
                        0,
                        "2/3",
                        "4/3",
                        "6/3",
                        "8/3",
                        "1/2",
                        "3/2",
                    ]
                ).sorted(),
            )
            .mirror(
                sequential_duplicates=False,
            )
            .random_walk(
                random_seed=25,
                length=200,
                step_list=[1, 2],
            ),
            forget=False,
        ),
        evans.ArticulationHandler(
            [
                "tremolo",
            ],
            forget=False,
        ),
        evans.ArticulationHandler(
            [
                "accent",
            ],
            forget=False,
        ),
        evans.DynamicHandler(
            dynamic_list=["f", "ff"],
            hold_first_boolean_vector=[1, 0],
            hold_first_forget=False,
            hold_last_boolean_vector=[0, 1],
            hold_last_forget=False,
            forget=False,
            with_constante_hairpins=False,
        ),
    ],
)

#### SEGMENT 15


def full_bows_without_rotations(selections):
    bowings = evans.CyclicList(["downbow", "upbow"], forget=False)
    for run in abjad.select(selections).runs():
        for tie in abjad.select(run).logical_ties():
            articulation = abjad.Articulation(bowings(r=1)[0])
            abjad.attach(articulation, tie[0])


composite_handler_5 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.talea(
                [60],
                1,
            ),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler([20]),
    ],
)

composite_handler_6 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.talea(
                [60],
                1,
            ),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler([7]),
    ],
)

composite_handler_7 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.talea(
                [2, 2, 1, 1, 2, 1, 1, 2, 2, 1, 1, 1],
                16,
                preamble=[3],
                end_counts=[4],
                extra_counts=[0, 1, 2, 3, 2, 1],
            ),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler([9]),
        full_bows_without_rotations,
    ],
)

composite_handler_8 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.talea(
                [1],
                4,
                extra_counts=[
                    0,
                    1,
                    3,
                    4,
                    2,
                    1,
                ],
            ),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler(
            evans.Sequence(
                [8, 14, 20, 22, 24, 25, 26, 26.5, 27, 27.5, 28],
            ).mirror(sequential_duplicates=False),
            forget=False,
        ),
        evans.GlissandoHandler(
            line_style="solid-line",
            boolean_vector=[1],
            forget=False,
            apply_to="runs",
        ),
    ],
)

#### SEGMENT 16

composite_handler_9 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.talea(
                [1],
                2,
            ),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler(
            [7],
        ),
        evans.DynamicHandler(
            ["f"],
            hold_first_boolean_vector=[1],
            hold_first_forget=False,
            forget=False,
            with_constante_hairpins=False,
        ),
        evans.ArticulationHandler(
            ["tenuto"],
            forget=False,
        ),
    ],
)

composite_handler_10 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.talea(
                [1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 2, 3, 2, 1, 1, 1],
                16,
                extra_counts=[
                    0,
                    1,
                ],
            ),
            abjadext.rmakers.force_rest(
                abjad.select().logical_ties().get([0, 1, 6, 8], 9),
            ),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.ArticulationHandler(
            [
                "staccato",
            ],
            forget=False,
        ),
        evans.DynamicHandler(
            ["mp", "mf", "f", "mp", "p", "mf"],
            hold_first_boolean_vector=[1],
            hold_first_forget=False,
            forget=False,
            with_constante_hairpins=False,
        ),
    ],
)

#### SEGMENT 17

composite_handler_11 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.talea(
                [1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 2, 3, 2, 1, 1, 1],
                16,
                extra_counts=[
                    0,
                    1,
                    1,
                    0,
                    0,
                    1,
                    0,
                    0,
                    1,
                    -1,
                    -1,
                    -1,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    0,
                    1,
                    0,
                    0,
                    0,
                    1,
                    0,
                    1,
                    0,
                    -1,
                    0,
                    0,
                    -1,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    -1,
                    0,
                    0,
                    1,
                ],
            ),
            abjadext.rmakers.force_rest(
                abjad.select().logical_ties().get([0, 1, 6, 8], 9),
            ),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler(
            baca_seq,
            forget=False,
        ),
        evans.DynamicHandler(
            ["f", "ff", "mf", "f", "mf"],
            forget=False,
            hold_last_boolean_vector=[1],
            hold_last_forget=False,
            with_constante_hairpins=False,
        ),
    ],
)

#### SEGMENT 18

infinite_durs = evans.RhythmHandler(
    abjadext.rmakers.stack(
        abjadext.rmakers.talea(
            [60],
            1,
        ),
        abjadext.rmakers.trivialize(abjad.select().tuplets()),
        abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
        abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
    ),
    forget=False,
)

#### SEGMENT 19

fainting_durs = evans.RhythmHandler(
    abjadext.rmakers.stack(
        abjadext.rmakers.tuplet(
            [(4, 1)],
            1,
        ),
        abjadext.rmakers.trivialize(abjad.select().tuplets()),
        abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
        abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
    ),
    forget=False,
)

#### SEGMENT 20

vn_1_interim_1 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.talea(
                [
                    3,
                    1,
                    2,
                    1,
                    2,
                    2,
                    3,
                    2,
                    3,
                    2,
                    1,
                ],
                4,
                extra_counts=[
                    0,
                    1,
                    -1,
                    0,
                    1,
                    1,
                ],
            ),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler(
            [-2],
            forget=False,
        ),
    ],
)

vn_2_interim_1 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.talea(
                [
                    1,
                    2,
                    2,
                    3,
                    2,
                    3,
                    2,
                    1,
                    3,
                    1,
                    2,
                ],
                4,
                extra_counts=[
                    -1,
                    0,
                    1,
                    1,
                    0,
                    1,
                ],
            ),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler(
            [-1.5],
            forget=False,
        ),
    ],
)

va_interim_1 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.talea(
                [
                    2,
                    3,
                    2,
                    3,
                    2,
                    1,
                    3,
                    1,
                    2,
                    1,
                    2,
                ],
                4,
                extra_counts=[
                    1,
                    1,
                    0,
                    1,
                    -1,
                    0,
                ],
            ),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler(
            [-1],
            forget=False,
        ),
    ],
)

vc_interim_1 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.talea(
                [
                    3,
                    2,
                    1,
                    3,
                    1,
                    2,
                    1,
                    2,
                    2,
                    3,
                    2,
                ],
                4,
                extra_counts=[
                    1,
                    0,
                    1,
                    -1,
                    0,
                    1,
                ],
            ),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler(
            [-0.5],
            forget=False,
        ),
    ],
)

vn_1_interim_2 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.note(),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler(
            [16],
            forget=False,
        ),
        evans.DynamicHandler(
            ["ff"],
            forget=False,
            hold_first_boolean_vector=[1],
            hold_first_forget=False,
            with_constante_hairpins=False,
        ),
    ],
)

vn_2_interim_2 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.note(),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler(
            [9],
            forget=False,
        ),
        evans.DynamicHandler(
            ["ff"],
            forget=False,
            hold_first_boolean_vector=[1],
            hold_first_forget=False,
            with_constante_hairpins=False,
        ),
    ],
)

va_interim_2 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.note(),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler(
            [2],
            forget=False,
        ),
        evans.DynamicHandler(
            ["ff"],
            forget=False,
            hold_first_boolean_vector=[1],
            hold_first_forget=False,
            with_constante_hairpins=False,
        ),
    ],
)

vc_interim_2 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.note(),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler(
            [-17],
            forget=False,
        ),
        evans.DynamicHandler(
            ["ff"],
            forget=False,
            hold_first_boolean_vector=[1],
            hold_first_forget=False,
            with_constante_hairpins=False,
        ),
    ],
)

interim_3 = evans.CompositeHandler(
    rhythm_handler=evans.RhythmHandler(
        abjadext.rmakers.stack(
            abjadext.rmakers.talea(
                [100],
                1,
                extra_counts=[0],
            ),
            abjadext.rmakers.trivialize(abjad.select().tuplets()),
            abjadext.rmakers.extract_trivial(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            abjadext.rmakers.rewrite_sustained(abjad.select().tuplets()),
        ),
        forget=False,
    ),
    attachment_handlers=[
        evans.PitchHandler(
            ["b,"],
            forget=False,
        ),
    ],
)
