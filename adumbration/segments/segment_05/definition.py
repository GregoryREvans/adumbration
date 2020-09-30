import pathlib

import abjad
import baca
import evans
import quicktions

from adumbration.materials.pitch import clef_handlers, seg_5_pitch_handler
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_05.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_05.convert_timespans import (
    handler_commands,
    rhythm_commands,
)


def _add_tremolos(selections):
    for leaf in abjad.select(selections).leaves(pitched=True):
        tremolo = abjad.StemTremolo(32)
        abjad.attach(tremolo, leaf)


x = abjad.Markup("XFB.", direction=abjad.Up)
n = abjad.Markup("norm.", direction=abjad.Up)
s = abjad.Markup("scratch", direction=abjad.Up)

cyc_techniques = evans.CyclicList([x, n, s, n, x, n, s], forget=False)


def _attach_marks(selections):
    for tie in abjad.select(selections).logical_ties(pitched=True):
        abjad.attach(cyc_techniques(r=1)[0], tie[0])


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
        handler_commands,
        evans.call(
            "vertical",
            seg_5_pitch_handler,
            evans.return_vertical_moment_ties,
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), quicktions.Fraction(460, 3)),
                left_note=(abjad.Note("c'2")),
                right_note=(abjad.Note("c'4")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("mf"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mf"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("mf"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup("st.", direction=abjad.Up),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup("st.", direction=abjad.Up),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup("st.", direction=abjad.Up),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup("st.", direction=abjad.Up),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(
                "cresc. a m.29 (fortissimo)",
                direction=abjad.Down,
            ),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 2",
            abjad.Markup(
                "cresc. a m.29 (fortissimo)",
                direction=abjad.Down,
            ),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup(
                "cresc. a m.29 (fortissimo)",
                direction=abjad.Down,
            ),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 4",
            abjad.Markup(
                "cresc. a m.29 (fortissimo)",
                direction=abjad.Down,
            ),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.leaf(-2, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.Dynamic("ff"),
            baca.leaf(-2, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("ff"),
            baca.leaf(-2, pitched=True),
        ),
        evans.attach(
            "Voice 4",
            abjad.Dynamic("ff"),
            baca.leaf(-2, pitched=True),
        ),
        evans.call(
            "Voice 1",
            _add_tremolos,
            abjad.select().leaves(),
        ),
        evans.call(
            "Voice 2",
            _add_tremolos,
            abjad.select().leaves(),
        ),
        evans.call(
            "Voice 3",
            _add_tremolos,
            abjad.select().leaves(),
        ),
        evans.call(
            "Voice 4",
            _add_tremolos,
            abjad.select().leaves(),
        ),
        evans.call(
            "Voice 1",
            _attach_marks,
            abjad.select().logical_ties(),
        ),
        evans.call(
            "Voice 2",
            _attach_marks,
            abjad.select().logical_ties(),
        ),
        evans.call(
            "Voice 3",
            _attach_marks,
            abjad.select().logical_ties(),
        ),
        evans.call(
            "Voice 4",
            _attach_marks,
            abjad.select().logical_ties(),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    clef_handlers=clef_handlers,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/adumbration/adumbration/build/first_stylesheet.ily",
    ],
    segment_name="segment_05",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 76),
    rehearsal_mark="",
    page_break_counts=[90],
)

maker.build_segment()
