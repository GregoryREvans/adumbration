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
    for run in abjad.select(selections).runs():
        start = abjad.StartTextSpan(
            left_text=abjad.Markup(r"\upright noise", literal=True),
            right_text=abjad.Markup(r"\markup \upright XSB", literal=True),
            style="dashed-line-with-arrow",
        )
        abjad.tweak(start).staff_padding = 2
        stop = abjad.StopTextSpan()
        abjad.attach(start, abjad.select(run).leaf(0))
        abjad.attach(stop, abjad.get.leaf(abjad.select(run).leaf(-1), 1))


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
                r"""\markup \override #'(font-name . "STIXGeneral Bold") \box \caps Nacht/Maska""",
                direction=abjad.Up,
                literal=True,
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
        evans.call("Voice 1", clef_handlers[0], abjad.select()),
        evans.call("Voice 2", clef_handlers[1], abjad.select()),
        evans.call("Voice 3", clef_handlers[2], abjad.select()),
        evans.call("Voice 4", clef_handlers[3], abjad.select()),
        evans.call(
            "Voice 1",
            evans.PitchHandler(
                [
                    "gtqs",
                ],
                forget=False,
            ),
            abjad.select(),
        ),
        evans.call(
            "Voice 1",
            apply_spanner,
            abjad.select(),
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
            abjad.select(),
        ),
        evans.call(
            "Voice 2",
            apply_spanner,
            abjad.select().runs().get([0, 1, 2, 4]),
        ),
        evans.call(
            "Voice 2",
            evans.BowAngleHandler([-45, 45]),
            abjad.select().run(3),
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
            abjad.select(),
        ),
        evans.call(
            "Voice 3",
            apply_spanner,
            abjad.select(),
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
            abjad.select(),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(0),
        ),
        evans.attach("Voice 4", abjad.StartHairpin(">o"), baca.selectors.leaf(-2, pitched=True)),
        evans.attach("Voice 4", abjad.StopHairpin(), baca.selectors.leaf(-2)),
        evans.attach(
            "Voice 4",
            abjad.Markup(
                r"\markup { molto vibrato }", direction=abjad.Up, literal=True
            ),
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
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/adumbration/adumbration/build/first_stylesheet.ily",
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
