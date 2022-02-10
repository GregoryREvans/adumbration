import pathlib

import abjad
import baca
import evans
import quicktions

from adumbration.materials.pitch import clef_handlers, seg_7_global_pitch_handler
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_07.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_07.convert_timespans import (
    handler_commands,
    rhythm_commands,
)

cyc_padding = evans.CyclicList([7.2, 4.2, 5.3, 6.6], forget=False)


def add_markups(runs):
    cyc_marks = evans.CyclicList(
        [
            abjad.Markup(fr"\markup {_}", direction=abjad.Up)
            for _ in ["clt.", "½clt.", "norm.", "½clt."]
        ],
        forget=False,
    )
    for run in runs:
        abjad.attach(cyc_marks(r=1)[0], abjad.Selection(run).leaf(0))


section_title = abjad.Markup(
    r"""\markup \override #'(font-name . "STIXGeneral Bold") \column { \box \caps E.H. \caps "[Komm (ii)]" }""",
    direction=abjad.Up,
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
        handler_commands,
        evans.call(
            "vertical",
            seg_7_global_pitch_handler,
            evans.return_vertical_moment_ties,
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), quicktions.Fraction(460, 3)),
                left_note=(abjad.Note("c'2")),
                right_note=(
                    abjad.Tuplet(multiplier=(2, 3), components=[abjad.Note("c'4")])
                ),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            section_title,
            baca.selectors.leaf(0),
        ),
        evans.call(
            "Voice 1",
            evans.DynamicHandler(
                [
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "pp",
                    "p",
                    "mf",
                    "f",
                    "mp",
                ],
                forget=False,
                hold_last_boolean_vector=[1],
                with_constante_hairpins=False,
            ),
            lambda _: abjad.Selection(_).runs(),
        ),
        evans.call(
            "Voice 2",
            evans.DynamicHandler(
                [
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "pp",
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "pp",
                ],
                forget=False,
                hold_last_boolean_vector=[1],
                with_constante_hairpins=False,
            ),
            lambda _: abjad.Selection(_).runs(),
        ),
        evans.call(
            "Voice 3",
            evans.DynamicHandler(
                [
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "pp",
                    "p",
                    "mf",
                    "pp",
                    "f",
                    "mp",
                    "p",
                    "mf",
                    "pp",
                ],
                forget=False,
                hold_last_boolean_vector=[1],
                with_constante_hairpins=False,
            ),
            lambda _: abjad.Selection(_).runs(),
        ),
        evans.call(
            "Voice 4",
            evans.DynamicHandler(
                [
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "pp",
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "p",
                    "mf",
                    "f",
                    "mp",
                    "pp",
                ],
                forget=False,
                hold_last_boolean_vector=[1],
                with_constante_hairpins=False,
            ),
            lambda _: abjad.Selection(_).runs(),
        ),
        evans.call(
            "Voice 1",
            add_markups,
            lambda _: abjad.Selection(_).runs(),
        ),
        evans.call(
            "Voice 2",
            add_markups,
            lambda _: abjad.Selection(_).runs(),
        ),
        evans.call(
            "Voice 3",
            add_markups,
            lambda _: abjad.Selection(_).runs(),
        ),
        evans.call(
            "Voice 4",
            add_markups,
            lambda _: abjad.Selection(_).runs(),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    clef_handlers=clef_handlers,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/gregoryevans/Scores/adumbration/adumbration/build/first_stylesheet.ily",
    ],
    segment_name="segment_07",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 51),
    rehearsal_mark="",
    page_break_counts=[90],
    fermata="scripts.ushortfermata",
)

maker.build_segment()
# maker._make_sc_file()
