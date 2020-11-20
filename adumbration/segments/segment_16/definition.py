import pathlib

import abjad
import baca
import evans
import quicktions
from abjadext import microtones

from adumbration.materials.pitch import baca_seq, clef_handlers
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_16.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_16.convert_timespans import rhythm_commands

tempo_handler = evans.TempoSpannerHandler(
    tempo_list=[
        (2, 0, 1, "38.3"),
        (2, 0, 1, "60"),
        (2, 0, 1, "60"),
        (2, 0, 1, "90"),
        (2, 0, 1, "90"),
        (2, 0, 1, "115"),
    ],
    boolean_vector=[1],
    padding=0.2,
    staff_padding=0.2,
    forget=False,
)

maker = evans.SegmentMaker(
    instruments=insts,
    names=[
        '"Violin I"',
        '"Violin II"',
        '"Viola"',
        '"Violoncello"',
    ],
    abbreviations=[
        '"vn. I"',
        '"vn. II"',
        '"va."',
        '"vc."',
    ],
    name_staves=True,
    commands=[
        rhythm_commands,
        evans.call(
            "score",
            evans.SegmentMaker.transform_brackets,
            abjad.select().components(abjad.Score),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                "Anomaly",
                direction=abjad.Up,
            )
            .caps()
            .override(("font-name", "STIXGeneral Bold"))
            .box(),
            baca.leaf(0),
        ),
        evans.attach(
            "Global Context",
            abjad.LilyPondLiteral(r"\break", format_slot="before"),
            baca.leaf(10),
        ),
        evans.call(
            "Voice 1",
            evans.PitchHandler([0], apply_all=True, apply_all_spelling="sharp"),
            abjad.select(),
        ),
        evans.call(
            "Voice 2",
            evans.PitchHandler([0], apply_all=True, apply_all_spelling="sharp"),
            abjad.select(),
        ),
        evans.call(
            "Voice 3",
            evans.PitchHandler([-12], apply_all=True, apply_all_spelling="sharp"),
            abjad.select(),
        ),
        evans.call(
            "Voice 4",
            evans.PitchHandler([-24], apply_all=True, apply_all_spelling="sharp"),
            abjad.select(),
        ),
        evans.call(
            "Voice 1",
            evans.PitchHandler(
                microtones.RatioClassSegment(
                    [
                        "3/2",
                        "3/2",
                        "24/25",
                        "24/25",
                        "24/25",
                        "24/25",
                        "2/3",
                        "2/3",
                        "3/2",
                        "3/2",
                        "3/2",
                        "3/2",
                        "2/3",
                        "2/3",
                        "3/2",
                        "3/2",
                        "3/2",
                        "3/2",
                        "24/25",
                        "24/25",
                        "24/25",
                        "2/3",
                        "2/3",
                        "3/2",
                        "3/2",
                    ]
                ),
                as_ratios=True,
                forget=False,
            ),
            abjad.select()
            .logical_ties(
                pitched=True,
            )
            .get(
                [
                    0,
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    22,
                    27,
                    28,
                    29,
                    33,
                    34,
                ]
            ),
        ),
        evans.call(
            "Voice 2",
            evans.PitchHandler(
                microtones.RatioClassSegment(
                    [
                        "6/5",
                    ]
                ),
                as_ratios=True,
                forget=False,
            ),
            abjad.select()
            .logical_ties(
                pitched=True,
            )
            .get(
                [
                    0,
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    25,
                    26,
                    29,
                    30,
                ]
            ),
        ),
        evans.call(
            "Voice 3",
            evans.PitchHandler(
                microtones.RatioClassSegment(
                    [
                        "5/4",
                        "4/5",
                        "4/5",
                        "4/5",
                        "4/5",
                        "4/5",
                        "4/5",
                        "4/5",
                        "4/5",
                        "5/4",
                        "5/4",
                        "4/5",
                        "4/5",
                        "4/5",
                        "4/5",
                        "4/5",
                        "5/4",
                        "4/5",
                        "4/5",
                        "4/5",
                        "4/5",
                        "4/5",
                        "5/4",
                        "5/4",
                        "4/5",
                    ]
                ),
                as_ratios=True,
                forget=False,
            ),
            abjad.select()
            .logical_ties(
                pitched=True,
            )
            .get(
                [
                    0,
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    28,
                    29,
                    36,
                ]
            ),
        ),
        evans.call(
            "Voice 4",
            evans.PitchHandler(
                microtones.RatioClassSegment(
                    [
                        "1/1",
                        "1/1",
                        "1/1",
                        "16/25",
                        "16/25",
                        "1/1",
                        "1/1",
                        "1/1",
                        "1/1",
                        "1/1",
                        "1/1",
                        "1/1",
                        "1/1",
                        "1/1",
                        "1/1",
                        "1/1",
                        "1/1",
                        "1/1",
                        "16/25",
                        "16/25",
                        "1/1",
                        "1/1",
                        "1/1",
                        "1/1",
                    ]
                ),
                as_ratios=True,
                forget=False,
            ),
            abjad.select()
            .logical_ties(
                pitched=True,
            )
            .get(
                [
                    0,
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    22,
                    23,
                    24,
                    29,
                    30,
                    34,
                    35,
                ]
            ),
        ),
        evans.call(
            "Voice 1",
            evans.PitchHandler(
                baca_seq,
                forget=False,
            ),
            abjad.select()
            .logical_ties(pitched=True)
            .get(
                [
                    23,
                    24,
                    25,
                    26,
                    30,
                    31,
                    32,
                    35,
                    36,
                    37,
                    38,
                ]
            ),
        ),
        evans.call(
            "Voice 2",
            evans.PitchHandler(
                baca_seq,
                forget=False,
            ),
            abjad.select()
            .logical_ties(pitched=True)
            .get(
                [
                    21,
                    22,
                    23,
                    24,
                    27,
                    28,
                    31,
                    32,
                    33,
                    34,
                    35,
                    36,
                    37,
                    38,
                    39,
                    40,
                    41,
                    42,
                    43,
                    44,
                    45,
                ]
            ),
        ),
        evans.call(
            "Voice 3",
            evans.PitchHandler(
                baca_seq,
                forget=False,
            ),
            abjad.select()
            .logical_ties(pitched=True)
            .get(
                [
                    22,
                    23,
                    24,
                    25,
                    26,
                    27,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    36,
                    37,
                    38,
                    39,
                    40,
                    41,
                    42,
                ]
            ),
        ),
        evans.call(
            "Voice 4",
            evans.PitchHandler(
                baca_seq,
                forget=False,
            ),
            abjad.select()
            .logical_ties(pitched=True)
            .get(
                [
                    17,
                    18,
                    19,
                    20,
                    21,
                    25,
                    26,
                    27,
                    28,
                    31,
                    32,
                    33,
                    36,
                    37,
                    38,
                    39,
                    40,
                    41,
                    42,
                    43,
                    44,
                    45,
                    46,
                    47,
                    48,
                    49,
                    50,
                    51,
                ]
            ),
        ),
        evans.call("Voice 1", clef_handlers[0], abjad.select()),
        evans.call("Voice 2", clef_handlers[1], abjad.select()),
        evans.call("Voice 3", clef_handlers[2], abjad.select()),
        evans.call(
            "Voice 4",
            evans.ClefHandler(
                allowable_clefs=["bass", "treble"],
                clef="bass",
                add_extended_clefs=True,
                add_ottavas=True,
            ),
            abjad.select(),
        ),
        evans.detach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.leaf(27, pitched=True),
        ),
        evans.detach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.leaf(-9, pitched=True),
        ),
        evans.detach(
            "Voice 3",
            abjad.StartBeam(),
            baca.leaf(30),
        ),
        evans.attach(
            "Voice 3",
            abjad.StartBeam(),
            baca.leaf(32),
        ),
        evans.detach("Voice 4", abjad.StartBeam(), baca.leaf(35)),
        evans.attach("Voice 4", abjad.StartBeam(), baca.leaf(36)),
        evans.detach("Voice 4", abjad.StartBeam(), baca.leaf(48)),
        evans.attach("Voice 4", abjad.StartBeam(), baca.leaf(50)),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), quicktions.Fraction(230, 3)),
                left_note=(abjad.Note("c'2")),
                right_note=(abjad.Note("c'4")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.leaf(0),
        ),
        evans.call("Global Context", tempo_handler, baca.leaves().get([8, 9])),
        evans.call("Global Context", tempo_handler, baca.leaves().get([11, 12])),
        evans.call("Global Context", tempo_handler, baca.leaves().get([14, 15])),
    ],
    score_template=score,
    time_signatures=time_signatures,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/adumbration/adumbration/build/first_stylesheet.ily",
    ],
    segment_name="segment_16",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 38),
    rehearsal_mark="",
    page_break_counts=[90],
    fermata="scripts.ushortfermata",
)

maker.build_segment()
# maker._make_sc_file()
