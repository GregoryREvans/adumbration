import pathlib

import abjad
import baca
import evans
import quicktions

from adumbration.materials.pitch import clef_handlers, link_pitch_handler
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_04.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_04.convert_timespans import (
    handler_commands,
    rhythm_commands,
)


def _slur_runs(selections):
    for run in abjad.Selection(selections).runs():
        if 1 < len(run):
            abjad.attach(abjad.StartSlur(), run[0])
            abjad.attach(abjad.StopSlur(), run[-1])


bar_literal = abjad.LilyPondLiteral(r'\bar ".|:"', format_slot="before")

section_title = abjad.Markup(
    r"""\markup { \box \override #'(font-name . "STIXGeneral Bold") \caps { Crocodiles (ii) } }""",
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
            link_pitch_handler,
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
                metronome_mark=((1, 4), quicktions.Fraction(920, 9)),
                left_note=(
                    abjad.Tuplet(multiplier=(2, 3), components=[abjad.Note("c'4")])
                ),
                right_note=(abjad.Note("c'4")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach("Voice 1", bar_literal, baca.selectors.leaf(0)),
        evans.attach("Voice 2", bar_literal, baca.selectors.leaf(0)),
        evans.attach("Voice 3", bar_literal, baca.selectors.leaf(0)),
        evans.attach("Voice 4", bar_literal, baca.selectors.leaf(0)),
        evans.call(
            "Voice 1",
            _slur_runs,
            baca.selectors.leaves(),
        ),
        evans.call(
            "Voice 2",
            _slur_runs,
            baca.selectors.leaves(),
        ),
        evans.call(
            "Voice 3",
            _slur_runs,
            baca.selectors.leaves(),
        ),
        evans.call(
            "Voice 4",
            _slur_runs,
            baca.selectors.leaves(),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("f"),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("f"),
            baca.selectors.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 2", abjad.StopSlur(), baca.selectors.leaf(-19, pitched=True)
        ),
        evans.attach(
            "Voice 2", abjad.StartSlur(), baca.selectors.leaf(-18, pitched=True)
        ),
        evans.attach(
            "Voice 3", abjad.StopSlur(), baca.selectors.leaf(-4, pitched=True)
        ),
        evans.attach(
            "Voice 3", abjad.StartSlur(), baca.selectors.leaf(-3, pitched=True)
        ),
        evans.attach(
            "Voice 4", abjad.StopSlur(), baca.selectors.leaf(-8, pitched=True)
        ),
        evans.attach(
            "Voice 4", abjad.StartSlur(), baca.selectors.leaf(-7, pitched=True)
        ),
        evans.attach(
            "Global Context",
            section_title,
            baca.selectors.leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    clef_handlers=clef_handlers,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/adumbration/adumbration/build/first_stylesheet.ily",
    ],
    segment_name="segment_04",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline=":|.",
    tempo=((1, 4), 153),
    rehearsal_mark=r"x3",
    page_break_counts=[90],
    fermata="scripts.ufermata",
)

maker.build_segment()
# maker._make_sc_file()
