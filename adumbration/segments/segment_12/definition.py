import pathlib

import abjad
import baca
import evans

from adumbration.materials.pitch import clef_handlers
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_12.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_12.convert_timespans import (
    handler_commands,
    rhythm_commands,
)

clefs = [
    clef_handlers[0],
    clef_handlers[1],
    clef_handlers[2],
    evans.ClefHandler(
        clef="treble",
        add_extended_clefs=True,
        add_ottavas=True,
    ),
]

tempo_handler = evans.TempoSpannerHandler(
    tempo_list=[
        (2, 0, 1, "60"),
        (2, 0, 1, "90"),
        (2, 0, 1, "90"),
        (2, 0, 1, "120"),
        (2, 0, 1, "120"),
        (2, 0, 1, "60"),
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
        handler_commands,
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup.column(
                [
                    abjad.Markup("Pins").caps().box(),
                    abjad.Markup("(for Loose Geographies)").caps(),
                ],
                direction=abjad.Down,
            ).override(("font-name", "STIXGeneral Bold")),
            baca.leaf(0),
        ),
        evans.call(
            "Global Context", tempo_handler, abjad.select().leaves().get([3, 4])
        ),
        evans.call(
            "Global Context", tempo_handler, abjad.select().leaves().get([7, 8])
        ),
        evans.call(
            "Global Context",
            tempo_handler,
            abjad.select().leaves().get([10, 11]),
        ),
        # evans.attach(
        #     "Voice 1",
        #     abjad.LilyPondLiteral(
        #         r"^ \markup { finger percussion }",
        #         format_slot="after",
        #     ),
        #     baca.leaf(0, pitched=True),
        # ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(
                r"^ \markup { clt. \raise #0.75 \baca-circle-fast-markup }",
                format_slot="after",
            ),
            baca.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 2",
            abjad.LilyPondLiteral(
                r"^ \markup { slow bow }",
                format_slot="after",
            ),
            baca.leaf(-4, pitched=True),
        ),
        evans.attach(
            "Voice 3",
            abjad.LilyPondLiteral(
                r"^ \markup { slow bow }",
                format_slot="after",
            ),
            baca.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 4",
            abjad.LilyPondLiteral(
                r"^ \markup { slow bow }",
                format_slot="after",
            ),
            baca.leaf(0, pitched=True),
        ),
    ],
    score_template=score,
    time_signatures=time_signatures,
    clef_handlers=clefs,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/adumbration/adumbration/build/first_stylesheet.ily",
    ],
    segment_name="segment_12",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    mm_rests=False,
    barline="||",
    tempo=((1, 4), 83),
    rehearsal_mark="",
    page_break_counts=[90],
    fermata="scripts.ushortfermata",
)

maker.build_segment()
# maker._make_sc_file()
