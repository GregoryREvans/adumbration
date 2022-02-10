import pathlib

import abjad
import baca
import evans
import quicktions

from adumbration.materials.pitch import clef_handlers
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_06.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_06.convert_timespans import (
    handler_commands,
    rhythm_commands,
)

clefs = [
    clef_handlers[0],
    clef_handlers[1],
    clef_handlers[2],
    None,
]


def _slur_runs(selections):
    for run in abjad.Selection(selections).runs():
        if 1 < len(run):
            abjad.attach(abjad.StartSlur(), run[0])
            abjad.attach(abjad.StopSlur(), run[-1])


title_markup = abjad.Markup(
    r"""\markup \override #'(font-name . "STIXGeneral Bold") \column { \box \caps "T. Talked with God [Crocodiles (iii)]" \caps "(Ascend to the Basement)" }""",
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
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), quicktions.Fraction(230, 3)),
                left_note=(abjad.Note("c'4")),
                right_note=(abjad.Note("c'2")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.selectors.leaf(0),
        ),
        evans.attach(
            "Global Context",
            title_markup,
            baca.selectors.leaf(0),
        ),
        evans.call(
            "Voice 4",
            evans.ClefHandler(
                clef="bass",
                add_extended_clefs=True,
                add_ottavas=True,
            ),
            lambda _: abjad.Selection(_).logical_ties(),
        ),
        evans.detach(
            "Voice 4",
            abjad.Clef("tenorvarC"),
            lambda _: abjad.Selection(_).run(11).leaf(1),
        ),
        evans.detach(
            "Voice 4",
            abjad.Clef("treble"),
            lambda _: abjad.Selection(_).run(11).leaf(5),
        ),
        evans.attach(
            "Voice 4",
            abjad.Clef("treble"),
            lambda _: abjad.Selection(_).run(11).leaf(0),
        ),
        evans.detach(
            "Voice 4",
            abjad.Clef("tenorvarC"),
            lambda _: abjad.Selection(_).run(13).leaf(2),
        ),
        evans.detach(
            "Voice 4",
            abjad.Clef("treble"),
            lambda _: abjad.Selection(_).run(13).leaf(6),
        ),
        evans.attach(
            "Voice 4",
            abjad.Clef("treble"),
            lambda _: abjad.Selection(_).run(13).leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    clef_handlers=clefs,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/gregoryevans/Scores/adumbration/adumbration/build/first_stylesheet.ily",
    ],
    segment_name="segment_06",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 153),
    rehearsal_mark="",
    page_break_counts=[90],
    fermata="scripts.ushortfermata",
)

maker.build_segment()
# maker._make_sc_file()
