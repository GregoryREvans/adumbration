import pathlib

import abjad
import baca
import evans

from adumbration.materials.pitch import clef_handlers
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_19.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_19.convert_timespans import rhythm_commands

c = abjad.LilyPondLiteral(
    [
        r"""_ \markup {""",
        r"""    \override #'(font-name . "STIXGeneral")""",
        r"""    \with-color #white""",
        r"""    \right-column {""",
        r"""        \line { "\hspace #0.75 ............" }""",
        r"""        \with-color #black""",
        r"""        \line { \hspace #0.75 Iowa City, Ia. }""",
        r"""        \with-color #black""",
        r"""        \line { \hspace #0.75 September - November 2020 }""",
        r"""    }""",
        r"""}""",
    ],
    format_slot="absolute_after",
)


def apply_spanner(selections):
    for run in abjad.Selection(selections).runs():
        start = abjad.StartTextSpan(
            left_text=abjad.Markup(r"\upright noise"),
            right_text=abjad.Markup(r"\markup \upright XSB"),
            style="dashed-line-with-arrow",
        )
        abjad.tweak(start).staff_padding = 2
        stop = abjad.StopTextSpan()
        abjad.attach(start, abjad.Selection(run).leaf(0))
        abjad.attach(stop, abjad.get.leaf(abjad.Selection(run).leaf(-1), 1))


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
                r"""\markup \override #'(font-name . "STIXGeneral Bold") \box \caps Nacht/Maska""",
                direction=abjad.Up,
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), 115),
                left_note=(abjad.Note("c'2")),
                right_note=(abjad.Note("c'4")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.selectors.leaf(0),
        ),
        evans.call("Voice 1", clef_handlers[0], lambda _: abjad.Selection(_)),
        evans.call("Voice 2", clef_handlers[1], lambda _: abjad.Selection(_)),
        evans.call("Voice 3", clef_handlers[2], lambda _: abjad.Selection(_)),
        evans.call("Voice 4", clef_handlers[3], lambda _: abjad.Selection(_)),
        evans.call(
            "Voice 1",
            evans.PitchHandler(
                [
                    "gtqs",
                ],
                forget=False,
            ),
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 1",
            apply_spanner,
            lambda _: abjad.Selection(_),
        ),
        # evans.attach(
        #     "Voice 1",
        #     abjad.Dynamic("ff"),
        #     baca.selectors.leaf(0),
        # ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.call(
            "Voice 2",
            evans.PitchHandler(
                [
                    "g",
                    "g",
                    "g",
                    ["g", "d'"],
                    "g",
                ],
                forget=False,
            ),
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 2",
            apply_spanner,
            lambda _: abjad.Selection(_).runs().get([0, 1, 2, 4]),
        ),
        evans.call(
            "Voice 2",
            evans.BowAngleHandler([-45, 45]),
            lambda _: abjad.Selection(_).run(3),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.call(
            "Voice 3",
            evans.PitchHandler(
                [
                    "gqs",
                ],
                forget=False,
            ),
            lambda _: abjad.Selection(_),
        ),
        evans.call(
            "Voice 3",
            apply_spanner,
            lambda _: abjad.Selection(_),
        ),
        # evans.attach(
        #     "Voice 3",
        #     abjad.Dynamic("ff"),
        #     baca.selectors.leaf(0),
        # ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mp"),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.call(
            "Voice 4",
            evans.PitchHandler(
                [
                    "gs,",
                    "gtqs,",
                    "etqf,",
                ],
                forget=False,
            ),
            lambda _: abjad.Selection(_),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Voice 4", abjad.StartHairpin(">o"), baca.selectors.leaf(-2, pitched=True)
        ),
        evans.attach("Voice 4", abjad.StopHairpin(), baca.selectors.leaf(-2)),
        evans.attach(
            "Voice 4",
            abjad.Markup(r"\markup { molto vibrato }", direction=abjad.Up),
            baca.selectors.leaf(-3, pitched=True),
        ),
        evans.call(
            "Voice 4",
            evans.GlissandoHandler(
                line_style="zigzag",
                boolean_vector=[1],
                forget=False,
                apply_to="runs",
            ),
            baca.selectors.leaves(pitched=True).get([-3, -2, -1]),
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
    segment_name="segment_19",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="|.",
    tempo=((1, 4), 115),
    rehearsal_mark="",
    page_break_counts=[90],
    colophon=c,
    fermata="scripts.uverylongfermata",
)

maker.build_segment()
# maker._make_sc_file()
