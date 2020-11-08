import pathlib

import abjad
import baca
import evans
import quicktions
from abjadext import microtones

from adumbration.materials.pitch import clef_handlers
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_17.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_17.convert_timespans import rhythm_commands

tempo_handler = evans.TempoSpannerHandler(
    tempo_list=[
        (2, 0, 1, "153.3"),
        (2, 0, 1, "108"),
        (2, 0, 1, "108"),
        (2, 0, 1, "90"),
    ],
    boolean_vector=[1],
    padding=0.2,
    staff_padding=0.2,
    forget=False,
)

clefs = [
    clef_handlers[0],
    clef_handlers[1],
    evans.ClefHandler(
        clef="alto",
        add_extended_clefs=True,
        add_ottavas=True,
    ),
    evans.ClefHandler(
        clef="treble",
        add_extended_clefs=True,
        add_ottavas=True,
    ),
]

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
                "Samudra",
                direction=abjad.Up,
            )
            .caps()
            .override(("font-name", "STIXGeneral Bold"))
            .box(),
            baca.leaf(0),
        ),
        evans.attach(
            "Global Context",
            abjad.LilyPondLiteral(
                r"\bacaStopTextSpanMM",
                format_slot="after",
            ),
            baca.leaf(0),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), 115),
                left_note=(abjad.Note("c'8.")),
                right_note=(abjad.Note("c'4")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.leaf(0),
        ),
        evans.call("Voice 1", clefs[0], abjad.select()),
        evans.call("Voice 2", clefs[1], abjad.select()),
        evans.call("Voice 3", clefs[2], abjad.select()),
        evans.call("Voice 4", clefs[3], abjad.select()),
        evans.call("Global Context", tempo_handler, baca.leaves().get([1, 2])),
        evans.call("Global Context", tempo_handler, baca.leaves().get([4, 5])),
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
    segment_name="segment_17",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 153),
    rehearsal_mark="",
    page_break_counts=[90],
    fermata="scripts.ushortfermata",
)

maker.build_segment()
