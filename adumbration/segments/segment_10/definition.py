import pathlib

import abjad
import baca
import evans
import quicktions

from adumbration.materials.pitch import clef_handlers, tap_pitch_handler
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_10.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_10.convert_timespans import (
    handler_commands,
    rhythm_commands,
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
        handler_commands,
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            evans.metric_modulation(
                metronome_mark=((1, 4), quicktions.Fraction(115, 2)),
                left_note=(abjad.Note("c'4")),
                right_note=(abjad.Note("c'2")),
                modulated_beat=(abjad.Note("c'4")),
            ),
            baca.leaf(0),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup.column(
                [
                    abjad.Markup("Are We Still Married?").caps().box(),
                    abjad.Markup("[Komm (iv)]").caps(),
                ],
                direction=abjad.Up,
            ).override(("font-name", "STIXGeneral Bold")),
            baca.leaf(0),
        ),
        evans.call(
            "score",
            tap_pitch_handler,
            abjad.select().components(abjad.Score),
        ),
        evans.attach(
            "Voice 3",
            abjad.Markup("½clt.", direction=abjad.Up),
            abjad.select().leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mp"),
            baca.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.leaf(2, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("p"),
            baca.leaf(5, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("f"),
            baca.leaf(8, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.Dynamic("mp"),
            baca.leaf(13, pitched=True),
        ),
        evans.attach("Voice 3", abjad.StopBeam(), baca.leaf(4, pitched=True)),
        evans.detach("Voice 3", abjad.StopBeam(), baca.leaf(5, pitched=True)),
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
    segment_name="segment_10",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 115),
    rehearsal_mark="",
    page_break_counts=[90],
    fermata="scripts.ushortfermata",
)

maker.build_segment()
# maker._make_sc_file()
