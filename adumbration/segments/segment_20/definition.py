import pathlib

import abjad
import baca
import evans

from adumbration.materials.pitch import clef_handlers
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_20.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_20.convert_timespans import rhythm_commands

grace_handler = evans.OnBeatGraceHandler(
    number_of_attacks=[
        4,
        3,
        4,
        5,
        6,
        3,
        4,
        3,
        4,
        3,
        4,
        5,
        5,
        3,
        4,
        3,
    ],
    durations=[
        2,
        1,
        1,
        1,
        2,
        1,
        2,
        1,
        1,
    ],
    font_size=-4,
    leaf_duration=None,
    attack_number_forget=False,
    durations_forget=False,
    boolean_vector=[1],
    vector_forget=False,
    name="On Beat Grace Handler",
)

head_handler = evans.NoteheadHandler(
    ["harmonic"],
    head_boolean_vector=[1],
    forget=False,
)


def attach_clicks(selections):
    cyc_clicks = evans.CyclicList(
        [
            "XSB(c.2 clicks per second)",
            "XSB(c.3 clicks/s)",
            "XSB(c.4)",
            "XSB(c.5)",
            "XSB(c.6)",
            "XSB(c.7)",
            "XSB(c.8)",
            "slow bow",
            "norm.",
            "quasi noise",
        ],
        forget=False,
    )
    for leaf in abjad.Selection(selections).leaves():
        text = cyc_clicks(r=1)[0]
        mark = abjad.Markup(fr"\upright {{ {text} }}", direction=abjad.Up)
        span = abjad.StartTextSpan(
            left_text=mark,
            style="dashed-line-with-arrow",
        )
        abjad.tweak(span).padding = 6.75
        abjad.attach(span, leaf)
        abjad.attach(abjad.StopTextSpan(), leaf)
    first_leaf = abjad.Selection(selections).leaf(0)
    abjad.attach(abjad.Dynamic("fff"), first_leaf)
    abjad.detach(abjad.StopTextSpan(), first_leaf)
    final = abjad.StartTextSpan(
        left_text=abjad.Markup(r"\upright { quasi noise }"),
        style="invisible-line",
    )
    abjad.tweak(final).padding = 6.75
    final_leaf = abjad.Selection(selections).leaf(-1)
    start_span_indicator = [
        _
        for _ in abjad.get.indicators(final_leaf)
        if isinstance(_, abjad.StartTextSpan)
    ]
    abjad.detach(start_span_indicator[0], final_leaf)
    abjad.attach(final, final_leaf)
    abjad.attach(abjad.StopTextSpan(), abjad.get.leaf(final_leaf, 1))


def attach_material(selections):
    ties = abjad.Selection(selections).logical_ties()
    first_leaf = abjad.Selection(ties).leaf(0)
    center_leaf = abjad.Selection(ties[len(ties) // 2]).leaf(0)
    last_leaf = abjad.Selection(ties).leaf(-1)
    cyc_dynamics = evans.CyclicList(["p", "f"], forget=False)
    cyc_hairpins = evans.CyclicList(["<", ">"], forget=False)
    for tie in ties:
        dynamic = abjad.Dynamic(cyc_dynamics(r=1)[0])
        abjad.attach(dynamic, tie[0])
    for tie in ties[:-1]:
        hairpin = abjad.StartHairpin(cyc_hairpins(r=1)[0])
        abjad.attach(hairpin, tie[0])
    start = abjad.StartTextSpan(
        left_text=abjad.Markup(r"\upright norm."),
        style="dashed-line-with-arrow",
    )
    middle = abjad.StartTextSpan(
        left_text=abjad.Markup(r"\upright msp."),
        right_text=abjad.Markup(r"\markup \upright st."),
        style="dashed-line-with-arrow",
    )
    middle_stop = abjad.StopTextSpan()
    final_stop = abjad.StopTextSpan()
    abjad.tweak(start).staff_padding = 2
    abjad.tweak(middle).staff_padding = 2
    abjad.attach(start, first_leaf)
    abjad.attach(middle_stop, center_leaf)
    abjad.attach(middle, center_leaf)
    abjad.attach(final_stop, last_leaf)
    for leaf in abjad.Selection(selections).leaves():
        literal_1 = abjad.LilyPondLiteral(
            r"\once \override Staff.Tie.transparent = ##t",
            format_slot="before",
        )
        abjad.attach(literal_1, leaf)
        literal_2 = abjad.LilyPondLiteral(
            r"\once \override Dots.staff-position = #1.75",
            format_slot="before",
        )
        abjad.attach(literal_2, leaf)


met_60 = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 60)
mark_60 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_60)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

