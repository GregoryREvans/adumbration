import pathlib

import abjad
import baca
import evans

from adumbration.materials.pitch import clef_handlers
from adumbration.materials.score_structure.instruments import instruments as insts
from adumbration.materials.score_structure.score_structure import score
from adumbration.materials.score_structure.segment_13.time_signatures import (
    time_signatures,
)
from adumbration.materials.timespans.segment_13.convert_timespans import rhythm_commands

gett_handler = evans.GettatoHandler(
    number_of_attacks=[
        5,
        7,
        4,
        6,
        3,
        5,
        2,
        4,
    ],
    actions=["throw", "throw", "drop"],
    boolean_vector=[1],
    vector_forget=False,
)

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
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                "marigolds",
                direction=abjad.Up,
            ).override(("font-name", "STIXGeneral Bold")),
            baca.leaf(0),
        ),
        # evans.call(
        #     "Global Context", tempo_handler, abjad.select().leaves().get([0, 2]),
        # ),
        # evans.call(
        #     "Global Context", tempo_handler, abjad.select().leaves().get([4, 6]),
        # ),
        # evans.call(
        #     "Global Context",
        #     tempo_handler,
        #     abjad.select().leaves().get([10, 11]),
        # ),
        evans.call(
            "Voice 1",
            gett_handler,
            abjad.select()
            .logical_ties(pitched=True)
            .get(
                [
                    2,
                    7,
                    10,
                ]
            ),
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
    segment_name="segment_13",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 83),
    rehearsal_mark="",
    page_break_counts=[90],
    fermata="scripts.ushortfermata",
)

maker.build_segment()