met_108 = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 108)
mark_108 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_108)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

met_120 = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 120)
mark_120 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_120)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
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
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        "skips",
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                r"""\markup \override #'(font-name . "STIXGeneral Bold") \box \caps "Yellow Light in Fog" """,
                direction=abjad.Up,
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            abjad.LilyPondLiteral(
                r"\bacaStopTextSpanMM",
                format_slot="after",
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            abjad.LilyPondLiteral(r"\break", format_slot="before"),
            baca.selectors.leaf(30),
        ),
        evans.attach("Global Context", mark_60, baca.selectors.leaf(0)),
        evans.attach("Global Context", mark_120, baca.selectors.leaf(3)),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 120),
            baca.selectors.leaf(3),
        ),
        evans.attach("Global Context", mark_60, baca.selectors.leaf(5)),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 60),
            baca.selectors.leaf(5),
        ),
        evans.attach("Global Context", mark_120, baca.selectors.leaf(8)),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 120),
            baca.selectors.leaf(8),
        ),
        evans.attach("Global Context", mark_60, baca.selectors.leaf(10)),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 60),
            baca.selectors.leaf(10),
        ),
        evans.attach("Global Context", mark_108, baca.selectors.leaf(13)),
        evans.attach(
            "Global Context",
            abjad.MetronomeMark((1, 4), 108),
            baca.selectors.leaf(13),
        ),
        evans.call(
            "Voice 1",
            evans.PitchHandler(["7/1"], forget=False, as_ratios=True),
            lambda _: abjad.Selection(_).logical_tie(32),
        ),
        evans.call(
            "Voice 2",
            evans.PitchHandler(["5/1"], forget=False, as_ratios=True),
            lambda _: abjad.Selection(_).logical_tie(33),
        ),
        evans.call(
            "Voice 3",
            evans.PitchHandler(["3/1"], forget=False, as_ratios=True),
            lambda _: abjad.Selection(_).logical_tie(34),
        ),
        evans.call(
            "Voice 4",
            evans.PitchHandler(["1/1"], forget=False, as_ratios=True),
            lambda _: abjad.Selection(_).logical_tie(35),
        ),
        evans.call(
            "Voice 1",
            attach_clicks,
            lambda _: abjad.Selection(_)
            .leaves()
            .get([-29, -27, -26, -23, -20, -17, -13, -11, -8, -7]),
        ),
        evans.call(
            "Voice 2",
            attach_clicks,
            lambda _: abjad.Selection(_)
            .leaves()
            .get([-29, -27, -26, -23, -20, -17, -13, -11, -8, -7]),
        ),
        evans.call(
            "Voice 3",
            attach_clicks,
            lambda _: abjad.Selection(_)
            .leaves()
            .get([-29, -27, -26, -23, -20, -17, -13, -11, -8, -7]),
        ),
        evans.call(
            "Voice 4",
            attach_clicks,
            lambda _: abjad.Selection(_)
            .leaves()
            .get([-29, -27, -26, -23, -20, -17, -13, -11, -8, -7]),
        ),
        evans.call(
            "Voice 1",
            attach_material,
            lambda _: abjad.Selection(_).logical_ties().get([0, 1, 2, 3, 4, 5, 6]),
        ),
        evans.call(
            "Voice 1",
            attach_material,
            lambda _: abjad.Selection(_)
            .logical_ties()
            .get([13, 14, 15, 16, 17, 18, 19]),
        ),
        evans.call(
            "Voice 1",
            attach_material,
            lambda _: abjad.Selection(_).logical_ties().get([26, 27, 28, 29, 30, 31]),
        ),
        evans.call(
            "Voice 1",
            evans.GlissandoHandler(
                glissando_style="hide_middle_note_heads",
                boolean_vector=[1],
                forget=False,
                apply_to="runs",
            ),
            lambda _: abjad.Selection(_)
            .logical_ties()
            .get(
                [
                    0,
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                ]
            ),
        ),
        evans.call(
            "Voice 2",
            attach_material,
            lambda _: abjad.Selection(_).logical_ties().get([0, 1, 2, 3, 4, 5]),
        ),
        evans.call(
            "Voice 2",
            attach_material,
            lambda _: abjad.Selection(_)
            .logical_ties()
            .get([12, 13, 14, 15, 16, 17, 18, 19, 20]),
        ),
        evans.call(
            "Voice 2",
            attach_material,
            lambda _: abjad.Selection(_).logical_ties().get([27, 28, 29, 30, 31, 32]),
        ),
        evans.call(
            "Voice 2",
            evans.GlissandoHandler(
                glissando_style="hide_middle_note_heads",
                boolean_vector=[1],
                forget=False,
                apply_to="runs",
            ),
            lambda _: abjad.Selection(_)
            .logical_ties()
            .get(
                [
                    0,
                    1,
                    2,
                    3,
                    4,
                    5,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                ]
            ),
        ),
        evans.call(
            "Voice 3",
            attach_material,
            lambda _: abjad.Selection(_).logical_ties().get([0, 1, 2, 3, 4, 5, 6]),
        ),
        evans.call(
            "Voice 3",
            attach_material,
            lambda _: abjad.Selection(_)
            .logical_ties()
            .get([13, 14, 15, 16, 17, 18, 19]),
        ),
        evans.call(
            "Voice 3",
            attach_material,
            lambda _: abjad.Selection(_)
            .logical_ties()
            .get([26, 27, 28, 29, 30, 31, 32, 33]),
        ),
        evans.call(
            "Voice 3",
            evans.GlissandoHandler(
                glissando_style="hide_middle_note_heads",
                boolean_vector=[1],
                forget=False,
                apply_to="runs",
            ),
            lambda _: abjad.Selection(_)
            .logical_ties()
            .get(
                [
                    0,
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                ]
            ),
        ),
        evans.call(
            "Voice 4",
            attach_material,
            lambda _: abjad.Selection(_).logical_ties().get([0, 1, 2, 3, 4, 5, 6, 7]),
        ),
        evans.call(
            "Voice 4",
            attach_material,
            lambda _: abjad.Selection(_).logical_ties().get([14, 15, 16, 17, 18, 19]),
        ),
        evans.call(
            "Voice 4",
            attach_material,
            lambda _: abjad.Selection(_)
            .logical_ties()
            .get([26, 27, 28, 29, 30, 31, 32, 33, 34]),
        ),
        evans.call(
            "Voice 4",
            evans.GlissandoHandler(
                glissando_style="hide_middle_note_heads",
                boolean_vector=[1],
                forget=False,
                apply_to="runs",
            ),
            lambda _: abjad.Selection(_)
            .logical_ties()
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
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                ]
            ),
        ),
        evans.call("Voice 1", clef_handlers[0], lambda _: abjad.Selection(_)),
        evans.call("Voice 2", clef_handlers[1], lambda _: abjad.Selection(_)),
        evans.call("Voice 3", clef_handlers[2], lambda _: abjad.Selection(_)),
        evans.call("Voice 4", clef_handlers[3], lambda _: abjad.Selection(_)),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup { sp.(quasi noise) }", direction=abjad.Up),
            lambda _: abjad.Selection(_).logical_ties().get([7]).leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\markup { sp.(quasi noise) }", direction=abjad.Up),
            lambda _: abjad.Selection(_).logical_ties().get([20]).leaf(0),
        ),
        evans.call(
            "Voice 1",
            grace_handler,
            lambda _: abjad.Selection(_)
            .logical_ties()
            .get(
                [
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                ]
            ),
        ),
        evans.call(
            "Staff 1",
            evans.PitchHandler(
                [
                    30,
                    32,
                    29.5,
                    31,
                    31.5,
                    33,
                    30,
                    29,
                    32.5,
                ],
                forget=False,
            ),
            lambda _: abjad.Selection(_).logical_ties(grace=True),
        ),
        evans.call(
            "Staff 1",
            head_handler,
            lambda _: abjad.Selection(_).logical_ties(grace=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"\markup { sp.(quasi noise) }", direction=abjad.Up),
            lambda _: abjad.Selection(_).logical_ties().get([6]).leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(r"\markup { sp.(quasi noise) }", direction=abjad.Up),
            lambda _: abjad.Selection(_).logical_ties().get([21]).leaf(0),
        ),
        evans.call(
            "Voice 2",
            grace_handler,
            lambda _: abjad.Selection(_)
            .logical_ties()
            .get(
                [
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    21,
                    22,
                    23,
                    24,
                    25,
                    26,
                ]
            ),
        ),
        evans.call(
            "Staff 2",
            evans.PitchHandler(
                [
                    21.5,
                    23,
                    20,
                    19,
                    22.5,
                    20,
                    22,
                    19.5,
                    21,
                ],
                forget=False,
            ),
            lambda _: abjad.Selection(_).logical_ties(grace=True),
        ),
        evans.call(
            "Staff 2",
            head_handler,
            lambda _: abjad.Selection(_).logical_ties(grace=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup(r"\markup { sp.(quasi noise) }", direction=abjad.Up),
            lambda _: abjad.Selection(_).logical_ties().get([7]).leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup(r"\markup { sp.(quasi noise) }", direction=abjad.Up),
            lambda _: abjad.Selection(_).logical_ties().get([20]).leaf(0),
        ),
        evans.call(
            "Voice 3",
            grace_handler,
            lambda _: abjad.Selection(_)
            .logical_ties()
            .get(
                [
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                ]
            ),
        ),
        evans.call(
            "Staff 3",
            evans.PitchHandler(
                [
                    11.5,
                    13,
                    10,
                    9,
                    12.5,
                    11,
                    10,
                    12,
                    9.5,
                ],
                forget=False,
            ),
            lambda _: abjad.Selection(_).logical_ties(grace=True),
        ),
        evans.call(
            "Staff 3",
            head_handler,
            lambda _: abjad.Selection(_).logical_ties(grace=True),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(r"\markup { sp.(quasi noise) }", direction=abjad.Up),
            lambda _: abjad.Selection(_).logical_ties().get([8]).leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(r"\markup { sp.(quasi noise) }", direction=abjad.Up),
            lambda _: abjad.Selection(_).logical_ties().get([20]).leaf(0),
        ),
        evans.call(
            "Voice 4",
            grace_handler,
            lambda _: abjad.Selection(_)
            .logical_ties()
            .get(
                [
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                ]
            ),
        ),
        evans.call(
            "Staff 4",
            evans.PitchHandler(
                [
                    2,
                    -1.5,
                    1,
                    1.5,
                    3,
                    0,
                    -1,
                    2.5,
                    0,
                ],
                forget=False,
            ),
            lambda _: abjad.Selection(_).logical_ties(grace=True),
        ),
        evans.call(
            "Staff 4",
            head_handler,
            lambda _: abjad.Selection(_).logical_ties(grace=True),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/gregoryevans/Scores/adumbration/adumbration/build/first_stylesheet.ily",
    ],
    segment_name="segment_20",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 60),
    rehearsal_mark="",
    page_break_counts=[90],
    fermata="scripts.ushortfermata",
)

maker.build_segment()
# maker._make_sc_file()
